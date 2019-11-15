	.section	.text
	.align	32
	#Procedure 0x401aa9
	.globl sub_401aa9
	.type sub_401aa9, @function
sub_401aa9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x401aaa
	.globl sub_401aaa
	.type sub_401aaa, @function
sub_401aaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ae2
	.globl sub_401ae2
	.type sub_401ae2, @function
sub_401ae2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b2a
	.globl sub_401b2a
	.type sub_401b2a, @function
sub_401b2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b4c
	.globl sub_401b4c
	.type sub_401b4c, @function
sub_401b4c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b5d
	.globl sub_401b5d
	.type sub_401b5d, @function
sub_401b5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b76
	.globl sub_401b76
	.type sub_401b76, @function
sub_401b76:

	nop	word ptr cs:[rax + rax]
.label_9:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401b81
	.globl sub_401b81
	.type sub_401b81, @function
sub_401b81:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b8f

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_10
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_9
	jmp	hash_free
.label_10:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x401bb0
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
	#Procedure 0x401bbf
	.globl sub_401bbf
	.type sub_401bbf, @function
sub_401bbf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401bc0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_11
	test	ah, 2
	jne	.label_13
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_12
.label_13:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_11:
	xor	eax, eax
.label_12:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c0d
	.globl sub_401c0d
	.type sub_401c0d, @function
sub_401c0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c10

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_14
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_15]]
.label_14:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c27
	.globl sub_401c27
	.type sub_401c27, @function
sub_401c27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c30

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_16
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_16:
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c5c
	.globl sub_401c5c
	.type sub_401c5c, @function
sub_401c5c:

	nop	dword ptr [rax]
.label_20:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401c65
	.globl sub_401c65
	.type sub_401c65, @function
sub_401c65:

	nop	dword ptr [rax + rax]
.label_21:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_20
	mov	edi, OFFSET FLAT:label_17
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_19
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x401c8d

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_21
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401ca0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_22
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_23]]
	jbe	.label_24
	movss	xmm1,  dword ptr [dword ptr [rip + label_27]]
	ucomiss	xmm1, xmm0
	jbe	.label_24
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_26]]
	jbe	.label_24
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_24
	addss	xmm1,  dword ptr [dword ptr [rip + label_23]]
	ucomiss	xmm0, xmm1
	jbe	.label_24
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_25]]
	ucomiss	xmm2, xmm0
	jb	.label_24
	ucomiss	xmm0, xmm1
	ja	.label_22
.label_24:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_22:
	ret	
	.section	.text
	.align	32
	#Procedure 0x401d14
	.globl sub_401d14
	.type sub_401d14, @function
sub_401d14:

	nop	word ptr cs:[rax + rax]
.label_33:
	mov	edi, OFFSET FLAT:label_28
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_30
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x401d39
	.globl sub_401d39
	.type sub_401d39, @function
sub_401d39:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d3c

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_33
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_31
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_31
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_32
.label_31:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_34
	mov	al, 1
	test	rbx, rbx
	je	.label_32
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_34:
	xor	eax, eax
.label_32:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401da0

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
.label_53:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_121
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_59]]
.label_943:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_67
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_74
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_944:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_83
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_83
	xor	r14d, r14d
.label_95:
	cmp	r14, r11
	jae	.label_91
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_91:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_95
.label_83:
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
	jmp	.label_108
.label_936:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_108
.label_939:
	mov	al, 1
.label_937:
	mov	r12b, 1
.label_940:
	test	r12b, 1
	mov	cl, 1
	je	.label_116
	mov	ecx, eax
.label_116:
	mov	al, cl
.label_938:
	test	r12b, 1
	jne	.label_119
	test	r11, r11
	je	.label_99
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_99:
	mov	r14d, 1
	jmp	.label_126
.label_119:
	xor	r14d, r14d
.label_126:
	mov	ecx, OFFSET FLAT:label_74
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_108
.label_941:
	test	r12b, 1
	jne	.label_132
	test	r11, r11
	je	.label_111
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_111:
	mov	r14d, 1
	jmp	.label_135
.label_942:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_138
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_108
.label_132:
	xor	r14d, r14d
.label_135:
	mov	eax, OFFSET FLAT:label_138
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_108:
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
	jmp	.label_63
	.section	.text
	.align	32
	#Procedure 0x40207c
	.globl sub_40207c
	.type sub_40207c, @function
sub_40207c:

	nop	dword ptr [rax]
.label_101:
	inc	rsi
.label_63:
	cmp	rbp, -1
	je	.label_72
	cmp	rsi, rbp
	jne	.label_114
	jmp	.label_79
	.section	.text
	.align	32
	#Procedure 0x402093
	.globl sub_402093
	.type sub_402093, @function
sub_402093:

	nop	word ptr cs:[rax + rax]
.label_72:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_79
.label_114:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_86
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_71
	cmp	rbp, -1
	jne	.label_71
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
.label_71:
	cmp	rbx, rbp
	jbe	.label_97
.label_86:
	xor	r8d, r8d
.label_50:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_100
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_105]]
.label_979:
	test	rsi, rsi
	jne	.label_93
	jmp	.label_109
	.section	.text
	.align	32
	#Procedure 0x40212e
	.globl sub_40212e
	.type sub_40212e, @function
sub_40212e:

	nop	
.label_97:
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
	jne	.label_124
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_50
	jmp	.label_66
.label_124:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_50
.label_983:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_139
	test	rsi, rsi
	jne	.label_140
	cmp	rbp, 1
	je	.label_109
	xor	r13d, r13d
	jmp	.label_48
.label_972:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_145
	cmp	byte ptr [rsp + 7], 0
	jne	.label_42
	cmp	r12d, 2
	jne	.label_147
	mov	eax, r9d
	and	al, 1
	jne	.label_147
	cmp	r14, r11
	jae	.label_148
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_148:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_36
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_36:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_44
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_44:
	add	r14, 3
	mov	r9b, 1
.label_147:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_52
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_52:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_55
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_55
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_55
	cmp	r14, r11
	jae	.label_68
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_68:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_78
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_78:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_48
.label_973:
	mov	bl, 0x62
	jmp	.label_82
.label_974:
	mov	cl, 0x74
	jmp	.label_85
.label_975:
	mov	bl, 0x76
	jmp	.label_82
.label_976:
	mov	bl, 0x66
	jmp	.label_82
.label_977:
	mov	cl, 0x72
	jmp	.label_85
.label_980:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_89
	cmp	byte ptr [rsp + 7], 0
	jne	.label_42
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
	jae	.label_96
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_96:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_106
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_106:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_110
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_110:
	add	r14, 3
	xor	r9d, r9d
.label_89:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_48
.label_981:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_123
	cmp	r12d, 2
	jne	.label_93
	cmp	byte ptr [rsp + 7], 0
	je	.label_93
	jmp	.label_42
.label_982:
	cmp	r12d, 2
	jne	.label_130
	cmp	byte ptr [rsp + 7], 0
	jne	.label_42
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_62
.label_100:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_92
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
.label_41:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_45
	test	r8b, r8b
	je	.label_45
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_48
.label_139:
	test	rsi, rsi
	jne	.label_54
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_54
.label_109:
	mov	dl, 1
.label_978:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_42
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_48:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_61
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_64
	jmp	.label_51
	.section	.text
	.align	32
	#Procedure 0x402474
	.globl sub_402474
	.type sub_402474, @function
sub_402474:

	nop	word ptr cs:[rax + rax]
.label_61:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_51
.label_64:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_75
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_62
	jmp	.label_88
	.section	.text
	.align	32
	#Procedure 0x4024bd
	.globl sub_4024bd
	.type sub_4024bd, @function
sub_4024bd:

	nop	dword ptr [rax]
.label_51:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_88
	jmp	.label_62
.label_75:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_88
.label_145:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_101
	xor	r15d, r15d
	jmp	.label_93
.label_130:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_85
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_62
.label_85:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_42
.label_82:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_48
	nop	word ptr cs:[rax + rax]
.label_88:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_42
	cmp	r12d, 2
	jne	.label_117
	mov	eax, r9d
	and	al, 1
	jne	.label_117
	cmp	r14, r11
	jae	.label_120
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_120:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_40
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_40:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_128
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_128:
	add	r14, 3
	mov	r9b, 1
.label_117:
	cmp	r14, r11
	jae	.label_131
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_131:
	inc	r14
	jmp	.label_133
.label_92:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_136
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_136:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_146:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_149
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_39
	cmp	rbp, -2
	je	.label_81
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_49
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_90:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_69
	bt	rsi, rdx
	jb	.label_66
.label_69:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_90
.label_49:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_77
	xor	r13d, r13d
.label_77:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_146
	jmp	.label_41
.label_55:
	xor	r13d, r13d
	jmp	.label_48
.label_54:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_48
.label_123:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_93
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_93
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_93
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_35
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_60
	cmp	byte ptr [rsp + 7], 0
	jne	.label_42
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_112
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_112:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_115
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_115:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_125
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_125:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_127
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_127:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_48
.label_93:
	xor	eax, eax
.label_140:
	xor	r13d, r13d
	jmp	.label_48
.label_45:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_134
	.section	.text
	.align	32
	#Procedure 0x4027a3
	.globl sub_4027a3
	.type sub_4027a3, @function
sub_4027a3:

	nop	word ptr cs:[rax + rax]
.label_94:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_134:
	test	r8b, r8b
	je	.label_141
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_142
	cmp	r14, r11
	jae	.label_70
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_70:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_142
	.section	.text
	.align	32
	#Procedure 0x4027ec
	.globl sub_4027ec
	.type sub_4027ec, @function
sub_4027ec:

	nop	dword ptr [rax]
.label_141:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_66
	cmp	r12d, 2
	jne	.label_37
	mov	eax, r9d
	and	al, 1
	jne	.label_37
	cmp	r14, r11
	jae	.label_38
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_38:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_43
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_43:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_98
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_98:
	add	r14, 3
	mov	r9b, 1
.label_37:
	cmp	r14, r11
	jae	.label_107
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_107:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_57
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_57:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_65
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_65:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_142:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_62
	test	r9b, 1
	je	.label_84
	mov	ebx, eax
	and	bl, 1
	jne	.label_84
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_87
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_87:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_103
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_103:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_84:
	cmp	r14, r11
	jae	.label_94
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_94
	.section	.text
	.align	32
	#Procedure 0x4028f3
	.globl sub_4028f3
	.type sub_4028f3, @function
sub_4028f3:

	nop	word ptr cs:[rax + rax]
.label_62:
	test	r9b, 1
	je	.label_102
	and	al, 1
	jne	.label_102
	cmp	r14, r11
	jae	.label_104
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_104:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_80
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_80:
	add	r14, 2
	xor	r9d, r9d
.label_102:
	mov	ebx, r15d
.label_133:
	cmp	r14, r11
	jae	.label_113
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_113:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_101
.label_39:
	xor	r13d, r13d
.label_149:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_41
.label_81:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_129
	mov	rsi, qword ptr [rsp + 0x50]
.label_137:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_73
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_137
	xor	r13d, r13d
	jmp	.label_41
.label_129:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_41
.label_73:
	xor	r13d, r13d
	jmp	.label_41
.label_35:
	xor	r13d, r13d
	jmp	.label_48
.label_60:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_48
	.section	.text
	.align	32
	#Procedure 0x4029c8
	.globl sub_4029c8
	.type sub_4029c8, @function
