	.section	.text
	.align	16
	#Procedure 0x401ab9
	.globl sub_401ab9
	.type sub_401ab9, @function
sub_401ab9:

	hlt	
	.section	.text
	.align	16
	#Procedure 0x401aba
	.globl sub_401aba
	.type sub_401aba, @function
sub_401aba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401af2
	.globl sub_401af2
	.type sub_401af2, @function
sub_401af2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b3a
	.globl sub_401b3a
	.type sub_401b3a, @function
sub_401b3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b5c
	.globl sub_401b5c
	.type sub_401b5c, @function
sub_401b5c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b6d
	.globl sub_401b6d
	.type sub_401b6d, @function
sub_401b6d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b86
	.globl sub_401b86
	.type sub_401b86, @function
sub_401b86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b90

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x401b9e
	.globl sub_401b9e
	.type sub_401b9e, @function
sub_401b9e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x401ba0

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
	js	.label_9
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_12
	cmp	r12d, 0x7fffffff
	je	.label_14
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
	jne	.label_10
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_10:
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
.label_12:
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
	jbe	.label_15
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_11
.label_15:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_13
	mov	rdi, r14
	call	free
.label_13:
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
.label_11:
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
.label_9:
	call	abort
.label_14:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x401d5d
	.globl sub_401d5d
	.type sub_401d5d, @function
sub_401d5d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d60
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_16
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_18]]
.label_16:
	xor	eax, eax
	jmp	.label_17
	.section	.text
	.align	16
	#Procedure 0x401d75
	.globl sub_401d75
	.type sub_401d75, @function
sub_401d75:

	nop	word ptr cs:[rax + rax]
.label_17:
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d80

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
	jne	.label_28
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
	je	.label_22
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_23
	mov	eax, OFFSET FLAT:label_24
	jmp	.label_25
.label_22:
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
	je	.label_21
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_26
	mov	eax, OFFSET FLAT:label_27
	jmp	.label_25
.label_21:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_19
	mov	eax, OFFSET FLAT:label_20
.label_25:
	cmove	rax, rcx
.label_28:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e3d
	.globl sub_401e3d
	.type sub_401e3d, @function
sub_401e3d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e40

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_29
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_30
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_29:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e6f
	.globl sub_401e6f
	.type sub_401e6f, @function
sub_401e6f:

	nop	
.label_31:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x401e7e
	.globl sub_401e7e
	.type sub_401e7e, @function
sub_401e7e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e87

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_31
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_33
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_31
.label_33:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_31
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_32
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_32:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ef0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x401efd
	.globl sub_401efd
	.type sub_401efd, @function
sub_401efd:

	nop	dword ptr [rax]
.label_35:
	mov	ecx, 1
.label_34:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	16
	#Procedure 0x401f10
	.globl sub_401f10
	.type sub_401f10, @function
sub_401f10:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f15

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_35
	test	rsi, rsi
	mov	ecx, 1
	je	.label_34
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_34
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x401f50
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x401f5a
	.globl sub_401f5a
	.type sub_401f5a, @function
sub_401f5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f60

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	al, 1
	test	rbx, rbx
	je	.label_37
	cmp	r15, rbx
	ja	.label_36
	lea	rcx, [r15 + 0x38]
	cmp	rbx, rcx
	jb	.label_37
.label_36:
	mov	r14d, OFFSET FLAT:label_41
	cmp	byte ptr [rbx], 0
	je	.label_42
	lea	r14, [r12 + 9]
	jmp	.label_45
.label_48:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_45:
	lea	r13, [r12 + 9]
.label_47:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_39
	cmp	byte ptr [r14], 0
	jne	.label_40
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_43
	cmp	byte ptr [r12 + 8], 0
	je	.label_43
.label_40:
	mov	rdi, r14
	call	strlen
	lea	rcx, [r14 + rax + 1]
	cmp	byte ptr [r14 + rax + 1], 0
	mov	r14, rcx
	jne	.label_47
	jmp	.label_48
.label_43:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	jbe	.label_38
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_37
.label_38:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_46
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
.label_39:
	mov	al, 1
.label_42:
	mov	qword ptr [r15 + 0x30], r14
.label_37:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_46:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	mov	al, 1
	je	.label_44
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_42
.label_44:
	xor	eax, eax
	jmp	.label_37
	.section	.text
	.align	16
	#Procedure 0x402075
	.globl sub_402075
	.type sub_402075, @function
sub_402075:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402080

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
	mov	rcx,  qword ptr [word ptr [rip + label_49]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_50]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_51]]
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
	.align	16
	#Procedure 0x4020ed
	.globl sub_4020ed
	.type sub_4020ed, @function
sub_4020ed:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4020f0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	16
	#Procedure 0x4020fd
	.globl sub_4020fd
	.type sub_4020fd, @function
sub_4020fd:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402100

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	16
	#Procedure 0x402107
	.globl sub_402107
	.type sub_402107, @function
sub_402107:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402110
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
	.align	16
	#Procedure 0x402143
	.globl sub_402143
	.type sub_402143, @function
sub_402143:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402150

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
	.align	16
	#Procedure 0x402186
	.globl sub_402186
	.type sub_402186, @function
sub_402186:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402190

	.globl fwrite_uppcase
	.type fwrite_uppcase, @function
fwrite_uppcase:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_52
	nop	word ptr cs:[rax + rax]
.label_53:
	movzx	r12d, byte ptr [rbx]
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r12*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_53
.label_52:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4021dc
	.globl sub_4021dc
	.type sub_4021dc, @function
sub_4021dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4021e0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_54
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_56
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_55
.label_56:
	call	xalloc_die
.label_57:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402217
	.globl sub_402217
	.type sub_402217, @function
sub_402217:

	nop	dword ptr [rax]
.label_54:
	test	rcx, rcx
	jne	.label_58
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_58:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_57
.label_55:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
	.section	.text
	.align	16
	#Procedure 0x402260

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40226a
	.globl sub_40226a
	.type sub_40226a, @function
sub_40226a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402270
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	16
	#Procedure 0x40227d
	.globl sub_40227d
	.type sub_40227d, @function
sub_40227d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402280
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
	.align	16
	#Procedure 0x402290

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4022c0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_61
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_61:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4022e6
	.globl sub_4022e6
	.type sub_4022e6, @function
sub_4022e6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_62
	test	rbx, rbx
	jne	.label_62
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_62:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_64
	test	rax, rax
	je	.label_63
.label_64:
	pop	rbx
	ret	
.label_63:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402320
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_65
	add	rax, rbx
	nop	dword ptr [rax]
.label_66:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_65
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_66
.label_65:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x40237d
	.globl sub_40237d
	.type sub_40237d, @function
sub_40237d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402380

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
.label_73:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_75
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_80]]
.label_663:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_87
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_20
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_664:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_102
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_102
	xor	r14d, r14d
.label_116:
	cmp	r14, r11
	jae	.label_113
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_113:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_116
.label_102:
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
	jmp	.label_79
.label_656:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_79
.label_659:
	mov	al, 1
.label_657:
	mov	r12b, 1
.label_660:
	test	r12b, 1
	mov	cl, 1
	je	.label_136
	mov	ecx, eax
.label_136:
	mov	al, cl
.label_658:
	test	r12b, 1
	jne	.label_138
	test	r11, r11
	je	.label_131
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_131:
	mov	r14d, 1
	jmp	.label_145
.label_138:
	xor	r14d, r14d
.label_145:
	mov	ecx, OFFSET FLAT:label_20
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_79
.label_661:
	test	r12b, 1
	jne	.label_153
	test	r11, r11
	je	.label_154
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_154:
	mov	r14d, 1
	jmp	.label_120
.label_662:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_19
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_79
.label_153:
	xor	r14d, r14d
.label_120:
	mov	eax, OFFSET FLAT:label_19
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_79:
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
	jmp	.label_160
	.section	.text
	.align	16
	#Procedure 0x40265c
	.globl sub_40265c
	.type sub_40265c, @function
sub_40265c:

	nop	dword ptr [rax]
.label_114:
	inc	rsi
.label_160:
	cmp	rbp, -1
	je	.label_90
	cmp	rsi, rbp
	jne	.label_92
	jmp	.label_95
	.section	.text
	.align	16
	#Procedure 0x402673
	.globl sub_402673
	.type sub_402673, @function
sub_402673:

	nop	word ptr cs:[rax + rax]
.label_90:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_95
.label_92:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_106
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_108
	cmp	rbp, -1
	jne	.label_108
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
.label_108:
	cmp	rbx, rbp
	jbe	.label_122
.label_106:
	xor	r8d, r8d
.label_97:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_124
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_129]]
.label_605:
	test	rsi, rsi
	jne	.label_115
	jmp	.label_132
	.section	.text
	.align	16
	#Procedure 0x40270e
	.globl sub_40270e
	.type sub_40270e, @function
sub_40270e:

	nop	
.label_122:
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
	jne	.label_143
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_97
	jmp	.label_86
.label_143:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_97
.label_609:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_159
	test	rsi, rsi
	jne	.label_161
	cmp	rbp, 1
	je	.label_132
	xor	r13d, r13d
	jmp	.label_68
.label_598:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_167
	cmp	byte ptr [rsp + 7], 0
	jne	.label_89
	cmp	r12d, 2
	jne	.label_169
	mov	eax, r9d
	and	al, 1
	jne	.label_169
	cmp	r14, r11
	jae	.label_171
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_171:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_174
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_174:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_178
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_178:
	add	r14, 3
	mov	r9b, 1
.label_169:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_91
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_91:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_74
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_74
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_74
	cmp	r14, r11
	jae	.label_88
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_88:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_105
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_105:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_68
.label_599:
	mov	bl, 0x62
	jmp	.label_98
.label_600:
	mov	cl, 0x74
	jmp	.label_104
.label_601:
	mov	bl, 0x76
	jmp	.label_98
.label_602:
	mov	bl, 0x66
	jmp	.label_98
.label_603:
	mov	cl, 0x72
	jmp	.label_104
.label_606:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_112
	cmp	byte ptr [rsp + 7], 0
	jne	.label_89
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
	jae	.label_117
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_117:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_130
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_130:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_133
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_133:
	add	r14, 3
	xor	r9d, r9d
.label_112:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_68
.label_607:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_141
	cmp	r12d, 2
	jne	.label_115
	cmp	byte ptr [rsp + 7], 0
	je	.label_115
	jmp	.label_89
