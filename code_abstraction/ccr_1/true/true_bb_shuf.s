	.section	.text
	.align	32
	#Procedure 0x4011e9
	.globl sub_4011e9
	.type sub_4011e9, @function
sub_4011e9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4011ea
	.globl sub_4011ea
	.type sub_4011ea, @function
sub_4011ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401222
	.globl sub_401222
	.type sub_401222, @function
sub_401222:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40126a
	.globl sub_40126a
	.type sub_40126a, @function
sub_40126a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40128c
	.globl sub_40128c
	.type sub_40128c, @function
sub_40128c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40129d
	.globl sub_40129d
	.type sub_40129d, @function
sub_40129d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4012b6
	.globl sub_4012b6
	.type sub_4012b6, @function
sub_4012b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4012c0
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
	#Procedure 0x4012cd
	.globl sub_4012cd
	.type sub_4012cd, @function
sub_4012cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4012d0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_9
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_10
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4012f5
	.globl sub_4012f5
	.type sub_4012f5, @function
sub_4012f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401300

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40130a
	.globl sub_40130a
	.type sub_40130a, @function
sub_40130a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401310
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
	#Procedure 0x401320

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x401329
	.globl sub_401329
	.type sub_401329, @function
sub_401329:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401330
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40133a
	.globl sub_40133a
	.type sub_40133a, @function
sub_40133a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401340
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40134a
	.globl sub_40134a
	.type sub_40134a, @function
sub_40134a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401350

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_13
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_12
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_12
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_16
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_16:
	mov	rbx, r14
.label_12:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_13:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_14
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4013f1
	.globl sub_4013f1
	.type sub_4013f1, @function
sub_4013f1:

	nop	word ptr cs:[rax + rax]
.label_25:
	xor	edi, edi
	call	usage
	.section	.text
	.align	32
	#Procedure 0x401407

	.globl main
	.type main, @function
main:
	push	rbx
	mov	rbx, rsi
	cmp	edi, 2
	jne	.label_18
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_9
	call	setlocale
	mov	edi, OFFSET FLAT:label_19
	mov	esi, OFFSET FLAT:label_20
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_19
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rbx, qword ptr [rbx + 8]
	mov	esi, OFFSET FLAT:label_21
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_25
	mov	esi, OFFSET FLAT:label_17
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	jne	.label_18
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_22
	mov	edx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_24
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
.label_18:
	xor	eax, eax
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4014a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x4014aa
	.globl sub_4014aa
	.type sub_4014aa, @function
sub_4014aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4014b0
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
	#Procedure 0x4014bf
	.globl sub_4014bf
	.type sub_4014bf, @function
sub_4014bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4014c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_26
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_26:
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
	#Procedure 0x401543
	.globl sub_401543
	.type sub_401543, @function
sub_401543:

	nop	word ptr cs:[rax + rax]
.label_28:
	mov	ecx, 1
.label_27:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x401560
	.globl sub_401560
	.type sub_401560, @function
sub_401560:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401565

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_28
	test	rsi, rsi
	mov	ecx, 1
	je	.label_27
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_27
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4015a0
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
	#Procedure 0x4015e9
	.globl sub_4015e9
	.type sub_4015e9, @function
sub_4015e9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4015f0

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
.label_63:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_67
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_72]]
.label_309:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_77
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_82
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_310:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_93
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_93
	xor	r14d, r14d
.label_104:
	cmp	r14, r11
	jae	.label_102
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_102:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_104
.label_93:
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
	jmp	.label_109
.label_302:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_109
.label_305:
	mov	al, 1
.label_303:
	mov	r12b, 1
.label_306:
	test	r12b, 1
	mov	cl, 1
	je	.label_119
	mov	ecx, eax
.label_119:
	mov	al, cl
.label_304:
	test	r12b, 1
	jne	.label_122
	test	r11, r11
	je	.label_124
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_124:
	mov	r14d, 1
	jmp	.label_129
.label_122:
	xor	r14d, r14d
