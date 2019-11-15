	.section	.text
	.align	32
	#Procedure 0x401669
	.globl sub_401669
	.type sub_401669, @function
sub_401669:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40166a
	.globl sub_40166a
	.type sub_40166a, @function
sub_40166a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016a2
	.globl sub_4016a2
	.type sub_4016a2, @function
sub_4016a2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4016ea
	.globl sub_4016ea
	.type sub_4016ea, @function
sub_4016ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40170c
	.globl sub_40170c
	.type sub_40170c, @function
sub_40170c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40171d
	.globl sub_40171d
	.type sub_40171d, @function
sub_40171d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401736
	.globl sub_401736
	.type sub_401736, @function
sub_401736:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401740

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
.label_19:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_18
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_18:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_12
	jmp	.label_16
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_19
.label_16:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_21
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_21:
	movabs	rdi, OFFSET FLAT:label_11
	call	gettext
	movabs	rsi, OFFSET FLAT:label_22
	movabs	rdx, OFFSET FLAT:label_20
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
	je	.label_10
	movabs	rsi, OFFSET FLAT:label_15
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_10
	movabs	rdi, OFFSET FLAT:label_23
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_10:
	movabs	rdi, OFFSET FLAT:label_17
	call	gettext
	movabs	rsi, OFFSET FLAT:label_20
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_13
	movabs	rsi, OFFSET FLAT:label_14
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
	.align	32
	#Procedure 0x4018d9
	.globl sub_4018d9
	.type sub_4018d9, @function
sub_4018d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018e0

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
	jne	.label_24
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_24:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_25
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_25
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_25
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_26
.label_25:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_26:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401981
	.globl sub_401981
	.type sub_401981, @function
sub_401981:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401990
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_27
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_27:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019ba
	.globl sub_4019ba
	.type sub_4019ba, @function
sub_4019ba:

	nop	word ptr [rax + rax]
.label_29:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_28:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4019dc
	.globl sub_4019dc
	.type sub_4019dc, @function
sub_4019dc:

	nop	word ptr cs:[rax + rax]
.label_30:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_28
	.section	.text
	.align	32
	#Procedure 0x401a10

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
	jne	.label_29
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_29
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_29
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_30
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_28
.label_38:
	movabs	rdi, OFFSET FLAT:label_35
	call	gettext
	movabs	rdx, OFFSET FLAT:label_46
	mov	ecx, 0x80
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x18], eax
	call	emit_stdin_note
	movabs	rdi, OFFSET FLAT:label_32
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_40
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_46
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_34
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_42
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_39
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_44
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_36
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_33
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_37
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_31
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_47
	mov	dword ptr [rbp - 0x3c], eax
	call	emit_ancillary_info
.label_41:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401c19
	.globl sub_401c19
	.type sub_401c19, @function
sub_401c19:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401c1d

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_38
	jmp	.label_43
.label_43:
	movabs	rdi, OFFSET FLAT:label_45
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_41
	.section	.text
	.align	32
	#Procedure 0x401c70

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	dword ptr [rdi], esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c86
	.globl sub_401c86
	.type sub_401c86, @function
sub_401c86:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c90
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_48
	jmp	.label_50
.label_50:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_49
.label_48:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_49:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401cc7
	.globl sub_401cc7
	.type sub_401cc7, @function
sub_401cc7:

	nop	word ptr [rax + rax]
.label_59:
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x3c], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_52
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_51
	.section	.text
	.align	32
	#Procedure 0x401d0c

	.globl digest_file
	.type digest_file, @function
digest_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_56
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x35], r8b
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x35], 1
	je	.label_61
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_57
.label_60:
	test	byte ptr [rbp - 0x35], 1
	jne	.label_53
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_53
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x48], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_52
	mov	esi, dword ptr [rbp - 0x48]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_51
.label_61:
	movabs	rsi, OFFSET FLAT:label_54
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_58
	test	byte ptr [byte ptr [ignore_missing]],  1
	je	.label_59
	call	__errno_location
	cmp	dword ptr [rax], 2
	jne	.label_59
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_51
.label_58:
	jmp	.label_57
.label_57:
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x30]
	call	fadvise
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x20]
	call	md5_stream
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_60
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x40], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_52
	mov	esi, dword ptr [rbp - 0x40]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx,  qword ptr [word ptr [stdin]]
	je	.label_55
	mov	rdi, qword ptr [rbp - 0x30]
	call	rpl_fclose
	mov	dword ptr [rbp - 0x44], eax
.label_55:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_51
.label_53:
	mov	byte ptr [rbp - 1], 1
.label_51:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401eac
	.globl sub_401eac
	.type sub_401eac, @function
sub_401eac:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401eb0
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
	.align	32
	#Procedure 0x401ed5
	.globl sub_401ed5
	.type sub_401ed5, @function
sub_401ed5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ee0

	.globl afalg_stream
	.type afalg_stream, @function
afalg_stream:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0xffffff9f
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401efb
	.globl sub_401efb
	.type sub_401efb, @function
sub_401efb:

	nop	dword ptr [rax + rax]
.label_144:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_218
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_109
.label_156:
	jmp	.label_151
.label_151:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_225
	mov	byte ptr [rbp - 0x91], 0
.label_225:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_229
.label_229:
	jmp	.label_235
.label_235:
	jmp	.label_236
.label_236:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_134
.label_109:
	jmp	.label_231
.label_231:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_129
	test	byte ptr [rbp - 0x79], 1
	je	.label_165
	test	byte ptr [rbp - 0x91], 1
	jne	.label_165
.label_129:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_79:
	test	byte ptr [rbp - 0x79], 1
	je	.label_254
	test	byte ptr [rbp - 0x91], 1
	jne	.label_254
	jmp	.label_259
.label_259:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_261
	jmp	.label_71
.label_254:
	test	byte ptr [rbp - 0x81], 1
	je	.label_264
	jmp	.label_62
.label_62:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_64
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_64:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_264:
	jmp	.label_76
.label_76:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_77
	jmp	.label_84
.label_207:
	call	abort
.label_84:
	jmp	.label_86
.label_147:
	jmp	.label_88
.label_88:
	test	byte ptr [rbp - 0x79], 1
	je	.label_89
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_94
.label_152:
	jmp	.label_116
.label_140:
	jmp	.label_80
.label_80:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_102
.label_189:
	jmp	.label_106
.label_106:
	jmp	.label_107
.label_107:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_108
.label_163:
	jmp	.label_112
.label_112:
	jmp	.label_96
.label_87:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_121
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_121:
	jmp	.label_134
.label_134:
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
	jne	.label_144
	jmp	.label_109
.label_243:
	jmp	.label_69
.label_69:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_147
	test	byte ptr [rbp - 0x7b], 1
	je	.label_147
	jmp	.label_71
.label_167:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_152
	jmp	.label_71
.label_164:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_151
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_151
	mov	qword ptr [rbp - 0xb8], 1
.label_108:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_156
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
	jb	.label_162
	jmp	.label_177
.label_177:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_162
	jmp	.label_184
.label_184:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_162
	jmp	.label_187
.label_187:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_189
	jmp	.label_162
.label_162:
	jmp	.label_71
.label_881:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_880:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_193
	jmp	.label_201
.label_201:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_195
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_195:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_193
.label_193:
	movabs	rax, OFFSET FLAT:label_202
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_102
.label_97:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_205
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_205
	jmp	.label_210
.label_210:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_212
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_212:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_217
.label_217:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_219
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_219:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_224
.label_224:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_228
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_228:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_205:
	jmp	.label_238
.label_238:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_241
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_241:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_123
.label_123:
	jmp	.label_86
.label_86:
	jmp	.label_245
.label_245:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_246
	test	byte ptr [rbp - 0x82], 1
	jne	.label_246
	jmp	.label_249
.label_249:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_251
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_251:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_255
.label_255:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_230
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_230:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_246:
	jmp	.label_63
.label_63:
	jmp	.label_65
.label_65:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_66
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_66:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_75
	mov	byte ptr [rbp - 0x7e], 0
.label_75:
	jmp	.label_82
.label_82:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_83
.label_73:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_87
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
	jmp	.label_231
.label_237:
	jmp	.label_109
.label_119:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_110
.label_172:
	jmp	.label_96
.label_247:
	jmp	.label_111
.label_111:
	jmp	.label_148
.label_148:
	jmp	.label_116
.label_180:
	jmp	.label_116
.label_116:
	jmp	.label_96
.label_67:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_120
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_120
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_120:
	jmp	.label_130
.label_130:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_115
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_115:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_136
.label_136:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_138
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_138:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_145
.label_145:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_146
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_146:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_265:
	jmp	.label_96
.label_100:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_113:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_153
	jmp	.label_199
.label_153:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_169
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_169
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_169
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_174
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_174
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_186
.label_90:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_190
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_190:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_204
.label_204:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_197
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_197:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_257
.label_257:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_203
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_203:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_209
.label_209:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_211
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_211:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_111
.label_165:
	jmp	.label_96
.label_96:
	test	byte ptr [rbp - 0x79], 1
	je	.label_220
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_222
.label_220:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_213
.label_222:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_213
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
	jne	.label_226
.label_213:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_226
	jmp	.label_86
.label_89:
	jmp	.label_96
.label_168:
	jmp	.label_161
.label_161:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_244
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_244:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_154
.label_174:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_186:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_169
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_169
	test	byte ptr [rbp - 0x7b], 1
	je	.label_260
	jmp	.label_71
.label_841:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_69
.label_844:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_265
	test	byte ptr [rbp - 0x7b], 1
	je	.label_67
	jmp	.label_71
.label_260:
	mov	byte ptr [rbp - 0x81], 1
.label_169:
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
	ja	.label_73
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_183]]
	jmp	rcx
.label_261:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_91
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_91
	jmp	.label_223
.label_223:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_98
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_98:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_105
.label_105:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_196
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_196:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_114
.label_114:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_118
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_118:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_91:
	jmp	.label_131
.label_131:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_132
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_132:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_137
.label_137:
	jmp	.label_139
.label_139:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_141
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_141:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_227
.label_227:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_149
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_149:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_76
.label_104:
	jmp	.label_158