.label_608:
	cmp	r12d, 2
	jne	.label_150
	cmp	byte ptr [rsp + 7], 0
	jne	.label_89
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_101
.label_124:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_157
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
.label_99:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_168
	test	r8b, r8b
	je	.label_168
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_68
.label_159:
	test	rsi, rsi
	jne	.label_72
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_72
.label_132:
	mov	dl, 1
.label_604:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_89
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_68:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_82
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_84
	jmp	.label_83
	.section	.text
	.align	16
	#Procedure 0x402a54
	.globl sub_402a54
	.type sub_402a54, @function
sub_402a54:

	nop	word ptr cs:[rax + rax]
.label_82:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_83
.label_84:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_94
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_101
	jmp	.label_110
	.section	.text
	.align	16
	#Procedure 0x402a9d
	.globl sub_402a9d
	.type sub_402a9d, @function
sub_402a9d:

	nop	dword ptr [rax]
.label_83:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_110
	jmp	.label_101
.label_94:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_110
.label_167:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_114
	xor	r15d, r15d
	jmp	.label_115
.label_150:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_104
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_101
.label_104:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_89
.label_98:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_68
	nop	word ptr cs:[rax + rax]
.label_110:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_89
	cmp	r12d, 2
	jne	.label_118
	mov	eax, r9d
	and	al, 1
	jne	.label_118
	cmp	r14, r11
	jae	.label_139
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_139:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_170
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_170:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_148
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_148:
	add	r14, 3
	mov	r9b, 1
.label_118:
	cmp	r14, r11
	jae	.label_151
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_151:
	inc	r14
	jmp	.label_155
.label_157:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_158
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_158:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_126:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_173
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_176
	cmp	rbp, -2
	je	.label_179
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_70
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_69:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_127
	bt	rsi, rdx
	jb	.label_86
.label_127:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_69
.label_70:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_93
	xor	r13d, r13d
.label_93:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_126
	jmp	.label_99
.label_74:
	xor	r13d, r13d
	jmp	.label_68
.label_72:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_68
.label_141:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_115
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_115
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_115
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_146
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_109
	cmp	byte ptr [rsp + 7], 0
	jne	.label_89
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_134
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_134:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_123
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_123:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_144
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_144:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_147
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_147:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_68
.label_115:
	xor	eax, eax
.label_161:
	xor	r13d, r13d
	jmp	.label_68
.label_168:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_156
	.section	.text
	.align	16
	#Procedure 0x402d83
	.globl sub_402d83
	.type sub_402d83, @function
sub_402d83:

	nop	word ptr cs:[rax + rax]
.label_111:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_156:
	test	r8b, r8b
	je	.label_162
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_163
	cmp	r14, r11
	jae	.label_165
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_165:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_163
	.section	.text
	.align	16
	#Procedure 0x402dcc
	.globl sub_402dcc
	.type sub_402dcc, @function
sub_402dcc:

	nop	dword ptr [rax]
.label_162:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_86
	cmp	r12d, 2
	jne	.label_172
	mov	eax, r9d
	and	al, 1
	jne	.label_172
	cmp	r14, r11
	jae	.label_175
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_175:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_177
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_177:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_164
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_164:
	add	r14, 3
	mov	r9b, 1
.label_172:
	cmp	r14, r11
	jae	.label_121
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_121:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_77
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_77:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_85
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_85:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_163:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_101
	test	r9b, 1
	je	.label_103
	mov	ebx, eax
	and	bl, 1
	jne	.label_103
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_107
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_107:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_142
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_142:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_103:
	cmp	r14, r11
	jae	.label_111
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_111
	.section	.text
	.align	16
	#Procedure 0x402ed3
	.globl sub_402ed3
	.type sub_402ed3, @function
sub_402ed3:

	nop	word ptr cs:[rax + rax]
.label_101:
	test	r9b, 1
	je	.label_125
	and	al, 1
	jne	.label_125
	cmp	r14, r11
	jae	.label_128
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_128:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_152
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_152:
	add	r14, 2
	xor	r9d, r9d
.label_125:
	mov	ebx, r15d
.label_155:
	cmp	r14, r11
	jae	.label_135
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_135:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_114
.label_176:
	xor	r13d, r13d
.label_173:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_99
.label_179:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_149
	mov	rsi, qword ptr [rsp + 0x50]
.label_100:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_81
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_100
	xor	r13d, r13d
	jmp	.label_99
.label_149:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_99
.label_81:
	xor	r13d, r13d
	jmp	.label_99
.label_146:
	xor	r13d, r13d
	jmp	.label_68
.label_109:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_68
	.section	.text
	.align	16
	#Procedure 0x402fa8
	.globl sub_402fa8
	.type sub_402fa8, @function
sub_402fa8:

	nop	dword ptr [rax + rax]
.label_95:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_166
	or	dl, al
	je	.label_86
.label_166:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_71
	or	dl, al
	jne	.label_71
	test	r10b, 1
	jne	.label_67
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_71
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_73
.label_71:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_76
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_78
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_78
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_96:
	cmp	r14, r11
	jae	.label_119
	mov	byte ptr [rcx + r14], al
.label_119:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_96
	jmp	.label_78
.label_89:
	mov	qword ptr [rsp + 0x20], rbp
.label_86:
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
.label_137:
	mov	r14, rax
.label_140:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_67:
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
	jmp	.label_137
.label_76:
	mov	rcx, qword ptr [rsp + 8]
.label_78:
	cmp	r14, r11
	jae	.label_140
	mov	byte ptr [rcx + r14], 0
	jmp	.label_140
.label_75:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40313c
	.globl sub_40313c
	.type sub_40313c, @function
sub_40313c:

	nop	dword ptr [rax]
.label_181:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_180:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40315d
	.globl sub_40315d
	.type sub_40315d, @function
sub_40315d:

	nop	
.label_183:
	mov	eax, 1
	test	cl, cl
	je	.label_180
.label_182:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_180
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_181
	mov	rax, rbx
	jmp	.label_180
	.section	.text
	.align	16
	#Procedure 0x40318b

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	call	getenv_TZ
	mov	rbx, rax
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_183
	test	cl, cl
	je	.label_182
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_182
	jmp	.label_180
.label_186:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_185
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403205

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_189
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_186
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_186
.label_189:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_188
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_185:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_187
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_188:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	16
	#Procedure 0x403280

	.globl print_uptime
	.type print_uptime, @function
print_uptime:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2028
	mov	rbx, rsi
	mov	r15, rdi
	mov	edi, OFFSET FLAT:label_190
	mov	esi, OFFSET FLAT:label_191
	call	fopen
	mov	rbp, rax
	xor	r14d, r14d
	test	rbp, rbp
	je	.label_199
	lea	r14, [rsp + 0x20]
	mov	esi, 0x2000
	mov	rdi, r14
	mov	rdx, rbp
	call	fgets_unlocked
	xor	r12d, r12d
	cmp	rax, r14
	jne	.label_203
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	call	c_strtod
	xor	r12d, r12d
	cmp	r14, qword ptr [rsp + 8]
	je	.label_203
	movsd	xmm1,  qword ptr [word ptr [rip + label_208]]
	ucomisd	xmm1, xmm0
	cvttsd2si	r12, xmm0
	mov	rax, -1
	cmovbe	r12, rax
	xorpd	xmm1, xmm1
	ucomisd	xmm0, xmm1
	cmovb	r12, rax
.label_203:
	mov	rdi, rbp
	call	rpl_fclose
	mov	r14, r12
.label_199:
	xor	ebp, ebp
	test	r15, r15
	mov	r13d, 0
	je	.label_195
	xor	r13d, r13d
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_206:
	cmp	byte ptr [rbx + 0x2c], 0
	mov	eax, 0
	je	.label_200
	movzx	ecx, word ptr [rbx]
	xor	eax, eax
	cmp	ecx, 7
	sete	al
.label_200:
	dec	r15
	movzx	ecx, word ptr [rbx]
	cmp	ecx, 2
	jne	.label_198
	movsxd	rbp, dword ptr [rbx + 0x154]
.label_198:
	add	r13, rax
	add	rbx, 0x180
	test	r15, r15
	jne	.label_206
.label_195:
	xor	edi, edi
	call	time
	mov	qword ptr [rsp + 8], rax
	test	r14, r14
	jne	.label_213
	test	rbp, rbp
	je	.label_216
	sub	rax, rbp
	mov	r14, rax
.label_213:
	movabs	rcx, 0x1845c8a0ce512957
	mov	rax, r14
	imul	rcx
	mov	r12, rdx
	mov	rax, r12
	shr	rax, 0x3f
	sar	r12, 0xd
	add	r12, rax
	imul	rbp, r12, -0x15180
	mov	qword ptr [rsp + 0x18], r14
	add	rbp, r14
	movabs	rcx, 0x48d159e26af37c05
	mov	rax, rbp
	imul	rcx
	mov	r15, rdx
	mov	rax, r15
	shr	rax, 0x3f
	sar	r15, 0xa
	add	r15, rax
	movabs	rax, 0xe1000000000
	imul	rax, r15
	sar	rax, 0x20
	sub	rbp, rax
	movabs	rcx, 0x8888888888888889
	mov	rax, rbp
	imul	rcx
	mov	rbx, rdx
	lea	rdi, [rsp + 8]
	call	localtime
	mov	r14, rax
	test	r14, r14
	je	.label_192
	mov	rax,  qword ptr [word ptr [rip + stdout]]
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 5
	call	dcgettext
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rax
	mov	rdx, r14
	call	fprintftime
	jmp	.label_202
.label_192:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_207
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
.label_202:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, -1
	je	.label_210
	add	rbx, rbp
	mov	rax, rbx
	shr	rax, 0x3f
	shr	rbx, 5
	add	ebx, eax
	cmp	rcx, 0x15180
	jl	.label_215
	mov	rdi, r12
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, OFFSET FLAT:label_218
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r12
	mov	ecx, r15d
	mov	r8d, ebx
	call	__printf_chk
	jmp	.label_204
.label_210:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_204
.label_215:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	edx, r15d
	mov	ecx, ebx
	call	__printf_chk