.label_129:
	mov	ecx, OFFSET FLAT:label_82
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_109
.label_307:
	test	r12b, 1
	jne	.label_135
	test	r11, r11
	je	.label_48
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_48:
	mov	r14d, 1
	jmp	.label_115
.label_308:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_34
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_109
.label_135:
	xor	r14d, r14d
.label_115:
	mov	eax, OFFSET FLAT:label_34
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_109:
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
	jmp	.label_44
	.section	.text
	.align	32
	#Procedure 0x4018cc
	.globl sub_4018cc
	.type sub_4018cc, @function
sub_4018cc:

	nop	dword ptr [rax]
.label_88:
	inc	rsi
.label_44:
	cmp	rbp, -1
	je	.label_81
	cmp	rsi, rbp
	jne	.label_101
	jmp	.label_87
	.section	.text
	.align	32
	#Procedure 0x4018e3
	.globl sub_4018e3
	.type sub_4018e3, @function
sub_4018e3:

	nop	word ptr cs:[rax + rax]
.label_81:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_87
.label_101:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_95
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_98
	cmp	rbp, -1
	jne	.label_98
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
.label_98:
	cmp	rbx, rbp
	jbe	.label_107
.label_95:
	xor	r8d, r8d
.label_53:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_110
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_113]]
.label_323:
	test	rsi, rsi
	jne	.label_96
	jmp	.label_33
	.section	.text
	.align	32
	#Procedure 0x40197e
	.globl sub_40197e
	.type sub_40197e, @function
sub_40197e:

	nop	
.label_107:
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
	jne	.label_127
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_53
	jmp	.label_43
.label_127:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_53
.label_327:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_143
	test	rsi, rsi
	jne	.label_29
	cmp	rbp, 1
	je	.label_33
	xor	r13d, r13d
	jmp	.label_35
.label_316:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_38
	cmp	byte ptr [rsp + 7], 0
	jne	.label_39
	cmp	r12d, 2
	jne	.label_41
	mov	eax, r9d
	and	al, 1
	jne	.label_41
	cmp	r14, r11
	jae	.label_136
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_136:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_49
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_49:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_56
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_56:
	add	r14, 3
	mov	r9b, 1
.label_41:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_62
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_62:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_66
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_66
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_66
	cmp	r14, r11
	jae	.label_78
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_78:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_106
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_106:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_35
.label_317:
	mov	bl, 0x62
	jmp	.label_91
.label_318:
	mov	cl, 0x74
	jmp	.label_94
.label_319:
	mov	bl, 0x76
	jmp	.label_91
.label_320:
	mov	bl, 0x66
	jmp	.label_91
.label_321:
	mov	cl, 0x72
	jmp	.label_94
.label_324:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_100
	cmp	byte ptr [rsp + 7], 0
	jne	.label_39
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
	jae	.label_105
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_105:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_114
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_114:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_117
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_117:
	add	r14, 3
	xor	r9d, r9d
.label_100:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_35
.label_325:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_125
	cmp	r12d, 2
	jne	.label_96
	cmp	byte ptr [rsp + 7], 0
	je	.label_96
	jmp	.label_39
.label_326:
	cmp	r12d, 2
	jne	.label_133
	cmp	byte ptr [rsp + 7], 0
	jne	.label_39
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_92
.label_110:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_139
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
.label_75:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_57
	test	r8b, r8b
	je	.label_57
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_35
.label_143:
	test	rsi, rsi
	jne	.label_64
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_64
.label_33:
	mov	dl, 1
.label_322:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_39
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_35:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_73
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_74
	jmp	.label_79
	.section	.text
	.align	32
	#Procedure 0x401cc4
	.globl sub_401cc4
	.type sub_401cc4, @function
sub_401cc4:

	nop	word ptr cs:[rax + rax]
.label_73:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_79
.label_74:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_83
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_92
	jmp	.label_54
	.section	.text
	.align	32
	#Procedure 0x401d0d
	.globl sub_401d0d
	.type sub_401d0d, @function
