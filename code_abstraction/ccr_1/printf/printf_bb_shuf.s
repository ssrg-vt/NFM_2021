	.section	.text
	.align	32
	#Procedure 0x4015c9
	.globl sub_4015c9
	.type sub_4015c9, @function
sub_4015c9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4015ca
	.globl sub_4015ca
	.type sub_4015ca, @function
sub_4015ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401602
	.globl sub_401602
	.type sub_401602, @function
sub_401602:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40164a
	.globl sub_40164a
	.type sub_40164a, @function
sub_40164a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40166c
	.globl sub_40166c
	.type sub_40166c, @function
sub_40166c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40167d
	.globl sub_40167d
	.type sub_40167d, @function
sub_40167d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401696
	.globl sub_401696
	.type sub_401696, @function
sub_401696:

	nop	word ptr cs:[rax + rax]
.label_9:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4016a5
	.globl sub_4016a5
	.type sub_4016a5, @function
sub_4016a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016af
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_9
	call	rpl_calloc
	test	rax, rax
	je	.label_9
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4016d0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x4016d5
	.globl sub_4016d5
	.type sub_4016d5, @function
sub_4016d5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016e0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_10
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_13:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_13
.label_10:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_14
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_11]], OFFSET FLAT:slot0
.label_14:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_12
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_12:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401771
	.globl sub_401771
	.type sub_401771, @function
sub_401771:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401780
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_15
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_15:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4017a6
	.globl sub_4017a6
	.type sub_4017a6, @function
sub_4017a6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_16
	test	rbx, rbx
	jne	.label_16
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_16:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_18
	test	rax, rax
	je	.label_17
.label_18:
	pop	rbx
	ret	
.label_17:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4017e0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_19
	nop	
.label_32:
	mov	edi, OFFSET FLAT:label_23
	call	strcmp
	test	eax, eax
	je	.label_30
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_32
.label_30:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_23
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_20
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_23
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x4018fa
	.globl sub_4018fa
	.type sub_4018fa, @function
sub_4018fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401900

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40190a
	.globl sub_40190a
	.type sub_40190a, @function
sub_40190a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401910
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401920

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401929
	.globl sub_401929
	.type sub_401929, @function
sub_401929:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401930

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40193a
	.globl sub_40193a
	.type sub_40193a, @function
sub_40193a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401940

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_40
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_39
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_41
	mov	eax, OFFSET FLAT:label_42
	jmp	.label_37
.label_39:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_38
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_35
	mov	eax, OFFSET FLAT:label_36
	jmp	.label_37
.label_38:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_33
	mov	eax, OFFSET FLAT:label_34
.label_37:
	cmove	rax, rcx
.label_40:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019fd
	.globl sub_4019fd
	.type sub_4019fd, @function
sub_4019fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401a00

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	32
	#Procedure 0x401a17
	.globl sub_401a17
	.type sub_401a17, @function
sub_401a17:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a20

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb0], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_90:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_93
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_99]]
.label_516:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_103
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_34
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_517:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_116
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_116
	xor	r14d, r14d
.label_127:
	cmp	r14, r11
	jae	.label_122
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_122:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_127
.label_116:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_53
.label_509:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_53
.label_512:
	mov	al, 1
.label_510:
	mov	r12b, 1
.label_513:
	test	r12b, 1
	mov	cl, 1
	je	.label_141
	mov	ecx, eax
.label_141:
	mov	al, cl
.label_511:
	test	r12b, 1
	jne	.label_143
	test	r11, r11
	je	.label_92
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_92:
	mov	r14d, 1
	jmp	.label_150
.label_143:
	xor	r14d, r14d
.label_150:
	mov	ecx, OFFSET FLAT:label_34
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_53
.label_514:
	test	r12b, 1
	jne	.label_44
	test	r11, r11
	je	.label_46
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_46:
	mov	r14d, 1
	jmp	.label_79
.label_515:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_33
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_53
.label_44:
	xor	r14d, r14d
.label_79:
	mov	eax, OFFSET FLAT:label_33
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_53:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_69
	.section	.text
	.align	32
	#Procedure 0x401cfc
	.globl sub_401cfc
	.type sub_401cfc, @function
sub_401cfc:

	nop	dword ptr [rax]
.label_82:
	inc	rsi
.label_69:
	cmp	rbp, -1
	je	.label_107
	cmp	rsi, rbp
	jne	.label_109
	jmp	.label_113
	.section	.text
	.align	32
	#Procedure 0x401d13
	.globl sub_401d13
	.type sub_401d13, @function
sub_401d13:

	nop	word ptr cs:[rax + rax]
.label_107:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_113
.label_109:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_117
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_119
	cmp	rbp, -1
	jne	.label_119
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_119:
	cmp	rbx, rbp
	jbe	.label_129
.label_117:
	xor	r8d, r8d
.label_60:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_131
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_134]]
.label_543:
	test	rsi, rsi
	jne	.label_123
	jmp	.label_62
	.section	.text
	.align	32
	#Procedure 0x401dae
	.globl sub_401dae
	.type sub_401dae, @function
sub_401dae:

	nop	
.label_129:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_148
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_60
	jmp	.label_45
.label_148:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_60
.label_547:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_55
	test	rsi, rsi
	jne	.label_58
	cmp	rbp, 1
	je	.label_62
	xor	r13d, r13d
	jmp	.label_47
.label_536:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_65
	cmp	byte ptr [rsp + 7], 0
	jne	.label_66
	cmp	r12d, 2
	jne	.label_68
	mov	eax, r9d
	and	al, 1
	jne	.label_68
	cmp	r14, r11
	jae	.label_95
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_95:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_75
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_75:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_84
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_84:
	add	r14, 3
	mov	r9b, 1
.label_68:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_89
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_89:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_91
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_91
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_91
	cmp	r14, r11
	jae	.label_104
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_104:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_130
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_130:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_47
.label_537:
	mov	bl, 0x62
	jmp	.label_115
.label_538:
	mov	cl, 0x74
	jmp	.label_74
.label_539:
	mov	bl, 0x76
	jmp	.label_115
.label_540:
	mov	bl, 0x66
	jmp	.label_115
.label_541:
	mov	cl, 0x72
	jmp	.label_74
.label_544:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_121
	cmp	byte ptr [rsp + 7], 0
	jne	.label_66
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_128
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_128:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_136
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_136:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_137
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_137:
	add	r14, 3
	xor	r9d, r9d
.label_121:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_47
.label_545:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_147
	cmp	r12d, 2
	jne	.label_123
	cmp	byte ptr [rsp + 7], 0
	je	.label_123
	jmp	.label_66
.label_546:
	cmp	r12d, 2
	jne	.label_155
	cmp	byte ptr [rsp + 7], 0
	jne	.label_66
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_56
.label_131:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_50
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_51:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_67
	test	r8b, r8b
	je	.label_67
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_47
.label_55:
	test	rsi, rsi
	jne	.label_54
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_54
.label_62:
	mov	dl, 1
.label_542:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_66
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_47:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_100
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_101
	jmp	.label_105
	.section	.text
	.align	32
	#Procedure 0x4020f4
	.globl sub_4020f4
	.type sub_4020f4, @function