.label_204:
	mov	rdi, r13
	call	select_plural
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_196
	mov	edx, OFFSET FLAT:label_197
	mov	r8d, 5
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r13
	call	__printf_chk
	lea	rdi, [rsp + 0x20]
	mov	esi, 3
	call	getloadavg
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_201
	test	ebx, ebx
	jle	.label_209
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	movsd	xmm0, qword ptr [rsp + 0x20]
	mov	edi, 1
	mov	al, 1
	mov	rsi, rcx
	call	__printf_chk
	cmp	ebx, 1
	je	.label_201
	movsd	xmm0, qword ptr [rsp + 0x28]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_193
	mov	al, 1
	call	__printf_chk
	cmp	ebx, 3
	jl	.label_201
	movsd	xmm0, qword ptr [rsp + 0x30]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_193
	mov	al, 1
	call	__printf_chk
.label_201:
	mov	edi, 0xa
	call	putchar_unlocked
.label_209:
	add	rsp, 0x2028
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_216:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_212
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403620
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
	.align	16
	#Procedure 0x403647
	.globl sub_403647
	.type sub_403647, @function
sub_403647:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403650

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
	jne	.label_219
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_219
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_220
.label_219:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_220:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_221
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_221:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036be
	.globl sub_4036be
	.type sub_4036be, @function
sub_4036be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4036c0

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_222
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_223
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_226
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_225
	lea	rsi, [rsp + 8]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_225
.label_226:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_225
	mov	qword ptr [rsp], -1
.label_225:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_223
	mov	rax, qword ptr [rsp]
	jmp	.label_224
.label_223:
	mov	rax, -1
.label_224:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_222:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	.section	.text
	.align	16
	#Procedure 0x403769
	.globl sub_403769
	.type sub_403769, @function
sub_403769:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403770
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_227
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_227:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x403788
	.globl sub_403788
	.type sub_403788, @function
sub_403788:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403790

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbx
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	or	edx, eax
	or	edx, ecx
	mov	eax, dword ptr [rsi + 0x10]
	xor	eax, dword ptr [rdi + 0x10]
	mov	ebx, dword ptr [rsi + 0x14]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	or	ebx, edx
	mov	edi, dword ptr [rdi + 0x20]
	mov	esi, dword ptr [rsi + 0x20]
	call	isdst_differ
	movzx	ecx, al
	xor	eax, eax
	or	ecx, ebx
	sete	al
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037d4
	.globl sub_4037d4
	.type sub_4037d4, @function
sub_4037d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037e8
	.globl sub_4037e8
	.type sub_4037e8, @function
sub_4037e8:

	nop	dword ptr [rax + rax]
.label_232:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_228
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403810
	.globl sub_403810
	.type sub_403810, @function
sub_403810:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40381f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_232
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_230
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_230
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_229
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_229:
	mov	rbx, r14
.label_230:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038a0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_234
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_234:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4038be
	.globl sub_4038be
	.type sub_4038be, @function
sub_4038be:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4038c0

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
	je	.label_235
	cmp	r15, -2
	jb	.label_235
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_235
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_235:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403916
	.globl sub_403916
	.type sub_403916, @function
sub_403916:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403920
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
	.align	16
	#Procedure 0x403939
	.globl sub_403939
	.type sub_403939, @function
sub_403939:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403940

	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xd8
	mov	r14, r8
	mov	r15, rcx
	mov	rbx, rdx
	test	al, al
	je	.label_236
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_236:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  1
	mov	eax, OFFSET FLAT:label_41
	mov	edx, OFFSET FLAT:label_239
	test	r9b, r9b
	cmovne	rdx, rax
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, -1
	je	.label_241
	mov	rcx, qword ptr [rsp + 0x100]
	cmp	eax, 0x68
	je	.label_237
	cmp	eax, 0x76
	je	.label_238
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	jmp	.label_240
.label_238:
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x108]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403a24
	.globl sub_403a24
	.type sub_403a24, @function
sub_403a24:

	nop	dword ptr [rax]
.label_237:
	xor	edi, edi
.label_240:
	call	rcx
.label_241:
	mov	dword ptr [dword ptr [rip + opterr]],  ebp
	add	rsp, 0xd8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a40

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	mov	byte ptr [rbx + r14], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x403a5c
	.globl sub_403a5c
	.type sub_403a5c, @function
sub_403a5c:

	nop	dword ptr [rax]
.label_251:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
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
	.align	16
	#Procedure 0x403a98
	.globl sub_403a98
	.type sub_403a98, @function
sub_403a98:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a9d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_251
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_244
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_245
	mov	ecx, OFFSET FLAT:label_246
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_243
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_249
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
	.section	.text
	.align	16
	#Procedure 0x403b90

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403b9a
	.globl sub_403b9a
	.type sub_403b9a, @function
sub_403b9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ba0

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
	.align	16
	#Procedure 0x403bd7
	.globl sub_403bd7
	.type sub_403bd7, @function
sub_403bd7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_41
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_252
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c05
	.globl sub_403c05
	.type sub_403c05, @function
sub_403c05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c10

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_253
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_253:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_254
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_254
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_254:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c7f
	.globl sub_403c7f
	.type sub_403c7f, @function
sub_403c7f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403c80

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	16
	#Procedure 0x403c85
	.globl sub_403c85
	.type sub_403c85, @function
sub_403c85:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c90
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403c9a
	.globl sub_403c9a
	.type sub_403c9a, @function
sub_403c9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ca0
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
	.align	16
	#Procedure 0x403caf
	.globl sub_403caf
	.type sub_403caf, @function
sub_403caf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403cb0
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
	je	.label_255
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_255:
	mov	ebp,  dword ptr [dword ptr [rip + opterr]]
	mov	dword ptr [dword ptr [rip + opterr]],  0
	cmp	edi, 2
	jne	.label_256
	mov	edx, OFFSET FLAT:label_239
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x68
	je	.label_257
	cmp	eax, 0x76
	jne	.label_256
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x100]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x30
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	r8, [rsp]
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_257:
	xor	edi, edi
	call	rbx
.label_256:
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
	#Procedure 0x403da1
	.globl sub_403da1
	.type sub_403da1, @function
sub_403da1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403db0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_258:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_258
	jmp	version_etc_arn
	.section	.text
	.align	16
	#Procedure 0x403dd1
	.globl sub_403dd1
	.type sub_403dd1, @function
sub_403dd1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403de0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x403dea
	.globl sub_403dea
	.type sub_403dea, @function
sub_403dea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403df0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	16
	#Procedure 0x403dfa
	.globl sub_403dfa
	.type sub_403dfa, @function
sub_403dfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e00

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
	je	.label_259
	mov	qword ptr [rax], rbx
.label_259:
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
	.align	16
	#Procedure 0x403eec
	.globl sub_403eec
	.type sub_403eec, @function
sub_403eec:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ef0

	.globl change_env
	.type change_env, @function
change_env:
	push	rbx
	xor	ebx, ebx
	cmp	byte ptr [rdi + 8], 0
	lea	rdi, [rdi + 9]
	cmove	rdi, rbx
	call	setenv_TZ
	test	eax, eax
	jne	.label_260
	call	tzset
	mov	bl, 1
.label_260:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f13
	.globl sub_403f13
	.type sub_403f13, @function
sub_403f13:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f20

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:label_261
	jmp	getenv
	.section	.text
	.align	16
	#Procedure 0x403f2a
	.globl sub_403f2a
	.type sub_403f2a, @function
sub_403f2a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f30
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	16
	#Procedure 0x403f3a
	.globl sub_403f3a
	.type sub_403f3a, @function
sub_403f3a:

	nop	word ptr [rax + rax]
.label_264:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_262
.label_263:
	mov	eax, 1
	test	bpl, bpl
	je	.label_262
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
.label_262:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f88
	.globl sub_403f88
	.type sub_403f88, @function
sub_403f88:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f8b

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
	je	.label_264
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_263
	jmp	.label_262
	.section	.text
	.align	16
	#Procedure 0x403fc0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x403fcf
	.globl sub_403fcf
	.type sub_403fcf, @function
sub_403fcf:

	nop	
	.section	.text
	.align	16
	#Procedure 0x403fd0

	.globl main
	.type main, @function
main:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_41
	call	setlocale
	mov	edi, OFFSET FLAT:label_268
	mov	esi, OFFSET FLAT:label_269
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_268
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r8,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	edx, OFFSET FLAT:label_270
	mov	ecx, OFFSET FLAT:label_271
	mov	r9d, 1
	mov	eax, 0
	mov	edi, ebp
	mov	rsi, rbx
	push	0
	push	OFFSET FLAT:label_272
	push	OFFSET FLAT:label_273
	push	OFFSET FLAT:label_274
	push	OFFSET FLAT:usage
	call	parse_gnu_standard_options_only
	add	rsp, 0x30
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebp, eax
	cmp	ebp, 1
	je	.label_267
	test	ebp, ebp
	jne	.label_265
	mov	edi, OFFSET FLAT:label_245
	mov	esi, 1
	jmp	.label_266
.label_267:
	mov	rdi, qword ptr [rbx + rax*8]
	xor	esi, esi
.label_266:
	call	uptime
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_265:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
	.section	.text
	.align	16
	#Procedure 0x4040c8
	.globl sub_4040c8
	.type sub_4040c8, @function
sub_4040c8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_283
	nop	
.label_282:
	mov	edi, OFFSET FLAT:label_270
	call	strcmp
	test	eax, eax
	je	.label_279
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_282
.label_279:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_270
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_271
	mov	ecx, OFFSET FLAT:label_278
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_276
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_276
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_276:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_270
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_278
	mov	ecx, OFFSET FLAT:label_270
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_286
	mov	ecx, OFFSET FLAT:label_41
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
	.align	16
	#Procedure 0x4041ea
	.globl sub_4041ea
	.type sub_4041ea, @function
sub_4041ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041f0
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
	.align	16
	#Procedure 0x404206
	.globl sub_404206
	.type sub_404206, @function
sub_404206:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404210
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_287
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_287:
	push	rax
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404233
	.globl sub_404233
	.type sub_404233, @function
sub_404233:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404240

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_288
	test	rax, rax
	je	.label_289
.label_288:
	pop	rbx
	ret	
.label_289:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40425a
	.globl sub_40425a
	.type sub_40425a, @function
sub_40425a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404260

	.globl fprintftime
	.type fprintftime, @function
fprintftime:
	push	rax
	mov	eax, r8d
	mov	r10, rcx
	mov	ecx, 0
	mov	r8d, 0
	mov	r9d, 0xffffffff
	push	rax
	push	r10
	call	__strftime_internal
	add	rsp, 0x10
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x404286
	.globl sub_404286
	.type sub_404286, @function
sub_404286:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404290

	.globl fwrite_lowcase
	.type fwrite_lowcase, @function