sub_401d0d:

	nop	dword ptr [rax]
.label_79:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_54
	jmp	.label_92
.label_83:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_54
.label_38:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_88
	xor	r15d, r15d
	jmp	.label_96
.label_133:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_94
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_92
.label_94:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_39
.label_91:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_35
	nop	word ptr cs:[rax + rax]
.label_54:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_39
	cmp	r12d, 2
	jne	.label_120
	mov	eax, r9d
	and	al, 1
	jne	.label_120
	cmp	r14, r11
	jae	.label_123
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_123:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_141
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_141:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_131
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_131:
	add	r14, 3
	mov	r9b, 1
.label_120:
	cmp	r14, r11
	jae	.label_134
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_134:
	inc	r14
	jmp	.label_108
.label_139:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_140
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_140:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_142:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_47
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_51
	cmp	rbp, -2
	je	.label_65
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_59
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_40:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_31
	bt	rsi, rdx
	jb	.label_43
.label_31:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_40
.label_59:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_85
	xor	r13d, r13d
.label_85:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_142
	jmp	.label_75
.label_66:
	xor	r13d, r13d
	jmp	.label_35
.label_64:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_35
.label_125:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_96
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_96
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_96
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_137
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_42
	cmp	byte ptr [rsp + 7], 0
	jne	.label_39
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_71
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_71:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_52
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_52:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_128
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_128:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_130
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_130:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_35
.label_96:
	xor	eax, eax
.label_29:
	xor	r13d, r13d
	jmp	.label_35
.label_57:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_138
	.section	.text
	.align	32
	#Procedure 0x401ff3
	.globl sub_401ff3
	.type sub_401ff3, @function
sub_401ff3:

	nop	word ptr cs:[rax + rax]
.label_99:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_138:
	test	r8b, r8b
	je	.label_30
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_32
	cmp	r14, r11
	jae	.label_36
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_36:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_32
	.section	.text
	.align	32
	#Procedure 0x40203c
	.globl sub_40203c
	.type sub_40203c, @function
sub_40203c:

	nop	dword ptr [rax]
.label_30:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_43
	cmp	r12d, 2
	jne	.label_46
	mov	eax, r9d
	and	al, 1
	jne	.label_46
	cmp	r14, r11
	jae	.label_50
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_50:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_55
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_55:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_60
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_60:
	add	r14, 3
	mov	r9b, 1
.label_46:
	cmp	r14, r11
	jae	.label_116
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_116:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_69
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_69:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_76
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_76:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_32:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_92
	test	r9b, 1
	je	.label_61
	mov	ebx, eax
	and	bl, 1
	jne	.label_61
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_97
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_97:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_90
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_90:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_61:
	cmp	r14, r11
	jae	.label_99
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_99
	.section	.text
	.align	32
	#Procedure 0x402143
	.globl sub_402143
	.type sub_402143, @function
sub_402143:

	nop	word ptr cs:[rax + rax]
.label_92:
	test	r9b, 1
	je	.label_111
	and	al, 1
	jne	.label_111
	cmp	r14, r11
	jae	.label_112
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_112:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_89
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_89:
	add	r14, 2
	xor	r9d, r9d
.label_111:
	mov	ebx, r15d
.label_108:
	cmp	r14, r11
	jae	.label_118
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_118:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_88
.label_51:
	xor	r13d, r13d
.label_47:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_75
.label_65:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_132
	mov	rsi, qword ptr [rsp + 0x50]
.label_103:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_86
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_103
	xor	r13d, r13d
	jmp	.label_75
.label_132:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_75
.label_86:
	xor	r13d, r13d
	jmp	.label_75
.label_137:
	xor	r13d, r13d
	jmp	.label_35
.label_42:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_35
	.section	.text
	.align	32
	#Procedure 0x402218
	.globl sub_402218
	.type sub_402218, @function
sub_402218:

	nop	dword ptr [rax + rax]
.label_87:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_37
	or	dl, al
	je	.label_43