sub_4020f4:

	nop	word ptr cs:[rax + rax]
.label_100:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_105
.label_101:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_108
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_56
	jmp	.label_81
	.section	.text
	.align	32
	#Procedure 0x40213d
	.globl sub_40213d
	.type sub_40213d, @function
sub_40213d:

	nop	dword ptr [rax]
.label_105:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_81
	jmp	.label_56
.label_108:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_81
.label_65:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_82
	xor	r15d, r15d
	jmp	.label_123
.label_155:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_74
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_56
.label_74:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_66
.label_115:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_47
	nop	word ptr cs:[rax + rax]
.label_81:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_66
	cmp	r12d, 2
	jne	.label_76
	mov	eax, r9d
	and	al, 1
	jne	.label_76
	cmp	r14, r11
	jae	.label_145
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_145:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_111
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_111:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_152
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_152:
	add	r14, 3
	mov	r9b, 1
.label_76:
	cmp	r14, r11
	jae	.label_43
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_43:
	inc	r14
	jmp	.label_48
.label_50:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_52
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_52:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_98:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_72
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_78
	cmp	rbp, -2
	je	.label_138
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_86
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_154:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_126
	bt	rsi, rdx
	jb	.label_45
.label_126:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_154
.label_86:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_110
	xor	r13d, r13d
.label_110:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_98
	jmp	.label_51
.label_91:
	xor	r13d, r13d
	jmp	.label_47
.label_54:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_47
.label_147:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_123
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_123
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_123
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_132
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_124
	cmp	byte ptr [rsp + 7], 0
	jne	.label_66
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_139
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_139:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_85
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_85:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_149
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_149:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_151
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_151:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_47
.label_123:
	xor	eax, eax
.label_58:
	xor	r13d, r13d
	jmp	.label_47
.label_67:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_49
	.section	.text
	.align	32
	#Procedure 0x402423
	.globl sub_402423
	.type sub_402423, @function
sub_402423:

	nop	word ptr cs:[rax + rax]
.label_125:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_49:
	test	r8b, r8b
	je	.label_59
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_61
	cmp	r14, r11
	jae	.label_63
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_63:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_61
	.section	.text
	.align	32
	#Procedure 0x40246c
	.globl sub_40246c
	.type sub_40246c, @function
sub_40246c:

	nop	dword ptr [rax]
.label_59:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_45
	cmp	r12d, 2
	jne	.label_71
	mov	eax, r9d
	and	al, 1
	jne	.label_71
	cmp	r14, r11
	jae	.label_77
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_77:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_83
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_83:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_87
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_87:
	add	r14, 3
	mov	r9b, 1
.label_71:
	cmp	r14, r11
	jae	.label_80
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_80:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_96
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_96:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_102
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_102:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_61:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_56
	test	r9b, 1
	je	.label_112
	mov	ebx, eax
	and	bl, 1
	jne	.label_112
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_118
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_118:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_88
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_88:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_112:
	cmp	r14, r11
	jae	.label_125
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_125
	.section	.text
	.align	32
	#Procedure 0x402573
	.globl sub_402573
	.type sub_402573, @function
sub_402573:

	nop	word ptr cs:[rax + rax]
.label_56:
	test	r9b, 1
	je	.label_106
	and	al, 1
	jne	.label_106
	cmp	r14, r11
	jae	.label_133
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_133:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_135
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_135:
	add	r14, 2
	xor	r9d, r9d
.label_106:
	mov	ebx, r15d
.label_48:
	cmp	r14, r11
	jae	.label_140
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_140:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_82
.label_78:
	xor	r13d, r13d
.label_72:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_51
.label_138:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_153
	mov	rsi, qword ptr [rsp + 0x50]
.label_73:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_114
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_73
	xor	r13d, r13d
	jmp	.label_51
.label_153:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_51
.label_114:
	xor	r13d, r13d
	jmp	.label_51
.label_132:
	xor	r13d, r13d
	jmp	.label_47
.label_124:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_47
	.section	.text
	.align	32
	#Procedure 0x402648
	.globl sub_402648
	.type sub_402648, @function
sub_402648:

	nop	dword ptr [rax + rax]
.label_113:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_64
	or	dl, al
	je	.label_45
.label_64:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_70
	or	dl, al
	jne	.label_70
	test	r10b, 1
	jne	.label_144
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_70
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_90
.label_70:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_94
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_97
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_97
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_57:
	cmp	r14, r11
	jae	.label_120
	mov	byte ptr [rcx + r14], al
.label_120:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_57
	jmp	.label_97
.label_66:
	mov	qword ptr [rsp + 0x20], rbp
.label_45:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_142:
	mov	r14, rax
.label_146:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_144:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_142
.label_94:
	mov	rcx, qword ptr [rsp + 8]
.label_97:
	cmp	r14, r11
	jae	.label_146
	mov	byte ptr [rcx + r14], 0
	jmp	.label_146
.label_93:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4027dc
	.globl sub_4027dc
	.type sub_4027dc, @function
sub_4027dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4027e0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027ef
	.globl sub_4027ef
	.type sub_4027ef, @function
sub_4027ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4027f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x402806
	.globl sub_402806
	.type sub_402806, @function
sub_402806:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402810

	.globl u8_uctomb
	.type u8_uctomb, @function
u8_uctomb:
	cmp	esi, 0x80
	jae	.label_156
	mov	byte ptr [rdi], sil
	mov	eax, 1
	ret	
.label_156:
	mov	edx, 6
	jmp	u8_uctomb_aux
	.section	.text
	.align	32
	#Procedure 0x40282b
	.globl sub_40282b
	.type sub_40282b, @function
sub_40282b:

	nop	dword ptr [rax + rax]
.label_158:
	mov	esi, 1
	mov	rdi, rbx
	call	print_esc
	cdqe	
	add	rax, rbx
	inc	rax
	mov	rbx, rax
.label_159:
	movsx	edi, byte ptr [rbx]
	cmp	edi, 0x5c
	je	.label_158
	test	dil, dil
	je	.label_157
	call	putchar_unlocked
	inc	rbx
	jmp	.label_159
.label_157:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402861
	.globl sub_402861
	.type sub_402861, @function
sub_402861:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402870

	.globl print_esc_string
	.type print_esc_string, @function
print_esc_string:
	push	rbx
	mov	rbx, rdi
	jmp	.label_159
	.section	.text
	.align	32
	#Procedure 0x402876
	.globl sub_402876
	.type sub_402876, @function
sub_402876:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402880
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	32
	#Procedure 0x40288f
	.globl sub_40288f
	.type sub_40288f, @function
sub_40288f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402890

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_161
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_160
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_160
.label_161:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_160
	test	cl, cl
	jne	.label_160
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_160:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028f6
	.globl sub_4028f6
	.type sub_4028f6, @function
sub_4028f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402900

	.globl xprintf
	.type xprintf, @function
xprintf:
	sub	rsp, 0xd8
	test	al, al
	je	.label_162
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_162:
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
	lea	rsi, [rsp]
	call	xvprintf
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x402992
	.globl sub_402992
	.type sub_402992, @function