fwrite_lowcase:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_290
	nop	word ptr cs:[rax + rax]
.label_291:
	movzx	r12d, byte ptr [rbx]
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	mov	edi, dword ptr [rax + r12*4]
	mov	rsi, r15
	call	fputc
	inc	rbx
	dec	r14
	jne	.label_291
.label_290:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042dc
	.globl sub_4042dc
	.type sub_4042dc, @function
sub_4042dc:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042e0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4042ea
	.globl sub_4042ea
	.type sub_4042ea, @function
sub_4042ea:

	nop	word ptr [rax + rax]
.label_293:
	test	rbx, rbx
	je	.label_292
	mov	qword ptr [rbx], r14
.label_292:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404303
	.globl sub_404303
	.type sub_404303, @function
sub_404303:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404307

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	c_locale
	test	rax, rax
	je	.label_293
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
	.section	.text
	.align	16
	#Procedure 0x404330

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
	.align	16
	#Procedure 0x40435d
	.globl sub_40435d
	.type sub_40435d, @function
sub_40435d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404360
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
	.align	16
	#Procedure 0x404373
	.globl sub_404373
	.type sub_404373, @function
sub_404373:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40438f
	.globl sub_40438f
	.type sub_40438f, @function
sub_40438f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x404390

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	.section	.text
	.align	16
	#Procedure 0x4043a7
	.globl sub_4043a7
	.type sub_4043a7, @function
sub_4043a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043b0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4043ba
	.globl sub_4043ba
	.type sub_4043ba, @function
sub_4043ba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043c0

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
	je	.label_296
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_294
	jmp	.label_295
.label_296:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_295
.label_294:
	mov	eax, 1
	test	bpl, bpl
	je	.label_295
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
.label_295:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404448
	.globl sub_404448
	.type sub_404448, @function
sub_404448:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404450

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
	je	.label_297
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_299
	jmp	.label_298
.label_297:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_298
.label_299:
	mov	eax, 1
	test	bpl, bpl
	je	.label_298
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
.label_298:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4044c9
	.globl sub_4044c9
	.type sub_4044c9, @function
sub_4044c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0

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
	je	.label_302
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_301
	jmp	.label_300
.label_302:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_300
.label_301:
	mov	eax, 1
	test	bpl, bpl
	je	.label_300
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
.label_300:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404533
	.globl sub_404533
	.type sub_404533, @function
sub_404533:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404540

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
	je	.label_305
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_303
	jmp	.label_304
.label_305:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_304
.label_303:
	mov	eax, 1
	test	bpl, bpl
	je	.label_304
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_304:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40459f
	.globl sub_40459f
	.type sub_40459f, @function
sub_40459f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4045a0

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
	je	.label_306
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_308
	jmp	.label_307
.label_306:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_307
.label_308:
	mov	eax, 1
	test	bpl, bpl
	je	.label_307
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_307:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4045e9
	.globl sub_4045e9
	.type sub_4045e9, @function
sub_4045e9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045f0

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
	je	.label_311
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_310
	jmp	.label_309
.label_311:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_309
.label_310:
	mov	eax, 1
	test	bpl, bpl
	je	.label_309
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_309:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404635
	.globl sub_404635
	.type sub_404635, @function
sub_404635:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404640

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_313
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_314
	jmp	.label_312
.label_313:
	mov	eax, 1
	test	cl, cl
	je	.label_312
.label_314:
	xor	eax, eax
.label_312:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40466f
	.globl sub_40466f
	.type sub_40466f, @function
sub_40466f:

	nop	
.label_316:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
	.section	.text
	.align	16
	#Procedure 0x404685
	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_316
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_315
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_318
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_318:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_317
.label_315:
	xor	eax, eax
.label_317:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4046f7
	.globl sub_4046f7
	.type sub_4046f7, @function
sub_4046f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404700

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_319
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_319
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_319:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	16
	#Procedure 0x404726
	.globl sub_404726
	.type sub_404726, @function
sub_404726:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404730
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x404738
	.globl sub_404738
	.type sub_404738, @function
sub_404738:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404740
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
	.align	16
	#Procedure 0x404753
	.globl sub_404753
	.type sub_404753, @function
sub_404753:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404760

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_320
	test	rdx, rdx
	je	.label_320
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_320:
	push	rax
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40478b
	.globl sub_40478b
	.type sub_40478b, @function
sub_40478b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404790

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
	.align	16
	#Procedure 0x4047c9
	.globl sub_4047c9
	.type sub_4047c9, @function
sub_4047c9:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4047d0
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
	.align	16
	#Procedure 0x4047e1
	.globl sub_4047e1
	.type sub_4047e1, @function
sub_4047e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047f0
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
	.align	16
	#Procedure 0x404804
	.globl sub_404804
	.type sub_404804, @function
sub_404804:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404810
	.globl version_etc
	.type version_etc, @function
version_etc:

	sub	rsp, 0xd8
	test	al, al
	je	.label_321
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_321:
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
	.align	16
	#Procedure 0x404893
	.globl sub_404893
	.type sub_404893, @function
sub_404893:

	nop	word ptr cs:[rax + rax]
.label_322:
	jmp	unsetenv
	.section	.text
	.align	16
	#Procedure 0x4048a5
	.globl sub_4048a5
	.type sub_4048a5, @function
sub_4048a5:

	nop	
	.section	.text
	.align	16
	#Procedure 0x4048a6

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:label_261
	test	rax, rax
	je	.label_322
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
	.section	.text
	.align	16
	#Procedure 0x4048c0

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
	je	.label_323
	mov	edx, OFFSET FLAT:label_333
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_339
.label_323:
	mov	edx, OFFSET FLAT:label_340
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_339:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
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
	mov	esi, OFFSET FLAT:label_341
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_328
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_329]]
.label_563:
	add	rsp, 8
	jmp	.label_327
.label_328:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
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
	jmp	.label_327
.label_564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
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
.label_565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
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
.label_566:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
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
.label_567:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
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
	jmp	.label_327
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
	jmp	.label_327
.label_569:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
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
	jmp	.label_327
.label_570:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
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
	jmp	.label_327
.label_572:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
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
	jmp	.label_327
.label_571:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
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
.label_327:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c18
	.globl sub_404c18
	.type sub_404c18, @function
sub_404c18:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c20

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x498
	mov	ebp, r9d
	mov	dword ptr [rsp + 0x68], r8d
	mov	dword ptr [rsp + 0x6c], ecx
	mov	r13, rsi
	mov	r12, rdi
	mov	eax, dword ptr [rdx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rcx, qword ptr [rdx + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_41
	cmovne	rdx, rcx
	mov	qword ptr [rsp + 0x50], rdx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	edx, 0xc
	cmovne	edx, eax
	cmp	eax, 0xc
	cmovg	edx, ecx
	mov	dword ptr [rsp + 0x5c], edx
	cmp	byte ptr [r13], 0
	mov	eax, 0
	je	.label_352
	movabs	r8, 0x100000000
	xor	r9d, r9d
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0x24], eax
	mov	qword ptr [rsp], r12
	jmp	.label_372
.label_503:
	test	rbp, rbp
	je	.label_500
.label_383:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_383
.label_500:
	movsx	edi, byte ptr [r13]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_498:
	add	r9, rbx
	jmp	.label_390
.label_448:
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 3
	jmp	.label_404
	.section	.text
	.align	16
	#Procedure 0x404ceb
	.globl sub_404ceb
	.type sub_404ceb, @function
sub_404ceb:

	nop	dword ptr [rax + rax]
.label_372:
	cmp	byte ptr [r13], 0x25
	jne	.label_465
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x6c]
	mov	bl, cl
	xor	r14d, r14d
.label_681:
	mov	r15d, eax
	mov	eax, ebx
	jmp	.label_395
	.section	.text
	.align	16
	#Procedure 0x404d09
	.globl sub_404d09
	.type sub_404d09, @function
sub_404d09:

	nop	dword ptr [rax]
.label_408:
	movsx	r14d, byte ptr [r13]
.label_395:
	inc	r13
	movsx	ecx, byte ptr [r13]
	mov	al, 1
	lea	edx, [rcx - 0x23]
	cmp	edx, 0xd
	ja	.label_462
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_403]]
	.section	.text
	.align	16
	#Procedure 0x404d2e
	.globl sub_404d2e
	.type sub_404d2e, @function
sub_404d2e:

	nop	
.label_462:
	cmp	ecx, 0x5f
	je	.label_408
	cmp	ecx, 0x5e
	jne	.label_410
	mov	bl, al
	jmp	.label_395
	.section	.text
	.align	16
	#Procedure 0x404d42
	.globl sub_404d42
	.type sub_404d42, @function
sub_404d42:

	nop	word ptr cs:[rax + rax]
.label_465:
	test	ebp, ebp
	mov	eax, ebp
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rdx, r9
	not	rdx
	mov	ecx, 1
	cmp	rbx, rdx
	jae	.label_510
	test	r12, r12
	je	.label_421
	mov	r14, r9
	cmp	eax, 2
	jb	.label_394
	movsxd	rbp, ebp
	jmp	.label_424
	.section	.text
	.align	16
	#Procedure 0x404d8d
	.globl sub_404d8d
	.type sub_404d8d, @function
sub_404d8d:

	nop	dword ptr [rax]
.label_426:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
.label_424:
	dec	rbp
	jne	.label_426
.label_394:
	movsx	edi, byte ptr [r13]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r14
.label_421:
	add	r9, rbx
	xor	ecx, ecx
.label_510:
	test	ecx, ecx
	mov	eax, 4
	cmove	ecx, eax
.label_461:
	or	ecx, 4
	cmp	ecx, 4
	mov	eax, 0
	je	.label_390
	jmp	.label_352
	.section	.text
	.align	16
	#Procedure 0x404de1
	.globl sub_404de1
	.type sub_404de1, @function
sub_404de1:

	nop	word ptr cs:[rax + rax]
.label_410:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_440
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_446:
	mov	ebp, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_364
	jne	.label_442
	movsx	ecx, byte ptr [r13]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_364
.label_442:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [r13]
	lea	ebp, [rcx + rax*2 - 0x30]
.label_364:
	movsx	eax, byte ptr [r13 + 1]
	inc	r13
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, ebp
	jb	.label_446
.label_440:
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x4f
	je	.label_450
	xor	r10d, r10d
	cmp	eax, 0x45
	jne	.label_451
.label_450:
	movsx	r10d, byte ptr [r13]
	inc	r13