.label_37:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_45
	or	dl, al
	jne	.label_45
	test	r10b, 1
	jne	.label_58
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_45
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_63
.label_45:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_68
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_70
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_70
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_84:
	cmp	r14, r11
	jae	.label_80
	mov	byte ptr [rcx + r14], al
.label_80:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_84
	jmp	.label_70
.label_39:
	mov	qword ptr [rsp + 0x20], rbp
.label_43:
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
.label_121:
	mov	r14, rax
.label_126:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_58:
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
	jmp	.label_121
.label_68:
	mov	rcx, qword ptr [rsp + 8]
.label_70:
	cmp	r14, r11
	jae	.label_126
	mov	byte ptr [rcx + r14], 0
	jmp	.label_126
.label_67:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4023ac
	.globl sub_4023ac
	.type sub_4023ac, @function
sub_4023ac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4023b0

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
	je	.label_146
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_144
	jmp	.label_145
.label_146:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_145
.label_144:
	mov	eax, 1
	test	bpl, bpl
	je	.label_145
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
.label_145:
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
	#Procedure 0x402438
	.globl sub_402438
	.type sub_402438, @function
sub_402438:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402440

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
	je	.label_147
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_149
	jmp	.label_148
.label_147:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_148
.label_149:
	mov	eax, 1
	test	bpl, bpl
	je	.label_148
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
.label_148:
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
	#Procedure 0x4024b9
	.globl sub_4024b9
	.type sub_4024b9, @function
sub_4024b9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4024c0

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
	je	.label_152
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_151
	jmp	.label_150
.label_152:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_150
.label_151:
	mov	eax, 1
	test	bpl, bpl
	je	.label_150
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
.label_150:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402523
	.globl sub_402523
	.type sub_402523, @function
sub_402523:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402530

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
	je	.label_155
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_153
	jmp	.label_154
.label_155:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_154
.label_153:
	mov	eax, 1
	test	bpl, bpl
	je	.label_154
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_154:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40258f
	.globl sub_40258f
	.type sub_40258f, @function
sub_40258f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402590

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
	je	.label_156
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_158
	jmp	.label_157
.label_156:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_157
.label_158:
	mov	eax, 1
	test	bpl, bpl
	je	.label_157
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_157:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4025d9
	.globl sub_4025d9
	.type sub_4025d9, @function
sub_4025d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4025e0

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
	je	.label_161
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_160
	jmp	.label_159
.label_161:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_159
.label_160:
	mov	eax, 1
	test	bpl, bpl
	je	.label_159
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_159:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402625
	.globl sub_402625
	.type sub_402625, @function
sub_402625:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402630

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_164
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_163
	jmp	.label_162
.label_164:
	mov	eax, 1
	test	cl, cl
	je	.label_162
.label_163:
	xor	eax, eax
.label_162:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40265f
	.globl sub_40265f
	.type sub_40265f, @function
sub_40265f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402660

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
	je	.label_165
	cmp	r15, -2
	jb	.label_165
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_165
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_165:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026b6
	.globl sub_4026b6
	.type sub_4026b6, @function
sub_4026b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026c0

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
	#Procedure 0x4026d7
	.globl sub_4026d7
	.type sub_4026d7, @function
sub_4026d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026e0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026ea
	.globl sub_4026ea
	.type sub_4026ea, @function
sub_4026ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_166
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_166
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_166:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402716
	.globl sub_402716
	.type sub_402716, @function
sub_402716:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402720
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40272a
	.globl sub_40272a
	.type sub_40272a, @function
sub_40272a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402730

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
	je	.label_177
	mov	edx, OFFSET FLAT:label_172
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_179
.label_177:
	mov	edx, OFFSET FLAT:label_181
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_179:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_185
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
	mov	esi, OFFSET FLAT:label_182
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_168
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_169]]
.label_379:
	add	rsp, 8
	jmp	.label_167
.label_168:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
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
	jmp	.label_167
.label_380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_183
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
.label_381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
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
.label_382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_174
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
.label_383:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
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
	jmp	.label_167