sub_402992:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029a0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029af
	.globl sub_4029af
	.type sub_4029af, @function
sub_4029af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4029b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_163:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_163
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x4029d1
	.globl sub_4029d1
	.type sub_4029d1, @function
sub_4029d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029e0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	.section	.text
	.align	32
	#Procedure 0x402a52
	.globl sub_402a52
	.type sub_402a52, @function
sub_402a52:

	nop	word ptr cs:[rax + rax]
.label_165:
	cmp	edi, 0x7f
	je	.label_164
	xor	eax, eax
	jmp	.label_164
	.section	.text
	.align	32
	#Procedure 0x402a69
	.globl sub_402a69
	.type sub_402a69, @function
sub_402a69:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a78
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_165
.label_164:
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a80

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402a8e
	.globl sub_402a8e
	.type sub_402a8e, @function
sub_402a8e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402a90

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
	js	.label_169
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_172
	cmp	r12d, 0x7fffffff
	je	.label_167
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_170
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_170:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_172:
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
	jbe	.label_168
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_171
.label_168:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_166
	mov	rdi, r14
	call	free
.label_166:
	mov	rdi, r15
	call	xcharalloc
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
.label_171:
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
.label_169:
	call	abort
.label_167:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402c4d
	.globl sub_402c4d
	.type sub_402c4d, @function
sub_402c4d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_175
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_177
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_175:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_181
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
	.section	.text
	.align	32
	#Procedure 0x402dd6
	.globl sub_402dd6
	.type sub_402dd6, @function
sub_402dd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402de0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_185
	cmp	byte ptr [rax], 0x43
	jne	.label_187
	cmp	byte ptr [rax + 1], 0
	je	.label_184
.label_187:
	mov	esi, OFFSET FLAT:label_186
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_185
.label_184:
	xor	ebx, ebx
.label_185:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e11
	.globl sub_402e11
	.type sub_402e11, @function
sub_402e11:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e20
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	sub	rsp, 0xd8
	test	al, al
	je	.label_188
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_188:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	lea	rdx, [rsp]
	call	xvfprintf
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ead
	.globl sub_402ead
	.type sub_402ead, @function
sub_402ead:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402eb0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_199
	mov	edx, OFFSET FLAT:label_195
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_202
.label_199:
	mov	edx, OFFSET FLAT:label_203
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_202:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_207
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
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_190
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_191]]
.label_498:
	add	rsp, 8
	jmp	.label_189
.label_190:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_189
.label_499:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_500:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_501:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_502:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_189
.label_503:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_192
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_189
.label_504:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_189
.label_505:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_197
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_189
.label_507:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_189
.label_506:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_189:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403208
	.globl sub_403208
	.type sub_403208, @function
sub_403208:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403210
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40321d
	.globl sub_40321d
	.type sub_40321d, @function
sub_40321d:

	nop	dword ptr [rax]
.label_208:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_210
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_213:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_208
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_211
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_214:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x4032a4

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_212
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_213
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_213
.label_212:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_214
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032e0

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 8]
	call	strtold
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	je	.label_215
	fstp	xword ptr [rsp + 0x1c]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp + 8], rax
	jae	.label_217
	mov	qword ptr [rsp + 8], rax
	jmp	.label_215
.label_217:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0x1c]
.label_215:
	test	r14, r14
	je	.label_216
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r14], rax
.label_216:
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403354
	.globl sub_403354
	.type sub_403354, @function
sub_403354:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403360
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40336d
	.globl sub_40336d
	.type sub_40336d, @function
sub_40336d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403370
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403378
	.globl sub_403378
	.type sub_403378, @function
sub_403378:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403380

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403383
	.globl sub_403383
	.type sub_403383, @function
sub_403383:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403390

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_218
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_219
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_218:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033bf
	.globl sub_4033bf
	.type sub_4033bf, @function
sub_4033bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4033c0

	.globl print_direc
	.type print_direc, @function
print_direc:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	dword ptr [rsp + 0x20], r9d
	mov	dword ptr [rsp + 0x18], r8d
	mov	dword ptr [rsp + 0x24], ecx
	mov	r15, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x1c], eax
	mov	r13d, OFFSET FLAT:label_232
	mov	ebp, 1
	mov	dword ptr [rsp + 0x34], edx
	mov	ebx, edx
	add	ebx, -0x41
	cmp	ebx, 0x37
	ja	.label_230
	movabs	rax, 0x7100000071
	bt	rax, rbx
	jae	.label_223
	mov	r13d, OFFSET FLAT:label_226
	mov	ebp, 1
	jmp	.label_227
.label_223:
	movabs	rax, 0x90410800800000
	bt	rax, rbx
	jae	.label_230
.label_227:
	lea	rdi, [r15 + rbp + 2]
	call	xmalloc
	mov	r12, rax
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	__mempcpy_chk
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r13
	mov	rdx, rbp
	call	__mempcpy_chk
	mov	ecx, dword ptr [rsp + 0x34]
	mov	byte ptr [rax], cl
	mov	byte ptr [rax + 1], 0
	cmp	ebx, 0x37
	ja	.label_220
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_222]]
.label_483:
	mov	rdi, qword ptr [rsp + 0x28]
	call	vstrtold
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_225
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_228
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x1c]
	call	xprintf
	jmp	.label_220
.label_484:
	mov	rdi, qword ptr [rsp + 0x28]
	call	vstrtoumax
	jmp	.label_233
.label_225:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_234
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x1c]
	call	xprintf
	jmp	.label_220
.label_486:
	mov	rdi, qword ptr [rsp + 0x28]
	call	vstrtoimax
.label_233:
	mov	rcx, rax
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_235
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_221
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x1c]
.label_237:
	call	xprintf
	jmp	.label_220
.label_235:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_229
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x1c]
	jmp	.label_231
.label_228:
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
	call	xprintf
	jmp	.label_220
.label_234:
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r12
	call	xprintf
	jmp	.label_220
.label_221:
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
.label_231:
	mov	rdx, rcx
	call	xprintf
	jmp	.label_220
.label_229:
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, rcx
.label_240:
	call	xprintf
	jmp	.label_220
.label_230:
	xor	ebp, ebp
	mov	r13, r14
	jmp	.label_227
.label_485:
	mov	rax, qword ptr [rsp + 0x28]
	movsx	ecx, byte ptr [rax]
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_224
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
	mov	edx, ecx
	call	xprintf
	jmp	.label_220
	.section	.text
	.align	32
	#Procedure 0x4035b8

	.globl sub_4035b8
	.type sub_4035b8, @function
sub_4035b8:
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_239
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_236
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
	mov	edx, dword ptr [rsp + 0x1c]
	mov	rcx, qword ptr [rsp + 0x28]
	jmp	.label_237
.label_224:
	xor	eax, eax
	mov	rdi, r12
	mov	esi, ecx
	call	xprintf
	jmp	.label_220
.label_239:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, al
	je	.label_241
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x1c]
	jmp	.label_238
.label_236:
	xor	eax, eax
	mov	rdi, r12
	mov	esi, dword ptr [rsp + 0x18]
.label_238:
	mov	rdx, qword ptr [rsp + 0x28]
	call	xprintf