.label_451:
	movsx	edx, byte ptr [r13]
	mov	esi, OFFSET FLAT:label_454
	xor	r11d, r11d
	cmp	edx, 0x7a
	ja	.label_348
	mov	al, 0x72
	mov	r12d, 0xffffffff
	xor	edi, edi
	xor	ecx, ecx
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_459]]
.label_694:
	cmp	r10d, 0x45
	je	.label_348
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 8], r9
	mov	rdx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	r12d, [rax + rcx - 0x64]
	mov	r15d, dword ptr [rdx + 0x1c]
	mov	edi, r15d
	call	iso_week_days
	mov	ebx, eax
	test	ebx, ebx
	js	.label_471
	mov	eax, 0x16d
	test	r12b, 3
	jne	.label_473
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	r12d, eax
	sete	dl
	add	edx, 0x16d
	cmp	r12d, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_473:
	sub	r15d, eax
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	edi, r15d
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	ebx, eax
	jmp	.label_482
.label_708:
	test	r15b, r15b
	je	.label_491
	mov	bl, 1
.label_491:
	xor	edi, edi
	cmp	r10d, 0x45
	jne	.label_492
	xor	r11d, r11d
	jmp	.label_348
.label_686:
	dec	r13
	jmp	.label_348
.label_687:
	test	r10d, r10d
	jne	.label_348
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_371
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_498
	mov	r15, r9
	cmp	eax, 2
	jb	.label_500
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_439
	cmp	r14d, 0x2b
	jne	.label_503
.label_439:
	test	rbp, rbp
	je	.label_500
.label_479:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_479
	jmp	.label_500
.label_688:
	mov	eax, 1
	jmp	.label_509
	.section	.text
	.align	16
	#Procedure 0x404fe4
	.globl sub_404fe4
	.type sub_404fe4, @function
sub_404fe4:

	nop	word ptr cs:[rax + rax]
.label_513:
	inc	rax
.label_509:
	movzx	ecx, byte ptr [r13 + rax]
	cmp	cl, 0x3a
	je	.label_513
	cmp	cl, 0x7a
	jne	.label_348
	add	r13, rax
	mov	r11, rax
.label_725:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_346
	mov	rsi, r11
	mov	eax, dword ptr [rax + 0x28]
	mov	r11b, 1
	test	eax, eax
	mov	r12, qword ptr [rsp]
	js	.label_350
	test	eax, eax
	je	.label_356
	xor	r11d, r11d
	jmp	.label_350
.label_689:
	test	r10d, r10d
	jne	.label_348
	test	r15b, r15b
	je	.label_361
	mov	bl, 1
.label_361:
	xor	edi, edi
	mov	al, 0x41
	jmp	.label_344
.label_690:
	cmp	r10d, 0x45
	je	.label_348
	test	r15b, r15b
	je	.label_366
	mov	bl, 1
.label_366:
	xor	edi, edi
	mov	al, 0x42
	jmp	.label_344
.label_691:
	cmp	r10d, 0x45
	jne	.label_370
	xor	edi, edi
	mov	al, 0x43
	jmp	.label_344
.label_692:
	mov	esi, OFFSET FLAT:label_458
	test	r10d, r10d
	jne	.label_348
	jmp	.label_376
.label_693:
	test	r10d, r10d
	jne	.label_348
	mov	esi, OFFSET FLAT:label_456
	test	r14d, r14d
	jne	.label_382
	test	ebp, ebp
	jns	.label_382
	mov	r14d, 0x2b
	mov	r12d, 4
	jmp	.label_376
.label_695:
	cmp	r10d, 0x45
	je	.label_348
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 8]
	jmp	.label_386
.label_696:
	mov	ecx, 2
	cmp	r10d, 0x45
	je	.label_348
	mov	eax, dword ptr [rsp + 0x5c]
	mov	esi, eax
	jmp	.label_357
.label_697:
	cmp	r10d, 0x45
	je	.label_348
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 4]
	jmp	.label_386
.label_698:
	cmp	r10d, 0x45
	je	.label_348
	mov	ecx, 9
	cmp	ebp, -1
	je	.label_401
	cmp	ebp, 8
	jg	.label_405
	mov	eax, 9
	mov	ecx, dword ptr [rsp + 0x4d8]
	mov	esi, ecx
	nop	word ptr cs:[rax + rax]
.label_432:
	movsxd	rcx, esi
	imul	rsi, rcx, 0x66666667
	mov	rcx, rsi
	shr	rcx, 0x3f
	sar	rsi, 0x22
	add	esi, ecx
	dec	eax
	cmp	ebp, eax
	jne	.label_432
	jmp	.label_419
.label_699:
	mov	cl, 1
.label_717:
	xor	r11d, r11d
	test	r15b, r15b
	je	.label_447
	mov	ebx, 0
.label_447:
	je	.label_423
	mov	cl, 1
.label_423:
	mov	al, 0x70
	mov	dil, cl
	jmp	.label_351
.label_700:
	cmp	r10d, 0x45
	je	.label_348
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax]
	jmp	.label_386
.label_701:
	mov	esi, OFFSET FLAT:label_427
.label_376:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x38], rbx
	test	bl, bl
	setne	cl
	xor	ebx, ebx
	xor	edi, edi
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, r14d
	mov	qword ptr [rsp + 8], r9
	mov	r9d, r12d
	mov	eax, dword ptr [rsp + 0x4d8]
	push	rax
	push	qword ptr [rsp + 0x4d8]
	call	__strftime_internal
	mov	r9, qword ptr [rsp + 0x18]
	movabs	r8, 0x100000000
	add	rsp, 0x10
	test	ebp, ebp
	cmovns	ebx, ebp
	movsxd	rcx, ebx
	cmp	rax, rcx
	mov	r15, rax
	cmovb	r15, rcx
	mov	rdx, r9
	not	rdx
	cmp	r15, rdx
	jae	.label_371
	cmp	qword ptr [rsp], 0
	je	.label_443
	cmp	rax, rcx
	mov	rbx, qword ptr [rsp]
	jae	.label_415
	movsxd	rbp, ebp
	sub	rbp, rax
	cmp	r14d, 0x30
	je	.label_449
	cmp	r14d, 0x2b
	jne	.label_417
.label_449:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_415
	nop	word ptr cs:[rax + rax]
.label_460:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_460
	jmp	.label_415
.label_702:
	cmp	r10d, 0x45
	je	.label_348
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	movsxd	rsi, eax
	jmp	.label_463
.label_703:
	cmp	r10d, 0x45
	je	.label_348
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	mov	rdi, rdx
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	add	ecx, 7
	sub	ecx, edx
	mov	rdx, rdi
	movsxd	rsi, ecx
.label_463:
	imul	rax, rsi, -0x6db6db6d
	shr	rax, 0x20
	add	esi, eax
	mov	eax, esi
	shr	eax, 0x1f
	sar	esi, 2
	add	esi, eax
	jmp	.label_386
.label_704:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_348
	mov	al, 0x58
	xor	edi, edi
	jmp	.label_351
.label_705:
	xor	r11d, r11d
	cmp	r10d, 0x45
	je	.label_486
	cmp	r10d, 0x4f
	je	.label_348
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x14]
	cmp	edi, 0xfffff894
	setl	r11b
	add	edi, 0x76c
	mov	eax, 4
	jmp	.label_489
.label_706:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdi, qword ptr [rsp + 0x50]
	mov	qword ptr [rsp + 8], r9
	call	strlen
	mov	r9, qword ptr [rsp + 8]
	movabs	r8, 0x100000000
	xor	ecx, ecx
	test	ebp, ebp
	cmovns	ecx, ebp
	movsxd	rdx, ecx
	cmp	rax, rdx
	mov	r12, rax
	cmovb	r12, rdx
	mov	rcx, r9
	not	rcx
	cmp	r12, rcx
	jae	.label_371
	cmp	qword ptr [rsp], 0
	je	.label_379
	mov	qword ptr [rsp + 0x10], rax
	cmp	rax, rdx
	jae	.label_396
	movsxd	rbp, ebp
	sub	rbp, qword ptr [rsp + 0x10]
	cmp	r14d, 0x30
	je	.label_504
	cmp	r14d, 0x2b
	jne	.label_506
.label_504:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_396
	nop	word ptr [rax + rax]
.label_512:
	mov	edi, 0x30
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_512
	jmp	.label_396
.label_707:
	test	r10d, r10d
	jne	.label_348
	test	r15b, r15b
	je	.label_342
	mov	bl, 1
.label_342:
	xor	edi, edi
	mov	al, 0x61
	jmp	.label_344
.label_709:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_348
	mov	al, 0x63
	xor	edi, edi
	jmp	.label_351
.label_710:
	cmp	r10d, 0x45
	je	.label_348
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0xc]
.label_386:
	mov	ecx, 2
	jmp	.label_357
.label_711:
	cmp	r10d, 0x45
	je	.label_348
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_362
.label_712:
	cmp	r10d, 0x45
	je	.label_348
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x1c]
	cmp	eax, -1
	setl	r11b
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 3
	jmp	.label_365
.label_713:
	cmp	r10d, 0x45
	je	.label_348
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_362
.label_714:
	cmp	r10d, 0x45
	mov	eax, dword ptr [rsp + 0x5c]
	je	.label_348
.label_362:
	test	r14d, r14d
	mov	ecx, 0x5f
	cmove	r14d, ecx
	mov	ecx, 2
	mov	esi, eax
	jmp	.label_357
.label_715:
	cmp	r10d, 0x45
	je	.label_348
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x10]
	cmp	eax, -1
	setl	r11b
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 2
.label_365:
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	jmp	.label_387
.label_716:
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_371
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_400
	mov	r15, r9
	cmp	eax, 2
	jb	.label_402
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_407
	cmp	r14d, 0x2b
	jne	.label_411
.label_407:
	test	rbp, rbp
	je	.label_402
	nop	dword ptr [rax]
.label_416:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_416
	jmp	.label_402
.label_718:
	mov	rax, qword ptr [rsp + 0x18]
	imul	eax, dword ptr [rax + 0x10], 0xb
	sar	eax, 5
	inc	eax
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	xor	r11d, r11d
	jmp	.label_387