sub_4029c8:

	nop	dword ptr [rax + rax]
.label_79:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_144
	or	dl, al
	je	.label_66
.label_144:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_46
	or	dl, al
	jne	.label_46
	test	r10b, 1
	jne	.label_47
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_46
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_53
.label_46:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_56
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_58
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_58
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_76:
	cmp	r14, r11
	jae	.label_143
	mov	byte ptr [rcx + r14], al
.label_143:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_76
	jmp	.label_58
.label_42:
	mov	qword ptr [rsp + 0x20], rbp
.label_66:
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
.label_118:
	mov	r14, rax
.label_122:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_47:
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
	jmp	.label_118
.label_56:
	mov	rcx, qword ptr [rsp + 8]
.label_58:
	cmp	r14, r11
	jae	.label_122
	mov	byte ptr [rcx + r14], 0
	jmp	.label_122
.label_121:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402b5c
	.globl sub_402b5c
	.type sub_402b5c, @function
sub_402b5c:

	nop	dword ptr [rax]
.label_152:
	mov	edi, ebp
	mov	rsi, r14
	mov	rdx, rbx
	call	cache_fstatat
	mov	ecx, eax
	mov	eax, 0xffffffff
	test	ecx, ecx
	jne	.label_150
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_151
	xor	eax, eax
	jmp	.label_150
	.section	.text
	.align	32
	#Procedure 0x402b8b

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	ebp, edi
	call	can_write_any_file
	test	al, al
	je	.label_152
	xor	eax, eax
	jmp	.label_150
.label_151:
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, ebp
	mov	rsi, r14
	call	faccessat
	test	eax, eax
	mov	eax, 0
	je	.label_150
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_150:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bdb
	.globl sub_402bdb
	.type sub_402bdb, @function
sub_402bdb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402be0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bec
	.globl sub_402bec
	.type sub_402bec, @function
sub_402bec:

	nop	dword ptr [rax]
.label_154:
	mov	edi, ebp
	call	close
	xor	ebx, ebx
	jmp	.label_153
.label_155:
	test	ebp, ebp
	sete	bl
.label_153:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c07
	.globl sub_402c07
	.type sub_402c07, @function
sub_402c07:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c0b

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	push	r14
	push	rbx
	xor	ebx, ebx
	mov	edx, 0x30900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_153
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_154
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, rbx
	call	readdir_ignoring_dot_and_dotdot
	mov	r14, rax
	mov	ebp, dword ptr [rbp]
	mov	rdi, rbx
	call	closedir
	test	r14, r14
	je	.label_155
	xor	ebx, ebx
	jmp	.label_153
	.section	.text
	.align	32
	#Procedure 0x402c60

	.globl cache_stat_init
	.type cache_stat_init, @function
cache_stat_init:
	mov	qword ptr [rdi + 0x30], -1
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c69
	.globl sub_402c69
	.type sub_402c69, @function
sub_402c69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c70
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c7a
	.globl sub_402c7a
	.type sub_402c7a, @function
sub_402c7a:

	nop	word ptr [rax + rax]
.label_157:
	mov	eax, ebx
.label_156:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c8d
	.globl sub_402c8d
	.type sub_402c8d, @function
sub_402c8d:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c9c

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_157
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_156
	.section	.text
	.align	32
	#Procedure 0x402cd0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cd8
	.globl sub_402cd8
	.type sub_402cd8, @function
sub_402cd8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ce0
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402cf4
	.globl sub_402cf4
	.type sub_402cf4, @function
sub_402cf4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d00
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_158
	.section	.text
	.align	32
	#Procedure 0x402d0d
	.globl sub_402d0d
	.type sub_402d0d, @function
sub_402d0d:

	nop	dword ptr [rax]
.label_161:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d1e
	.globl sub_402d1e
	.type sub_402d1e, @function
sub_402d1e:

	nop	word ptr cs:[rax + rax]
.label_162:
	add	r14, 0x10
.label_158:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_161
	cmp	qword ptr [r14], 0
	je	.label_162
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_159
	nop	word ptr cs:[rax + rax]
.label_160:
	test	cl, 1
	je	.label_164
	mov	rdi, qword ptr [rbx]
	call	rax
.label_164:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_160
.label_159:
	test	cl, cl
	je	.label_163
	mov	rdi, qword ptr [r14]
	call	rax
.label_163:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_162
	.section	.text
	.align	32
	#Procedure 0x402da0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x402daa
	.globl sub_402daa
	.type sub_402daa, @function
sub_402daa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402db0

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
	je	.label_165
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
.label_165:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402e02
	.globl sub_402e02
	.type sub_402e02, @function
sub_402e02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e10

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_166
	test	rdx, rdx
	je	.label_166
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_166:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402e3b
	.globl sub_402e3b
	.type sub_402e3b, @function
sub_402e3b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e40

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebp, 2
	cmp	qword ptr [rdi], 0
	je	.label_167
	cmp	byte ptr [r14 + 8], 0
	mov	eax, 0x218
	mov	esi, 0x258
	cmove	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	rbx, rax
	mov	eax, 2
	nop	word ptr [rax + rax]
.label_173:
	mov	ebp, eax
.label_170:
	mov	rdi, rbx
	call	rpl_fts_read
	test	rax, rax
	je	.label_168
	mov	rdi, rbx
	mov	rsi, rax
	mov	rdx, r14
	call	rm_fts
	lea	ecx, [rax - 2]
	cmp	ecx, 2
	jae	.label_169
	cmp	ebp, 2
	jne	.label_170
	cmp	eax, 3
	jne	.label_170
	jmp	.label_173
	.section	.text
	.align	32
	#Procedure 0x402eb1
	.globl sub_402eb1
	.type sub_402eb1, @function
sub_402eb1:

	nop	word ptr cs:[rax + rax]
.label_169:
	cmp	eax, 4
	mov	eax, 4
	je	.label_173
	mov	edi, OFFSET FLAT:label_175
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:label_177
	call	__assert_fail
.label_168:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	je	.label_171
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_171:
	mov	rdi, rbx
	call	rpl_fts_close
	test	eax, eax
	je	.label_167
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_167:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f59
	.globl sub_402f59
	.type sub_402f59, @function
sub_402f59:

	nop	dword ptr [rax]
.label_178:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402f65
	.globl sub_402f65
	.type sub_402f65, @function
sub_402f65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f6f
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_178
	call	rpl_calloc
	test	rax, rax
	je	.label_178
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f90
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_179
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_179:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402fb3
	.globl sub_402fb3
	.type sub_402fb3, @function
sub_402fb3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fc0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_180
	test	rax, rax
	je	.label_181
.label_180:
	pop	rbx
	ret	
.label_181:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402fda
	.globl sub_402fda
	.type sub_402fda, @function
sub_402fda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fe0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fea
	.globl sub_402fea
	.type sub_402fea, @function
sub_402fea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ff0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ff7
	.globl sub_402ff7
	.type sub_402ff7, @function
sub_402ff7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403000

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_182
	cmp	rcx, 0x1021994
	je	.label_182
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_182
	mov	al, 1
.label_182:
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40302b
	.globl sub_40302b
	.type sub_40302b, @function
sub_40302b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403030
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
	#Procedure 0x40303d
	.globl sub_40303d
	.type sub_40303d, @function
sub_40303d:

	nop	dword ptr [rax]
.label_183:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403043
	.globl sub_403043
	.type sub_403043, @function
sub_403043:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403051

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	cmp	byte ptr [rdi], 0x2e
	jne	.label_183
	xor	eax, eax
	cmp	byte ptr [rdi + 1], 0x2e
	sete	al
	mov	al, byte ptr [rdi + rax + 1]
	test	al, al
	sete	cl
	cmp	al, 0x2f
	sete	al
	or	al, cl
	ret	
	.section	.text
	.align	32
	#Procedure 0x403070
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_184
	xor	eax, eax
.label_187:
	cmp	qword ptr [r8], 0
	je	.label_185
	test	r8, r8
	je	.label_185
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_186:
	cmp	rax, rdx
	jae	.label_184
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_186
.label_185:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_187
.label_184:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030b3
	.globl sub_4030b3
	.type sub_4030b3, @function
sub_4030b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030c0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_189:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_188
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_190
	.section	.text
	.align	32
	#Procedure 0x4030e9
	.globl sub_4030e9
	.type sub_4030e9, @function
sub_4030e9:

	nop	dword ptr [rax]
.label_188:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_190:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_191
	inc	r9
	cmp	r9, 0xa
	jb	.label_189
.label_191:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x40311f
	.globl sub_40311f
	.type sub_40311f, @function
sub_40311f:

	nop	
.label_192:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403123
	.globl sub_403123
	.type sub_403123, @function
sub_403123:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40312b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_192
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x403140
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40314a
	.globl sub_40314a
	.type sub_40314a, @function
sub_40314a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403150

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
	je	.label_193
	mov	qword ptr [rax], rbx
.label_193:
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
	#Procedure 0x40323c
	.globl sub_40323c
	.type sub_40323c, @function
sub_40323c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403240

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
	#Procedure 0x403257
	.globl sub_403257
	.type sub_403257, @function
sub_403257:

	nop	word ptr [rax + rax]
.label_194:
	add	rbx, 2
.label_196:
	cmp	rbx, -1
	je	.label_195
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_194
	mov	r14, rbx
.label_195:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x403284
	.globl sub_403284
	.type sub_403284, @function
sub_403284:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403290

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_196
	.section	.text
	.align	32
	#Procedure 0x4032ae
	.globl sub_4032ae
	.type sub_4032ae, @function
sub_4032ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4032b0

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_201
	.section	.text
	.align	32
	#Procedure 0x4032ba
	.globl sub_4032ba
	.type sub_4032ba, @function
sub_4032ba:

	nop	word ptr [rax + rax]
.label_200:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_201:
	test	rcx, rcx
	je	.label_197
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_200
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_200
.label_197:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_198
	nop	word ptr cs:[rax + rax]
.label_199:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_203
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_203:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_202
	mov	rcx, qword ptr [rsi + 8]
.label_202:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_199
.label_198:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403337
	.globl sub_403337
	.type sub_403337, @function
sub_403337:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403340
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_204
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_204:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403366
	.globl sub_403366
	.type sub_403366, @function
sub_403366:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403370

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_205
	test	rbx, rbx
	jne	.label_205
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_205:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_207
	test	rax, rax
	je	.label_206
.label_207:
	pop	rbx
	ret	
.label_206:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4033a0

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033ad
	.globl sub_4033ad
	.type sub_4033ad, @function
sub_4033ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_208
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_210:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_210
.label_208:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_212
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_211]], OFFSET FLAT:slot0
.label_212:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_209
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_209:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x403441
	.globl sub_403441
	.type sub_403441, @function
sub_403441:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403450
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403459
	.globl sub_403459
	.type sub_403459, @function
sub_403459:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403460
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
	#Procedure 0x403493
	.globl sub_403493
	.type sub_403493, @function
sub_403493:

	nop	word ptr cs:[rax + rax]
.label_213:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034a3
	.globl sub_4034a3
	.type sub_4034a3, @function
sub_4034a3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034ae

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	cmp	byte ptr [rdi], 0
	je	.label_213
	push	rax
	mov	edi, esi
	call	nonexistent_file_errno
	add	rsp, 8
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034c0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_214
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_215
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_214:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4034ec
	.globl sub_4034ec
	.type sub_4034ec, @function