.label_384:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_173
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
	jmp	.label_167
.label_385:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
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
	jmp	.label_167
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
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
	jmp	.label_167
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_178
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
	jmp	.label_167
.label_387:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
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
.label_167:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402a88
	.globl sub_402a88
	.type sub_402a88, @function
sub_402a88:

	nop	dword ptr [rax + rax]
.label_188:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_186
.label_187:
	mov	eax, 1
	test	bpl, bpl
	je	.label_186
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
.label_186:
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
	#Procedure 0x402ad8
	.globl sub_402ad8
	.type sub_402ad8, @function
sub_402ad8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402adb

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
	je	.label_188
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_187
	jmp	.label_186
.label_189:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_191:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_192
	inc	r9
	cmp	r9, 0xa
	jb	.label_190
.label_192:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b3f
	.globl sub_402b3f
	.type sub_402b3f, @function
sub_402b3f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402b40

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_190:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_189
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_191
	.section	.text
	.align	32
	#Procedure 0x402b69
	.globl sub_402b69
	.type sub_402b69, @function
sub_402b69:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b70
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_193:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_193
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x402b91
	.globl sub_402b91
	.type sub_402b91, @function
sub_402b91:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ba0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_195
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402bd0
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
	#Procedure 0x402bdf
	.globl sub_402bdf
	.type sub_402bdf, @function
sub_402bdf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402be0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bea
	.globl sub_402bea
	.type sub_402bea, @function
sub_402bea:

	nop	word ptr [rax + rax]
.label_197:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_196
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_196:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c24
	.globl sub_402c24
	.type sub_402c24, @function
sub_402c24:

	nop	
	.section	.text
	.align	32
	#Procedure 0x402c26

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
	jne	.label_198
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_198
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_197
.label_198:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x402c60

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_199
	ret	
.label_199:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x402c73
	.globl sub_402c73
	.type sub_402c73, @function
sub_402c73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c80

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
	#Procedure 0x402cad
	.globl sub_402cad
	.type sub_402cad, @function
sub_402cad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402cb0
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
	#Procedure 0x402cc3
	.globl sub_402cc3
	.type sub_402cc3, @function
sub_402cc3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cd0
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
	#Procedure 0x402cf7
	.globl sub_402cf7
	.type sub_402cf7, @function
sub_402cf7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d00
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
	#Procedure 0x402d16
	.globl sub_402d16
	.type sub_402d16, @function
sub_402d16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d20

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x402d29
	.globl sub_402d29
	.type sub_402d29, @function
sub_402d29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402d30

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
	mov	rax,  qword ptr [word ptr [rip + label_200]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_201]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_202]]
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
	#Procedure 0x402d98
	.globl sub_402d98
	.type sub_402d98, @function
sub_402d98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402da0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
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
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_203
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_205:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_205
.label_203:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_207
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_206]], OFFSET FLAT:slot0
.label_207:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_204
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_204:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e41
	.globl sub_402e41
	.type sub_402e41, @function
sub_402e41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e50
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_208
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_208:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402e76
	.globl sub_402e76
	.type sub_402e76, @function
sub_402e76:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e80

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_209
	test	rbx, rbx
	jne	.label_209
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_209:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_211
	test	rax, rax
	je	.label_210
.label_211:
	pop	rbx
	ret	
.label_210:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402eb0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_212
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_212:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402ed3
	.globl sub_402ed3
	.type sub_402ed3, @function
sub_402ed3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ee0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_213
	test	rax, rax
	je	.label_214
.label_213:
	pop	rbx
	ret	
.label_214:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402efa
	.globl sub_402efa
	.type sub_402efa, @function
sub_402efa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_215
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_216
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_215
.label_216:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_215
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_217
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_217:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_215:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x402f77
	.globl sub_402f77
	.type sub_402f77, @function
sub_402f77:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f80

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x402f8a
	.globl sub_402f8a
	.type sub_402f8a, @function
sub_402f8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f90
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x402f9d
	.globl sub_402f9d
	.type sub_402f9d, @function