.label_719:
	mov	qword ptr [rsp + 0x38], rbx
	mov	r12, r9
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xc0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xb0], xmm2
	movaps	xmmword ptr [rsp + 0xa0], xmm1
	movaps	xmmword ptr [rsp + 0x90], xmm0
	lea	rsi, [rsp + 0x90]
	mov	rdi, qword ptr [rsp + 0x4d0]
	call	mktime_z
	mov	rcx, rax
	mov	r11, rcx
	shr	r11, 0x3f
	lea	r15, [rsp + 0x87]
	nop	dword ptr [rax]
.label_343:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	neg	eax
	test	r11, r11
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r15 - 1], al
	dec	r15
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_343
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	movabs	r8, 0x100000000
	mov	r9, r12
	mov	rbx, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rsp + 0x24]
	jmp	.label_431
.label_720:
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rbx, rcx
	jae	.label_371
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_468
	mov	r15, r9
	cmp	eax, 2
	jb	.label_429
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_469
	cmp	r14d, 0x2b
	jne	.label_470
.label_469:
	test	rbp, rbp
	je	.label_429
	nop	
.label_476:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_476
	jmp	.label_429
.label_721:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x18]
	lea	ecx, [rax + 6]
	movsxd	rsi, ecx
	imul	rcx, rsi, -0x6db6db6d
	shr	rcx, 0x20
	lea	eax, [rcx + rax + 6]
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	lea	ecx, [rax*8]
	sub	ecx, eax
	sub	esi, ecx
	inc	esi
	mov	ecx, 1
	jmp	.label_357
.label_722:
	cmp	r10d, 0x45
	je	.label_348
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	ecx, 1
	jmp	.label_357
.label_723:
	xor	r11d, r11d
	cmp	r10d, 0x4f
	je	.label_348
	mov	al, 0x78
	xor	edi, edi
	jmp	.label_351
.label_724:
	cmp	r10d, 0x45
	jne	.label_493
	xor	edi, edi
	mov	al, 0x79
	jmp	.label_344
.label_492:
	mov	eax, edx
.label_344:
	xor	r11d, r11d
	jmp	.label_351
.label_471:
	dec	r12d
	mov	edi, 0x16d
	test	r12b, 3
	jne	.label_496
	movsxd	rax, r12d
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	r12d, eax
	sete	dl
	add	edx, 0x16d
	cmp	r12d, ecx
	mov	edi, 0x16e
	cmove	edi, edx
.label_496:
	add	edi, r15d
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ebx, eax
	mov	ecx, 0xffffffff
.label_482:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x47
	je	.label_484
	cmp	eax, 0x67
	jne	.label_514
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, ecx
	movsxd	rdi, esi
	imul	rdx, rdi, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	edi, edx
	js	.label_515
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_481
.label_370:
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	r11b
	setg	cl
	imul	rdi, rax, 0x51eb851f
	mov	rdx, rdi
	shr	rdx, 0x3f
	sar	rdi, 0x25
	add	edi, edx
	imul	edx, edi, 0x64
	cmp	eax, edx
	sets	al
	and	al, cl
	movzx	eax, al
	sub	edi, eax
	add	edi, 0x13
	mov	eax, 2
.label_489:
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_377
.label_493:
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0x30], r10d
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rcx, rax, 0x51eb851f
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x25
	add	ecx, edx
	imul	ecx, ecx, 0x64
	mov	edi, eax
	sub	edi, ecx
	js	.label_380
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_388
.label_484:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	r11b
	lea	edi, [rcx + rax + 0x76c]
	mov	eax, 4
	mov	qword ptr [rsp + 0x10], rax
	mov	rbx, qword ptr [rsp + 0x38]
	jmp	.label_377
.label_514:
	movsxd	rax, ebx
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	esi, [rcx + rax + 1]
	mov	ecx, 2
	mov	rbx, qword ptr [rsp + 0x38]
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_357
.label_486:
	mov	al, 0x59
	xor	edi, edi
	jmp	.label_351
.label_417:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_415
	nop	word ptr cs:[rax + rax]
.label_422:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_422
.label_415:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	setne	cl
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	r8d, r14d
	mov	r9d, r12d
	mov	eax, dword ptr [rsp + 0x4d8]
	push	rax
	push	qword ptr [rsp + 0x4d8]
	call	__strftime_internal
	add	rsp, 0x10
	jmp	.label_430
.label_356:
	mov	rcx, qword ptr [rsp + 0x50]
	cmp	byte ptr [rcx], 0x2d
	sete	r11b
.label_350:
	cmp	rsi, 3
	mov	qword ptr [rsp + 0x28], rdx
	ja	.label_434
	mov	r15d, r10d
	mov	r10, rbx
	movsxd	rcx, eax
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	rbx, rcx, -0x6e5d4c3b
	shr	rbx, 0x20
	add	ebx, eax
	mov	ecx, ebx
	shr	ecx, 0x1f
	sar	ebx, 0xb
	add	ebx, ecx
	movsxd	rcx, edx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	imul	edi, ecx, 0x3c
	sub	ecx, edx
	sub	eax, edi
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_438]]
.label_623:
	imul	ebx, ebx, 0x64
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 5
.label_404:
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_452
.label_382:
	xor	eax, eax
	mov	r12d, ebp
	add	r12d, -6
	cmovs	r12d, eax
	mov	esi, OFFSET FLAT:label_456
	jmp	.label_376
.label_401:
	mov	eax, dword ptr [rsp + 0x4d8]
	mov	esi, eax
	mov	ebp, 9
	jmp	.label_357
.label_515:
	mov	edx, 2
	mov	qword ptr [rsp + 0x10], rdx
	mov	edx, 0xfffff894
	sub	edx, ecx
	mov	ecx, edi
	neg	ecx
	add	edi, 0x64
	cmp	eax, edx
	cmovl	edi, ecx
.label_481:
	xor	r11d, r11d
	mov	rbx, qword ptr [rsp + 0x38]
	jmp	.label_377
.label_380:
	mov	ecx, 2
	mov	qword ptr [rsp + 0x10], rcx
	mov	ecx, edi
	neg	ecx
	add	edi, 0x64
	cmp	eax, 0xfffff894
	cmovl	edi, ecx
.label_388:
	xor	r11d, r11d
.label_377:
	test	r14d, r14d
	cmove	r14d, dword ptr [rsp + 0x68]
	mov	dword ptr [rsp + 0x24], 0
	cmp	r14d, 0x2b
	mov	eax, 0
	jne	.label_472
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	edx, 2
	mov	eax, 0x63
	mov	ecx, 0x270f
	cmove	ecx, eax
	cmp	ecx, edi
	setb	cl
	cmp	edx, ebp
	setl	al
	or	al, cl
.label_472:
	mov	qword ptr [rsp + 0x40], rdi
	mov	r10d, dword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x28]
	jmp	.label_387
.label_434:
	xor	esi, esi
	mov	ecx, 0x18
	jmp	.label_485
.label_626:
	test	eax, eax
	je	.label_488
.label_625:
	imul	ebx, ebx, 0x2710
	imul	ecx, ecx, 0x64
	add	ebx, eax
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 9
	mov	dword ptr [rsp + 0x24], 0x14
	jmp	.label_452
.label_405:
	mov	eax, dword ptr [rsp + 0x4d8]
	mov	esi, eax
.label_419:
	mov	ecx, ebp
.label_357:
	mov	qword ptr [rsp + 0x40], rsi
	mov	r11d, esi
	shr	r11d, 0x1f
	mov	dword ptr [rsp + 0x24], 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rcx
.label_387:
	cmp	r10d, 0x4f
	jne	.label_378
	test	r11b, r11b
	jne	.label_378
	xor	edi, edi
	mov	eax, edx
	mov	r11, qword ptr [rsp + 0x10]
.label_351:
	mov	dword ptr [rsp + 0x28], edi
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x38], rbx
	mov	qword ptr [rsp + 8], r9
	mov	word ptr [rsp + 0x4b], 0x2520
	test	r10d, r10d
	lea	rcx, [rsp + 0x4d]
	je	.label_497
	mov	byte ptr [rsp + 0x4d], r10b
	lea	rcx, [rsp + 0x4e]
.label_497:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0x90]
	lea	rdx, [rsp + 0x4b]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x18]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_508
	dec	rbx
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	cdqe	
	cmp	rbx, rax
	mov	r15, rbx
	cmovb	r15, rax
	mov	r9, qword ptr [rsp + 8]
	mov	rcx, r9
	not	rcx
	cmp	r15, rcx
	mov	rcx, qword ptr [rsp + 0x10]
	jae	.label_371
	test	r12, r12
	je	.label_349
	cmp	rbx, rax
	setae	al
	test	ecx, ecx
	jne	.label_354
	test	al, al
	jne	.label_354
	movsxd	rbp, ebp
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_358
	cmp	r14d, 0x2b
	jne	.label_360
.label_358:
	test	rbp, rbp
	je	.label_354
	nop	dword ptr [rax]
.label_368:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_368
	jmp	.label_354
.label_378:
	mov	qword ptr [rsp + 0x38], rbx
	mov	rdx, qword ptr [rsp + 0x40]
	mov	ecx, edx
	neg	ecx
	test	r11b, r11b
	cmove	ecx, edx
	lea	r15, [rsp + 0x87]
	mov	esi, dword ptr [rsp + 0x24]
	nop	word ptr [rax + rax]
.label_381:
	test	sil, 1
	je	.label_428
	mov	byte ptr [r15 - 1], 0x3a
	dec	r15
.label_428:
	sar	esi, 1
	mov	edx, ecx
	mov	ebx, 0xcccccccd
	imul	rbx, rdx
	shr	rbx, 0x23
	lea	edx, [rbx + rbx]
	lea	edx, [rdx + rdx*4]
	mov	edi, ecx
	sub	edi, edx
	or	edi, 0x30
	mov	byte ptr [r15 - 1], dil
	dec	r15
	cmp	ecx, 9
	mov	ecx, ebx
	ja	.label_381
	test	esi, esi
	mov	ecx, ebx
	jne	.label_381
.label_431:
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	ecx, ebp
	cmovl	ecx, ebp
	test	al, al
	je	.label_389
	mov	al, 0x2b
.label_389:
	test	r11b, r11b
	mov	dil, 0x2d
	jne	.label_483
	mov	edi, eax
.label_483:
	cmp	r14d, 0x2d
	mov	r10, rcx
	mov	qword ptr [rsp + 0x40], rbx
	mov	dword ptr [rsp + 0x24], esi
	jne	.label_392
	test	dil, dil
	je	.label_399
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	jae	.label_371
	cmp	qword ptr [rsp], 0
	je	.label_353
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x10], r10
	test	r10d, r10d
	mov	r12, qword ptr [rsp]
	jne	.label_413
	test	al, al
	jne	.label_413
	movsxd	rbx, ebp
	jmp	.label_418
	.section	.text
	.align	16
	#Procedure 0x405d71
	.globl sub_405d71
	.type sub_405d71, @function