.label_158:
	jmp	.label_143
.label_143:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_161
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_161
	jmp	.label_166
.label_166:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_168
	jmp	.label_170
.label_170:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_171
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_171:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_181
.label_181:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_166
	.section	.text
	.align	32
	#Procedure 0x402a34

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
.label_78:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_207
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_215]]
	jmp	rcx
.label_218:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_164
	mov	byte ptr [rbp - 0x91], 0
.label_240:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_221
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_221:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_234
	jmp	.label_237
.label_234:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_240
.label_176:
	test	byte ptr [rbp - 0x79], 1
	je	.label_243
	test	byte ptr [rbp - 0x7b], 1
	je	.label_243
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_243
	jmp	.label_86
.label_175:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_148
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_148
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_148
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_68
	jmp	.label_263
.label_263:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_68
	jmp	.label_248
.label_248:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_68
	jmp	.label_74
.label_74:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_68
	jmp	.label_81
.label_81:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_247
	jmp	.label_68
.label_68:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_90
	jmp	.label_71
.label_157:
	jmp	.label_86
.label_226:
	jmp	.label_94
.label_94:
	jmp	.label_95
.label_95:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_97
	jmp	.label_71
.label_836:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_88
.label_93:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_104
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_104
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_78
.label_838:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_69
.label_878:
	mov	byte ptr [rbp - 0x79], 1
.label_877:
	mov	byte ptr [rbp - 0x7b], 1
.label_879:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_117
	mov	byte ptr [rbp - 0x79], 1
.label_117:
	jmp	.label_122
.label_122:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_135
	jmp	.label_127
.label_127:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_128
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_128:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_135
.label_135:
	movabs	rax, OFFSET FLAT:label_133
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_102
.label_92:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_143
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_143
	test	byte ptr [rbp - 0x7d], 1
	je	.label_143
	test	byte ptr [rbp - 0x7e], 1
	je	.label_93
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
	jmp	.label_154
.label_179:
	jmp	.label_188
.label_188:
	mov	byte ptr [rbp - 0x83], 1
.label_842:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_160
	test	byte ptr [rbp - 0x7b], 1
	je	.label_160
	jmp	.label_71
.label_847:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_119
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_110
	jmp	.label_172
.label_843:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_96
.label_110:
	jmp	.label_178
.label_178:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_179
	jmp	.label_96
.label_876:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_102
.label_103:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_185
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_185
	jmp	.label_150
.label_150:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_191
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_191:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_192
.label_192:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_194
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_194:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_198
.label_198:
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
	mov	byte ptr [rbp - 0x7c], 1
.label_185:
	jmp	.label_206
.label_206:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_208
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_208:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_214
.label_214:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_216
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_216
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_216
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_216
	jmp	.label_232
.label_232:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_233
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_233:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_239
.label_239:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_242
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_242:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_216
.label_216:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_112
.label_77:
	jmp	.label_155
.label_155:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_250
	test	byte ptr [rbp - 0x82], 1
	jne	.label_250
	jmp	.label_252
.label_252:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_253
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_258
.label_258:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_262
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_262:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_250:
	jmp	.label_70
.label_70:
	jmp	.label_72
.label_72:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_159
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_159:
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
	jmp	.label_79
.label_199:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_92
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_92
	test	byte ptr [rbp - 0x7b], 1
	je	.label_92
	jmp	.label_71
.label_834:
	test	byte ptr [rbp - 0x79], 1
	je	.label_99
	jmp	.label_101
.label_101:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_103
	jmp	.label_71
.label_160:
	jmp	.label_96
.label_837:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_69
.label_102:
	mov	qword ptr [rbp - 0x58], 0
.label_83:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_100
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_113
.label_883:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_124
	movabs	rdi, OFFSET FLAT:label_126
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_133
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_124:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_80
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_125:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_140
	jmp	.label_142
.label_142:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_256
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_256:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_85
.label_85:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_125
.label_835:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_88
.label_839:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_88
.label_840:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_88
.label_846:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_176
	test	byte ptr [rbp - 0x7b], 1
	je	.label_157
	jmp	.label_71
.label_99:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_163
	jmp	.label_82
.label_845:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_167
	jmp	.label_173
.label_173:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_175
	jmp	.label_180
.label_71:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_182
	test	byte ptr [rbp - 0x79], 1
	je	.label_182
	mov	dword ptr [rbp - 0x34], 4
.label_182:
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
.label_154:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40328e
	.globl sub_40328e
	.type sub_40328e, @function
sub_40328e:

	nop	dword ptr [rax + rax]
.label_882:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_102
	.section	.text
	.align	32
	#Procedure 0x4032a0

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x20
	mov	ecx, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edx, dword ptr [rsi + 0x18]
	mov	dword ptr [rbp - 0x14], edx
	cmp	dword ptr [rbp - 0x14], 0x38
	cmovb	eax, ecx
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x20], rsi
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 8]
	add	eax, dword ptr [rsi + 0x10]
	mov	dword ptr [rsi + 0x10], eax
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi + 0x10]
	cmp	eax, dword ptr [rbp - 0x14]
	jae	.label_266
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	add	ecx, 1
	mov	dword ptr [rax + 0x14], ecx
.label_266:
	movabs	rsi, OFFSET FLAT:fillbuf
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x10]
	shl	ecx, 3
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 2
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x14]
	shl	ecx, 3
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x10]
	shr	edi, 0x1d
	or	ecx, edi
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rdx + rax*4 + 0x1c], ecx
	mov	ecx, dword ptr [rbp - 0x14]
	mov	eax, ecx
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 0x1c
	add	rdx, rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 2
	shl	rax, 2
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r8d, ecx
	sub	rax, r8
	mov	rdi, rdx
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x1c
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rdx, 2
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	call	md5_process_block
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_read_ctx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033b0

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
	jne	.label_267
	movabs	rax, OFFSET FLAT:label_13
	mov	qword ptr [rbp - 8], rax
.label_267:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_268
	movabs	rax, OFFSET FLAT:label_269
	mov	qword ptr [rbp - 8], rax
.label_268:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403407
	.globl sub_403407
	.type sub_403407, @function
sub_403407:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403410

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
	.align	32
	#Procedure 0x403447
	.globl sub_403447
	.type sub_403447, @function
sub_403447:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403450

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
	.align	32
	#Procedure 0x4034c2
	.globl sub_4034c2
	.type sub_4034c2, @function
sub_4034c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034d0
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
	.align	32
	#Procedure 0x4034ef
	.globl sub_4034ef
	.type sub_4034ef, @function
sub_4034ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4034f0

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
	.align	32
	#Procedure 0x403522
	.globl sub_403522
	.type sub_403522, @function
sub_403522:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403530
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
	.align	32
	#Procedure 0x40356a
	.globl sub_40356a
	.type sub_40356a, @function
sub_40356a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403570

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
	jg	.label_277
	mov	esi, 0x406
	mov	edi, dword ptr [rbp - 4]
	mov	edx, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	xor	edx, edx
	mov	dword ptr [rbp - 0xc], eax
	cmp	edx, dword ptr [rbp - 0xc]
	jle	.label_275
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_271
.label_275:
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_272
.label_277:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
.label_274:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0xc]
	jg	.label_273
	cmp	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_273
	mov	esi, 1
	mov	edi, dword ptr [rbp - 0xc]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x10], eax
	cmp	dword ptr [rbp - 0x10], 0
	jl	.label_270
	mov	esi, 2
	mov	edi, dword ptr [rbp - 0xc]
	mov	eax, dword ptr [rbp - 0x10]
	or	eax, 1
	mov	edx, eax
	mov	al, 0
	call	fcntl
	cmp	eax, -1
	jne	.label_276
.label_270:
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
.label_276:
	jmp	.label_273
.label_273:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403668
	.globl sub_403668
	.type sub_403668, @function
sub_403668:

	nop	word ptr cs:[rax + rax]
.label_271:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0xc], eax
	cmp	dword ptr [rbp - 0xc], 0
	jl	.label_278
	mov	dword ptr [dword ptr [rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
.label_278:
	jmp	.label_272
.label_272:
	jmp	.label_274
.label_285:
	movabs	rdi, OFFSET FLAT:label_279
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_286
.label_284:
	movabs	rdi, OFFSET FLAT:label_288
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_286
.label_280:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036e4
	.globl sub_4036e4
	.type sub_4036e4, @function
sub_4036e4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4036e6

	.globl print_filename
	.type print_filename, @function
print_filename:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	jne	.label_281
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_280
.label_287:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x28], eax
.label_286:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_283
.label_281:
	jmp	.label_283
.label_283:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_280
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0xa
	mov	dword ptr [rbp - 0x14], ecx
	mov	dword ptr [rbp - 0x18], edx
	je	.label_285
	jmp	.label_282
.label_282:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_284
	jmp	.label_287
.label_289:
	mov	eax, 0xf4240
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0xf4240
	mov	qword ptr [rbp - 0x10], rdx
.label_290:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037a1
	.globl sub_4037a1
	.type sub_4037a1, @function
sub_4037a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4037b0

	.globl select_plural
	.type select_plural, @function
select_plural:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], -1
	ja	.label_289
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_290
.label_303:
	movabs	rsi, OFFSET FLAT:label_297
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_308:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_306
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
	mov	ecx, OFFSET FLAT:label_302
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
	ja	.label_293
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_299]]
	jmp	rcx
.label_827:
	movabs	rdi, OFFSET FLAT:label_305
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
	jmp	.label_291
.label_822:
	movabs	rdi, OFFSET FLAT:label_300
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
	jmp	.label_291
.label_821:
	movabs	rdi, OFFSET FLAT:label_307
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
	jmp	.label_291
.label_819:
	movabs	rdi, OFFSET FLAT:label_296
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
	jmp	.label_291
.label_820:
	movabs	rdi, OFFSET FLAT:label_295
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
	jmp	.label_291
.label_823:
	movabs	rdi, OFFSET FLAT:label_309
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
	jmp	.label_291
.label_825:
	movabs	rdi, OFFSET FLAT:label_304
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
	jmp	.label_291
.label_293:
	movabs	rdi, OFFSET FLAT:label_292
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
.label_291:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bfc
	.globl sub_403bfc
	.type sub_403bfc, @function