.label_220:
	mov	rdi, r12
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_241:
	xor	eax, eax
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x28]
	jmp	.label_240
	.section	.text
	.align	32
	#Procedure 0x403638
	.globl sub_403638
	.type sub_403638, @function
sub_403638:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403640

	.globl vstrtold
	.type vstrtold, @function
vstrtold:
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rdi
	mov	al, byte ptr [rbx]
	cmp	al, 0x27
	je	.label_242
	cmp	al, 0x22
	jne	.label_245
.label_242:
	mov	al, byte ptr [rbx + 1]
	test	al, al
	je	.label_245
	movzx	eax, al
	mov	dword ptr [rsp + 8], eax
	fild	dword ptr [rsp + 8]
	cmp	byte ptr [rbx + 2], 0
	je	.label_244
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_244
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	fstp	xword ptr [rsp + 0xc]
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_243
.label_245:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	cl_strtold
	fstp	xword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	call	verify_numeric
.label_243:
	fld	xword ptr [rsp + 0xc]
.label_244:
	add	rsp, 0x20
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036d6
	.globl sub_4036d6
	.type sub_4036d6, @function
sub_4036d6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036e0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4036ea
	.globl sub_4036ea
	.type sub_4036ea, @function
sub_4036ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036f0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x4036fd
	.globl sub_4036fd
	.type sub_4036fd, @function
sub_4036fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403700
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x403710

	.globl u8_uctomb_aux
	.type u8_uctomb_aux, @function
u8_uctomb_aux:
	mov	eax, 0xfffffffe
	cmp	esi, 0x80
	jb	.label_248
	mov	r8d, 2
	cmp	esi, 0x800
	jb	.label_247
	cmp	esi, 0xffff
	ja	.label_249
	mov	ecx, esi
	and	ecx, 0xfffff800
	mov	r8d, 3
	mov	eax, 0xffffffff
	cmp	ecx, 0xd800
	jne	.label_247
	jmp	.label_248
.label_249:
	mov	eax, 0xffffffff
	mov	r8d, 4
	cmp	esi, 0x10ffff
	ja	.label_248
.label_247:
	cmp	r8d, edx
	mov	eax, 0xfffffffe
	jg	.label_248
	mov	eax, r8d
	and	al, 7
	cmp	al, 2
	je	.label_250
	cmp	al, 3
	je	.label_251
	cmp	al, 4
	jne	.label_252
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 3], al
	shr	esi, 6
	or	esi, 0x10000
.label_251:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 2], al
	shr	esi, 6
	or	esi, 0x800
.label_250:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 1], al
	shr	esi, 6
	or	esi, 0xc0
	mov	byte ptr [rdi], sil
.label_252:
	mov	eax, r8d
.label_248:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037cb
	.globl sub_4037cb
	.type sub_4037cb, @function
sub_4037cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_254:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_253
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_255
	.section	.text
	.align	32
	#Procedure 0x4037f9
	.globl sub_4037f9
	.type sub_4037f9, @function
sub_4037f9:

	nop	dword ptr [rax]
.label_253:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_255:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_256
	inc	r9
	cmp	r9, 0xa
	jb	.label_254
.label_256:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x40382f
	.globl sub_40382f
	.type sub_40382f, @function
sub_40382f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403830
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40383a
	.globl sub_40383a
	.type sub_40383a, @function
sub_40383a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403840

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40386d
	.globl sub_40386d
	.type sub_40386d, @function
sub_40386d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403870
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	.section	.text
	.align	32
	#Procedure 0x403883
	.globl sub_403883
	.type sub_403883, @function
sub_403883:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403890

	.globl exit_failure_callback
	.type exit_failure_callback, @function
exit_failure_callback:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14d, edi
	xor	edi, edi
	test	rbx, rbx
	je	.label_257
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, rbx
	call	error
	jmp	.label_259
.label_257:
	mov	esi, OFFSET FLAT:label_260
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r14d
	call	error
.label_259:
	mov	rax, -1
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403910

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_261
	ret	
.label_261:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x403923
	.globl sub_403923
	.type sub_403923, @function
sub_403923:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403930
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40393a
	.globl sub_40393a
	.type sub_40393a, @function
sub_40393a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403940

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
	call	xcharalloc
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
	je	.label_262
	mov	qword ptr [rax], rbx
.label_262:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a2c
	.globl sub_403a2c
	.type sub_403a2c, @function
sub_403a2c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a30

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
	jne	.label_263
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_263
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_264
.label_263:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_264:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_265
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_265:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a9e
	.globl sub_403a9e
	.type sub_403a9e, @function
sub_403a9e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403aa0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_266
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_266
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_266:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x403ac6
	.globl sub_403ac6
	.type sub_403ac6, @function
sub_403ac6:

	nop	word ptr cs:[rax + rax]
.label_268:
	mov	ecx, 1
.label_267:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x403ae0
	.globl sub_403ae0
	.type sub_403ae0, @function
sub_403ae0:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ae5

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_268
	test	rsi, rsi
	mov	ecx, 1
	je	.label_267
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_267
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b20

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	push	r14
	push	rbx
	mov	rax, rdx
	mov	rcx, rsi
	mov	rbx, rdi
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_270
	mov	rdi, rbx
	call	ferror
	test	eax, eax
	jne	.label_270
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_270:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b87
	.globl sub_403b87
	.type sub_403b87, @function
sub_403b87:

	nop	word ptr [rax + rax]
.label_274:
	mov	edx, OFFSET FLAT:label_271
.label_273:
	xor	eax, eax
	mov	rdi, r8
	call	__fprintf_chk
	mov	rax, -1
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ba8
	.globl sub_403ba8
	.type sub_403ba8, @function
sub_403ba8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bb6

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rax
	mov	r8, rdx
	mov	ecx, edi
	mov	esi, 1
	cmp	ecx, 0xffff
	ja	.label_274
	mov	edx, OFFSET FLAT:label_272
	jmp	.label_273
	.section	.text
	.align	32
	#Procedure 0x403bd0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403be3
	.globl sub_403be3
	.type sub_403be3, @function
sub_403be3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bf0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bfa
	.globl sub_403bfa
	.type sub_403bfa, @function
sub_403bfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c00
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_275
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_275
.label_276:
	ret	
.label_275:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_276
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c26
	.globl sub_403c26
	.type sub_403c26, @function
sub_403c26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c30

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_277
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_277:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403c82
	.globl sub_403c82
	.type sub_403c82, @function
sub_403c82:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c90

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_27
	call	setlocale
	mov	edi, OFFSET FLAT:label_292
	mov	esi, OFFSET FLAT:label_293
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_292
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + exit_status]],  0
	mov	edi, OFFSET FLAT:label_283
	call	getenv
	test	rax, rax
	setne	byte ptr [byte ptr [rip + posixly_correct]]
	cmp	ebp, 2
	jne	.label_288
	mov	r14, qword ptr [rbx + 8]
	mov	esi, OFFSET FLAT:label_294
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_278
	mov	esi, OFFSET FLAT:label_284
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	jne	.label_286
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	xor	ebx, ebx
	mov	esi, OFFSET FLAT:label_23
	mov	edx, OFFSET FLAT:label_21
	mov	r8d, OFFSET FLAT:label_287
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	jmp	.label_289
.label_288:
	jl	.label_280