sub_405d71:

	nop	word ptr cs:[rax + rax]
.label_420:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
.label_418:
	dec	rbx
	jne	.label_420
.label_413:
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
.label_353:
	add	r9, rdx
	jmp	.label_399
.label_508:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_390
.label_392:
	movsxd	rax, r10d
	mov	rcx, r15
	lea	rdx, [rsp + 0x87]
	sub	rcx, rdx
	mov	edx, edi
	neg	dl
	sbb	rdx, rdx
	add	rdx, rcx
	add	rdx, rax
	test	edx, edx
	jle	.label_436
	cmp	r14d, 0x5f
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x30], rdx
	jne	.label_441
	movsxd	rcx, edx
	mov	rax, r9
	not	rax
	cmp	rcx, rax
	jae	.label_371
	mov	dword ptr [rsp + 0x60], ebp
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	mov	rbx, qword ptr [rsp]
	test	rbx, rbx
	je	.label_445
	test	rcx, rcx
	je	.label_445
	xor	r12d, r12d
	nop	
.label_453:
	mov	edi, 0x20
	mov	rsi, rbx
	mov	rbp, rcx
	call	fputc
	mov	rcx, rbp
	inc	r12
	cmp	r12, rcx
	jb	.label_453
.label_445:
	mov	r9, qword ptr [rsp + 8]
	add	r9, rcx
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebp, dword ptr [rsp + 0x60]
	sub	ebp, ecx
	cmovle	ebp, eax
	cmp	byte ptr [rsp + 0x28], 0
	je	.label_457
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	movabs	r8, 0x100000000
	mov	r10, qword ptr [rsp + 0x10]
	jae	.label_371
	cmp	qword ptr [rsp], 0
	je	.label_353
	mov	qword ptr [rsp + 0x60], rdx
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	test	r10d, r10d
	mov	rsi, qword ptr [rsp]
	jne	.label_391
	test	al, al
	jne	.label_391
	movsxd	rax, ebp
	dec	rax
	cmp	r14d, 0x30
	mov	qword ptr [rsp + 0x30], rax
	je	.label_412
	cmp	r14d, 0x2b
	jne	.label_478
.label_412:
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_391
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_487:
	mov	edi, 0x30
	mov	rbx, rsi
	call	fputc
	mov	rsi, rbx
	inc	r12
	cmp	r12, qword ptr [rsp + 0x30]
	jb	.label_487
	jmp	.label_391
.label_436:
	test	dil, dil
	je	.label_399
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	edx, 1
	cmova	rdx, rcx
	mov	rcx, r9
	not	rcx
	cmp	rdx, rcx
	jae	.label_371
	cmp	qword ptr [rsp], 0
	je	.label_353
	mov	qword ptr [rsp + 0x30], rdx
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	qword ptr [rsp + 0x10], r10
	test	r10d, r10d
	mov	r12, qword ptr [rsp]
	jne	.label_413
	test	al, al
	jne	.label_413
	movsxd	rbx, ebp
	dec	rbx
	cmp	r14d, 0x30
	je	.label_499
	cmp	r14d, 0x2b
	jne	.label_502
.label_499:
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_413
	nop	word ptr [rax + rax]
.label_437:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_437
	jmp	.label_413
.label_441:
	mov	rcx, r9
	not	rcx
	cmp	rax, rcx
	jae	.label_371
	test	dil, dil
	je	.label_511
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	movsxd	rsi, eax
	cmp	esi, 1
	mov	ebx, 1
	cmova	rbx, rsi
	cmp	rbx, rcx
	jae	.label_371
	mov	r12, qword ptr [rsp]
	test	r12, r12
	je	.label_347
	mov	byte ptr [rsp + 0x28], dil
	mov	qword ptr [rsp + 8], r9
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x10]
	test	ecx, ecx
	jne	.label_367
	test	al, al
	jne	.label_367
	movsxd	rbp, ebp
	dec	rbp
	cmp	r14d, 0x30
	je	.label_359
	cmp	r14d, 0x2b
	jne	.label_433
.label_359:
	test	rbp, rbp
	je	.label_367
	nop	
.label_466:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_466
	jmp	.label_367
.label_360:
	test	rbp, rbp
	je	.label_354
	nop	dword ptr [rax]
.label_374:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_374
.label_354:
	mov	eax, dword ptr [rsp + 0x28]
	test	al, 1
	jne	.label_375
	mov	rax, qword ptr [rsp + 0x38]
	test	al, 1
	jne	.label_501
	mov	edx, 1
	lea	rdi, [rsp + 0x91]
	mov	rsi, rbx
	mov	rcx, r12
	call	fwrite
	jmp	.label_384
.label_375:
	mov	rdi, r12
	lea	rsi, [rsp + 0x91]
	mov	rdx, rbx
	call	fwrite_lowcase
	jmp	.label_384
.label_501:
	mov	rdi, r12
	lea	rsi, [rsp + 0x91]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_384:
	mov	r9, qword ptr [rsp + 8]
.label_349:
	add	r9, r15
	movabs	r8, 0x100000000
	jmp	.label_390
.label_511:
	mov	qword ptr [rsp + 8], r9
	mov	r12, qword ptr [rsp]
	jmp	.label_393
.label_506:
	test	rbp, rbp
	mov	rbx, qword ptr [rsp]
	je	.label_396
	nop	word ptr cs:[rax + rax]
.label_406:
	mov	edi, 0x20
	mov	rsi, rbx
	call	fputc
	dec	rbp
	jne	.label_406
.label_396:
	test	r15b, r15b
	je	.label_409
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x10]
	call	fwrite_lowcase
	jmp	.label_414
.label_409:
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	je	.label_507
	mov	rdi, qword ptr [rsp]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdx, qword ptr [rsp + 0x10]
	call	fwrite_uppcase
	jmp	.label_414
.label_411:
	test	rbp, rbp
	je	.label_402
	nop	dword ptr [rax]
.label_425:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_425
.label_402:
	mov	edi, 0xa
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_400:
	add	r9, rbx
	jmp	.label_390
.label_470:
	test	rbp, rbp
	je	.label_429
	nop	dword ptr [rax]
.label_435:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_435
.label_429:
	mov	edi, 9
	mov	rsi, r12
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, r15
.label_468:
	add	r9, rbx
	jmp	.label_390
.label_502:
	test	rbx, rbx
	mov	r12, qword ptr [rsp]
	je	.label_413
.label_505:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbx
	jne	.label_505
	jmp	.label_413
.label_507:
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	jmp	.label_444
.label_488:
	test	ecx, ecx
	je	.label_448
.label_624:
	imul	ebx, ebx, 0x64
	add	ebx, ecx
	mov	qword ptr [rsp + 0x40], rbx
	mov	esi, 6
	mov	dword ptr [rsp + 0x24], 4
.label_452:
	mov	ecx, 0x4b
	mov	rbx, r10
	mov	r10d, r15d
.label_485:
	mov	edx, ecx
	and	dl, 0x7f
	cmp	dl, 0x18
	je	.label_455
	mov	al, 1
	cmp	dl, 0x4b
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rsp + 0x28]
	je	.label_387
	jmp	.label_461
.label_455:
	mov	r11, rsi
.label_348:
	mov	qword ptr [rsp + 0x38], rbx
	xor	r12d, r12d
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_467:
	mov	rax, r12
	add	rbx, r8
	lea	r12, [rax - 1]
	cmp	byte ptr [r13 + rax], 0x25
	jne	.label_467
	mov	rcx, r12
	neg	rcx
	test	ebp, ebp
	mov	edx, ebp
	mov	esi, 0
	cmovs	edx, esi
	cmp	ecx, edx
	mov	esi, edx
	cmova	esi, ecx
	movsxd	r15, esi
	mov	rsi, r9
	not	rsi
	cmp	r15, rsi
	jae	.label_371
	cmp	qword ptr [rsp], 0
	je	.label_443
	mov	qword ptr [rsp + 8], r9
	sar	rbx, 0x20
	test	r11d, r11d
	jne	.label_474
	cmp	ecx, edx
	jae	.label_474
	movsxd	rbp, ebp
	mov	rcx, rbp
	sub	rcx, rbx
	cmp	r14d, 0x30
	je	.label_477
	cmp	r14d, 0x2b
	jne	.label_480
.label_477:
	test	rcx, rcx
	mov	r14, qword ptr [rsp]
	je	.label_474
	mov	ecx, 1
	sub	ecx, eax
	movsxd	rax, ecx
	sub	rbp, rax
	nop	word ptr cs:[rax + rax]
.label_490:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_490
	jmp	.label_474
.label_480:
	test	rcx, rcx
	mov	r14, qword ptr [rsp]
	je	.label_474
	mov	ecx, 1
	sub	ecx, eax
	movsxd	rax, ecx
	sub	rbp, rax
	nop	word ptr [rax + rax]
.label_494:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_494
.label_474:
	lea	rsi, [r13 + r12 + 1]
	mov	rax, qword ptr [rsp + 0x38]
	test	al, 1
	jne	.label_495
	mov	edx, 1
	mov	rdi, rsi
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp]
	call	fwrite
	jmp	.label_430
.label_495:
	mov	rdi, qword ptr [rsp]
	mov	rdx, rbx
	call	fwrite_uppcase
.label_430:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
.label_443:
	add	r9, r15
	jmp	.label_346
.label_478:
	test	rax, rax
	mov	rsi, qword ptr [rsp]
	je	.label_391
	xor	ebx, ebx
.label_464:
	mov	edi, 0x20
	mov	r12, rsi
	call	fputc
	mov	rsi, r12
	inc	rbx
	cmp	rbx, qword ptr [rsp + 0x30]
	jb	.label_464
.label_391:
	movzx	edi, byte ptr [rsp + 0x28]
	call	fputc
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x60]
	jmp	.label_353
.label_433:
	test	rbp, rbp
	je	.label_367
.label_345:
	mov	edi, 0x20
	mov	rsi, r12
	call	fputc
	dec	rbp
	jne	.label_345
.label_367:
	movzx	edi, byte ptr [rsp + 0x28]
	mov	rsi, r12
	call	fputc
	mov	r9, qword ptr [rsp + 8]