sub_4034ec:

	nop	word ptr [rax + rax]
.label_215:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403500

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40350b
	.globl sub_40350b
	.type sub_40350b, @function
sub_40350b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403510
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_216
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_219:
	cmp	qword ptr [rsi], 0
	je	.label_221
	mov	rax, rsi
	nop	dword ptr [rax]
.label_217:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_217
	inc	rdx
.label_221:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_219
.label_216:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_218
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_220
.label_218:
	xor	eax, eax
.label_220:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403569
	.globl sub_403569
	.type sub_403569, @function
sub_403569:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403570

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
	je	.label_238
	mov	edx, OFFSET FLAT:label_227
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_235
.label_238:
	mov	edx, OFFSET FLAT:label_236
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_235:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_240
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
	mov	esi, OFFSET FLAT:label_237
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_223
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_224]]
.label_1014:
	add	rsp, 8
	jmp	.label_222
.label_223:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
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
	jmp	.label_222
.label_1015:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
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
.label_1016:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_230
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
.label_1017:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
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
.label_1018:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_225
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
	jmp	.label_222
.label_1019:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
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
	jmp	.label_222
.label_1020:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
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
	jmp	.label_222
.label_1021:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
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
	jmp	.label_222
.label_1023:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_234
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
	jmp	.label_222
.label_1022:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_239
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
.label_222:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038c8
	.globl sub_4038c8
	.type sub_4038c8, @function
sub_4038c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038d0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038e8
	.globl sub_4038e8
	.type sub_4038e8, @function
sub_4038e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038f0

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
	#Procedure 0x403929
	.globl sub_403929
	.type sub_403929, @function
sub_403929:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403930

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
	#Procedure 0x403941
	.globl sub_403941
	.type sub_403941, @function
sub_403941:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403950
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
	#Procedure 0x403964
	.globl sub_403964
	.type sub_403964, @function
sub_403964:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403970

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
	jne	.label_247
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
	je	.label_241
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_242
	mov	eax, OFFSET FLAT:label_243
	jmp	.label_244
.label_248:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_138
	mov	eax, OFFSET FLAT:label_74
.label_244:
	cmove	rax, rcx
.label_247:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039ef
	.globl sub_4039ef
	.type sub_4039ef, @function
sub_4039ef:

	nop	dword ptr [rax]
.label_241:
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
	je	.label_248
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_245
	mov	eax, OFFSET FLAT:label_246
	jmp	.label_244
	.section	.text
	.align	32
	#Procedure 0x403a30
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_257
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_249
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_255
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_249
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_249
.label_257:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_249
.label_255:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_254
	call	fts_lfree
.label_254:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_256
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_256:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_251
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_251
	test	byte ptr [rbx + 0x48], 4
	jne	.label_251
	mov	esi, OFFSET FLAT:label_252
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_259
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_253
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_250
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_249
.label_251:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_249:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_259:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_249
.label_253:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_258
.label_250:
	mov	edi, ebp
	call	close
.label_258:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_249
	.section	.text
	.align	32
	#Procedure 0x403b62
	.globl sub_403b62
	.type sub_403b62, @function
sub_403b62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b70

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_262
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_266:
	test	rbp, rbp
	je	.label_260
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_265
.label_260:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_263
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_267
	.section	.text
	.align	32
	#Procedure 0x403c03
	.globl sub_403c03
	.type sub_403c03, @function
sub_403c03:

	nop	word ptr cs:[rax + rax]
.label_265:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_261
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_267:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_266
.label_262:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	.section	.text
	.align	32
	#Procedure 0x403c6e
	.globl sub_403c6e
	.type sub_403c6e, @function
sub_403c6e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403c70

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_268
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_269
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_269:
	add	rax, rcx
.label_268:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c98
	.globl sub_403c98
	.type sub_403c98, @function
sub_403c98:

	nop	dword ptr [rax + rax]
.label_273:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_271
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_270
.label_271:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_272:
	xor	eax, eax
.label_270:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ccf
	.globl sub_403ccf
	.type sub_403ccf, @function
sub_403ccf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403cd1

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_273
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_272
	.section	.text
	.align	32
	#Procedure 0x403d00

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
	#Procedure 0x403d49
	.globl sub_403d49
	.type sub_403d49, @function
sub_403d49:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_282
	nop	
.label_281:
	mov	edi, OFFSET FLAT:label_274
	call	strcmp
	test	eax, eax
	je	.label_279
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_281
.label_279:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_274
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_283
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_277
	mov	ecx, OFFSET FLAT:label_278
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_275
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_275
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_287
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_275:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_274
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_278
	mov	ecx, OFFSET FLAT:label_274
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_285
	mov	ecx, OFFSET FLAT:label_286
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
	#Procedure 0x403e6a
	.globl sub_403e6a
	.type sub_403e6a, @function
sub_403e6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e70
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e78
	.globl sub_403e78
	.type sub_403e78, @function
sub_403e78:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e80

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e84
	.globl sub_403e84
	.type sub_403e84, @function
sub_403e84:

	nop	word ptr cs:[rax + rax]
.label_290:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e92
	.globl sub_403e92
	.type sub_403e92, @function
sub_403e92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e9f

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_288
	.section	.text
	.align	32
	#Procedure 0x403ea5
	.globl sub_403ea5
	.type sub_403ea5, @function
sub_403ea5:

	nop	word ptr cs:[rax + rax]
.label_289:
	mov	edi, eax
	call	close
.label_288:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_290
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_289
	jmp	.label_288
	.section	.text
	.align	32
	#Procedure 0x403ed0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r13, r9
	mov	dword ptr [rsp + 0x1c], r8d
	mov	r12, rcx
	mov	r15d, edx
	mov	r14, rsi
	mov	ebp, dword ptr [rdi + 0x2c]
	mov	rbx, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [r14 + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	test	r13, r13
	je	.label_309
	mov	dword ptr [r13], 2
.label_309:
	lea	rdi, [rsp + 0x28]
	call	cache_stat_init
	test	r13, r13
	mov	dword ptr [rsp + 0xc], ebp
	mov	qword ptr [rsp + 0x10], rbx
	je	.label_297
	mov	edi, ebp
	mov	rsi, rbx
	call	is_empty_dir
	mov	bl, al
	movzx	eax, bl
	add	eax, 3
	mov	dword ptr [r13], eax
	jmp	.label_304
.label_297:
	xor	ebx, ebx
.label_304:
	mov	ebp, 3
	cmp	qword ptr [r14 + 0x20], 0
	jne	.label_294
	mov	eax, dword ptr [r12 + 4]
	cmp	eax, 5
	je	.label_296
	xor	r14d, r14d
	cmp	byte ptr [r12], 0
	jne	.label_310
	cmp	eax, 3
	je	.label_312
	cmp	byte ptr [r12 + 0x19], 0
	je	.label_310
.label_312:
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	write_protected_non_symlink
	mov	ebp, eax
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	ebp, ebp
	jne	.label_293
.label_310:
	cmp	dword ptr [r12 + 4], 3
	mov	ebp, 0
	jne	.label_296
.label_293:
	movzx	r13d, r15b
	shl	r13d, 2
	test	ebp, ebp
	js	.label_302
	xor	r15b, 1
	je	.label_302
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	cache_fstatat
	test	eax, eax
	je	.label_308
	call	__errno_location
	mov	r15d, dword ptr [rax]
	jmp	.label_307
.label_302:
	mov	r15d, r14d
.label_301:
	mov	r14d, r13d
.label_292:
	mov	r13d, ebp
	test	ebp, ebp
	mov	ebp, 3
	js	.label_307
	mov	eax, r14d
	and	al, 0xf
	cmp	al, 4
	je	.label_316
	cmp	al, 0xa
	jne	.label_291
	cmp	dword ptr [r12 + 4], 3
	je	.label_291
	jmp	.label_296
.label_308:
	mov	r15d, r14d
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r14d, 0xa
	cmp	eax, 0xa000
	je	.label_292
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
	jmp	.label_301
.label_316:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_291
	cmp	byte ptr [r12 + 0xa], 0
	mov	r15d, 0x15
	je	.label_307
	mov	eax, ebx
	xor	al, 1
	jne	.label_307
.label_291:
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	r15, rax
	cmp	r14d, 4
	setne	al
	cmp	dword ptr [rsp + 0x1c], 2
	setne	cl
	or	cl, al
	or	bl, cl
	je	.label_311
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	cache_fstatat
	test	eax, eax
	je	.label_317
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, r15
	call	error
	mov	ebp, 4
	jmp	.label_294
.label_307:
	mov	ebp, 4
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_294
.label_311:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_295
	mov	esi, OFFSET FLAT:label_299
	jmp	.label_300
.label_317:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_303
	mov	esi, OFFSET FLAT:label_305
	jmp	.label_306
.label_295:
	mov	esi, OFFSET FLAT:label_315
.label_300:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	call	__fprintf_chk
	jmp	.label_313
.label_303:
	mov	esi, OFFSET FLAT:label_314
.label_306:
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	r12,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rsp + 0x28]
	call	file_type
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r13
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, r15
	call	__fprintf_chk
.label_313:
	call	yesno
	test	al, al
	je	.label_294
.label_296:
	mov	ebp, 2
.label_294:
	mov	eax, ebp
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041cf
	.globl sub_4041cf
	.type sub_4041cf, @function
sub_4041cf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4041d0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_322
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_321
	cmp	byte ptr [r15], 0x2f
	je	.label_321
	mov	r12b, 0x2f
	jmp	.label_318
.label_322:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_318
.label_321:
	xor	r12d, r12d
.label_318:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_320
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_319
	mov	qword ptr [rax], rbp
.label_319:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_320:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042a8
	.globl sub_4042a8
	.type sub_4042a8, @function
sub_4042a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042b0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_324:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_323
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_324
.label_323:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042d6
	.globl sub_4042d6
	.type sub_4042d6, @function
sub_4042d6:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042e0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	test	al, al
	jne	.label_325
	push	rax
	call	geteuid
	test	eax, eax
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_325:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40430b
	.globl sub_40430b
	.type sub_40430b, @function
sub_40430b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404310

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_326
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_326
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_326:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x404336
	.globl sub_404336
	.type sub_404336, @function
sub_404336:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_327
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_334:
	cmp	qword ptr [r15], 0
	je	.label_331
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_336
	nop	word ptr cs:[rax + rax]
.label_330:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_332
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_333
	.section	.text
	.align	32
	#Procedure 0x4043b6
	.globl sub_4043b6
	.type sub_4043b6, @function
sub_4043b6:

	nop	word ptr cs:[rax + rax]
.label_332:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_333:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_330
.label_336:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_331
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_335
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_328
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_329
.label_335:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_329:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_331:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_334
	mov	al, 1
.label_327:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_328:
	xor	eax, eax
	jmp	.label_327
	.section	.text
	.align	32
	#Procedure 0x404455
	.globl sub_404455
	.type sub_404455, @function
sub_404455:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404460

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x404465
	.globl sub_404465
	.type sub_404465, @function
sub_404465:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404470
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_337
	xor	ebx, ebx
.label_339:
	cmp	qword ptr [r13], 0
	je	.label_338
	test	r13, r13
	je	.label_338
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_340:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_337
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_340
.label_338:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_339
.label_337:
	mov	rax, rbx
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
	#Procedure 0x4044e7
	.globl sub_4044e7
	.type sub_4044e7, @function