.label_286:
	mov	rax, qword ptr [rbx + 8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_279
	cmp	byte ptr [rax + 1], 0x2d
	jne	.label_279
	cmp	byte ptr [rax + 2], 0
	jne	.label_279
	cmp	ebp, 2
	jle	.label_280
	add	rbx, 8
	dec	ebp
.label_279:
	mov	r14, qword ptr [rbx + 8]
	add	ebp, -2
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_285:
	mov	rdi, r14
	mov	esi, ebp
	mov	rdx, rbx
	call	print_formatted
	sub	ebp, eax
	cdqe	
	lea	rbx, [rbx + rax*8]
	test	eax, eax
	jle	.label_281
	test	ebp, ebp
	jg	.label_285
.label_281:
	test	ebp, ebp
	jle	.label_291
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_282
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rbx]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_291:
	movzx	ebx,  byte ptr [byte ptr [rip + exit_status]]
.label_289:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_278:
	xor	edi, edi
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403de3
	.globl sub_403de3
	.type sub_403de3, @function
sub_403de3:

	nop	
.label_280:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x403e10
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_296
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403e84
	.globl sub_403e84
	.type sub_403e84, @function
sub_403e84:

	nop	word ptr cs:[rax + rax]
.label_299:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x403e9e
	.globl sub_403e9e
	.type sub_403e9e, @function
sub_403e9e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ea7

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_299
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_301
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_299
.label_301:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_299
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_300
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_300:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f10
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f59
	.globl sub_403f59
	.type sub_403f59, @function
sub_403f59:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f60

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_27
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_302
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f85
	.globl sub_403f85
	.type sub_403f85, @function
sub_403f85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f90

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_303
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_305
	jmp	.label_304
.label_303:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_304
.label_305:
	mov	eax, 1
	test	bpl, bpl
	je	.label_304
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_304:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40400d
	.globl sub_40400d
	.type sub_40400d, @function
sub_40400d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404010

	.globl verify_numeric
	.type verify_numeric, @function
verify_numeric:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_312
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_211
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_309
.label_306:
	mov	esi, OFFSET FLAT:label_311
.label_308:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
.label_309:
	call	error
	mov	byte ptr [byte ptr [rip + exit_status]],  1
.label_310:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404074
	.globl sub_404074
	.type sub_404074, @function
sub_404074:

	nop	word ptr [rax + rax]
.label_312:
	cmp	byte ptr [rbx], 0
	je	.label_310
	xor	edi, edi
	cmp	r14, rbx
	je	.label_306
	mov	esi, OFFSET FLAT:label_307
	jmp	.label_308
	.section	.text
	.align	32
	#Procedure 0x404090

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_316
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_314
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_314
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_318
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_318:
	mov	rbx, r14
.label_314:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_316:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_317
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404131
	.globl sub_404131
	.type sub_404131, @function
sub_404131:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404140
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x404148
	.globl sub_404148
	.type sub_404148, @function
sub_404148:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404150
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40415a
	.globl sub_40415a
	.type sub_40415a, @function
sub_40415a:

	nop	word ptr [rax + rax]
.label_461:
	mov	edi, 0xd
	jmp	putchar_unlocked
.label_459:
	mov	edi, 0xc
	jmp	putchar_unlocked
.label_319:
	jmp	putchar_unlocked
.label_456:
	mov	edi, 8
	jmp	putchar_unlocked
.label_463:
	mov	edi, 0xb
	jmp	putchar_unlocked
.label_458:
	mov	edi, 0x1b
	jmp	putchar_unlocked
	.section	.text
	.align	32
	#Procedure 0x404197

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	lea	eax, [rdi - 0x61]
	cmp	eax, 0x15
	ja	.label_319
	jmp	qword ptr [word ptr [+ (rax * 8) + label_320]]
.label_460:
	mov	edi, 0xa
	jmp	putchar_unlocked
.label_455:
	mov	edi, 7
	jmp	putchar_unlocked
.label_462:
	mov	edi, 9
	jmp	putchar_unlocked
.label_457:
	push	rax
	xor	edi, edi
	call	exit
	.section	.text
	.align	32
	#Procedure 0x4041cc
	.globl sub_4041cc
	.type sub_4041cc, @function
sub_4041cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4041d0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041da
	.globl sub_4041da
	.type sub_4041da, @function
sub_4041da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041e0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_321
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_321:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041f8
	.globl sub_4041f8
	.type sub_4041f8, @function
sub_4041f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404200

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_322
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_326
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_323
.label_324:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404232
	.globl sub_404232
	.type sub_404232, @function
sub_404232:

	nop	dword ptr [rax]
.label_322:
	test	rcx, rcx
	jne	.label_325
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_325:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_324
.label_323:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_326:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404280

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
	.section	.text
	.align	32
	#Procedure 0x4042b6
	.globl sub_4042b6
	.type sub_4042b6, @function
sub_4042b6:

	nop	word ptr cs:[rax + rax]
.label_328:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4042c5
	.globl sub_4042c5
	.type sub_4042c5, @function
sub_4042c5:

	nop	word ptr cs:[rax + rax]
.label_329:
	fldz	
	test	rbx, rbx
	je	.label_327
	mov	qword ptr [rbx], r14
.label_327:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042e8

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	call	c_locale
	test	rax, rax
	je	.label_329
	mov	rdi, rax
	call	uselocale
	mov	r15, rax
	test	r15, r15
	je	.label_329
	mov	rdi, r14
	mov	rsi, rbx
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	uselocale
	test	rax, rax
	je	.label_328
	mov	dword ptr [rbx], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_327
	.section	.text
	.align	32
	#Procedure 0x404340

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
	je	.label_330
	cmp	r15, -2
	jb	.label_330
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_330
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_330:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404396
	.globl sub_404396
	.type sub_404396, @function
sub_404396:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043c7
	.globl sub_4043c7
	.type sub_4043c7, @function
sub_4043c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_331
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_331:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4043f3
	.globl sub_4043f3
	.type sub_4043f3, @function
sub_4043f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404400

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_332
	test	rax, rax
	je	.label_333
.label_332:
	pop	rbx
	ret	
.label_333:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40441a
	.globl sub_40441a
	.type sub_40441a, @function
sub_40441a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	movsx	ebp, byte ptr [r14 + 1]
	cmp	ebp, 0x78
	jne	.label_355
	lea	r13, [r14 + 2]
	call	__ctype_b_loc
	mov	r12, qword ptr [rax]
	xor	r15d, r15d
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_339:
	movsx	ebx, byte ptr [r13 + r15]
	mov	edi, ebx
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r12 + rax*2 + 1], 0x10
	je	.label_352
	mov	eax, ebp
	shl	eax, 4
	mov	ecx, ebx
	add	cl, 0x9f
	cmp	cl, 5
	ja	.label_336
	add	ebx, -0x57
	jmp	.label_337
.label_336:
	mov	ecx, ebx
	add	cl, 0xbf
	cmp	cl, 5
	ja	.label_334
	add	ebx, -0x37
	jmp	.label_337
	.section	.text
	.align	32
	#Procedure 0x40448f
	.globl sub_40448f
	.type sub_40448f, @function