sub_403bfc:

	nop	
.label_818:
	jmp	.label_291
.label_826:
	movabs	rdi, OFFSET FLAT:label_301
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
	jmp	.label_291
	.section	.text
	.align	32
	#Procedure 0x403ca9

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
	je	.label_303
	movabs	rsi, OFFSET FLAT:label_298
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_308
.label_824:
	movabs	rdi, OFFSET FLAT:label_294
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
	jmp	.label_291
.label_310:
	test	byte ptr [rbp - 0x31], 1
	je	.label_314
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_317
.label_314:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_317:
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
	je	.label_313
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_311]]
	mov	qword ptr [rax + 8], rcx
.label_313:
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
.label_315:
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
	ja	.label_316
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_312
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_312:
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
.label_316:
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
	.align	32
	#Procedure 0x403f85
	.globl sub_403f85
	.type sub_403f85, @function
sub_403f85:

	nop	word ptr cs:[rax + rax]
.label_318:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_315
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_310
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403fd1

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
	jge	.label_318
	call	abort
.label_320:
	mov	byte ptr [rbp - 1], 0
.label_321:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40401e
	.globl sub_40401e
	.type sub_40401e, @function
sub_40401e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40402c
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_320
	jmp	.label_319
.label_319:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_321
.label_325:
	jmp	.label_322
.label_322:
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
	jne	.label_323
	jmp	.label_326
.label_323:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_322
.label_326:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_324:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040c7
	.globl sub_4040c7
	.type sub_4040c7, @function
sub_4040c7:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040d6

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
	jne	.label_325
	mov	dword ptr [rbp - 4], 0
	jmp	.label_324
	.section	.text
	.align	32
	#Procedure 0x404110

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
	.align	32
	#Procedure 0x40412b
	.globl sub_40412b
	.type sub_40412b, @function
sub_40412b:

	nop	dword ptr [rax + rax]
.label_328:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_327
.label_327:
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
	.align	32
	#Procedure 0x4041c1
	.globl sub_4041c1
	.type sub_4041c1, @function
sub_4041c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041cc
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
	je	.label_328
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_327
	.section	.text
	.align	32
	#Procedure 0x404200

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
	.align	32
	#Procedure 0x404275
	.globl sub_404275
	.type sub_404275, @function
sub_404275:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404280

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_329
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_52
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4042bf
	.globl sub_4042bf
	.type sub_4042bf, @function
sub_4042bf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4042c0
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
	.align	32
	#Procedure 0x4042e8
	.globl sub_4042e8
	.type sub_4042e8, @function
sub_4042e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042f0

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042fe
	.globl sub_4042fe
	.type sub_4042fe, @function
sub_4042fe:

	nop	
.label_331:
	mov	dword ptr [rbp - 4], 0
.label_330:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404310
	.globl sub_404310
	.type sub_404310, @function
sub_404310:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404317

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
	jne	.label_332
	test	byte ptr [rbp - 0x13], 1
	je	.label_331
	test	byte ptr [rbp - 0x11], 1
	jne	.label_332
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_331
.label_332:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_333
	call	__errno_location
	mov	dword ptr [rax], 0
.label_333:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_330
	.section	.text
	.align	32
	#Procedure 0x4043b0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_334
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043e0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	je	.label_335
	mov	rdi, qword ptr [rbp - 8]
	call	fileno
	xor	ecx, ecx
	mov	edi, ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	call	fdadvise
.label_335:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404423
	.globl sub_404423
	.type sub_404423, @function
sub_404423:

	nop	word ptr cs:[rax + rax]
.label_336:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40444b
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
	jae	.label_336
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404480
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
	.align	32
	#Procedure 0x404496
	.globl sub_404496
	.type sub_404496, @function
sub_404496:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a0

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
	je	.label_337
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_340
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_341
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_338
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_339
.label_341:
	mov	byte ptr [rbp - 5], 0
.label_339:
	jmp	.label_337
.label_337:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404513
	.globl sub_404513
	.type sub_404513, @function
sub_404513:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404520
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
.label_344:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_342
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_344
.label_342:
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
	.align	32
	#Procedure 0x404590

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
	je	.label_345
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_345:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4045cb
	.globl sub_4045cb
	.type sub_4045cb, @function
sub_4045cb:

	nop	dword ptr [rax + rax]
.label_377:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 4], eax
	mov	eax, dword ptr [rbp - 0x84]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 8], eax
	mov	eax, dword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx + 0xc], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404603
	.globl sub_404603
	.type sub_404603, @function
sub_404603:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404604

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 2
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x70]
	shl	rsi, 2
	add	rdx, rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 4]
	mov	dword ptr [rbp - 0x80], eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 8]
	mov	dword ptr [rbp - 0x84], eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 0xc]
	mov	dword ptr [rbp - 0x88], eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	eax, edx
	mov	dword ptr [rbp - 0x8c], eax
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rdx, qword ptr [rbp - 0x18]
	add	eax, dword ptr [rdx + 0x10]
	mov	dword ptr [rdx + 0x10], eax
	mov	rdx, qword ptr [rbp - 0x10]
	shr	rdx, 0x1f
	shr	rdx, 1
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x10]
	cmp	eax, dword ptr [rbp - 0x8c]
	setb	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x14]
	mov	edi, eax
	add	rdi, rdx
	mov	eax, edi
	mov	dword ptr [rsi + 0x14], eax
.label_392:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x78]
	jae	.label_377
	lea	rax, [rbp - 0x60]
	mov	qword ptr [rbp - 0x98], rax
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x9c], ecx
	mov	ecx, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0xa0], ecx
	mov	ecx, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0xa8], ecx
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xd76aa478
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_384
.label_384:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xe8c7b756
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_368
.label_368:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x242070db
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_403
.label_403:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xc1bdceee
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_382
.label_382:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xf57c0faf
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_394
.label_394:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x4787c62a
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_388
.label_388:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xa8304613
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_383
.label_383:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xfd469501
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_408
.label_408:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x698098d8
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_375
.label_375:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x8b44f7af
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_409
.label_409:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xffff5bb1
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_367
.label_367:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x895cd7be
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_386
.label_386:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x6b901122
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 7
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x19
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_354
.label_354:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xfd987193
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xc
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x14
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_364
.label_364:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0xa679438e
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x11
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0xf
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_349
.label_349:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	mov	rsi, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdi, rsi
	add	rdi, 4
	mov	qword ptr [rbp - 0x98], rdi
	mov	dword ptr [rsi], ecx
	add	eax, ecx
	add	eax, 0x49b40821
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	rsi, qword ptr [rbp - 0x68]
	add	rsi, 4
	mov	qword ptr [rbp - 0x68], rsi
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x16
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xa
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_396
.label_396:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x5c]
	add	eax, 0xf61e2562
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_405
.label_405:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0xc040b340
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_391
.label_391:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0x265e5a51
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_353
.label_353:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xe9b6c7aa
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_397
.label_397:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0xd62f105d
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_369
.label_369:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0x2441453
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_406
.label_406:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0xd8a1e681
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_381
.label_381:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xe7d3fbc8
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_363
.label_363:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x3c]
	add	eax, 0x21e1cde6
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_399
.label_399:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0xc33707d6
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_371
.label_371:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x54]
	add	eax, 0xf4d50d87
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_350
.label_350:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0x455a14ed
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_393
.label_393:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, dword ptr [rbp - 0x84]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	add	eax, 0xa9e3e905
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 5
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1b
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_366
.label_366:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, dword ptr [rbp - 0x80]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x58]
	add	eax, 0xfcefa3f8
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 9
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x17
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_355
.label_355:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, dword ptr [rbp - 0x7c]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0x676f02d9
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xe
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x12
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_378
.label_378:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, dword ptr [rbp - 0x88]
	and	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x30]
	add	eax, 0x8d2a4c8a
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x14
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xc
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_359
.label_359:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0xfffa3942
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_395
.label_395:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0x8771f681
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_360
.label_360:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0x6d9d6122
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_400
.label_400:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0xfde5380c
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_376
.label_376:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x5c]
	add	eax, 0xa4beea44
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_410
.label_410:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0x4bdecfa9
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_374
.label_374:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0xf6bb4b60
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_351
.label_351:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0xbebfbc70
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_389
.label_389:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x289b7ec6
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_357
.label_357:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xeaa127fa
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_387
.label_387:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x54]
	add	eax, 0xd4ef3085
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_362
.label_362:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0x4881d05
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_404
.label_404:
	mov	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x3c]
	add	eax, 0xd9d4d039
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 4
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1c
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_356
.label_356:
	mov	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	xor	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x30]
	add	eax, 0xe6db99e5
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xb
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x15
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_361
.label_361:
	mov	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	xor	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0x1fa27cf8
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0x10
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x10
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_398
.label_398:
	mov	eax, dword ptr [rbp - 0x84]
	xor	eax, dword ptr [rbp - 0x88]
	xor	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x58]
	add	eax, 0xc4ac5665
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x17
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 9
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_352
.label_352:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x60]
	add	eax, 0xf4292244
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_380
.label_380:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x44]
	add	eax, 0x432aff97
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_390
.label_390:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x28]
	add	eax, 0xab9423a7
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_346
.label_346:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x4c]
	add	eax, 0xfc93a039
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_372
.label_372:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x30]
	add	eax, 0x655b59c3
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_347
.label_347:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x54]
	add	eax, 0x8f0ccc92
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_379
.label_379:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x38]
	add	eax, 0xffeff47d
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_358
.label_358:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x5c]
	add	eax, 0x85845dd1
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_370
.label_370:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x40]
	add	eax, 0x6fa87e4f
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_373
.label_373:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x24]
	add	eax, 0xfe2ce6e0
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_407
.label_407:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x48]
	add	eax, 0xa3014314
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_385
.label_385:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x2c]
	add	eax, 0x4e0811a1
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_402
.label_402:
	mov	eax, dword ptr [rbp - 0x84]
	mov	ecx, dword ptr [rbp - 0x80]
	mov	edx, dword ptr [rbp - 0x88]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x50]
	add	eax, 0xf7537e82
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x7c]
	shl	eax, 6
	mov	ecx, dword ptr [rbp - 0x7c]
	shr	ecx, 0x1a
	or	eax, ecx
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_401
.label_401:
	mov	eax, dword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	edx, dword ptr [rbp - 0x84]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x34]
	add	eax, 0xbd3af235
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	shl	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x88]
	shr	ecx, 0x16
	or	eax, ecx
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_365
.label_365:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	ecx, dword ptr [rbp - 0x88]
	mov	edx, dword ptr [rbp - 0x80]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x58]
	add	eax, 0x2ad7d2bb
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x84]
	shl	eax, 0xf
	mov	ecx, dword ptr [rbp - 0x84]
	shr	ecx, 0x11
	or	eax, ecx
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0x88]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_348
.label_348:
	mov	eax, dword ptr [rbp - 0x88]
	mov	ecx, dword ptr [rbp - 0x84]
	mov	edx, dword ptr [rbp - 0x7c]
	xor	edx, 0xffffffff
	or	ecx, edx
	xor	eax, ecx
	add	eax, dword ptr [rbp - 0x3c]
	add	eax, 0xeb86d391
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x80]
	shl	eax, 0x15
	mov	ecx, dword ptr [rbp - 0x80]
	shr	ecx, 0xb
	or	eax, ecx
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x84]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0x9c]
	add	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x7c], eax
	mov	eax, dword ptr [rbp - 0xa0]
	add	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x80], eax
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x84], eax
	mov	eax, dword ptr [rbp - 0xa8]
	add	eax, dword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x88], eax
	jmp	.label_392