sub_4044e7:

	nop	word ptr [rax + rax]
.label_342:
	mov	ecx, 1
.label_341:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x404500
	.globl sub_404500
	.type sub_404500, @function
sub_404500:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404505

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_342
	test	rsi, rsi
	mov	ecx, 1
	je	.label_341
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_341
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_348:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_343:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_345]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_346]]
	jae	.label_347
.label_344:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_347:
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045a7
	.globl sub_4045a7
	.type sub_4045a7, @function
sub_4045a7:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4045a9

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_344
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_348
	cvtsi2ss	xmm0, rdi
	jmp	.label_343
	.section	.text
	.align	32
	#Procedure 0x4045c0

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045c5
	.globl sub_4045c5
	.type sub_4045c5, @function
sub_4045c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045d0

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rbx + 0x30]
	cmp	rcx, -1
	jne	.label_349
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_351
	mov	qword ptr [rbx + 0x30], -2
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	qword ptr [rbx + 8], rax
.label_351:
	mov	rcx, qword ptr [rbx + 0x30]
.label_349:
	xor	eax, eax
	test	rcx, rcx
	jns	.label_350
	mov	ebx, dword ptr [rbx + 8]
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_350:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40461f
	.globl sub_40461f
	.type sub_40461f, @function
sub_40461f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404620
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404629
	.globl sub_404629
	.type sub_404629, @function
sub_404629:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404630

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x404644
	.globl sub_404644
	.type sub_404644, @function
sub_404644:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404650
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
	#Procedure 0x40465f
	.globl sub_40465f
	.type sub_40465f, @function
sub_40465f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404660

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_357
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_359
	nop	word ptr cs:[rax + rax]
.label_354:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_352
	mov	rbx, qword ptr [rdi + 8]
.label_352:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_354
	jmp	.label_356
.label_359:
	mov	rbx, rdi
.label_356:
	mov	rdi, rbx
	call	free
.label_357:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_358
	call	fts_lfree
.label_358:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_360
	xor	ebx, ebx
	test	al, 4
	jne	.label_353
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_355
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_355:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_361
	jmp	.label_353
.label_360:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_353
	call	close
.label_361:
	test	eax, eax
	je	.label_353
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_353:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_363
	call	hash_free
.label_363:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_362
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_362:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404758
	.globl sub_404758
	.type sub_404758, @function
sub_404758:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404760
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
	#Procedure 0x404779
	.globl sub_404779
	.type sub_404779, @function
sub_404779:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404780

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40478a
	.globl sub_40478a
	.type sub_40478a, @function
sub_40478a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404790
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
	#Procedure 0x4047a0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
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

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x4047ba
	.globl sub_4047ba
	.type sub_4047ba, @function
sub_4047ba:

	nop	word ptr [rax + rax]
.label_369:
	mov	ax, 3
	jmp	.label_364
.label_367:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_364
	.section	.text
	.align	32
	#Procedure 0x4047d9
	.globl sub_4047d9
	.type sub_4047d9, @function
sub_4047d9:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047e1

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_372
	test	byte ptr [r14 + 0x48], 1
	je	.label_372
	mov	dl, 1
.label_372:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_366
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_366
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_365
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_374
.label_373:
	mov	ax, 8
	jmp	.label_364
.label_366:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_365
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_368
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_367
.label_368:
	mov	eax, dword ptr [r14]
.label_374:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_364:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_365:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_373
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_364
	cmp	ecx, 0x4000
	jne	.label_369
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_370
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_370
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_370:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_364
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_371
	cmp	cl, 0x2e
	jne	.label_364
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_364
.label_371:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_364
	.section	.text
	.align	32
	#Procedure 0x404950

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_375
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_375:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40496e
	.globl sub_40496e
	.type sub_40496e, @function
sub_40496e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404970

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_377
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
.label_378:
	ret	
.label_380:
	xor	eax, eax
	jmp	.label_378
	.section	.text
	.align	32
	#Procedure 0x4049a5
	.globl sub_4049a5
	.type sub_4049a5, @function
sub_4049a5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049af
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_380
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_379]]
	.section	.text
	.align	32
	#Procedure 0x4049c0

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_381
	cmp	ecx, 0x3fff
	jg	.label_393
	cmp	eax, 0x1000
	je	.label_397
	cmp	eax, 0x2000
	jne	.label_385
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
	mov	edx, 5
	jmp	dcgettext
.label_381:
	cmp	eax, 0x8000
	je	.label_383
	cmp	eax, 0xa000
	je	.label_388
	cmp	eax, 0xc000
	jne	.label_385
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
	mov	edx, 5
	jmp	dcgettext
.label_393:
	cmp	eax, 0x4000
	je	.label_387
	cmp	eax, 0x6000
	jne	.label_385
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_392
	mov	edx, 5
	jmp	dcgettext
.label_397:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
	mov	edx, 5
	jmp	dcgettext
.label_383:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_394
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	jmp	dcgettext
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
	mov	edx, 5
	jmp	dcgettext
.label_387:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	jmp	dcgettext
.label_385:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
	mov	edx, 5
	jmp	dcgettext
.label_394:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_384
	mov	edx, 5
	jmp	dcgettext
	.section	.text
	.align	32
	#Procedure 0x404ab4
	.globl sub_404ab4
	.type sub_404ab4, @function
sub_404ab4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ac0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x404ac9
	.globl sub_404ac9
	.type sub_404ac9, @function
sub_404ac9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ad0

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
	#Procedure 0x404b38
	.globl sub_404b38
	.type sub_404b38, @function
sub_404b38:

	nop	dword ptr [rax + rax]
.label_403:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_402
	mov	rdi, rax
	call	cycle_check_init
.label_404:
	mov	r14b, 1
.label_401:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_402:
	xor	r14d, r14d
	jmp	.label_401
	.section	.text
	.align	32
	#Procedure 0x404b6e
	.globl sub_404b6e
	.type sub_404b6e, @function
sub_404b6e:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404b75

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_403
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_404
	jmp	.label_401
	.section	.text
	.align	32
	#Procedure 0x404bb0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bba
	.globl sub_404bba
	.type sub_404bba, @function
sub_404bba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_405
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_410
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_410
	mov	qword ptr [r15 + 0x10], rax
.label_405:
	test	rbx, rbx
	je	.label_406
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_408:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_408
.label_406:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_409
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_411:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_411
	lea	rax, [rax + r8*8]
.label_409:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_407
.label_410:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_407:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c9d
	.globl sub_404c9d
	.type sub_404c9d, @function
sub_404c9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_412
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_414
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_412:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_413
	cmp	qword ptr [rax + 0x58], 0
	js	.label_413
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_414
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_413
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_413
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_413:
	add	rsp, 0x18
	ret	
.label_414:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404d32
	.globl sub_404d32
	.type sub_404d32, @function
sub_404d32:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40

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
	#Procedure 0x404dad
	.globl sub_404dad
	.type sub_404dad, @function
sub_404dad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404db0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x404dbd
	.globl sub_404dbd
	.type sub_404dbd, @function
sub_404dbd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404dc0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x404dc7
	.globl sub_404dc7
	.type sub_404dc7, @function
sub_404dc7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404dd0

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_415
	nop	dword ptr [rax]
.label_417:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_416
	call	closedir
.label_416:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_417
.label_415:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e0a
	.globl sub_404e0a
	.type sub_404e0a, @function
sub_404e0a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e10
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
	#Procedure 0x404e37
	.globl sub_404e37
	.type sub_404e37, @function
sub_404e37:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e40

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_418
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_418:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e62
	.globl sub_404e62
	.type sub_404e62, @function
sub_404e62:

	nop	word ptr cs:[rax + rax]
.label_419:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_421:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_420
	cmp	qword ptr [rax + 0x20], 0
	je	.label_419
.label_420:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e8b
	.globl sub_404e8b
	.type sub_404e8b, @function
sub_404e8b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e90

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	mov	rax, qword ptr [rdi + 8]
	jmp	.label_421
	.section	.text
	.align	32
	#Procedure 0x404e96
	.globl sub_404e96
	.type sub_404e96, @function
sub_404e96:

	nop	word ptr cs:[rax + rax]
.label_422:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ea7
	.globl sub_404ea7
	.type sub_404ea7, @function
sub_404ea7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404eb5

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_422
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ed0
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
	#Procedure 0x404edd
	.globl sub_404edd
	.type sub_404edd, @function
sub_404edd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ee0

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	push	rbx
	mov	rbx, rdi
	mov	byte ptr [rbx], 0
	mov	dword ptr [rbx + 4], 4
	mov	byte ptr [rbx + 8], 0
	mov	byte ptr [rbx + 0xa], 0
	mov	byte ptr [rbx + 9], 0
	mov	qword ptr [rbx + 0x10], 0
	mov	byte ptr [rbx + 0x18], 0
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rbx + 0x19]
	mov	byte ptr [rbx + 0x1a], 0
	mov	byte ptr [rbx + 0x1b], 0
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f1d
	.globl sub_404f1d
	.type sub_404f1d, @function
sub_404f1d:

	nop	dword ptr [rax]
.label_425:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_423
.label_424:
	mov	eax, 1
	test	bpl, bpl
	je	.label_423
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
.label_423:
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
	#Procedure 0x404f68
	.globl sub_404f68
	.type sub_404f68, @function
sub_404f68:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f6b

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
	je	.label_425
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_424
	jmp	.label_423
.label_426:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fa3
	.globl sub_404fa3
	.type sub_404fa3, @function
sub_404fa3:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404fa5
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_427
	cmp	ecx, 0x11
	jne	.label_426
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_427:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fc0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x404fca
	.globl sub_404fca
	.type sub_404fca, @function
sub_404fca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fd0

	.globl fts_skip_tree
	.type fts_skip_tree, @function
fts_skip_tree:
	push	rbx
	mov	rbx, rdi
	mov	edx, 4
	call	rpl_fts_set
	mov	rdi, rbx
	pop	rbx
	jmp	rpl_fts_read
	.section	.text
	.align	32
	#Procedure 0x404fe7
	.globl sub_404fe7
	.type sub_404fe7, @function
sub_404fe7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ff0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_428
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_430:
	cmp	qword ptr [rcx], 0
	je	.label_429
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_431:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_431
	cmp	rsi, rax
	cmova	rax, rsi
.label_429:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_430
.label_428:
	ret	
	.section	.text
	.align	32
	#Procedure 0x40503d
	.globl sub_40503d
	.type sub_40503d, @function
sub_40503d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405040
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405049
	.globl sub_405049
	.type sub_405049, @function
sub_405049:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405050

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40505a
	.globl sub_40505a
	.type sub_40505a, @function
sub_40505a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405060
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_432
.label_433:
	ret	
.label_432:
	cmp	edi, 0x7f
	je	.label_433
	xor	eax, eax
	jmp	.label_433
	.section	.text
	.align	32
	#Procedure 0x405071
	.globl sub_405071
	.type sub_405071, @function
sub_405071:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405080

	.globl diagnose_leading_hyphen
	.type diagnose_leading_hyphen, @function
diagnose_leading_hyphen:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rsi
	cmp	edi, 2
	jl	.label_434
	movsxd	r12, edi
	mov	ebx, 1
	lea	r15, [rsp + 8]
	nop	word ptr [rax + rax]