sub_40448f:

	nop	
.label_334:
	add	ebx, -0x30
.label_337:
	mov	ebp, ebx
	add	ebp, eax
	inc	r15
	cmp	r15d, 2
	jl	.label_339
	jmp	.label_341
.label_355:
	lea	r13, [r14 + 1]
	mov	eax, ebp
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_343
	cmp	bpl, 0x30
	sete	al
	and	al, sil
	movzx	eax, al
	add	r13, rax
	xor	eax, eax
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_353:
	movsx	ecx, byte ptr [r13 + rax]
	mov	edx, ecx
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_350
	lea	edi, [rcx + rdi*8 - 0x30]
	inc	rax
	cmp	eax, 3
	jl	.label_353
.label_350:
	add	r13, rax
	jmp	.label_356
.label_352:
	test	r15d, r15d
	je	.label_344
.label_341:
	add	r13, r15
	mov	edi, ebp
.label_356:
	call	putchar_unlocked
.label_338:
	not	r14d
	add	r13d, r14d
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_343:
	test	bpl, bpl
	je	.label_340
	mov	edi, OFFSET FLAT:label_342
	mov	edx, 0xc
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_340
	lea	r13, [r14 + 2]
	mov	edi, ebp
	call	print_esc_char
	jmp	.label_338
.label_340:
	mov	al, byte ptr [r13]
	or	al, 0x20
	cmp	al, 0x75
	jne	.label_348
	movsx	eax, byte ptr [r14 + 1]
	xor	ebx, ebx
	mov	dword ptr [rsp + 4], eax
	cmp	eax, 0x75
	setne	bl
	lea	eax, [rbx*4 + 4]
	mov	dword ptr [rsp], eax
	lea	r13, [r14 + 2]
	call	__ctype_b_loc
	mov	r15, qword ptr [rax]
	lea	r12d, [rbx*4 + 5]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_351:
	movsx	ebx, byte ptr [r13]
	mov	edi, ebx
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r15 + rax*2 + 1], 0x10
	je	.label_344
	mov	eax, ebp
	shl	eax, 4
	mov	ecx, ebx
	add	cl, 0x9f
	cmp	cl, 5
	ja	.label_345
	add	ebx, -0x57
	jmp	.label_346
	.section	.text
	.align	32
	#Procedure 0x4045bf
	.globl sub_4045bf
	.type sub_4045bf, @function
sub_4045bf:

	nop	
.label_345:
	mov	ecx, ebx
	add	cl, 0xbf
	cmp	cl, 5
	ja	.label_347
	add	ebx, -0x37
	jmp	.label_346
	.section	.text
	.align	32
	#Procedure 0x4045cf
	.globl sub_4045cf
	.type sub_4045cf, @function
sub_4045cf:

	nop	
.label_347:
	add	ebx, -0x30
.label_346:
	mov	ebp, ebx
	add	ebp, eax
	inc	r13
	dec	r12d
	cmp	r12d, 1
	jg	.label_351
	cmp	ebp, 0x9f
	ja	.label_354
	lea	eax, [rbp - 0x24]
	cmp	eax, 0x3c
	ja	.label_335
	movabs	rcx, 0x1000000010000001
	bt	rcx, rax
	jae	.label_335
.label_354:
	mov	eax, ebp
	and	eax, 0xfffff800
	cmp	eax, 0xd800
	je	.label_335
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	edx, edx
	mov	esi, ebp
	call	print_unicode_char
	jmp	.label_338
.label_348:
	mov	edi, 0x5c
	call	putchar_unlocked
	movsx	edi, byte ptr [r13]
	test	edi, edi
	je	.label_338
	call	putchar_unlocked
	lea	r13, [r14 + 2]
	jmp	.label_338
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, dword ptr [rsp + 4]
	mov	r8d, dword ptr [rsp]
	mov	r9d, ebp
	call	error
	.section	.text
	.align	32
	#Procedure 0x4046a0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_360
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_358
	jmp	.label_359
.label_360:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_359
.label_358:
	mov	eax, 1
	test	bpl, bpl
	je	.label_359
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_359:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404728
	.globl sub_404728
	.type sub_404728, @function
sub_404728:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_361
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_363
	jmp	.label_362
.label_361:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_362
.label_363:
	mov	eax, 1
	test	bpl, bpl
	je	.label_362
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_362:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047a9
	.globl sub_4047a9
	.type sub_4047a9, @function
sub_4047a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047b0

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_366
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_365
	jmp	.label_364
.label_366:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_364
.label_365:
	mov	eax, 1
	test	bpl, bpl
	je	.label_364
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_364:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404813
	.globl sub_404813
	.type sub_404813, @function
sub_404813:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404820

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_369
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_367
	jmp	.label_368
.label_369:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_368
.label_367:
	mov	eax, 1
	test	bpl, bpl
	je	.label_368
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_368:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40487f
	.globl sub_40487f
	.type sub_40487f, @function
sub_40487f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404880

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_370
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_372
	jmp	.label_371
.label_370:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_371
.label_372:
	mov	eax, 1
	test	bpl, bpl
	je	.label_371
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_371:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048c9
	.globl sub_4048c9
	.type sub_4048c9, @function
sub_4048c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4048d0

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_375
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_374
	jmp	.label_373
.label_375:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_373
.label_374:
	mov	eax, 1
	test	bpl, bpl
	je	.label_373
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_373:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404915
	.globl sub_404915
	.type sub_404915, @function
sub_404915:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404920

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_378
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_377
	jmp	.label_376
.label_378:
	mov	eax, 1
	test	cl, cl
	je	.label_376
.label_377:
	xor	eax, eax
.label_376:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40494f
	.globl sub_40494f
	.type sub_40494f, @function
sub_40494f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404950

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_379
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_379:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049d3
	.globl sub_4049d3
	.type sub_4049d3, @function
sub_4049d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049e0
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
	.section	.text
	.align	32
	#Procedure 0x404a13
	.globl sub_404a13
	.type sub_404a13, @function
sub_404a13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a20
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_380
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_380:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a3e
	.globl sub_404a3e
	.type sub_404a3e, @function
sub_404a3e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404a40
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x404a4a
	.globl sub_404a4a
	.type sub_404a4a, @function
sub_404a4a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a50

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	mov	al,  byte ptr [byte ptr [rip + unicode_to_mb.initialized]]
	test	al, al
	jne	.label_384
	call	locale_charset
	mov	rbx, rax
	mov	esi, OFFSET FLAT:label_386
	mov	rdi, rbx
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	mov	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  ecx
	je	.label_381
	mov	esi, OFFSET FLAT:label_386
	mov	rdi, rbx
	call	iconv_open
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
	cmp	rax, -1
	jne	.label_381
	mov	edi, OFFSET FLAT:label_302
	mov	esi, OFFSET FLAT:label_386
	call	iconv_open
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
.label_381:
	mov	byte ptr [byte ptr [rip + unicode_to_mb.initialized]],  1