.label_412:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_416
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_417
.label_416:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_417:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_415
	movabs	rsi, OFFSET FLAT:label_414
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_415
	movabs	rsi, OFFSET FLAT:label_413
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_418
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_418:
	jmp	.label_415
.label_415:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405dc3
	.globl sub_405dc3
	.type sub_405dc3, @function
sub_405dc3:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405dca

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_412
	movabs	rdi, OFFSET FLAT:label_411
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405e00
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_419
	call	gettext
	movabs	rsi, OFFSET FLAT:label_421
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_420
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_22
	movabs	rdx, OFFSET FLAT:label_20
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_422
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
	.align	32
	#Procedure 0x405e86
	.globl sub_405e86
	.type sub_405e86, @function
sub_405e86:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e90
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
	.align	32
	#Procedure 0x405eb7
	.globl sub_405eb7
	.type sub_405eb7, @function
sub_405eb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ec0
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
	.align	32
	#Procedure 0x405eda
	.globl sub_405eda
	.type sub_405eda, @function
sub_405eda:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ee0

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
	.align	32
	#Procedure 0x405f1f
	.globl sub_405f1f
	.type sub_405f1f, @function
sub_405f1f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405f20
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
	ja	.label_423
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_425]]
	jmp	rcx
.label_907:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_424
.label_423:
	mov	byte ptr [rbp - 1], 0
.label_424:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405f61
	.globl sub_405f61
	.type sub_405f61, @function
sub_405f61:

	nop	word ptr cs:[rax + rax]
.label_426:
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
	.align	32
	#Procedure 0x405f9a
	.globl sub_405f9a
	.type sub_405f9a, @function
sub_405f9a:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fa6

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
	jne	.label_426
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405fe0
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
	jb	.label_427
	jmp	.label_429
.label_429:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_430
	jmp	.label_427
.label_427:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_428
.label_430:
	mov	byte ptr [rbp - 1], 0
.label_428:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406028
	.globl sub_406028
	.type sub_406028, @function
sub_406028:

	nop	dword ptr [rax + rax]
.label_434:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_431
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_311]],  rax
.label_431:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_432
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_432:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060b6
	.globl sub_4060b6
	.type sub_4060b6, @function
sub_4060b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060c2
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_433:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_434
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_433
	.section	.text
	.align	32
	#Procedure 0x406110

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
	.align	32
	#Procedure 0x406143
	.globl sub_406143
	.type sub_406143, @function
sub_406143:

	nop	word ptr cs:[rax + rax]
.label_436:
	mov	byte ptr [rbp - 1], 0
.label_437:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40615e
	.globl sub_40615e
	.type sub_40615e, @function
sub_40615e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40616c
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_436
	jmp	.label_435
.label_435:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_437
.label_444:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_451:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x20
	mov	byte ptr [rbp - 0x3b], al
	je	.label_452
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 9
	sete	sil
	mov	byte ptr [rbp - 0x3b], sil
.label_452:
	mov	al, byte ptr [rbp - 0x3b]
	test	al, 1
	jne	.label_439
	jmp	.label_438
.label_439:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_451
.label_443:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	test	byte ptr [rbp - 0x29], 1
	je	.label_442
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	filename_unescape
	cmp	rax, 0
	jne	.label_442
	mov	byte ptr [rbp - 1], 0
	jmp	.label_446
.label_438:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	call	hex_digits
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_446:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
.label_447:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x29
	je	.label_443
	mov	byte ptr [rbp - 1], 0
	jmp	.label_446
.label_440:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_453:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x39], cl
	je	.label_454
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x29
	setne	sil
	mov	byte ptr [rbp - 0x39], sil
.label_454:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_450
	jmp	.label_447
.label_450:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, -1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_453
.label_442:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
.label_449:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x20
	mov	byte ptr [rbp - 0x3a], al
	je	.label_448
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 9
	sete	sil
	mov	byte ptr [rbp - 0x3a], sil
.label_448:
	mov	al, byte ptr [rbp - 0x3a]
	test	al, 1
	jne	.label_441
	jmp	.label_445
.label_441:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_449
.label_445:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3d
	je	.label_444
	mov	byte ptr [rbp - 1], 0
	jmp	.label_446
	.section	.text
	.align	32
	#Procedure 0x40634c

	.globl bsd_split_3
	.type bsd_split_3, @function
bsd_split_3:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_440
	mov	byte ptr [rbp - 1], 0
	jmp	.label_446
	.section	.text
	.align	32
	#Procedure 0x406380

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
	je	.label_455
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_456
.label_455:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_456
.label_456:
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
	je	.label_457
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_457:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064d4
	.globl sub_4064d4
	.type sub_4064d4, @function
sub_4064d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064e0

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
	.align	32
	#Procedure 0x406521
	.globl sub_406521
	.type sub_406521, @function
sub_406521:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406530

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_458
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_458
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_460
.label_458:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_459
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_459
	call	xalloc_die
.label_459:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_460:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065aa
	.globl sub_4065aa
	.type sub_4065aa, @function
sub_4065aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065b0

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
	jne	.label_461
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_463
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
.label_463:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_462
	call	xalloc_die
.label_465:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_464:
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
	.align	32
	#Procedure 0x406671
	.globl sub_406671
	.type sub_406671, @function
sub_406671:

	nop	word ptr [rax + rax]
.label_461:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_465
	call	xalloc_die
.label_462:
	jmp	.label_464
.label_466:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4066aa
	.globl sub_4066aa
	.type sub_4066aa, @function
sub_4066aa:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4066ac

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
	jne	.label_466
	cmp	qword ptr [rbp - 8], 0
	je	.label_466
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4066e0
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
	.align	32
	#Procedure 0x406707
	.globl sub_406707
	.type sub_406707, @function
sub_406707:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406710
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rax, [rbp - 0xb8]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, rax
	call	md5_init_ctx
	lea	rdx, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	md5_process_bytes
	lea	rdi, [rbp - 0xb8]
	mov	rsi, qword ptr [rbp - 0x18]
	call	md5_finish_ctx
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406763
	.globl sub_406763
	.type sub_406763, @function
sub_406763:

	nop	
	nop	word ptr cs:[rax + rax]
.label_467:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406787
	.globl sub_406787
	.type sub_406787, @function
sub_406787:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40678f
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
	jae	.label_467
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4067c0

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
	.align	32
	#Procedure 0x4067e2
	.globl sub_4067e2
	.type sub_4067e2, @function
sub_4067e2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067f0

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
	.align	32
	#Procedure 0x40682e
	.globl sub_40682e
	.type sub_40682e, @function
sub_40682e:

	nop	
.label_468:
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
	.align	32
	#Procedure 0x40684e

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
	jne	.label_470
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_470:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_469
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_468
.label_469:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4068a0
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
	jb	.label_471
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_472
.label_471:
	call	xalloc_die
.label_472:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068f6
	.globl sub_4068f6
	.type sub_4068f6, @function
sub_4068f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406900
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_473
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_473:
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
	.align	32
	#Procedure 0x40693d
	.globl sub_40693d
	.type sub_40693d, @function
sub_40693d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406940

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
	ja	.label_474
	jmp	.label_476
.label_476:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_475
.label_474:
	jmp	.label_475
.label_475:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40698a
	.globl sub_40698a
	.type sub_40698a, @function
sub_40698a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406990
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
	jb	.label_477
	jmp	.label_480
.label_480:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_478
	jmp	.label_477
.label_477:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_479
.label_478:
	mov	byte ptr [rbp - 1], 0
.label_479:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069de
	.globl sub_4069de
	.type sub_4069de, @function
sub_4069de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4069e0
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
	.align	32
	#Procedure 0x406a0d
	.globl sub_406a0d
	.type sub_406a0d, @function
sub_406a0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a10
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
	.align	32
	#Procedure 0x406a3f
	.globl sub_406a3f
	.type sub_406a3f, @function
sub_406a3f:

	nop	
.label_498:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax,  qword ptr [word ptr [digest_hex_bytes]]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x20
	je	.label_481
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 9
	je	.label_481
	mov	byte ptr [rbp - 1], 0
	jmp	.label_485
.label_481:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	call	hex_digits
	test	al, 1
	jne	.label_488
	mov	byte ptr [rbp - 1], 0
	jmp	.label_485
.label_497:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_485
.label_491:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rbp - 0x48]
	mov	rcx,  qword ptr [word ptr [min_digest_line_length]]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rsi + rdx]
	cmp	edi, 0x5c
	sete	r8b
	and	r8b, 1
	movzx	edi, r8b
	movsxd	rdx, edi
	add	rcx, rdx
	cmp	rax, rcx
	jae	.label_498
	mov	byte ptr [rbp - 1], 0
	jmp	.label_485