.label_436:
	mov	rbp, qword ptr [r14 + rbx*8]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_437
	cmp	byte ptr [rbp + 1], 0
	je	.label_437
	mov	rdi, rbp
	mov	rsi, r15
	call	lstat
	test	eax, eax
	je	.label_435
.label_437:
	inc	rbx
	cmp	rbx, r12
	jl	.label_436
	jmp	.label_434
.label_435:
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r14, qword ptr [r14]
	mov	edi, 1
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r14
	mov	r8, r13
	mov	r9, rbx
	call	__fprintf_chk
.label_434:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405149
	.globl sub_405149
	.type sub_405149, @function
sub_405149:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405150

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_439:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_439
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405170

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_446
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_446:
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
	cmp	esi, 0xb
	ja	.label_440
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_450
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_448
	test	esi, esi
	jne	.label_440
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_451
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_443
.label_440:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_441
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_448
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_453
.label_450:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_448:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_444
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_447
.label_444:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_447:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_453:
	cmp	eax, 6
	jne	.label_441
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_442
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_445
.label_441:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_449
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_452
.label_451:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_443:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_442:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_445:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_449:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_452:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x405324
	.globl sub_405324
	.type sub_405324, @function
sub_405324:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_286
	call	setlocale
	mov	edi, OFFSET FLAT:label_483
	mov	esi, OFFSET FLAT:label_484
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_483
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp]
	call	rm_option_init
	call	priv_set_remove_linkdir
	mov	r15b, 1
	jmp	.label_457
	.section	.text
	.align	32
	#Procedure 0x40538e
	.globl sub_40538e
	.type sub_40538e, @function
sub_40538e:

	nop	
.label_463:
	mov	dword ptr [rsp + 4], 3
	mov	byte ptr [rsp], 0
.label_457:
	xor	r14d, r14d
	jmp	.label_464
.label_927:
	mov	byte ptr [rsp + 9], 1
	nop	word ptr cs:[rax + rax]
.label_464:
	mov	edx, OFFSET FLAT:label_479
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x48
	jle	.label_481
	add	eax, -0x49
	cmp	eax, 0x3b
	ja	.label_471
	jmp	qword ptr [word ptr [+ (rax * 8) + label_486]]
.label_928:
	mov	byte ptr [rsp + 0xa], 1
	jmp	.label_464
.label_930:
	mov	byte ptr [rsp + 0x1a], 1
	jmp	.label_464
.label_931:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_463
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_493
	mov	edx, OFFSET FLAT:interactive_args
	mov	ecx, OFFSET FLAT:interactive_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + interactive_types]]
	cmp	eax, 2
	je	.label_463
	cmp	eax, 1
	je	.label_460
	test	eax, eax
	jne	.label_464
	jmp	.label_488
.label_460:
	mov	dword ptr [rsp + 4], 4
	mov	byte ptr [rsp], 0
	mov	r14b, 1
	jmp	.label_464
.label_932:
	mov	byte ptr [rsp + 8], 1
	jmp	.label_464
.label_933:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	mov	esi, OFFSET FLAT:label_487
	call	strcmp
	xor	r15d, r15d
	test	eax, eax
	je	.label_464
	jmp	.label_495
.label_934:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	r15b, 1
	je	.label_464
	cmp	byte ptr [rax], 0x61
	jne	.label_461
	cmp	byte ptr [rax + 1], 0x6c
	jne	.label_461
	cmp	byte ptr [rax + 2], 0x6c
	jne	.label_461
	cmp	byte ptr [rax + 3], 0
	jne	.label_461
	mov	byte ptr [rsp + 0x18], 1
	mov	r15b, 1
	jmp	.label_464
.label_935:
	mov	byte ptr [rsp + 0x19], 1
	jmp	.label_464
	.section	.text
	.align	32
	#Procedure 0x4054d5
	.globl sub_4054d5
	.type sub_4054d5, @function
sub_4054d5:

	nop	word ptr cs:[rax + rax]
.label_929:
	mov	dword ptr [rsp + 4], 5
	mov	byte ptr [rsp], 1
	jmp	.label_457
.label_488:
	mov	dword ptr [rsp + 4], 5
	jmp	.label_457
.label_481:
	cmp	eax, -1
	jne	.label_494
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	jge	.label_456
	test	r15b, r15b
	je	.label_459
	mov	al, byte ptr [rsp + 9]
	test	al, al
	je	.label_459
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_468
.label_459:
	movsxd	r12,  dword ptr [dword ptr [rip + optind]]
	test	r14b, r14b
	je	.label_472
	movsxd	r15, ebp
	sub	r15, r12
	mov	bpl, byte ptr [rsp + 9]
	cmp	r15d, 3
	ja	.label_480
	test	bpl, bpl
	je	.label_472
.label_480:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, r15
	call	select_plural
	mov	rcx, rax
	xor	edi, edi
	test	bpl, bpl
	je	.label_489
	mov	esi, OFFSET FLAT:label_465
	mov	edx, OFFSET FLAT:label_466
	jmp	.label_467
.label_456:
	xor	ebp, ebp
	cmp	byte ptr [rsp], 0
	jne	.label_454
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_485
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
.label_489:
	mov	esi, OFFSET FLAT:label_473
	mov	edx, OFFSET FLAT:label_474
.label_467:
	mov	r8d, 5
	call	dcngettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	xor	ebp, ebp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	r8, r15
	call	__fprintf_chk
	call	yesno
	test	al, al
	je	.label_454
.label_472:
	lea	rdi, [rbx + r12*8]
	lea	rsi, [rsp]
	call	rm
	lea	ecx, [rax - 2]
	cmp	ecx, 3
	jae	.label_470
	xor	ebp, ebp
	cmp	eax, 4
	sete	bpl
.label_454:
	mov	eax, ebp
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_494:
	cmp	eax, 0xffffff7d
	je	.label_469
	cmp	eax, 0xffffff7e
	jne	.label_471
	xor	edi, edi
	call	usage
.label_469:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_274
	mov	edx, OFFSET FLAT:label_277
	mov	r8d, OFFSET FLAT:label_475
	mov	r9d, OFFSET FLAT:label_476
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_477
	push	OFFSET FLAT:label_478
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_471:
	mov	edi, ebp
	mov	rsi, rbx
	call	diagnose_leading_hyphen
	mov	edi, 1
	call	usage
.label_461:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_462
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_495:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_482
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_470:
	mov	edi, OFFSET FLAT:label_490
	mov	esi, OFFSET FLAT:label_491
	mov	edx, 0x173
	mov	ecx, OFFSET FLAT:label_492
	call	__assert_fail
.label_468:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_455
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_458
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x405750

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, ecx
	mov	r12, rdx
	mov	r14, rsi
	mov	rbp, rdi
	movzx	edx, bl
	shl	edx, 9
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	call	unlinkat
	test	eax, eax
	je	.label_506
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	cmp	ebx, 0x1e
	jne	.label_498
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	lea	rdx, [rsp + 8]
	call	lstatat
	test	eax, eax
	je	.label_500
	cmp	dword ptr [r13], 2
	je	.label_501
.label_500:
	mov	dword ptr [r13], 0x1e
.label_501:
	mov	ebx, dword ptr [r13]
.label_498:
	mov	rdi, r12
	mov	esi, ebx
	call	ignorable_missing
	mov	r15d, 2
	test	al, al
	jne	.label_497
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	jne	.label_496
	mov	eax, ebx
	cmp	ebx, 0x27
	ja	.label_496
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_496
	mov	eax, dword ptr [r14 + 0x40]
	cmp	eax, 0xd
	je	.label_503
	cmp	eax, 1
	jne	.label_496
.label_503:
	mov	eax, dword ptr [r14 + 0x40]
	mov	dword ptr [r13], eax
.label_496:
	mov	ebx, dword ptr [r13]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	r15d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rdi, r14
	call	mark_ancestor_dirs
	jmp	.label_497
.label_502:
	mov	esi, OFFSET FLAT:label_499
.label_505:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_497:
	mov	eax, r15d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40589f
	.globl sub_40589f
	.type sub_40589f, @function
sub_40589f:

	nop	word ptr [rax + rax]
.label_506:
	mov	r15d, 2
	cmp	byte ptr [r12 + 0x1a], 0
	je	.label_497
	xor	edi, edi
	test	bl, bl
	je	.label_502
	mov	esi, OFFSET FLAT:label_504
	jmp	.label_505
.label_507:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x4058ce
	.globl sub_4058ce
	.type sub_4058ce, @function
sub_4058ce:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058d7

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_507
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_509
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_507
.label_509:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_507
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_508
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_508:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405940

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40594a
	.globl sub_40594a
	.type sub_40594a, @function
sub_40594a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405950
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x40595d
	.globl sub_40595d
	.type sub_40595d, @function
sub_40595d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405960
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
	#Procedure 0x405970

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_510
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_510:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	.section	.text
	.align	32
	#Procedure 0x40599c
	.globl sub_40599c
	.type sub_40599c, @function
sub_40599c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059a0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_517
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_511:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_516
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_514
	cmp	qword ptr [rsp + 8], -1
	je	.label_515
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_513
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_516
.label_513:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_516
.label_515:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_516:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_511
	jmp	.label_512
.label_517:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_512:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_514:
	mov	rax, rbp
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
	#Procedure 0x405a9d
	.globl sub_405a9d
	.type sub_405a9d, @function
sub_405a9d:

	nop	dword ptr [rax]
.label_522:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x405aab

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_518
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_519
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_519
.label_518:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_522
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_521:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_520
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_523
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_521
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_377
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x405b60

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_525
	cmp	rbx, r15
	jne	.label_524
	cmp	byte ptr [rbx + 1], 0
	je	.label_525
.label_524:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_525:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bea
	.globl sub_405bea
	.type sub_405bea, @function
sub_405bea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bf0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405bf7
	.globl sub_405bf7
	.type sub_405bf7, @function
sub_405bf7:

	nop	word ptr [rax + rax]
.label_528:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c03
	.globl sub_405c03
	.type sub_405c03, @function
sub_405c03:

	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c09

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	mov	al, 1
	cmp	edi, 0x16
	ja	.label_527
	mov	ecx, 0x500004
	bt	ecx, edi
	jb	.label_526
.label_527:
	cmp	edi, 0x54
	jne	.label_528
.label_526:
	ret	
.label_529:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c23
	.globl sub_405c23
	.type sub_405c23, @function
sub_405c23:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405c25
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_529
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c40
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	.section	.text
	.align	32
	#Procedure 0x405c47
	.globl sub_405c47
	.type sub_405c47, @function
sub_405c47:

	nop	word ptr [rax + rax]
.label_530:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405c55
	.globl sub_405c55
	.type sub_405c55, @function
sub_405c55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c63

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_530
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c70

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_533
	cmp	esi, -0x64
	jne	.label_535
.label_533:
	test	dl, dl
	je	.label_532
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_531
	mov	edi, eax
	jmp	.label_534
.label_535:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405c9e
	.globl sub_405c9e
	.type sub_405c9e, @function
sub_405c9e:

	nop	dword ptr [rax + rax]
.label_532:
	test	esi, esi
	js	.label_531
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_531
	mov	edi, esi
.label_534:
	call	close
.label_531:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405cc0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405cc5
	.globl sub_405cc5
	.type sub_405cc5, @function