.label_384:
	cmp	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  0
	jne	.label_382
	cmp	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  -1
	jne	.label_382
	mov	esi, OFFSET FLAT:label_390
	jmp	.label_388
.label_382:
	lea	rbx, [rsp + 0x22]
	mov	rdi, rbx
	mov	esi, ebp
	call	u8_uctomb
	test	eax, eax
	js	.label_391
	cmp	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  0
	je	.label_392
	movsxd	rsi, eax
	lea	rdi, [rsp + 0x22]
.label_389:
	mov	rdx, r13
	call	r15
	jmp	.label_385
.label_391:
	mov	esi, OFFSET FLAT:label_387
	jmp	.label_388
.label_392:
	mov	qword ptr [rsp + 0x28], rbx
	cdqe	
	mov	qword ptr [rsp + 0x18], rax
	lea	r12, [rsp + 0x30]
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp + 0x10], 0x19
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rsi, [rsp + 0x28]
	lea	rdx, [rsp + 0x18]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	call	iconv
	cmp	rax, -1
	je	.label_383
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	jne	.label_383
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	call	iconv
	cmp	rax, -1
	je	.label_383
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, r12
	mov	rdi, r12
	jmp	.label_389
.label_383:
	xor	esi, esi
.label_388:
	mov	edi, ebp
	mov	rdx, r13
	call	r14
.label_385:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bbc
	.globl sub_404bbc
	.type sub_404bbc, @function
sub_404bbc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bf7
	.globl sub_404bf7
	.type sub_404bf7, @function
sub_404bf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x404c0a
	.globl sub_404c0a
	.type sub_404c0a, @function
sub_404c0a:

	nop	word ptr [rax + rax]
.label_393:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	strtoumax
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbx
	call	verify_numeric
.label_394:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c43
	.globl sub_404c43
	.type sub_404c43, @function
sub_404c43:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c4a

	.globl vstrtoumax
	.type vstrtoumax, @function
vstrtoumax:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	al, byte ptr [rbx]
	cmp	al, 0x27
	je	.label_395
	cmp	al, 0x22
	jne	.label_393
.label_395:
	movzx	r14d, byte ptr [rbx + 1]
	test	r14, r14
	je	.label_393
	cmp	byte ptr [rbx + 2], 0
	je	.label_394
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_394
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_394
	.section	.text
	.align	32
	#Procedure 0x404ca0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x404caa
	.globl sub_404caa
	.type sub_404caa, @function
sub_404caa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cb0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_396
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_396:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cce
	.globl sub_404cce
	.type sub_404cce, @function
sub_404cce:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	push	r14
	push	rbx
	mov	rax, rsi
	mov	rcx, rdi
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_397
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	ferror
	test	eax, eax
	jne	.label_397
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_397:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d3f
	.globl sub_404d3f
	.type sub_404d3f, @function
sub_404d3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404d40

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x404d49
	.globl sub_404d49
	.type sub_404d49, @function
sub_404d49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d50

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_398]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_399]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_400]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404db8
	.globl sub_404db8
	.type sub_404db8, @function
sub_404db8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dc0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	.section	.text
	.align	32
	#Procedure 0x404dd9
	.globl sub_404dd9
	.type sub_404dd9, @function
sub_404dd9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404de0

	.globl print_formatted
	.type print_formatted, @function
print_formatted:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r12, rdx
	mov	r15d, esi
	mov	r13, rdi
	mov	al, byte ptr [r13]
	test	al, al
	mov	dword ptr [rsp + 4], r15d
	je	.label_427
	xor	ebp, ebp
	movabs	r14, 0x410150000001
	mov	r15d, dword ptr [rsp + 4]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	nop	word ptr cs:[rax + rax]
.label_418:
	movsx	edi, al
	cmp	edi, 0x5c
	je	.label_411
	cmp	edi, 0x25
	jne	.label_415
	lea	rbx, [r13 + 1]
	mov	al, byte ptr [r13 + 1]
	cmp	al, 0x71
	je	.label_416
	cmp	al, 0x62
	je	.label_422
	cmp	al, 0x25
	jne	.label_423
	mov	edi, 0x25
	call	putchar_unlocked
	jmp	.label_405
	.section	.text
	.align	32
	#Procedure 0x404e64
	.globl sub_404e64
	.type sub_404e64, @function
sub_404e64:

	nop	word ptr cs:[rax + rax]
.label_411:
	xor	esi, esi
	mov	rdi, r13
	call	print_esc
	movsxd	rbx, eax
	add	rbx, r13
	jmp	.label_405
	.section	.text
	.align	32
	#Procedure 0x404e85
	.globl sub_404e85
	.type sub_404e85, @function
sub_404e85:

	nop	word ptr cs:[rax + rax]
.label_415:
	call	putchar_unlocked
	mov	rbx, r13
	jmp	.label_405
.label_416:
	test	r15d, r15d
	jle	.label_405
	mov	rsi, qword ptr [r12]
	mov	edi, 3
	call	quotearg_style
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	jmp	.label_420
.label_422:
	test	r15d, r15d
	jle	.label_405
	mov	rdi, qword ptr [r12]
	call	print_esc_string
.label_420:
	add	r12, 8
	dec	r15d
	jmp	.label_405
.label_423:
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	byte ptr [rsp + 0x78], 1
	mov	byte ptr [rsp + 0x98], 1
	mov	byte ptr [rsp + 0x95], 1
	mov	byte ptr [rsp + 0x93], 1
	mov	byte ptr [rsp + 0x8f], 1
	mov	byte ptr [rsp + 0x89], 1
	mov	byte ptr [rsp + 0x67], 1
	mov	byte ptr [rsp + 0x66], 1
	mov	byte ptr [rsp + 0x65], 1
	mov	byte ptr [rsp + 0x61], 1
	mov	byte ptr [rsp + 0x81], 1
	lea	rax, [rsp + 0x83]
	mov	byte ptr [rax + 4], 1
	mov	dword ptr [rax], 0x1010101
	xor	eax, eax
	mov	ebp, 1
	jmp	.label_424
	.section	.text
	.align	32
	#Procedure 0x404fbd
	.globl sub_404fbd
	.type sub_404fbd, @function
sub_404fbd:

	nop	dword ptr [rax]
.label_410:
	inc	rbp
	inc	rax
.label_424:
	movsx	ecx, byte ptr [r13 + rbp]
	lea	edx, [rcx - 0x20]
	cmp	edx, 0x29
	ja	.label_421
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_425]]
.label_522:
	mov	byte ptr [rsp + 0x78], 0
	mov	byte ptr [rsp + 0x98], 0
	mov	byte ptr [rsp + 0x93], 0
	mov	byte ptr [rsp + 0x8f], 0
	mov	byte ptr [rsp + 0x65], 0
	mov	byte ptr [rsp + 0x85], 0
	mov	byte ptr [rsp + 0x83], 0
	mov	byte ptr [rsp + 0x61], 0
	mov	byte ptr [rsp + 0x81], 0
	jmp	.label_410
.label_521:
	mov	byte ptr [rsp + 0x95], 0
	mov	byte ptr [rsp + 0x93], 0
	mov	byte ptr [rsp + 0x89], 0
	mov	word ptr [rsp + 0x83], 0
	jmp	.label_410