.label_484:
	mov	byte ptr [rbp - 1], 1
.label_485:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b24
	.globl sub_406b24
	.type sub_406b24, @function
sub_406b24:

	nop	word ptr cs:[rax + rax]
.label_486:
	mov	dword ptr [dword ptr [bsd_reversed]],  1
	jmp	.label_483
.label_482:
	cmp	dword ptr [dword ptr [bsd_reversed]],  1
	je	.label_489
	mov	dword ptr [dword ptr [bsd_reversed]],  0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2a
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], edx
.label_489:
	jmp	.label_483
.label_483:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_484
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x48]
	mov	rdi, rax
	mov	rsi, rcx
	call	filename_unescape
	cmp	rax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
	jmp	.label_485
.label_488:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rbp - 0x48]
	cmp	rax, 1
	je	.label_487
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x20
	je	.label_482
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2a
	je	.label_482
.label_487:
	cmp	dword ptr [dword ptr [bsd_reversed]],  0
	jne	.label_486
	mov	byte ptr [rbp - 1], 0
	jmp	.label_485
	.section	.text
	.align	32
	#Procedure 0x406c21

	.globl split_3
	.type split_3, @function
split_3:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	byte ptr [rbp - 0x31], 0
	mov	qword ptr [rbp - 0x48], 0
.label_493:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx + rcx]
	cmp	esi, 0x20
	mov	byte ptr [rbp - 0x49], al
	je	.label_492
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 9
	sete	sil
	mov	byte ptr [rbp - 0x49], sil
.label_492:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	jne	.label_495
	jmp	.label_490
.label_495:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_493
.label_490:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5c
	jne	.label_496
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x31], 1
.label_496:
	movabs	rsi, OFFSET FLAT:label_46
	mov	qword ptr [rbp - 0x40], 3
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	strncmp
	cmp	eax, 0
	jne	.label_491
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x20
	jne	.label_494
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_494:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x28
	jne	.label_497
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	dil, byte ptr [rbp - 0x31]
	and	dil, 1
	mov	byte ptr [rbp - 0x4a], dil
	mov	rdi, rax
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8b, byte ptr [rbp - 0x4a]
	movzx	r8d, r8b
	call	bsd_split_3
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_485
	.section	.text
	.align	32
	#Procedure 0x406d90
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
	jb	.label_499
	jmp	.label_502
.label_502:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_500
	jmp	.label_499
.label_499:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_501
.label_500:
	mov	byte ptr [rbp - 1], 0
.label_501:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ddb
	.globl sub_406ddb
	.type sub_406ddb, @function
sub_406ddb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406de0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_503
	jmp	.label_505
.label_505:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_504
.label_503:
	mov	byte ptr [rbp - 1], 0
.label_504:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e12
	.globl sub_406e12
	.type sub_406e12, @function
sub_406e12:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e20

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x1c]
	call	posix_fadvise
	mov	dword ptr [rbp - 0x20], eax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406e52
	.globl sub_406e52
	.type sub_406e52, @function
sub_406e52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e60

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
	je	.label_506
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
.label_506:
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
	.align	32
	#Procedure 0x406fc4
	.globl sub_406fc4
	.type sub_406fc4, @function
sub_406fc4:

	nop	word ptr cs:[rax + rax]
.label_507:
	mov	eax, 0x8000
	mov	esi, eax
	lea	rdx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	call	md5_process_block
	jmp	.label_513
.label_509:
	jmp	.label_514
.label_519:
	mov	eax, 0x8048
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_522
	mov	dword ptr [rbp - 4], 1
	jmp	.label_516
.label_511:
	mov	eax, 1
	mov	esi, eax
	mov	eax, 0x8000
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0xc8]
	sub	rcx, qword ptr [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xf0]
	call	fread_unlocked
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xd0]
	add	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xc8], rax
	cmp	qword ptr [rbp - 0xc8], 0x8000
	jne	.label_510
	jmp	.label_507
.label_512:
	jmp	.label_508
.label_510:
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_509
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_512
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	mov	dword ptr [rbp - 4], 1
	jmp	.label_516
.label_522:
	lea	rdi, [rbp - 0xc0]
	call	md5_init_ctx
.label_513:
	mov	qword ptr [rbp - 0xc8], 0
.label_514:
	mov	rdi, qword ptr [rbp - 0x10]
	call	feof_unlocked
	cmp	eax, 0
	je	.label_511
	jmp	.label_508
.label_508:
	cmp	qword ptr [rbp - 0xc8], 0
	jbe	.label_515
	lea	rdx, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xc8]
	call	md5_process_bytes
.label_515:
	lea	rdi, [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0x18]
	call	md5_finish_ctx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xf8], rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_516:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407147
	.globl sub_407147
	.type sub_407147, @function
sub_407147:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40714b

	.globl md5_stream
	.type md5_stream, @function
md5_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_521
	mov	ecx, eax
	mov	eax, 0x10
	mov	edx, eax
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xe0]
	call	afalg_stream
	mov	r8d, eax
	sub	eax, -5
	mov	dword ptr [rbp - 0xe4], r8d
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_520
	jmp	.label_517
.label_517:
	mov	eax, dword ptr [rbp - 0xe4]
	test	eax, eax
	jne	.label_519
	jmp	.label_518
.label_518:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_516
.label_520:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_516
	.section	.text
	.align	32
	#Procedure 0x4071e0

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
	.align	32
	#Procedure 0x407218
	.globl sub_407218
	.type sub_407218, @function
sub_407218:

	nop	dword ptr [rax + rax]
.label_524:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_525:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40722b
	.globl sub_40722b
	.type sub_40722b, @function
sub_40722b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407234

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_524
	jmp	.label_523
.label_523:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_525
.label_529:
	jmp	.label_534
.label_528:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_529
.label_541:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_527
.label_526:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_527
	.section	.text
	.align	32
	#Procedure 0x407296

	.globl filename_unescape
	.type filename_unescape, @function
filename_unescape:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], 0
.label_540:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_538
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	test	edx, edx
	mov	dword ptr [rbp - 0x2c], edx
	je	.label_526
	jmp	.label_531
.label_531:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x30], eax
	jne	.label_532
	jmp	.label_536
.label_536:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, 1
	cmp	rax, rcx
	jne	.label_537
	mov	qword ptr [rbp - 8], 0
	jmp	.label_527
.label_537:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	esi, edx
	sub	esi, 0x5c
	mov	dword ptr [rbp - 0x34], edx
	mov	dword ptr [rbp - 0x38], esi
	je	.label_528
	jmp	.label_533
.label_533:
	mov	eax, dword ptr [rbp - 0x34]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x3c], eax
	jne	.label_541
	jmp	.label_530
.label_530:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_529
.label_538:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rbp - 0x18]
	cmp	rax, rcx
	jae	.label_535
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], 0
.label_535:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_527:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407394
	.globl sub_407394
	.type sub_407394, @function
sub_407394:

	nop	
	nop	dword ptr [rax + rax]
.label_532:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], dl
.label_534:
	jmp	.label_539
.label_539:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_540
.label_549:
	movzx	eax,  byte ptr [byte ptr [delim]]
	cmp	eax, 0xa
	je	.label_599
	test	byte ptr [rbp - 0x39], 1
	je	.label_599
	movabs	rdi, OFFSET FLAT:label_607
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_584:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x41]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40742d
	.globl sub_40742d
	.type sub_40742d, @function
sub_40742d:

	nop	word ptr [rax + rax]
.label_562:
	mov	byte ptr [byte ptr [delim]],  0
	jmp	.label_559
.label_606:
	mov	dword ptr [rbp - 0x48], 1
	jmp	.label_559
.label_598:
	mov	byte ptr [byte ptr [status_only]],  0
	mov	byte ptr [byte ptr [warn]],  0
	mov	byte ptr [byte ptr [quiet]],  1
	jmp	.label_559
.label_610:
	lea	rsi, [rbp - 0x74]
	lea	rcx, [rbp - 0x75]
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x74], eax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x38]
	call	digest_file
	test	al, 1
	jne	.label_553
	mov	byte ptr [rbp - 0x41], 0
	jmp	.label_582
	.section	.text
	.align	32
	#Procedure 0x407498

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	eax, 4
	mov	ecx, eax
	lea	rdx, [rbp - 0x30]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rdx
	mov	rsi, rcx
	call	ptr_align
	mov	qword ptr [rbp - 0x38], rax
	mov	byte ptr [rbp - 0x39], 0
	mov	byte ptr [rbp - 0x41], 1
	mov	dword ptr [rbp - 0x48], 0xffffffff
	mov	byte ptr [rbp - 0x49], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_13
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_612
	movabs	rsi, OFFSET FLAT:label_613
	mov	qword ptr [rbp - 0x88], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_612
	mov	qword ptr [rbp - 0x90], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x98], rax
	call	atexit
	xor	r8d, r8d
	mov	ecx, r8d
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, rcx
	mov	dword ptr [rbp - 0x9c], eax
	call	setvbuf
	movabs	rcx, OFFSET FLAT:label_614
	mov	qword ptr [rbp - 0x58], rcx
	mov	dword ptr [rbp - 0xa0], eax
.label_577:
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	call	getopt_long
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, -1
	je	.label_588
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0xa4], eax
	mov	dword ptr [rbp - 0xa8], ecx
	je	.label_591
	jmp	.label_595
.label_595:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0xac], eax
	je	.label_597
	jmp	.label_604
.label_604:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_606
	jmp	.label_566
.label_566:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x63
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_543
	jmp	.label_548
.label_548:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xb8], eax
	je	.label_550
	jmp	.label_555
.label_555:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0xbc], eax
	je	.label_557
	jmp	.label_560
.label_560:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_562
	jmp	.label_570
.label_570:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_572
	jmp	.label_574
.label_574:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x81
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_575
	jmp	.label_587
.label_587:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x82
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_598
	jmp	.label_592
.label_592:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x83
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_593
	jmp	.label_600
.label_600:
	mov	eax, dword ptr [rbp - 0xa4]
	sub	eax, 0x84
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_601
	jmp	.label_544