sub_405cc5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405cd0

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_537
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_536
	mov	dword ptr [r14], ebp
	jmp	.label_537
.label_536:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_537:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d1f
	.globl sub_405d1f
	.type sub_405d1f, @function
sub_405d1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405d20

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d24
	.globl sub_405d24
	.type sub_405d24, @function
sub_405d24:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d30

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_538
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_538:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405d55
	.globl sub_405d55
	.type sub_405d55, @function
sub_405d55:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d68
	.globl sub_405d68
	.type sub_405d68, @function
sub_405d68:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_539:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_539
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x405d91
	.globl sub_405d91
	.type sub_405d91, @function
sub_405d91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405da0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x405daa
	.globl sub_405daa
	.type sub_405daa, @function
sub_405daa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405db0
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
	#Procedure 0x405e22
	.globl sub_405e22
	.type sub_405e22, @function
sub_405e22:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e30

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
	#Procedure 0x405e67
	.globl sub_405e67
	.type sub_405e67, @function
sub_405e67:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e70
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e84
	.globl sub_405e84
	.type sub_405e84, @function
sub_405e84:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e90

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	.section	.text
	.align	32
	#Procedure 0x405e95
	.globl sub_405e95
	.type sub_405e95, @function
sub_405e95:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ea0

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	.section	.text
	.align	32
	#Procedure 0x405eaa
	.globl sub_405eaa
	.type sub_405eaa, @function
sub_405eaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405eb0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	getline
	test	rax, rax
	jle	.label_542
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_540
	mov	byte ptr [rcx + rax - 1], 0
.label_540:
	mov	rdi, qword ptr [rsp]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_541
.label_542:
	xor	ebx, ebx
.label_541:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f13
	.globl sub_405f13
	.type sub_405f13, @function
sub_405f13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_543
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_544
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_546
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_277
	mov	ecx, OFFSET FLAT:label_278
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_545
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x405f94
	.globl sub_405f94
	.type sub_405f94, @function
sub_405f94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fa0
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x405fa7
	.globl sub_405fa7
	.type sub_405fa7, @function
sub_405fa7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fb0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_547
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_548:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_548
.label_547:
	mov	rax, rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405fe3
	.globl sub_405fe3
	.type sub_405fe3, @function
sub_405fe3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ff0
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_550
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_549
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_551]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_552]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_553]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_554
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_555
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	.section	.text
	.align	32
	#Procedure 0x4060dc
	.globl sub_4060dc
	.type sub_4060dc, @function
sub_4060dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4060e0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_557
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_557
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_557:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_558
	test	eax, eax
	jne	.label_558
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_560
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_559
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_377
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_556
.label_559:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_520
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_556:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061b0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_563
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_569
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_573
	cvtsi2ss	xmm0, rax
	jmp	.label_561
.label_573:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_561:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_568
	cvtsi2ss	xmm1, rcx
	jmp	.label_571
.label_568:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_571:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_569
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_566
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_570
.label_566:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_570:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_562
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_565
.label_562:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_565:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_569
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_572
	mulss	xmm0, dword ptr [rcx + 8]
.label_572:
	movss	xmm1,  dword ptr [dword ptr [rip + label_345]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_569
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_564
	nop	dword ptr [rax + rax]
.label_567:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_567
.label_564:
	mov	qword ptr [r15 + 0x48], 0
.label_569:
	mov	rax, r14
.label_563:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x406336
	.globl sub_406336
	.type sub_406336, @function
sub_406336:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406340

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_574
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_574:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	.section	.text
	.align	32
	#Procedure 0x406374
	.globl sub_406374
	.type sub_406374, @function
sub_406374:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406380
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40638d
	.globl sub_40638d
	.type sub_40638d, @function
sub_40638d:

	nop	dword ptr [rax]
.label_578:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_575
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
	#Procedure 0x4063c8
	.globl sub_4063c8
	.type sub_4063c8, @function
sub_4063c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_578
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_579
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_581
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_583
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_584
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_580
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_576
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_585
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_586
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_587
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_577
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
	mov	esi, OFFSET FLAT:label_582
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x406560

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40656a
	.globl sub_40656a
	.type sub_40656a, @function
sub_40656a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406570

	.globl priv_set_remove_linkdir
	.type priv_set_remove_linkdir, @function
priv_set_remove_linkdir:
	mov	eax, 0xffffffff
	ret	
	.section	.text
	.align	32
	#Procedure 0x406576
	.globl sub_406576
	.type sub_406576, @function
sub_406576:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406580

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	32
	#Procedure 0x40658d
	.globl sub_40658d
	.type sub_40658d, @function
sub_40658d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406590

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_588
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_588:
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
	#Procedure 0x406613
	.globl sub_406613
	.type sub_406613, @function
sub_406613:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406620
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_589
	mov	rcx, qword ptr [rdi]
	jmp	.label_591
	.section	.text
	.align	32
	#Procedure 0x40662e
	.globl sub_40662e
	.type sub_40662e, @function
sub_40662e:

	nop	
.label_592:
	add	rcx, 0x10
.label_591:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_590
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_592
.label_589:
	ret	
.label_590:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406649
	.globl sub_406649
	.type sub_406649, @function
sub_406649:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406650

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x40665a
	.globl sub_40665a
	.type sub_40665a, @function
sub_40665a:

	nop	word ptr [rax + rax]
.label_594:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_593
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_593:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406694
	.globl sub_406694
	.type sub_406694, @function
sub_406694:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406696

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
	jne	.label_595
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_595
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_594
.label_595:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_597:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_596
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066db
	.globl sub_4066db
	.type sub_4066db, @function
sub_4066db:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4066e5
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_597
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_597
.label_596:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406700
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x406714
	.globl sub_406714
	.type sub_406714, @function
sub_406714:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406720

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
	#Procedure 0x40674d
	.globl sub_40674d
	.type sub_40674d, @function
sub_40674d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406750
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
	#Procedure 0x406763
	.globl sub_406763
	.type sub_406763, @function
sub_406763:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406770

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_606
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_605
	test	rbx, rbx
	je	.label_600
	mov	qword ptr [rbx], rax
	jmp	.label_600
.label_605:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_610
	cvtsi2ss	xmm0, rcx
	jmp	.label_599
.label_610:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_599:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_604
	cvtsi2ss	xmm1, rax
	jmp	.label_609
.label_604:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_609:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_602
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_603
	cvtsi2ss	xmm2, rcx
	jmp	.label_607
.label_603:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_607:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_612
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_601
.label_612:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_601:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_602
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_611
	mulss	xmm0, xmm1
.label_611:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_346]]
	jae	.label_600
	movss	xmm1,  dword ptr [dword ptr [rip + label_345]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	je	.label_600
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_606
.label_602:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_608
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_600
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_598
.label_608:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_598:
	mov	ebp, 1
.label_600:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_606:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406942
	.globl sub_406942
	.type sub_406942, @function
sub_406942:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406950

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x40695e
	.globl sub_40695e
	.type sub_40695e, @function
sub_40695e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406960

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_286
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_613
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406985
	.globl sub_406985
	.type sub_406985, @function
sub_406985:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406990

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
	je	.label_616
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_614
	jmp	.label_615
.label_616:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_615
.label_614:
	mov	eax, 1
	test	bpl, bpl
	je	.label_615
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
.label_615:
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
	#Procedure 0x406a18
	.globl sub_406a18
	.type sub_406a18, @function
sub_406a18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a20

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
	je	.label_617
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_619
	jmp	.label_618
.label_617:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_618
.label_619:
	mov	eax, 1
	test	bpl, bpl
	je	.label_618
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
.label_618:
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
	#Procedure 0x406a99
	.globl sub_406a99
	.type sub_406a99, @function
sub_406a99:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406aa0

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
	je	.label_622
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_621
	jmp	.label_620
.label_622:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_620
.label_621:
	mov	eax, 1
	test	bpl, bpl
	je	.label_620
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
.label_620:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b03
	.globl sub_406b03
	.type sub_406b03, @function
sub_406b03:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b10

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
	je	.label_625
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_623
	jmp	.label_624
.label_625:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_624
.label_623:
	mov	eax, 1
	test	bpl, bpl
	je	.label_624
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_624:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b6f
	.globl sub_406b6f
	.type sub_406b6f, @function
sub_406b6f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x406b70

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
	je	.label_626
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_628
	jmp	.label_627
.label_626:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_627
.label_628:
	mov	eax, 1
	test	bpl, bpl
	je	.label_627
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_627:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bb9
	.globl sub_406bb9
	.type sub_406bb9, @function
sub_406bb9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406bc0

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
	je	.label_631
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_630
	jmp	.label_629
.label_631:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_629
.label_630:
	mov	eax, 1
	test	bpl, bpl
	je	.label_629
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_629:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c05
	.globl sub_406c05
	.type sub_406c05, @function
sub_406c05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c10

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_634
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_633
	jmp	.label_632
.label_634:
	mov	eax, 1
	test	cl, cl
	je	.label_632
.label_633:
	xor	eax, eax
.label_632:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c3f
	.globl sub_406c3f
	.type sub_406c3f, @function
sub_406c3f:

	nop	
.label_636:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_635
	mov	qword ptr [r14], r14
.label_638:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_635
	.section	.text
	.align	32
	#Procedure 0x406c60

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_636
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_637
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_635
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_637
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_638
.label_637:
	xor	ebp, ebp
.label_635:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cdb
	.globl sub_406cdb
	.type sub_406cdb, @function
sub_406cdb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ce0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_639
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_641
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_641
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_642
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_643
.label_641:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_643
.label_639:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_643:
	test	ebx, ebx
	js	.label_642
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_642
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_640
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_642
.label_640:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_642:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406da3
	.globl sub_406da3
	.type sub_406da3, @function
sub_406da3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406db0

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_644
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_645:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_645
	inc	r14
.label_644:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x406df6
	.globl sub_406df6
	.type sub_406df6, @function
sub_406df6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e00

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r12, rdx
	mov	r15, rsi
	mov	r14, rdi
	movzx	eax, word ptr [r15 + 0x70]
	dec	eax
	movzx	eax, ax
	cmp	eax, 0xc
	ja	.label_646
	jmp	qword ptr [word ptr [+ (rax * 8) + label_651]]
.label_1042:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_653
	cmp	byte ptr [r12 + 0xa], 0
	je	.label_660
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_660
.label_653:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_650
	mov	rdi, qword ptr [r15 + 0x30]
	call	last_component
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, al
	je	.label_664
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_665
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp], rax
	mov	ebp, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_252
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_647
	call	quotearg_n_style
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	mov	edi, 2
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp]
	mov	rcx, r13
	mov	r8, r12
	mov	r9, rbx
	call	error
	jmp	.label_677