.label_523:
	mov	byte ptr [rsp + 0x93], 0
	mov	byte ptr [rsp + 0x83], 0
	jmp	.label_410
.label_421:
	cmp	cl, 0x2a
	jne	.label_426
	lea	rbx, [r13 + rbp + 1]
	inc	rbp
	xor	eax, eax
	mov	dl, 1
	test	r15d, r15d
	jle	.label_404
	mov	rdi, qword ptr [r12]
	call	vstrtoimax
	mov	rcx, rax
	sub	rax, -0x80000000
	shr	rax, 0x20
	jne	.label_434
	add	r12, 8
	dec	r15d
	mov	rax, rcx
	mov	dl, 1
	jmp	.label_404
.label_426:
	lea	rbx, [r13 + rbp]
	movsx	ecx, byte ptr [rbx]
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_408
	nop	dword ptr [rax]
.label_413:
	movsx	ecx, byte ptr [r13 + rax + 2]
	add	ecx, -0x30
	inc	rax
	cmp	ecx, 0xa
	jb	.label_413
	lea	rbx, [r13 + rax + 1]
	inc	rax
	xor	edx, edx
	mov	rbp, rax
	jmp	.label_419
.label_408:
	xor	edx, edx
.label_419:
	mov	rax, qword ptr [rsp + 0x10]
.label_404:
	cmp	byte ptr [rbx], 0x2e
	mov	qword ptr [rsp + 0x10], rax
	jne	.label_417
	mov	byte ptr [rsp + 0x83], 0
	cmp	byte ptr [rbx + 1], 0x2a
	jne	.label_429
	add	rbx, 2
	add	rbp, 2
	mov	sil, 1
	test	r15d, r15d
	jle	.label_431
	mov	rdi, qword ptr [r12]
	mov	dword ptr [rsp + 0x1c], edx
	call	vstrtoimax
	mov	edx, dword ptr [rsp + 0x1c]
	mov	ecx, 0xffffffff
	mov	qword ptr [rsp + 8], rcx
	test	rax, rax
	js	.label_403
	mov	ecx, 0x80000000
	cmp	rax, rcx
	jge	.label_409
	mov	qword ptr [rsp + 8], rax
.label_403:
	add	r12, 8
	dec	r15d
	mov	sil, 1
	jmp	.label_414
	.section	.text
	.align	32
	#Procedure 0x40513e
	.globl sub_40513e
	.type sub_40513e, @function
sub_40513e:

	nop	
.label_429:
	inc	rbp
	movsx	eax, byte ptr [rbx + 1]
	inc	rbx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_429
.label_417:
	xor	esi, esi
	jmp	.label_414
.label_431:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_414
	.section	.text
	.align	32
	#Procedure 0x40515f
	.globl sub_40515f
	.type sub_40515f, @function
sub_40515f:

	nop	
.label_432:
	inc	rbx
.label_414:
	movzx	eax, byte ptr [rbx]
	mov	ecx, eax
	add	cl, 0xb4
	movzx	ecx, cl
	cmp	cl, 0x2e
	ja	.label_428
	bt	r14, rcx
	jb	.label_432
.label_428:
	cmp	byte ptr [rsp + rax + 0x20], 0
	je	.label_433
	test	r15d, r15d
	jle	.label_401
	dec	r15d
	mov	r10, qword ptr [r12]
	add	r12, 8
	jmp	.label_402
.label_401:
	mov	r10d, OFFSET FLAT:label_27
.label_402:
	movzx	ecx, dl
	movzx	r9d, sil
	movsx	edx, al
	mov	rdi, r13
	mov	rsi, rbp
	mov	r8, qword ptr [rsp + 0x10]
	push	r10
	mov	rbp, qword ptr [rsp + 0x10]
	push	rbp
	call	print_direc
	add	rsp, 0x10
	nop	
.label_405:
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	mov	r13, rbx
	jne	.label_418
.label_427:
	mov	eax, dword ptr [rsp + 4]
	sub	eax, r15d
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_430
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	inc	ebx
	sub	ebx, r13d
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	mov	r8, r13
	call	error
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
	jmp	.label_407
.label_409:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
.label_407:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r12]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_211
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_436:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405296
	.globl sub_405296
	.type sub_405296, @function
sub_405296:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40529b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_436
	test	rdx, rdx
	je	.label_436
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052c0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052ca
	.globl sub_4052ca
	.type sub_4052ca, @function
sub_4052ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052d0

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	al, byte ptr [rbx]
	cmp	al, 0x27
	je	.label_439
	cmp	al, 0x22
	jne	.label_437
.label_439:
	movzx	r14d, byte ptr [rbx + 1]
	test	r14, r14
	je	.label_437
	cmp	byte ptr [rbx + 2], 0
	je	.label_438
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_438
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_438
.label_437:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	strtoimax
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbx
	call	verify_numeric
.label_438:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x405359
	.globl sub_405359
	.type sub_405359, @function
sub_405359:

	nop	dword ptr [rax]
.label_441:
	ret	
	.section	.text
	.align	32
	#Procedure 0x405361
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_440
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_442]]
.label_440:
	xor	eax, eax
	jmp	.label_441
	.section	.text
	.align	32
	#Procedure 0x405376
	.globl sub_405376
	.type sub_405376, @function
sub_405376:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405380

	.globl print_unicode_char
	.type print_unicode_char, @function
print_unicode_char:
	mov	eax, esi
	mov	rcx, rdi
	test	edx, edx
	mov	esi, OFFSET FLAT:exit_failure_callback
	mov	edx, OFFSET FLAT:fallback_failure_callback
	cmovne	rdx, rsi
	mov	esi, OFFSET FLAT:fwrite_success_callback
	mov	edi, eax
	jmp	unicode_to_mb
	.section	.text
	.align	32
	#Procedure 0x4053a1
	.globl sub_4053a1
	.type sub_4053a1, @function
sub_4053a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053b0

	.globl fwrite_success_callback
	.type fwrite_success_callback, @function
fwrite_success_callback:
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	fwrite
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053cb
	.globl sub_4053cb
	.type sub_4053cb, @function
sub_4053cb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053d0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405409
	.globl sub_405409
	.type sub_405409, @function
sub_405409:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405410

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	.section	.text
	.align	32
	#Procedure 0x405421
	.globl sub_405421
	.type sub_405421, @function
sub_405421:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405430
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	.section	.text
	.align	32
	#Procedure 0x405444
	.globl sub_405444
	.type sub_405444, @function
sub_405444:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405450

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_398]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_399]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_400]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054bd
	.globl sub_4054bd
	.type sub_4054bd, @function
sub_4054bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054c0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4054cd
	.globl sub_4054cd
	.type sub_4054cd, @function
sub_4054cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x4054d7
	.globl sub_4054d7
	.type sub_4054d7, @function
sub_4054d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405545
	.globl sub_405545
	.type sub_405545, @function
sub_405545:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405552
	.globl sub_405552
	.type sub_405552, @function
sub_405552:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405576
	.globl sub_405576
	.type sub_405576, @function
sub_405576:

	nop	word ptr cs:[rax + rax]