.label_588:
	mov	qword ptr [word ptr [min_digest_line_length]],  0x22
	mov	qword ptr [word ptr [digest_hex_bytes]],  0x20
	test	byte ptr [rbp - 0x49], 1
	je	.label_549
	cmp	dword ptr [rbp - 0x48], 0
	jne	.label_549
	movabs	rdi, OFFSET FLAT:label_552
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_599:
	test	byte ptr [rbp - 0x49], 1
	je	.label_564
	test	byte ptr [rbp - 0x39], 1
	je	.label_564
	movabs	rdi, OFFSET FLAT:label_568
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_559:
	jmp	.label_577
.label_591:
	movabs	rsi, OFFSET FLAT:label_47
	movabs	rdx, OFFSET FLAT:label_22
	movabs	r8, OFFSET FLAT:label_579
	movabs	r9, OFFSET FLAT:label_580
	movabs	rax, OFFSET FLAT:label_581
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xe0], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_611:
	test	byte ptr [rbp - 0x49], 1
	jne	.label_609
	mov	edi, 0x20
	call	putchar_unlocked
	mov	edi, 0x20
	mov	ecx, 0x2a
	cmp	dword ptr [rbp - 0x74], 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0x100], eax
	call	putchar_unlocked
	mov	rdi, qword ptr [rbp - 0x70]
	mov	dl, byte ptr [rbp - 0x76]
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x104], eax
	call	print_filename
.label_609:
	movzx	edi,  byte ptr [byte ptr [delim]]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x108], eax
.label_582:
	jmp	.label_563
.label_563:
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 8
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_567
.label_575:
	mov	byte ptr [byte ptr [status_only]],  1
	mov	byte ptr [byte ptr [warn]],  0
	mov	byte ptr [byte ptr [quiet]],  0
	jmp	.label_559
.label_550:
	mov	dword ptr [rbp - 0x48], 0
	jmp	.label_559
.label_586:
	test	byte ptr [byte ptr [have_read_stdin]],  1
	je	.label_584
	mov	rdi,  qword ptr [word ptr [stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_584
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_585
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x10c], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0x10c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_553:
	mov	esi, 0x5c
	mov	rdi, qword ptr [rbp - 0x70]
	call	strchr
	cmp	rax, 0
	jne	.label_602
	mov	esi, 0xa
	mov	rdi, qword ptr [rbp - 0x70]
	call	strchr
	xor	esi, esi
	mov	cl, sil
	cmp	rax, 0
	mov	byte ptr [rbp - 0xe1], cl
	je	.label_547
.label_602:
	movzx	eax,  byte ptr [byte ptr [delim]]
	cmp	eax, 0xa
	sete	cl
	mov	byte ptr [rbp - 0xe1], cl
.label_547:
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	mov	byte ptr [rbp - 0x76], al
	test	byte ptr [rbp - 0x49], 1
	je	.label_558
	test	byte ptr [rbp - 0x76], 1
	je	.label_546
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xe8], eax
.label_546:
	movabs	rdi, OFFSET FLAT:label_46
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_545
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	dword ptr [rbp - 0xec], eax
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rbp - 0x76]
	and	cl, 1
	movzx	esi, cl
	mov	dword ptr [rbp - 0xf0], eax
	call	print_filename
	movabs	rdi, OFFSET FLAT:label_603
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xf4], eax
.label_558:
	test	byte ptr [rbp - 0x49], 1
	jne	.label_554
	test	byte ptr [rbp - 0x76], 1
	je	.label_554
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xf8], eax
.label_554:
	mov	qword ptr [rbp - 0x80], 0
.label_556:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx,  qword ptr [word ptr [digest_hex_bytes]]
	shr	rcx, 1
	cmp	rax, rcx
	jae	.label_611
	movabs	rdi, OFFSET FLAT:label_583
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	esi, byte ptr [rcx + rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xfc], eax
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_556
.label_564:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x48]
	jg	.label_561
	test	byte ptr [rbp - 0x39], 1
	je	.label_561
	movabs	rdi, OFFSET FLAT:label_569
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_561:
	test	byte ptr [byte ptr [ignore_missing]],  1
	je	.label_578
	test	byte ptr [rbp - 0x39], 1
	jne	.label_578
	movabs	rdi, OFFSET FLAT:label_589
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_593:
	mov	byte ptr [byte ptr [strict]],  1
	jmp	.label_559
.label_572:
	mov	byte ptr [byte ptr [ignore_missing]],  1
	jmp	.label_559
.label_590:
	test	byte ptr [byte ptr [quiet]],  1
	je	.label_605
	test	byte ptr [rbp - 0x39], 1
	jne	.label_605
	movabs	rdi, OFFSET FLAT:label_608
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_544:
	mov	edi, 1
	call	usage
.label_542:
	cmp	dword ptr [rbp - 0x48], 0
	jge	.label_573
	mov	dword ptr [rbp - 0x48], 0
.label_573:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rbp - 8]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	edx,  dword ptr [dword ptr [optind]]
	cmp	edx, dword ptr [rbp - 8]
	jne	.label_576
	movabs	rdi, OFFSET FLAT:label_56
	call	bad_cast
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rcx, rdi
	add	rcx, 8
	mov	qword ptr [rbp - 0x60], rcx
	mov	qword ptr [rdi], rax
.label_576:
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rcx,  dword ptr [dword ptr [optind]]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
.label_567:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_586
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	test	byte ptr [rbp - 0x39], 1
	je	.label_610
	mov	rdi, qword ptr [rbp - 0x70]
	call	digest_check
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	jmp	.label_563
.label_543:
	mov	byte ptr [rbp - 0x39], 1
	jmp	.label_559
.label_601:
	mov	byte ptr [rbp - 0x49], 1
	mov	dword ptr [rbp - 0x48], 1
	jmp	.label_559
.label_605:
	mov	al,  byte ptr [byte ptr [strict]]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	and	ecx, edx
	cmp	ecx, 0
	je	.label_542
	movabs	rdi, OFFSET FLAT:label_551
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_557:
	mov	byte ptr [byte ptr [status_only]],  0
	mov	byte ptr [byte ptr [warn]],  1
	mov	byte ptr [byte ptr [quiet]],  0
	jmp	.label_559
.label_578:
	test	byte ptr [byte ptr [status_only]],  1
	je	.label_571
	test	byte ptr [rbp - 0x39], 1
	jne	.label_571
	movabs	rdi, OFFSET FLAT:label_596
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_571:
	test	byte ptr [byte ptr [warn]],  1
	je	.label_590
	test	byte ptr [rbp - 0x39], 1
	jne	.label_590
	movabs	rdi, OFFSET FLAT:label_594
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_597:
	xor	edi, edi
	call	usage
.label_621:
	mov	eax, 0x80
	mov	ecx, eax
	sub	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rcx
.label_622:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	add	rcx, rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rcx + 0x18]
	mov	edx, r8d
	add	rdx, rax
	mov	r8d, edx
	mov	dword ptr [rcx + 0x18], r8d
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x18], 0x40
	jbe	.label_619
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x1c
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0x18]
	and	edx, 0xffffffc0
	mov	edx, edx
	mov	esi, edx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	md5_process_block
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rax + 0x18]
	and	r8d, 0x3f
	mov	dword ptr [rax + 0x18], r8d
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x1c
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x28]
	and	rcx, 0xffffffffffffffc0
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8d, dword ptr [rcx + 0x18]
	mov	ecx, r8d
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdx, rcx
	call	memcpy
.label_619:
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_624:
	cmp	qword ptr [rbp - 0x10], 0x40
	jb	.label_618
	mov	rax, qword ptr [rbp - 8]
	and	rax, 3
	cmp	rax, 0
	je	.label_625
	jmp	.label_620
.label_620:
	cmp	qword ptr [rbp - 0x10], 0x40
	jbe	.label_623
	mov	eax, 0x40
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x48], rcx
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	call	md5_process_block
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x40
	mov	qword ptr [rbp - 8], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, 0x40
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_620
.label_625:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 0xffffffffffffffc0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	md5_process_block
	mov	rax, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	and	rdx, 0xffffffffffffffc0
	add	rax, rdx
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	and	rax, 0x3f
	mov	qword ptr [rbp - 0x10], rax
.label_616:
	jmp	.label_618
.label_618:
	cmp	qword ptr [rbp - 0x10], 0
	jbe	.label_617
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x18]
	mov	eax, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	add	rdx, rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rdx
	mov	rdx, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0x40
	jb	.label_615
	mov	eax, 0x40
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rcx
	call	md5_process_block
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, 0x40
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x1c
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x1c
	add	rdx, 0x40
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x50]
	call	memcpy
.label_615:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax + 0x18], ecx
.label_617:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f45
	.globl sub_407f45
	.type sub_407f45, @function
sub_407f45:

	nop	dword ptr [rax + rax]
.label_623:
	jmp	.label_616
	.section	.text
	.align	32
	#Procedure 0x407f4f

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	dword ptr [rdx + 0x18], 0
	je	.label_624
	mov	eax, 0x80
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rdx + 0x18]
	mov	edx, eax
	mov	qword ptr [rbp - 0x20], rdx
	sub	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x10]
	jbe	.label_621
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_622
.label_627:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_626
.label_626:
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
	.align	32
	#Procedure 0x408013
	.globl sub_408013
	.type sub_408013, @function
sub_408013:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408021

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
	je	.label_627
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_626
.label_629:
	mov	byte ptr [rbp - 1], 0
.label_630:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40805e
	.globl sub_40805e
	.type sub_40805e, @function
sub_40805e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40806c
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_629
	jmp	.label_628
.label_628:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_630
	.section	.text
	.align	32
	#Procedure 0x408090
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
	.align	32
	#Procedure 0x4080c1
	.globl sub_4080c1
	.type sub_4080c1, @function
sub_4080c1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080d0
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
	.align	32
	#Procedure 0x4080ef
	.globl sub_4080ef
	.type sub_4080ef, @function
sub_4080ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4080f0

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
	.align	32
	#Procedure 0x408123
	.globl sub_408123
	.type sub_408123, @function
sub_408123:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408130

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
	.align	32
	#Procedure 0x4081dd
	.globl sub_4081dd
	.type sub_4081dd, @function