.label_1043:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_678
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_649
.label_1044:
	cmp	byte ptr [r12 + 8], 0
	je	.label_652
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_652
	mov	rax, qword ptr [r15 + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_656
.label_652:
	movzx	ebx, word ptr [r15 + 0x70]
	or	ebx, 2
	xor	edx, edx
	cmp	ebx, 6
	sete	dl
	mov	r8d, 3
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_648
	movzx	eax, bx
	xor	ecx, ecx
	cmp	eax, 6
	sete	cl
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	excise
.label_1045:
	mov	ebx, dword ptr [r15 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_669
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_649:
	call	error
.label_667:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
	mov	ebp, 4
	jmp	.label_648
.label_660:
	cmp	byte ptr [r12 + 0xa], 0
	mov	eax, 0x27
	mov	ebx, 0x15
	cmovne	ebx, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r12
	call	error
	jmp	.label_657
.label_656:
	mov	rdi, r15
	call	mark_ancestor_dirs
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_655
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_648
.label_664:
	mov	rax, qword ptr [r12 + 0x10]
	test	rax, rax
	je	.label_666
	mov	rcx, qword ptr [r15 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_666
	mov	rcx, qword ptr [r15 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_666
	mov	rax, qword ptr [r15 + 0x38]
	cmp	byte ptr [rax], 0x2f
	jne	.label_670
	cmp	byte ptr [rax + 1], 0
	je	.label_671
.label_670:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_673
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_458
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_674:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_662
	jmp	.label_663
.label_666:
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_650
	mov	rdi, qword ptr [r15 + 0x30]
	mov	esi, OFFSET FLAT:label_647
	xor	edx, edx
	call	file_name_concat
	mov	rbp, rax
	test	rbp, rbp
	je	.label_654
	lea	rsi, [rsp + 8]
	mov	rdi, rbp
	call	lstat
	test	eax, eax
	je	.label_658
.label_654:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_659
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rdi, rbp
	call	free
	jmp	.label_667
.label_658:
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [r14 + 0x18]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_672
.label_650:
	lea	r9, [rsp + 8]
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_676
	cmp	dword ptr [rsp + 8], 4
	jne	.label_676
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	call	excise
	mov	ebp, eax
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_676:
	cmp	ebp, 2
	je	.label_648
.label_657:
	mov	rdi, r15
	call	mark_ancestor_dirs
.label_677:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_648:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_672:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_655
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_661
.label_663:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_667
.label_671:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_668
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_674
.label_646:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_675
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movzx	ebp, word ptr [r15 + 0x70]
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:label_544
	xor	eax, eax
	mov	rdx, r14
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407318
	.globl sub_407318
	.type sub_407318, @function
sub_407318:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407320

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_679
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_679:
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
	#Procedure 0x407388
	.globl sub_407388
	.type sub_407388, @function
sub_407388:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407390

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_680
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_682
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_680
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_683
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_682
.label_681:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407470
	.globl sub_407470
	.type sub_407470, @function
sub_407470:

	nop	dword ptr [rax + rax]
.label_683:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_681
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_681
	mov	rdi, qword ptr [rsp]
	call	free
.label_680:
	xor	r14d, r14d
.label_682:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074c0

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_684
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_685:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_684
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_685
.label_684:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40750c
	.globl sub_40750c
	.type sub_40750c, @function
sub_40750c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407510

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407538
	.globl sub_407538
	.type sub_407538, @function
sub_407538:

	nop	dword ptr [rax + rax]
.label_686:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x40754c
	.globl sub_40754c
	.type sub_40754c, @function
sub_40754c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407559

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_686
	ret	
	.section	.text
	.align	32
	#Procedure 0x407560
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
	#Procedure 0x407573
	.globl sub_407573
	.type sub_407573, @function
sub_407573:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407580

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_687
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_687:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_688
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_690
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_689
.label_690:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_689:
	mov	edx, dword ptr [rax]
.label_688:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x407644
	.globl sub_407644
	.type sub_407644, @function
sub_407644:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407650
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40765a
	.globl sub_40765a
	.type sub_40765a, @function
sub_40765a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407660

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	32
	#Procedure 0x407670

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
	je	.label_691
	cmp	r15, -2
	jb	.label_691
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_691
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_691:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076c6
	.globl sub_4076c6
	.type sub_4076c6, @function
sub_4076c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076d0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_692
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_692:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_693
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_694
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_695
.label_694:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_695:
	mov	ecx, dword ptr [rax]
.label_693:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x40778e
	.globl sub_40778e
	.type sub_40778e, @function
sub_40778e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407790
	.globl priv_set_restore_linkdir
	.type priv_set_restore_linkdir, @function
priv_set_restore_linkdir:

	mov	eax, 0xffffffff
	ret	
	.section	.text
	.align	32
	#Procedure 0x407796
	.globl sub_407796
	.type sub_407796, @function
sub_407796:

	nop	word ptr cs:[rax + rax]
.label_696:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_700
	nop	dword ptr [rax]
.label_705:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_705
.label_700:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x4077d3
	.globl sub_4077d3
	.type sub_4077d3, @function
sub_4077d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077dd

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_697
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_697
	mov	r14, qword ptr [r15]
	jmp	.label_704
	.section	.text
	.align	32
	#Procedure 0x4077f8
	.globl sub_4077f8
	.type sub_4077f8, @function
sub_4077f8:

	nop	dword ptr [rax + rax]
.label_698:
	add	r14, 0x10
.label_703:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_696
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_698
	nop	word ptr cs:[rax + rax]
.label_702:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_702
	jmp	.label_698
.label_697:
	mov	r14, qword ptr [r15]
	jmp	.label_703
	.section	.text
	.align	32
	#Procedure 0x407835
	.globl sub_407835
	.type sub_407835, @function
sub_407835:

	nop	word ptr [rax + rax]
.label_699:
	add	r14, 0x10
.label_704:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_697
	cmp	qword ptr [r14], 0
	je	.label_699
	test	r14, r14
	je	.label_699
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_701:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_701
	jmp	.label_699
.label_709:
	test	rax, rax
	je	.label_708
	cmp	rax, 0x6969
	je	.label_708
	cmp	rax, 0x9fa0
	je	.label_708
	jmp	.label_706
	.section	.text
	.align	32
	#Procedure 0x407887

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_709
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_710
	cmp	rax, 0x52654973
	je	.label_707
	cmp	rax, 0x5346414f
	je	.label_708
	jmp	.label_706
.label_706:
	mov	ecx, 1
	jmp	.label_707
	.section	.text
	.align	32
	#Procedure 0x4078bb
	.globl sub_4078bb
	.type sub_4078bb, @function
sub_4078bb:

	nop	word ptr cs:[rax + rax]
.label_710:
	cmp	rax, 0x58465342
	je	.label_707
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_706
.label_708:
	xor	ecx, ecx
.label_707:
	mov	eax, ecx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078e0

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
	#Procedure 0x407916
	.globl sub_407916
	.type sub_407916, @function
sub_407916:

	nop	word ptr cs:[rax + rax]
.label_712:
	mov	r15, qword ptr [rbx]
.label_711:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x407932

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_711
	test	rbx, rbx
	je	.label_711
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_713:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_712
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_712
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_713
	jmp	.label_711
.label_714:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x407983
	.globl sub_407983
	.type sub_407983, @function
sub_407983:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40798c

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_714
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079a0

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_715:
	mov	rdi, r14
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, 0
	je	.label_716
	mov	rdi, rbx
	add	rdi, 0x13
	call	dot_or_dotdot
	test	al, al
	mov	rax, rbx
	jne	.label_715
.label_716:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079e0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079e9
	.globl sub_4079e9
	.type sub_4079e9, @function
sub_4079e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4079f0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_717]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a04
	.globl sub_407a04
	.type sub_407a04, @function
sub_407a04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a10

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x407a1e
	.globl sub_407a1e
	.type sub_407a1e, @function
sub_407a1e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407a20

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
	js	.label_718
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_721
	cmp	r12d, 0x7fffffff
	je	.label_723
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
	jne	.label_719
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_719:
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
.label_721:
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
	jbe	.label_724
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_720
.label_724:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_722
	mov	rdi, r14
	call	free
.label_722:
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
.label_720:
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
.label_718:
	call	abort
.label_723:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407bdd
	.globl sub_407bdd
	.type sub_407bdd, @function
sub_407bdd:

	nop	dword ptr [rax]
.label_725:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x407be3
	.globl sub_407be3
	.type sub_407be3, @function
sub_407be3:

	nop	
	.section	.text
	.align	32
	#Procedure 0x407be5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_725
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c00

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_727
	cmp	byte ptr [rax], 0x43
	jne	.label_729
	cmp	byte ptr [rax + 1], 0
	je	.label_726
.label_729:
	mov	esi, OFFSET FLAT:label_728
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_727
.label_726:
	xor	ebx, ebx
.label_727:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x407c31
	.globl sub_407c31
	.type sub_407c31, @function
sub_407c31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c40

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r14, rdi
	test	rbx, rbx
	je	.label_730
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_740
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_740
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_740:
	test	eax, eax
	sete	r15b
	jmp	.label_731
.label_730:
	xor	r15d, r15d
.label_731:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_734
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_737
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_737
	and	eax, 0x200
	je	.label_737
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_737
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_737:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_736
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_735
.label_736:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_738
	test	rbx, rbx
	je	.label_732
	cmp	byte ptr [rbx], 0x2e
	jne	.label_732
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_732
	cmp	byte ptr [rbx + 2], 0
	jne	.label_732
.label_738:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_739
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_741
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_741
.label_732:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_733
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_742
.label_734:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_735
	and	eax, 0x200
	je	.label_735
	mov	edi, r13d
	call	close
	jmp	.label_735
.label_733:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_735
.label_741:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_739:
	mov	ebp, 0xffffffff
.label_742:
	test	r13d, r13d
	jns	.label_735
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_735:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407dc6
	.globl sub_407dc6
	.type sub_407dc6, @function
sub_407dc6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dd0
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407de4
	.globl sub_407de4
	.type sub_407de4, @function
sub_407de4:

	nop	word ptr cs:[rax + rax]
.label_744:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x407df4
	.globl sub_407df4
	.type sub_407df4, @function
sub_407df4:

	nop	dword ptr [rax + rax]
.label_743:
	inc	rax
	mov	sil, dl
.label_747:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_743
	test	cl, cl
	je	.label_744
	mov	edx, esi
	and	dl, 1
	je	.label_745
	xor	esi, esi
.label_745:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_743
	.section	.text
	.align	32
	#Procedure 0x407e20

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_746:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_746
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_747
	.section	.text
	.align	32
	#Procedure 0x407e41
	.globl sub_407e41
	.type sub_407e41, @function
sub_407e41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e50

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_751
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_753
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_748
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_753
	mov	esi, OFFSET FLAT:label_750
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_749
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_749:
	mov	rbx, r14
.label_753:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_751:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_752
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407ef1
	.globl sub_407ef1
	.type sub_407ef1, @function
sub_407ef1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f00

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_755
	cmp	rsi, r13
	je	.label_758
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_760
.label_758:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_755
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_757
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_759
.label_760:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_755
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_756:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_754
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_754
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_756
	jmp	.label_755
.label_757:
	mov	qword ptr [rbx], 0
	jmp	.label_755
.label_754:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_755
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_759:
	mov	rdi, r14
	call	free_entry
.label_755:
	mov	rax, r15
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
	#Procedure 0x407fca
	.globl sub_407fca
	.type sub_407fca, @function
sub_407fca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407fd0

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_762
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_762
	test	r14b, 0x12
	je	.label_762
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_766
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_765
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_767
	mov	esi, OFFSET FLAT:label_286
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_772
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_767:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_775
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_775:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_782
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_761
.label_762:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_783:
	xor	eax, eax
.label_766:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408146
	.globl sub_408146
	.type sub_408146, @function
sub_408146:

	nop	word ptr cs:[rax + rax]
.label_774:
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_777
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_764
.label_777:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_764:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_768
	mov	qword ptr [rbp + 0x10], rbx
.label_781:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_778
.label_768:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_773
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_778:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_761
	jmp	.label_779
.label_773:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_781
	.section	.text
	.align	32
	#Procedure 0x4081f4
	.globl sub_4081f4
	.type sub_4081f4, @function
sub_4081f4:

	nop	word ptr cs:[rax + rax]
.label_761:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_763
	cmp	rax, 3
	jb	.label_763
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_763
	nop	dword ptr [rax + rax]
.label_769:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_763
	dec	rax
	cmp	rax, 1
	ja	.label_769
	nop	word ptr cs:[rax + rax]
.label_763:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_774
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_770
.label_779:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_780
	cmp	r12, 2
	jb	.label_780
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_780:
	mov	r12, qword ptr [rsp + 0x18]
.label_782:
	mov	esi, OFFSET FLAT:label_286
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_770
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_776
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_771
	mov	esi, OFFSET FLAT:label_252
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_771
	or	byte ptr [r13 + 0x48], 4
.label_771:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_766
.label_770:
	mov	rbx, qword ptr [rsp + 0x10]
.label_776:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_772:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_765:
	mov	rdi, r13
	call	free
	jmp	.label_783
	.section	.text
	.align	32
	#Procedure 0x408344
	.globl sub_408344
	.type sub_408344, @function
sub_408344:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408350

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_784
	mov	esi, OFFSET FLAT:label_785
	jmp	.label_786
.label_784:
	mov	esi, OFFSET FLAT:label_787
.label_786:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x4083c0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_788
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_791
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_789
.label_788:
	test	rcx, rcx
	jne	.label_792
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_792:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_790
.label_789:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_790:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408434
	.globl sub_408434
	.type sub_408434, @function
sub_408434:

	nop	dword ptr [rax]
.label_791:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408440

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_794
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_793
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_793
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_793
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_794
.label_793:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_794:
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
	#Procedure 0x40851c
	.globl sub_40851c
	.type sub_40851c, @function
sub_40851c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408520

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_795
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_796
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_798
.label_796:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_800
	mov	rax, qword ptr [rax + 8]
	jmp	.label_795
.label_799:
	mov	rdi, rbp
	call	free
.label_797:
	mov	rax, qword ptr [rsp]
.label_795:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085b8
	.globl sub_4085b8
	.type sub_4085b8, @function
sub_4085b8:

	nop	word ptr [rax + rax]
.label_800:
	mov	r12b, 1
	mov	r14, rbp
.label_798:
	xor	eax, eax
	test	r15d, r15d
	js	.label_795
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_795
	test	r12b, r12b
	je	.label_797
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_797
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_799
	cmp	rax, rbp
	je	.label_797
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408620
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
	#Procedure 0x40862f
	.globl sub_40862f
	.type sub_40862f, @function
sub_40862f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408630
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_805:
	cmp	qword ptr [rcx], rbx
	jne	.label_801
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_802
.label_801:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_805
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_804:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_803
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_804
	jmp	.label_803
.label_802:
	mov	rcx, qword ptr [rdx]
.label_803:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x408696
	.globl sub_408696
	.type sub_408696, @function
sub_408696:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086a0
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
	#Procedure 0x4086b6
	.globl sub_4086b6
	.type sub_4086b6, @function
sub_4086b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086c0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_806
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_807:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_806
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_807
.label_806:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408723
	.globl sub_408723
	.type sub_408723, @function
sub_408723:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408730

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_817
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_817
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_828
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_829
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_817
.label_828:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_829
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_839
	test	byte ptr [r14 + 0x48], 4
	jne	.label_839
	mov	esi, OFFSET FLAT:label_252
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_843
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_812
.label_829:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_841
	movzx	eax, ax
	cmp	eax, 4
	je	.label_809
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_846
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_809
.label_846:
	cmp	qword ptr [r14 + 8], 0
	je	.label_814
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_815
	cmp	qword ptr [r14 + 8], 0
	je	.label_814
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_819
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_847
	.section	.text
	.align	32
	#Procedure 0x408867
	.globl sub_408867
	.type sub_408867, @function
sub_408867:

	nop	word ptr [rax + rax]
.label_841:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_830
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_831
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_834
.label_830:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_838
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_841
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_813
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_822
	test	byte ptr [r14 + 0x48], 4
	jne	.label_822
	mov	esi, OFFSET FLAT:label_252
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_845
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_822
.label_824:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_847:
	test	rax, rax
	jne	.label_824
	jmp	.label_819
.label_809:
	test	byte ptr [rbx + 0x72], 2
	je	.label_820
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_820:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_823
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_823:
	mov	word ptr [rbx + 0x70], 6
.label_821:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_817
.label_839:
	mov	r15, rbx
	jmp	.label_812
.label_838:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_832
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_817
.label_831:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_840
	mov	rdi, rbx
	call	free
	jmp	.label_813
.label_832:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_812
.label_815:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_814:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_810
.label_819:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_813
.label_810:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_817
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_821
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_821
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_821
.label_843:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_812
.label_840:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_817
.label_834:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_833
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_835
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_837
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_842
	test	al, 1
	jne	.label_808
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_647
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_827
.label_833:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_817
.label_837:
	mov	rdi, r14
	call	restore_initial_cwd
.label_827:
	test	eax, eax
	je	.label_808
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_808
.label_842:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_816
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_825
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_816
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_816
.label_845:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_822:
	mov	word ptr [r15 + 0x74], 3
.label_813:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_812:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_811
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_818
	cmp	rax, 2
	jne	.label_835
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_844
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_844
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_818
.label_844:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_811
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_818
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_818
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_818:
	mov	ax, word ptr [r15 + 0x70]
.label_811:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_817
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_826
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_826:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_817
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_817
.label_825:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_816:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_808:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_836
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_836
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_836:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_817:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_835:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408cd7
	.globl sub_408cd7
	.type sub_408cd7, @function
sub_408cd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ce0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_458
	call	lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_848
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_848:
	add	rsp, 0x90
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d1d
	.globl sub_408d1d
	.type sub_408d1d, @function
sub_408d1d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408d20

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	r13, qword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_856
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_865
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_867
.label_856:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_878
	mov	edi, dword ptr [rbx + 0x2c]
.label_878:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_880
	test	al, 1
	je	.label_884
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_880
.label_884:
	mov	edx, 0x20000
.label_880:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_891
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_894
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_854
.label_865:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_891:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_896
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_851
.label_894:
	test	byte ptr [rbx + 0x49], 1
	je	.label_854
	mov	rdi, rbx
	mov	rsi, r14
	call	leave_dir
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	rdi, rbx
	mov	rsi, r14
	call	enter_dir
	test	al, al
	je	.label_861
.label_854:
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	test	r13, r13
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jne	.label_867
	cmp	ebp, 2
	jne	.label_875
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_876
.label_875:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_879
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_879
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_897
.label_861:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_851
.label_879:
	mov	r15, rbx
	xor	r12d, r12d
.label_897:
	xor	r12b, 1
.label_876:
	cmp	ebp, 3
	je	.label_895
	test	r12b, r12b
	jne	.label_895
	mov	dword ptr [rsp + 4], r12d
.label_852:
	mov	rbx, r15
	jmp	.label_867
.label_895:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_898
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_898:
	test	ebx, ebx
	js	.label_903
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_852
.label_903:
	cmp	ebp, 3
	jne	.label_853
	test	r12b, r12b
	je	.label_853
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_853:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_859
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_859
	call	close
.label_859:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_867:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_873
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_873:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	rax, qword ptr [r14 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x80], rax
	add	rdx, 2
	mov	qword ptr [rsp + 0x70], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	r12d, r12d
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x38], r13
.label_871:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_882
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_881:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_857
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_858
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_858
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_862
	test	al, al
	je	.label_893
	jmp	.label_858
	.section	.text
	.align	32
	#Procedure 0x409051
	.globl sub_409051
	.type sub_409051, @function
sub_409051:

	nop	word ptr cs:[rax + rax]
.label_862:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_858
.label_893:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_881
	jmp	.label_874
	.section	.text
	.align	32
	#Procedure 0x409073
	.globl sub_409073
	.type sub_409073, @function
sub_409073:

	nop	word ptr cs:[rax + rax]
.label_858:
	mov	qword ptr [rsp + 0x78], r12
	mov	r14, rbx
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_886
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_888
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_890
	.section	.text
	.align	32
	#Procedure 0x4090cc
	.globl sub_4090cc
	.type sub_4090cc, @function
sub_4090cc:

	nop	dword ptr [rax]
.label_888:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_886
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_899
	mov	rdx, qword ptr [rsp + 0x30]
	add	rax, rdx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x18]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_901
.label_899:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_901:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_890:
	add	rbp, rdx
	jb	.label_860
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_864
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_889
	.section	.text
	.align	32
	#Procedure 0x409183
	.globl sub_409183
	.type sub_409183, @function
sub_409183:

	nop	word ptr cs:[rax + rax]
.label_864:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_889:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_887
	test	byte ptr [rbx + 0x49], 4
	jne	.label_887
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_868
	.section	.text
	.align	32
	#Procedure 0x4091e4
	.globl sub_4091e4
	.type sub_4091e4, @function
sub_4091e4:

	nop	word ptr cs:[rax + rax]
.label_887:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_900
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_850
.label_900:
	xor	ebx, ebx
.label_850:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_868:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_872
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_872:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_869
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_869
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_869:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_871
	jmp	.label_882
.label_857:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_892
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_892:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_882
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_882
.label_874:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_882:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_902
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_902:
	test	byte ptr [rbx + 0x48], 4
	je	.label_855
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_855:
	test	r13, r13
	jne	.label_863
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_863
	cmp	r15d, 1
	je	.label_866
	test	rdx, rdx
	jne	.label_863
.label_866:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_870
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_647
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_877
.label_870:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_877:
	mov	rdx, r12
	test	eax, eax
	je	.label_863
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_849
.label_863:
	test	rdx, rdx
	je	.label_883
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_885
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_885:
	cmp	rdx, 2
	jb	.label_896
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_896
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_896
.label_883:
	cmp	r15d, 3
	jne	.label_849
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_849
	movzx	eax, ax
	cmp	eax, 7
	je	.label_849
	mov	word ptr [r14 + 0x70], 6
.label_849:
	mov	rdi, rbp
	call	fts_lfree
.label_851:
	xor	ebp, ebp
.label_896:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_886:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	jmp	.label_851
.label_860:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	jmp	.label_851
	.section	.text
	.align	32
	#Procedure 0x4094ad
	.globl sub_4094ad
	.type sub_4094ad, @function
sub_4094ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4094b0

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
	je	.label_905
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_904
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_904
.label_905:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_904
	test	cl, cl
	jne	.label_904
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_904:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409516
	.globl sub_409516
	.type sub_409516, @function
sub_409516:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409520

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_906
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_906:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095aa
	.globl sub_4095aa
	.type sub_4095aa, @function
sub_4095aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409615
	.globl sub_409615
	.type sub_409615, @function
sub_409615:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409622
	.globl sub_409622
	.type sub_409622, @function
sub_409622:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409646
	.globl sub_409646
	.type sub_409646, @function
sub_409646:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409659
	.globl sub_409659
	.type sub_409659, @function
sub_409659:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409660

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x409670

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x40967f
	.globl sub_40967f
	.type sub_40967f, @function
sub_40967f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409680

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x409690

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