sub_402f9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402fa0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
.label_221:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x402fbb

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_218
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_222
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_222
.label_218:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_221
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_219:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_223
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_222:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_219
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_195
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403070

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_230
	nop	
.label_229:
	mov	edi, OFFSET FLAT:label_22
	call	strcmp
	test	eax, eax
	je	.label_227
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_229
.label_227:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_22
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_226
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_224
	mov	esi, OFFSET FLAT:label_225
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_224
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_224:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_22
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_226
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_228
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_234
	mov	ecx, OFFSET FLAT:label_9
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
	#Procedure 0x40318a
	.globl sub_40318a
	.type sub_40318a, @function
sub_40318a:

	nop	word ptr [rax + rax]
.label_235:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403193
	.globl sub_403193
	.type sub_403193, @function
sub_403193:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40319b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_235
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031b0
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
	#Procedure 0x4031bf
	.globl sub_4031bf
	.type sub_4031bf, @function
sub_4031bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4031c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_237
	cmp	byte ptr [rax], 0x43
	jne	.label_239
	cmp	byte ptr [rax + 1], 0
	je	.label_236
.label_239:
	mov	esi, OFFSET FLAT:label_238
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_237
.label_236:
	xor	ebx, ebx
.label_237:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4031f1
	.globl sub_4031f1
	.type sub_4031f1, @function
sub_4031f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403200

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
	je	.label_240
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_241
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_241
.label_240:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_241
	test	cl, cl
	jne	.label_241
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_241:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403266
	.globl sub_403266
	.type sub_403266, @function
sub_403266:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403270

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
	mov	rcx,  qword ptr [word ptr [rip + label_200]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_201]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_202]]
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
	#Procedure 0x4032dd
	.globl sub_4032dd
	.type sub_4032dd, @function
sub_4032dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4032e0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4032ed
	.globl sub_4032ed
	.type sub_4032ed, @function
sub_4032ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4032f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x4032f7
	.globl sub_4032f7
	.type sub_4032f7, @function
sub_4032f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403300

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_242
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_245
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_243
.label_245:
	call	xalloc_die
.label_242:
	test	rcx, rcx
	jne	.label_244
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_244:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_246
.label_243:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_246:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403379
	.globl sub_403379
	.type sub_403379, @function
sub_403379:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403380
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
	#Procedure 0x403393
	.globl sub_403393
	.type sub_403393, @function
sub_403393:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033a0
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
	#Procedure 0x4033ad
	.globl sub_4033ad
	.type sub_4033ad, @function
sub_4033ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4033b0

	.globl usage
	.type usage, @function
usage:
	push	rbx
	mov	ebx, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
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
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_250
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebx
	call	exit
	.section	.text
	.align	32
	#Procedure 0x40347c
	.globl sub_40347c
	.type sub_40347c, @function
sub_40347c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403480
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x40348a
	.globl sub_40348a
	.type sub_40348a, @function
sub_40348a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403490

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
	je	.label_253
	mov	qword ptr [rax], rbx
.label_253:
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
	#Procedure 0x40357c
	.globl sub_40357c
	.type sub_40357c, @function
sub_40357c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403580

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
	#Procedure 0x4035b7
	.globl sub_4035b7
	.type sub_4035b7, @function
sub_4035b7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035c0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_254
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_254
.label_255:
	ret	
.label_254:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_255
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x4035e6
	.globl sub_4035e6
	.type sub_4035e6, @function
sub_4035e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035f0

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
	#Procedure 0x403629
	.globl sub_403629
	.type sub_403629, @function
sub_403629:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403630
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
	#Procedure 0x403641
	.globl sub_403641
	.type sub_403641, @function
sub_403641:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403650
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
	#Procedure 0x403664
	.globl sub_403664
	.type sub_403664, @function
sub_403664:

	nop	word ptr cs:[rax + rax]
.label_256:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403675
	.globl sub_403675
	.type sub_403675, @function