sub_4081dd:

	nop	dword ptr [rax]
.label_632:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_631
.label_631:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081fe
	.globl sub_4081fe
	.type sub_4081fe, @function
sub_4081fe:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408207
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
	je	.label_632
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_631
.label_634:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x218], rax
	mov	dword ptr [rbp - 0x21c], ecx
	ja	.label_643
	mov	eax, dword ptr [rbp - 0x21c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x218]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x228], rcx
	jmp	.label_654
.label_658:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x230], rax
	mov	dword ptr [rbp - 0x234], ecx
	ja	.label_662
	mov	eax, dword ptr [rbp - 0x234]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x230]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_657
	.section	.text
	.align	32
	#Procedure 0x4082b4

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
	je	.label_648
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
.label_648:
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
	je	.label_636
	jmp	.label_638
.label_638:
	mov	eax, dword ptr [rbp - 0x1a0]
	sub	eax, 0x406
	mov	dword ptr [rbp - 0x1a4], eax
	je	.label_639
	jmp	.label_655
.label_662:
	mov	rax, qword ptr [rbp - 0x230]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x240], rdx
.label_657:
	mov	rax, qword ptr [rbp - 0x240]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
.label_645:
	jmp	.label_650
.label_650:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x240
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408481
	.globl sub_408481
	.type sub_408481, @function
sub_408481:

	nop	dword ptr [rax + rax]
.label_636:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1b0], rax
	mov	dword ptr [rbp - 0x1b4], ecx
	ja	.label_635
	mov	eax, dword ptr [rbp - 0x1b4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1b0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1c0], rcx
	jmp	.label_644
.label_651:
	mov	rax, qword ptr [rbp - 0x1c8]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1d8], rdx
.label_659:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x2c], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x2c]
	call	rpl_fcntl_DUPFD_CLOEXEC
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_650
.label_635:
	mov	rax, qword ptr [rbp - 0x1b0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x1c0], rdx
.label_644:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 0x28]
	call	rpl_fcntl_DUPFD
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_650
.label_639:
	lea	rax, [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x20]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x1c8], rax
	mov	dword ptr [rbp - 0x1cc], ecx
	ja	.label_651
	mov	eax, dword ptr [rbp - 0x1cc]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c8]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x1d8], rcx
	jmp	.label_659
.label_655:
	mov	eax, dword ptr [rbp - 8]
	test	eax, eax
	mov	dword ptr [rbp - 0x1dc], eax
	je	.label_634
	jmp	.label_640
.label_640:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x1e0], eax
	je	.label_637
	jmp	.label_646
.label_646:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_634
	jmp	.label_652
.label_652:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 3
	mov	dword ptr [rbp - 0x1e8], eax
	je	.label_637
	jmp	.label_660
.label_660:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 4
	mov	dword ptr [rbp - 0x1ec], eax
	je	.label_634
	jmp	.label_663
.label_663:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 8
	mov	dword ptr [rbp - 0x1f0], eax
	je	.label_634
	jmp	.label_641
.label_641:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 9
	mov	dword ptr [rbp - 0x1f4], eax
	je	.label_637
	jmp	.label_647
.label_647:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xa
	mov	dword ptr [rbp - 0x1f8], eax
	je	.label_634
	jmp	.label_653
.label_653:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0xb
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_637
	jmp	.label_661
.label_661:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x400
	mov	dword ptr [rbp - 0x200], eax
	je	.label_634
	jmp	.label_633
.label_633:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x401
	mov	dword ptr [rbp - 0x204], eax
	je	.label_637
	jmp	.label_642
.label_642:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x402
	mov	dword ptr [rbp - 0x208], eax
	je	.label_634
	jmp	.label_649
.label_649:
	mov	eax, dword ptr [rbp - 0x1dc]
	add	eax, 0xfffffbfa
	sub	eax, 2
	mov	dword ptr [rbp - 0x20c], eax
	jb	.label_634
	jmp	.label_656
.label_656:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x408
	mov	dword ptr [rbp - 0x210], eax
	jne	.label_658
	jmp	.label_637
.label_637:
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_645
.label_643:
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x228], rdx
.label_654:
	mov	rax, qword ptr [rbp - 0x228]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x30], ecx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0x30]
	mov	al, 0
	call	fcntl
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_645
.label_667:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_664
.label_665:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0
	sete	dl
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_666:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40878b
	.globl sub_40878b
	.type sub_40878b, @function
sub_40878b:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408794

	.globl hex_digits
	.type hex_digits, @function
hex_digits:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
.label_664:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	cmp	rcx,  qword ptr [word ptr [digest_hex_bytes]]
	jae	.label_665
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0x20], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x20]
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x1000
	cmp	ecx, 0
	jne	.label_667
	mov	byte ptr [rbp - 1], 0
	jmp	.label_666
.label_668:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_672
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_670
.label_672:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_670
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_670:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_669
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_669:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_671:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40887d
	.globl sub_40887d
	.type sub_40887d, @function
sub_40887d:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40887f

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
	jge	.label_668
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_671
	.section	.text
	.align	32
	#Procedure 0x4088c0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_673
	jmp	.label_674
.label_674:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_675
.label_673:
	mov	byte ptr [rbp - 1], 0
.label_675:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088ef
	.globl sub_4088ef
	.type sub_4088ef, @function
sub_4088ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4088f0
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
	jb	.label_676
	jmp	.label_678
.label_678:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_676
	jmp	.label_677
.label_677:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_679
	jmp	.label_676
.label_676:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_680
.label_679:
	mov	byte ptr [rbp - 1], 0
.label_680:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408955
	.globl sub_408955
	.type sub_408955, @function
sub_408955:

	nop	word ptr cs:[rax + rax]
.label_720:
	test	byte ptr [rbp - 0x71], 1
	jne	.label_691
	mov	rdi, qword ptr [rbp - 0x18]
	call	rpl_fclose
	cmp	eax, 0
	je	.label_691
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0xf4], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_52
	mov	esi, dword ptr [rbp - 0xf4]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_696
.label_713:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [status_only]],  1
	mov	byte ptr [rbp - 0xc9], cl
	jne	.label_723
	mov	esi, 0xa
	mov	rdi, qword ptr [rbp - 0x80]
	call	strchr
	cmp	rax, 0
	setne	cl
	mov	byte ptr [rbp - 0xc9], cl
.label_723:
	mov	al, byte ptr [rbp - 0xc9]
	lea	rsi, [rbp - 0x84]
	lea	rcx, [rbp - 0x9a]
	and	al, 1
	mov	byte ptr [rbp - 0x9b], al
	mov	byte ptr [rbp - 0x39], 1
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	call	digest_file
	and	al, 1
	mov	byte ptr [rbp - 0x99], al
	test	byte ptr [rbp - 0x99], 1
	jne	.label_704
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	test	byte ptr [byte ptr [status_only]],  1
	jne	.label_710
	test	byte ptr [rbp - 0x9b], 1
	je	.label_719
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xd0], eax
.label_719:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	al, byte ptr [rbp - 0x9b]
	and	al, 1
	movzx	esi, al
	call	print_filename
	movabs	rdi, OFFSET FLAT:label_726
	call	gettext
	movabs	rdi, OFFSET FLAT:label_711
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xd4], eax
.label_710:
	jmp	.label_714
.label_722:
	mov	byte ptr [rbp - 0x3a], 1
.label_706:
	test	byte ptr [byte ptr [status_only]],  1
	jne	.label_700
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xa8]
	jne	.label_735
	test	byte ptr [byte ptr [quiet]],  1
	jne	.label_738
.label_735:
	test	byte ptr [rbp - 0x9b], 1
	je	.label_740
	mov	edi, 0x5c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0xd8], eax
.label_740:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	al, byte ptr [rbp - 0x9b]
	and	al, 1
	movzx	esi, al
	call	print_filename
.label_738:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xa8]
	je	.label_703
	movabs	rdi, OFFSET FLAT:label_739
	call	gettext
	movabs	rdi, OFFSET FLAT:label_711
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_716
.label_727:
	mov	rax,  qword ptr [word ptr [digest_hex_bytes]]
	shr	rax, 1
	mov	qword ptr [rbp - 0xa8], rax
	mov	qword ptr [rbp - 0xb0], 0
.label_734:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_701
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	edi, byte ptr [rdx + rcx]
	sar	edi, 4
	movsxd	rcx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + digest_check.bin2hex]]
	cmp	eax, edi
	jne	.label_730
	mov	rax, qword ptr [rbp - 0xb0]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edi, byte ptr [rcx + rax + 1]
	call	tolower
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	edi, byte ptr [rdx + rcx]
	and	edi, 0xf
	movsxd	rcx, edi
	movsx	edi,  byte ptr [byte ptr [+ (rcx * 1) + digest_check.bin2hex]]
	cmp	eax, edi
	je	.label_741
.label_730:
	jmp	.label_701
.label_691:
	test	byte ptr [rbp - 0x39], 1
	jne	.label_684
	movabs	rdi, OFFSET FLAT:label_699
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x100], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	movabs	r8, OFFSET FLAT:label_46
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x100]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_690
.label_717:
	jmp	.label_721
.label_721:
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
.label_705:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_725
	movabs	rdi, OFFSET FLAT:label_728
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	call	quotearg_n_style_colon
	mov	edi, 1
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_737:
	mov	rax, qword ptr [rbp - 0x98]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x68]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	jne	.label_742
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x98], rcx
	mov	rcx, qword ptr [rbp - 0x68]
	mov	byte ptr [rcx + rax - 1], 0
.label_742:
	lea	rdx, [rbp - 0x90]
	lea	rcx, [rbp - 0x84]
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x98]
	call	split_3
	test	al, 1
	jne	.label_708
	jmp	.label_712
.label_708:
	test	byte ptr [rbp - 0x71], 1
	je	.label_713
	mov	rdi, qword ptr [rbp - 0x80]
	mov	eax, OFFSET FLAT:label_56
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_713
.label_712:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	test	byte ptr [byte ptr [warn]],  1
	je	.label_709
	movabs	rdi, OFFSET FLAT:label_724
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc8], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	movabs	r9, OFFSET FLAT:label_46
	mov	r8, qword ptr [rbp - 0x60]
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_709:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_736
.label_743:
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x23
	jne	.label_737
	jmp	.label_715