.label_347:
	add	r9, rbx
	mov	qword ptr [rsp + 8], r9
.label_393:
	test	r12, r12
	je	.label_355
	mov	rax, qword ptr [rsp + 0x30]
	test	eax, eax
	je	.label_355
	mov	rax, qword ptr [rsp + 0x30]
	movsxd	rbx, eax
	xor	ebp, ebp
	nop	
.label_363:
	mov	edi, 0x30
	mov	rsi, r12
	call	fputc
	inc	rbp
	cmp	rbp, rbx
	jb	.label_363
.label_355:
	mov	rax, qword ptr [rsp + 0x30]
	cdqe	
	mov	r9, qword ptr [rsp + 8]
	add	r9, rax
	xor	ebp, ebp
.label_457:
	movabs	r8, 0x100000000
	mov	r10, qword ptr [rsp + 0x10]
.label_399:
	lea	rbx, [rsp + 0x87]
	sub	rbx, r15
	xor	eax, eax
	test	ebp, ebp
	cmovns	eax, ebp
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	mov	rcx, r9
	not	rcx
	cmp	r12, rcx
	jae	.label_371
	cmp	qword ptr [rsp], 0
	je	.label_379
	mov	qword ptr [rsp + 8], r9
	cmp	rbx, rax
	setae	al
	test	r10d, r10d
	jne	.label_369
	test	al, al
	jne	.label_369
	movsxd	rbp, ebp
	sub	rbp, rbx
	cmp	r14d, 0x30
	je	.label_397
	cmp	r14d, 0x2b
	jne	.label_385
.label_397:
	test	rbp, rbp
	mov	r14, qword ptr [rsp]
	je	.label_369
	nop	dword ptr [rax]
.label_475:
	mov	edi, 0x30
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_475
	jmp	.label_369
.label_385:
	test	rbp, rbp
	mov	r14, qword ptr [rsp]
	je	.label_369
	nop	dword ptr [rax]
.label_398:
	mov	edi, 0x20
	mov	rsi, r14
	call	fputc
	dec	rbp
	jne	.label_398
.label_369:
	mov	rax, qword ptr [rsp + 0x38]
	test	al, al
	je	.label_373
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	mov	rdx, rbx
	call	fwrite_uppcase
	jmp	.label_414
.label_373:
	mov	edx, 1
	mov	rdi, r15
	mov	rsi, rbx
.label_444:
	mov	rcx, qword ptr [rsp]
	call	fwrite
.label_414:
	movabs	r8, 0x100000000
	mov	r9, qword ptr [rsp + 8]
.label_379:
	add	r9, r12
.label_346:
	mov	r12, qword ptr [rsp]
.label_390:
	mov	ebp, 0xffffffff
	cmp	byte ptr [r13 + 1], 0
	lea	r13, [r13 + 1]
	mov	rax, r9
	jne	.label_372
	jmp	.label_352
.label_371:
	xor	eax, eax
.label_352:
	add	rsp, 0x498
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406583
	.globl sub_406583
	.type sub_406583, @function
sub_406583:

	nop	word ptr cs:[rax + rax]
.label_516:
	call	endutxent
	mov	qword ptr [r15], r12
	mov	qword ptr [r14], r13
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065ac
	.globl sub_4065ac
	.type sub_4065ac, @function
sub_4065ac:

	nop	word ptr cs:[rax + rax]
.label_518:
	lea	rdi, [r12 + r12*2]
	inc	r12
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	nop	dword ptr [rax + rax]
.label_517:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	je	.label_516
	mov	rdi, rbx
	mov	esi, ebp
	call	desirable_utmp_entry
	test	al, al
	je	.label_517
	cmp	r12, qword ptr [rsp]
	jne	.label_518
	mov	edx, 0x180
	mov	rdi, r13
	lea	rsi, [rsp]
	call	x2nrealloc
	mov	r13, rax
	jmp	.label_518
	.section	.text
	.align	16
	#Procedure 0x406613

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebp, ecx
	mov	r14, rdx
	mov	r15, rsi
	mov	qword ptr [rsp], 0
	call	utmpxname
	call	setutxent
	xor	r13d, r13d
	xor	r12d, r12d
	jmp	.label_517
	.section	.text
	.align	16
	#Procedure 0x406640

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	ret	
	.section	.text
	.align	16
	#Procedure 0x406644
	.globl sub_406644
	.type sub_406644, @function
sub_406644:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406650

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
	je	.label_520
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_519
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_519
.label_520:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_519
	test	cl, cl
	jne	.label_519
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_519:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066b6
	.globl sub_4066b6
	.type sub_4066b6, @function
sub_4066b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066c0

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
	.align	16
	#Procedure 0x406709
	.globl sub_406709
	.type sub_406709, @function
sub_406709:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406710
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_521
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_523:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_523
.label_521:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_525
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_524]], OFFSET FLAT:slot0
.label_525:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_522
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_522:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067a1
	.globl sub_4067a1
	.type sub_4067a1, @function
sub_4067a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067b0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_526
.label_527:
	ret	
.label_526:
	cmp	edi, 0x7f
	je	.label_527
	xor	eax, eax
	jmp	.label_527
	.section	.text
	.align	16
	#Procedure 0x4067c1
	.globl sub_4067c1
	.type sub_4067c1, @function
sub_4067c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067d0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067da
	.globl sub_4067da
	.type sub_4067da, @function
sub_4067da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067e0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_528
	nop	word ptr [rax + rax]
.label_529:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_529
.label_528:
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406802
	.globl sub_406802
	.type sub_406802, @function
sub_406802:

	nop	word ptr cs:[rax + rax]
.label_530:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_532:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_533
	inc	r9
	cmp	r9, 0xa
	jb	.label_531
.label_533:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	16
	#Procedure 0x40683f
	.globl sub_40683f
	.type sub_40683f, @function
sub_40683f:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406840

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_531:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_530
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_532
	.section	.text
	.align	16
	#Procedure 0x406869
	.globl sub_406869
	.type sub_406869, @function
sub_406869:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406870
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
	.align	16
	#Procedure 0x4068e2
	.globl sub_4068e2
	.type sub_4068e2, @function
sub_4068e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068f0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_534
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_534
.label_535:
	ret	
.label_534:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_535
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406916
	.globl sub_406916
	.type sub_406916, @function
sub_406916:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406920
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	.section	.text
	.align	16
	#Procedure 0x40692d
	.globl sub_40692d
	.type sub_40692d, @function
sub_40692d:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406930
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_536
	call	rpl_calloc
	test	rax, rax
	je	.label_536
	pop	rcx
	ret	
.label_536:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406956
	.globl sub_406956
	.type sub_406956, @function
sub_406956:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406960

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	16
	#Procedure 0x40696a
	.globl sub_40696a
	.type sub_40696a, @function
sub_40696a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406970
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
	.align	16
	#Procedure 0x406980

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	16
	#Procedure 0x406989
	.globl sub_406989
	.type sub_406989, @function
sub_406989:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406990

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x40699a
	.globl sub_40699a
	.type sub_40699a, @function
sub_40699a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069a0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_537
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_538
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_540
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_271
	mov	ecx, OFFSET FLAT:label_278
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_539
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	16
	#Procedure 0x406a14
	.globl sub_406a14
	.type sub_406a14, @function
sub_406a14:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a20

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	cmp	byte ptr [rdi + 0x2c], 0
	je	.label_541
	movzx	eax, word ptr [rdi]
	cmp	eax, 7
	sete	al
	jmp	.label_543
.label_541:
	xor	eax, eax
.label_543:
	push	rax
	test	sil, 2
	je	.label_545
	test	al, al
	jne	.label_545
	xor	eax, eax
	jmp	.label_544
.label_542:
	mov	al, 1
.label_544:
	pop	rcx
	ret	
.label_545:
	test	sil, 1
	je	.label_542
	xor	al, 1
	jne	.label_542
	mov	edi, dword ptr [rdi + 4]
	test	edi, edi
	jle	.label_542
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_542
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_542
	xor	eax, eax
	jmp	.label_544
	.section	.text
	.align	16
	#Procedure 0x406a70

	.globl uptime
	.type uptime, @function
uptime:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	eax, esi
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_546
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	call	print_uptime
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_546:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ae0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_547
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	mov	rdi, r14
	call	change_env
	mov	ebx, eax
	test	bl, bl
	jne	.label_548
	mov	ebp, dword ptr [r15]
.label_548:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_547:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b26
	.globl sub_406b26
	.type sub_406b26, @function
sub_406b26:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b30
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_549
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_549:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b4e
	.globl sub_406b4e
	.type sub_406b4e, @function
sub_406b4e:

	nop	
	.section	.text
	.align	16
	#Procedure 0x406b50

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	test	edi, edi
	sete	al
	test	esi, esi
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b64
	.globl sub_406b64
	.type sub_406b64, @function
sub_406b64:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b70

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_550
	ret	
.label_550:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	16
	#Procedure 0x406b83
	.globl sub_406b83
	.type sub_406b83, @function
sub_406b83:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b90

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	16
	#Procedure 0x406b99
	.globl sub_406b99
	.type sub_406b99, @function
sub_406b99:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ba0

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
	mov	rax,  qword ptr [word ptr [rip + label_49]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_50]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_51]]
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
	.align	16
	#Procedure 0x406c08
	.globl sub_406c08
	.type sub_406c08, @function
sub_406c08:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c10

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_552
	cmp	byte ptr [rax], 0x43
	jne	.label_554
	cmp	byte ptr [rax + 1], 0
	je	.label_551
.label_554:
	mov	esi, OFFSET FLAT:label_553
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_552
.label_551:
	xor	ebx, ebx
.label_552:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c41
	.globl sub_406c41
	.type sub_406c41, @function
sub_406c41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c50

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
	je	.label_555
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
.label_555:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406ca2
	.globl sub_406ca2
	.type sub_406ca2, @function
sub_406ca2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cb0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	lea	eax, [rdi + 0x17e]
	sub	eax, esi
	cdqe	
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ce3
	.globl sub_406ce3
	.type sub_406ce3, @function
sub_406ce3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d55
	.globl sub_406d55
	.type sub_406d55, @function
sub_406d55:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d62
	.globl sub_406d62
	.type sub_406d62, @function
sub_406d62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d86
	.globl sub_406d86
	.type sub_406d86, @function
sub_406d86:

	nop	word ptr cs:[rax + rax]