sub_403675:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403683

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
	je	.label_256
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
	.section	.text
	.align	32
	#Procedure 0x4036d0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4036de
	.globl sub_4036de
	.type sub_4036de, @function
sub_4036de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4036e0

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
	js	.label_257
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_260
	cmp	r12d, 0x7fffffff
	je	.label_262
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
	jne	.label_258
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_258:
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
.label_260:
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
	jbe	.label_263
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_259
.label_263:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_261
	mov	rdi, r14
	call	free
.label_261:
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
.label_259:
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
.label_257:
	call	abort
.label_262:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40389d
	.globl sub_40389d
	.type sub_40389d, @function
sub_40389d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4038a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038a8
	.globl sub_4038a8
	.type sub_4038a8, @function
sub_4038a8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038b8
	.globl sub_4038b8
	.type sub_4038b8, @function
sub_4038b8:

	nop	dword ptr [rax + rax]
.label_265:
	cmp	edi, 0x7f
	je	.label_264
	xor	eax, eax
	jmp	.label_264
	.section	.text
	.align	32
	#Procedure 0x4038c9
	.globl sub_4038c9
	.type sub_4038c9, @function
sub_4038c9:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038d8
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_265
.label_264:
	ret	
.label_266:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4038e5
	.globl sub_4038e5
	.type sub_4038e5, @function
sub_4038e5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038ef
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_266
	call	rpl_calloc
	test	rax, rax
	je	.label_266
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403910
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_268
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_226
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403984
	.globl sub_403984
	.type sub_403984, @function
sub_403984:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403990
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
	#Procedure 0x4039a9
	.globl sub_4039a9
	.type sub_4039a9, @function
sub_4039a9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4039b0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_271
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_272]]
.label_273:
	ret	
.label_271:
	xor	eax, eax
	jmp	.label_273
	.section	.text
	.align	32
	#Procedure 0x4039c6
	.globl sub_4039c6
	.type sub_4039c6, @function
sub_4039c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039d0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4039da
	.globl sub_4039da
	.type sub_4039da, @function
sub_4039da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039e0
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
	#Procedure 0x403a52
	.globl sub_403a52
	.type sub_403a52, @function
sub_403a52:

	nop	word ptr cs:[rax + rax]
.label_274:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403a66
	.globl sub_403a66
	.type sub_403a66, @function
sub_403a66:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a6b

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_274
	test	rdx, rdx
	je	.label_274
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a90
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_275
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_275:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403aae
	.globl sub_403aae
	.type sub_403aae, @function
sub_403aae:

	nop	
.label_276:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ab3
	.globl sub_403ab3
	.type sub_403ab3, @function
sub_403ab3:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403ab5
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_276
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ad0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x403ada
	.globl sub_403ada
	.type sub_403ada, @function
sub_403ada:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ae0

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
	#Procedure 0x403b16
	.globl sub_403b16
	.type sub_403b16, @function
sub_403b16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b20

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
	jne	.label_282
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
	je	.label_278
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_279
	mov	eax, OFFSET FLAT:label_280
	jmp	.label_281
.label_277:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_34
	mov	eax, OFFSET FLAT:label_82
.label_281:
	cmove	rax, rcx
.label_282:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b9f
	.globl sub_403b9f
	.type sub_403b9f, @function
sub_403b9f:

	nop	dword ptr [rax]
.label_278:
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
	je	.label_277
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_283
	mov	eax, OFFSET FLAT:label_284
	jmp	.label_281
	.section	.text
	.align	32
	#Procedure 0x403be0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x403be5
	.globl sub_403be5
	.type sub_403be5, @function
sub_403be5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bf0
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
	#Procedure 0x403c23
	.globl sub_403c23
	.type sub_403c23, @function
sub_403c23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c95
	.globl sub_403c95
	.type sub_403c95, @function
sub_403c95:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ca2
	.globl sub_403ca2
	.type sub_403ca2, @function
sub_403ca2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cc6
	.globl sub_403cc6
	.type sub_403cc6, @function
sub_403cc6:

	nop	word ptr cs:[rax + rax]