.label_725:
	lea	rdi, [rbp - 0x68]
	lea	rsi, [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x18]
	call	getline
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jg	.label_743
	jmp	.label_702
.label_701:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xa8]
	je	.label_722
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_706
.label_707:
	movabs	rsi, OFFSET FLAT:label_54
	mov	rdi, qword ptr [rbp - 0x10]
	call	fopen_safer
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_717
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0xb4], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_52
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_696
.label_703:
	test	byte ptr [byte ptr [quiet]],  1
	jne	.label_729
	movabs	rdi, OFFSET FLAT:label_731
	call	gettext
	movabs	rdi, OFFSET FLAT:label_711
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xe0], eax
.label_729:
	jmp	.label_716
.label_716:
	jmp	.label_700
.label_700:
	jmp	.label_732
.label_732:
	jmp	.label_714
.label_714:
	jmp	.label_736
.label_736:
	jmp	.label_715
.label_715:
	mov	rdi, qword ptr [rbp - 0x18]
	call	feof_unlocked
	xor	ecx, ecx
	mov	dl, cl
	cmp	eax, 0
	mov	byte ptr [rbp - 0xe1], dl
	jne	.label_744
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0xe1], cl
.label_744:
	mov	al, byte ptr [rbp - 0xe1]
	test	al, 1
	jne	.label_705
.label_702:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free
	mov	rdi, qword ptr [rbp - 0x18]
	call	ferror_unlocked
	cmp	eax, 0
	je	.label_720
	movabs	rdi, OFFSET FLAT:label_718
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xf0], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0xf0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 1], 0
	jmp	.label_696
.label_704:
	test	byte ptr [byte ptr [ignore_missing]],  1
	je	.label_727
	test	byte ptr [rbp - 0x9a], 1
	je	.label_727
	jmp	.label_732
.label_741:
	jmp	.label_733
.label_733:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_734
.label_684:
	test	byte ptr [byte ptr [status_only]],  1
	jne	.label_685
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_689
	mov	rdi, qword ptr [rbp - 0x20]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_693
	movabs	rsi, OFFSET FLAT:label_694
	mov	rdx, rax
	call	ngettext
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x108], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x108]
	mov	al, 0
	call	error
.label_689:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_692
	mov	rdi, qword ptr [rbp - 0x38]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_681
	movabs	rsi, OFFSET FLAT:label_682
	mov	rdx, rax
	call	ngettext
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x110], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x110]
	mov	al, 0
	call	error
.label_692:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_698
	mov	rdi, qword ptr [rbp - 0x30]
	call	select_plural
	movabs	rdi, OFFSET FLAT:label_687
	movabs	rsi, OFFSET FLAT:label_688
	mov	rdx, rax
	call	ngettext
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	edi, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x118], rdx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x118]
	mov	al, 0
	call	error
.label_698:
	test	byte ptr [byte ptr [ignore_missing]],  1
	je	.label_686
	test	byte ptr [rbp - 0x3a], 1
	jne	.label_686
	movabs	rdi, OFFSET FLAT:label_695
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x120], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x120]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_686:
	jmp	.label_685
.label_685:
	jmp	.label_690
.label_690:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x39], 1
	mov	byte ptr [rbp - 0x121], cl
	je	.label_683
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x3a], 1
	mov	byte ptr [rbp - 0x121], cl
	je	.label_683
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x121], cl
	jne	.label_683
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x121], cl
	jne	.label_683
	mov	al, 1
	test	byte ptr [byte ptr [strict]],  1
	mov	byte ptr [rbp - 0x122], al
	je	.label_697
	cmp	qword ptr [rbp - 0x28], 0
	sete	al
	mov	byte ptr [rbp - 0x122], al
.label_697:
	mov	al, byte ptr [rbp - 0x122]
	mov	byte ptr [rbp - 0x121], al
.label_683:
	mov	al, byte ptr [rbp - 0x121]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_696:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x130
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091cb
	.globl sub_4091cb
	.type sub_4091cb, @function
sub_4091cb:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4091cd

	.globl digest_check
	.type digest_check, @function
digest_check:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x130
	mov	eax, 4
	mov	esi, eax
	lea	rcx, [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x39], 0
	mov	byte ptr [rbp - 0x3a], 0
	mov	rdi, rcx
	call	ptr_align
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, OFFSET FLAT:label_56
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x71], r8b
	test	byte ptr [rbp - 0x71], 1
	je	.label_707
	movabs	rdi, OFFSET FLAT:label_585
	mov	byte ptr [byte ptr [have_read_stdin]],  1
	call	gettext
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [stdin]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_721
.label_746:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_747:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40928e
	.globl sub_40928e
	.type sub_40928e, @function
sub_40928e:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409296

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_745
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_746
.label_745:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_747
	.section	.text
	.align	32
	#Procedure 0x4092d0

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
	.align	32
	#Procedure 0x4092fb
	.globl sub_4092fb
	.type sub_4092fb, @function
sub_4092fb:

	nop	dword ptr [rax + rax]
.label_748:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409306
	.globl sub_409306
	.type sub_409306, @function
sub_409306:

	nop	word ptr [rax + rax]
.label_751:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_52
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_750:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_749:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_748
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x40935b

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_749
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_753
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_749
.label_753:
	movabs	rdi, OFFSET FLAT:label_752
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_751
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_754
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_750
.label_760:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_761
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_762
	movabs	rax, OFFSET FLAT:label_763
	movabs	rcx, OFFSET FLAT:label_764
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_759
.label_756:
	movabs	rax, OFFSET FLAT:label_133
	movabs	rcx, OFFSET FLAT:label_202
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_759:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40946a
	.globl sub_40946a
	.type sub_40946a, @function
sub_40946a:

	nop	dword ptr [rax + rax]
.label_762:
	movabs	rsi, OFFSET FLAT:label_755
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_756
	movabs	rax, OFFSET FLAT:label_757
	movabs	rcx, OFFSET FLAT:label_758
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_759
	.section	.text
	.align	32
	#Procedure 0x4094b9

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
	je	.label_760
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_759
	.section	.text
	.align	32
	#Procedure 0x4094f0

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rsi]
	call	set_uint32
	mov	rdi, qword ptr [rbp - 0x18]
	add	rdi, 4
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 4]
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 8
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 8]
	mov	rdi, rax
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xc
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdi + 0xc]
	mov	rdi, rax
	call	set_uint32
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409563
	.globl sub_409563
	.type sub_409563, @function
sub_409563:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409570

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
.label_770:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_765
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_769
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_767
.label_766:
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
	.align	32
	#Procedure 0x409613
	.globl sub_409613
	.type sub_409613, @function
sub_409613:

	nop	dword ptr [rax]
.label_769:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_767:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_765:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_771
	jmp	.label_766
.label_771:
	jmp	.label_768
.label_768:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_770
	.section	.text
	.align	32
	#Procedure 0x409680
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_772
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_773
.label_772:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_773
.label_773:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4096bb
	.globl sub_4096bb
	.type sub_4096bb, @function
sub_4096bb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096c0

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
	.align	32
	#Procedure 0x4096e8
	.globl sub_4096e8
	.type sub_4096e8, @function
sub_4096e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096f0

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
.label_774:
	mov	byte ptr [rbp - 1], 0
.label_778:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40971e
	.globl sub_40971e
	.type sub_40971e, @function
sub_40971e:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409729
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
	jb	.label_775
	jmp	.label_777
.label_777:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_775
	jmp	.label_776
.label_776:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_774
	jmp	.label_775
.label_775:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_778
	.section	.text
	.align	32
	#Procedure 0x409780
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
	.align	32
	#Procedure 0x4097b6
	.globl sub_4097b6
	.type sub_4097b6, @function
sub_4097b6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097c0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_779
	jmp	.label_781
.label_781:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_780
.label_779:
	mov	byte ptr [rbp - 1], 0
.label_780:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4097f2
	.globl sub_4097f2
	.type sub_4097f2, @function
sub_4097f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409800

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi], 0x67452301
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 4], 0xefcdab89
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 8], 0x98badcfe
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x10], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rdi + 0x18], 0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409856
	.globl sub_409856
	.type sub_409856, @function
sub_409856:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409860
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
	je	.label_782
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_783
.label_782:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_783
.label_783:
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
	.align	32
	#Procedure 0x4098d2
	.globl sub_4098d2
	.type sub_4098d2, @function
sub_4098d2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098e0
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
	.align	32
	#Procedure 0x409917
	.globl sub_409917
	.type sub_409917, @function
sub_409917:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409920

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
	.align	32
	#Procedure 0x40994c
	.globl sub_40994c
	.type sub_40994c, @function
sub_40994c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409950

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
	je	.label_789
	mov	rdi, qword ptr [rbp - 0x20]
	call	fileno
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x24], eax
	cmp	ecx, dword ptr [rbp - 0x24]
	jg	.label_784
	cmp	dword ptr [rbp - 0x24], 2
	jg	.label_784
	mov	edi, dword ptr [rbp - 0x24]
	call	dup_safer
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_788
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
	jmp	.label_786
.label_787:
	jmp	.label_784
.label_784:
	jmp	.label_789
.label_789:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_786:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a01
	.globl sub_409a01
	.type sub_409a01, @function
sub_409a01:

	nop	
.label_788:
	mov	rdi, qword ptr [rbp - 0x20]
	call	rpl_fclose
	cmp	eax, 0
	jne	.label_785
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fdopen
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jne	.label_787
.label_785:
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
	jmp	.label_786
	.section	.text
	.align	32
	#Procedure 0x409a60
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
	.align	32
	#Procedure 0x409a8a
	.globl sub_409a8a
	.type sub_409a8a, @function
sub_409a8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409af5
	.globl sub_409af5
	.type sub_409af5, @function
sub_409af5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b02
	.globl sub_409b02
	.type sub_409b02, @function
sub_409b02:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409b26
	.globl sub_409b26
	.type sub_409b26, @function
sub_409b26:

	nop	word ptr cs:[rax + rax]
