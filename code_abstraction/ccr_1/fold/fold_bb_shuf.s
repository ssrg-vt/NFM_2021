	.section	.text
	.align	32
	#Procedure 0x4015a9
	.globl sub_4015a9
	.type sub_4015a9, @function
sub_4015a9:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x4015aa
	.globl sub_4015aa
	.type sub_4015aa, @function
sub_4015aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4015e2
	.globl sub_4015e2
	.type sub_4015e2, @function
sub_4015e2:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40162a
	.globl sub_40162a
	.type sub_40162a, @function
sub_40162a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40164c
	.globl sub_40164c
	.type sub_40164c, @function
sub_40164c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40165d
	.globl sub_40165d
	.type sub_40165d, @function
sub_40165d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401676
	.globl sub_401676
	.type sub_401676, @function
sub_401676:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401680

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_17
	call	setlocale
	mov	edi, OFFSET FLAT:label_25
	mov	esi, OFFSET FLAT:label_26
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_25
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	byte ptr [byte ptr [rip + count_bytes]],  0
	mov	byte ptr [byte ptr [rip + break_spaces]],  0
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	mov	r15d, 0x50
	cmp	eax, -1
	je	.label_29
	mov	r15d, 0x50
	lea	r12, [rsp + 6]
	jmp	.label_9
.label_398:
	mov	byte ptr [byte ptr [rip + count_bytes]],  1
	jmp	.label_15
.label_399:
	mov	byte ptr [byte ptr [rip + break_spaces]],  1
	jmp	.label_15
	.section	.text
	.align	32
	#Procedure 0x40172c
	.globl sub_40172c
	.type sub_40172c, @function
sub_40172c:

	nop	dword ptr [rax]
.label_9:
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0x47
	ja	.label_28
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_30]]
.label_397:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	test	rcx, rcx
	je	.label_14
	dec	rcx
	mov	qword ptr [word ptr [rip + optarg]],  rcx
	jmp	.label_18
	.section	.text
	.align	32
	#Procedure 0x40175b
	.globl sub_40175b
	.type sub_40175b, @function
sub_40175b:

	nop	dword ptr [rax + rax]
.label_14:
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [rsp + 7], 0
	mov	qword ptr [word ptr [rip + optarg]],  r12
.label_18:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -0xa
	mov	ecx, OFFSET FLAT:label_17
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r15, rax
.label_15:
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, -1
	jne	.label_9
.label_29:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r13d
	jne	.label_10
	mov	edi, OFFSET FLAT:label_20
	mov	rsi, r15
	call	fold_file
	mov	ebx, eax
	jmp	.label_21
.label_10:
	mov	bl, 1
	cmp	eax, r13d
	jge	.label_21
	lea	rbp, [r14 + rax*8]
	sub	r13d, eax
	mov	bl, 1
	nop	dword ptr [rax + rax]
.label_12:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r15
	call	fold_file
	and	bl, al
	add	rbp, 8
	dec	r13d
	jne	.label_12
.label_21:
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_16
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_27
.label_16:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_28:
	cmp	eax, 0xffffff7d
	je	.label_11
	cmp	eax, 0xffffff7e
	jne	.label_13
	xor	edi, edi
	call	usage
.label_13:
	mov	edi, 1
	call	usage
.label_11:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_22
	mov	edx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_24
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_27:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	xor	eax, eax
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4018b0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4018b3
	.globl sub_4018b3
	.type sub_4018b3, @function
sub_4018b3:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018c0
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
	#Procedure 0x4018cd
	.globl sub_4018cd
	.type sub_4018cd, @function
sub_4018cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4018d0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_35
	cmp	eax, 1
	je	.label_37
	test	eax, eax
	jne	.label_31
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_32
	cmp	rbx, r15
	jbe	.label_33
.label_32:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_36
	mov	dword ptr [rax], 0x4b
	jmp	.label_31
.label_35:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_31
.label_37:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_31
.label_36:
	mov	dword ptr [rax], 0x22
.label_31:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_33:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x401996
	.globl sub_401996
	.type sub_401996, @function
sub_401996:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_38
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_40:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_40
.label_38:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_42
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_41]], OFFSET FLAT:slot0
.label_42:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_39
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_39:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a31
	.globl sub_401a31
	.type sub_401a31, @function
sub_401a31:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a40
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_43
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_43:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x401a5e
	.globl sub_401a5e
	.type sub_401a5e, @function
sub_401a5e:

	nop	
.label_46:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_44
.label_45:
	mov	eax, 1
	test	bpl, bpl
	je	.label_44
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
.label_44:
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
	#Procedure 0x401aa8
	.globl sub_401aa8
	.type sub_401aa8, @function
sub_401aa8:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401aab

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
	je	.label_46
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_45
	jmp	.label_44
	.section	.text
	.align	32
	#Procedure 0x401ae0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x401ae5
	.globl sub_401ae5
	.type sub_401ae5, @function
sub_401ae5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401af0
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
	#Procedure 0x401b17
	.globl sub_401b17
	.type sub_401b17, @function
sub_401b17:

	nop	word ptr [rax + rax]
.label_51:
	call	xalloc_die
.label_49:
	test	rcx, rcx
	jne	.label_48
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_48:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_47
.label_50:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_47:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x401b6c
	.globl sub_401b6c
	.type sub_401b6c, @function
sub_401b6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401b73

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_49
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_51
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_50
	.section	.text
	.align	32
	#Procedure 0x401ba0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_52
.label_53:
	ret	
.label_52:
	cmp	edi, 0x7f
	je	.label_53
	xor	eax, eax
	jmp	.label_53
	.section	.text
	.align	32
	#Procedure 0x401bb1
	.globl sub_401bb1
	.type sub_401bb1, @function
sub_401bb1:

	nop	word ptr cs:[rax + rax]
.label_55:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_54
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_54:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401bf4
	.globl sub_401bf4
	.type sub_401bf4, @function
sub_401bf4:

	nop	
	.section	.text
	.align	32
	#Procedure 0x401bf6

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
	jne	.label_56
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_56
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_55
.label_56:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
	.section	.text
	.align	32
	#Procedure 0x401c30

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	.section	.text
	.align	32
	#Procedure 0x401c35
	.globl sub_401c35
	.type sub_401c35, @function
sub_401c35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c40

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_57
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_57:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x401c5a
	.globl sub_401c5a
	.type sub_401c5a, @function
sub_401c5a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x401c6a
	.globl sub_401c6a
	.type sub_401c6a, @function
sub_401c6a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c70

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_58
	test	rdx, rdx
	je	.label_58
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_58:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401c9b
	.globl sub_401c9b
	.type sub_401c9b, @function
sub_401c9b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ca0

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
	#Procedure 0x401cd6
	.globl sub_401cd6
	.type sub_401cd6, @function
sub_401cd6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ce0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_59
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_61
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_61
	mov	esi, OFFSET FLAT:label_62
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_64
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_64:
	mov	rbx, r14
.label_61:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_59:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_60
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x401d81
	.globl sub_401d81
	.type sub_401d81, @function
sub_401d81:

	nop	word ptr cs:[rax + rax]
.label_65:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x401d9e
	.globl sub_401d9e
	.type sub_401d9e, @function
sub_401d9e:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401da7

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_65
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_67
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_65
.label_67:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_65
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_66
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_66:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x401e10

	.globl fold_file
	.type fold_file, @function
fold_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_72
	cmp	byte ptr [rbx + 1], 0
	je	.label_79
.label_72:
	mov	esi, OFFSET FLAT:label_83
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
.label_89:
	test	r15, r15
	je	.label_85
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	rdi, r15
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	mov	qword ptr [rsp + 0x10], rbx
	je	.label_91
	xor	r14d, r14d
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x18], r15
	nop	dword ptr [rax]
.label_77:
	lea	r12, [rbx + 1]
	cmp	r12,  qword ptr [word ptr [rip + fold_file.allocated_out]]
	jb	.label_68
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	esi, OFFSET FLAT:fold_file.allocated_out
	call	x2realloc
	mov	qword ptr [word ptr [rip + fold_file.line_out]],  rax
.label_68:
	cmp	ebp, 0xa
	jne	.label_78
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	byte ptr [rdi + rbx], bpl
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, r12
	call	fwrite_unlocked
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_86
	.section	.text
	.align	32
	#Procedure 0x401ed3
	.globl sub_401ed3
	.type sub_401ed3, @function
sub_401ed3:

	nop	word ptr cs:[rax + rax]
.label_78:
	mov	dword ptr [rsp + 0xc], ebp
	movsx	r15d, bpl
	mov	rdi, r14
	jmp	.label_90
	.section	.text
	.align	32
	#Procedure 0x401eed
	.globl sub_401eed
	.type sub_401eed, @function
sub_401eed:

	nop	dword ptr [rax]
.label_76:
	mov	rdi, rax
.label_90:
	mov	esi, r15d
	call	adjust_column
	mov	r14, rax
	cmp	r14, qword ptr [rsp + 0x20]
	jbe	.label_94
	cmp	byte ptr [byte ptr [rip + break_spaces]],  1
	jne	.label_71
	mov	rax,  qword ptr [word ptr [rip + fold_file.line_out]]
	lea	rbp, [rax + rbx - 1]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_87:
	mov	rax, rbx
	add	rax, r12
	je	.label_71
	movsx	edi, byte ptr [rbp + r12]
	call	to_uchar
	movzx	r13d, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	r12
	test	byte ptr [rax + r13*2], 1
	je	.label_87
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	lea	rdx, [rbx + r12 + 1]
	mov	esi, 1
	call	fwrite_unlocked
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	add	rbx, rdi
	lea	rsi, [r12 + rbx + 1]
	mov	r14, r12
	not	r14
	mov	rdx, r14
	call	memmove
	cmp	r12, -1
	mov	ebx, 0
	mov	eax, 0
	je	.label_76
	mov	rbx,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	ebp, 1
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_81:
	movsx	esi, byte ptr [rbx + rbp - 1]
	mov	rdi, rax
	call	adjust_column
	inc	rbp
	mov	rcx, r12
	add	rcx, rbp
	jne	.label_81
	mov	rbx, r14
	jmp	.label_76
.label_71:
	lea	rdx, [rbx + 1]
	mov	rax,  qword ptr [word ptr [rip + fold_file.line_out]]
	test	rbx, rbx
	je	.label_92
	mov	byte ptr [rax + rbx], 0xa
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	xor	ebx, ebx
	xor	eax, eax
	jmp	.label_76
	.section	.text
	.align	32
	#Procedure 0x402025
	.globl sub_402025
	.type sub_402025, @function
sub_402025:

	nop	word ptr cs:[rax + rax]
.label_94:
	mov	rax,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	ecx, dword ptr [rsp + 0xc]
	mov	byte ptr [rax + rbx], cl
	inc	rbx
	jmp	.label_82
.label_92:
	mov	ecx, dword ptr [rsp + 0xc]
	mov	byte ptr [rax + rbx], cl
	mov	rbx, rdx
.label_82:
	mov	r15, qword ptr [rsp + 0x18]
.label_86:
	mov	rdi, r15
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_77
	call	__errno_location
	mov	r12, rax
	mov	r14d, dword ptr [r12]
	test	rbx, rbx
	je	.label_73
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	jmp	.label_73
.label_85:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	esi, r14d
.label_93:
	call	error
	jmp	.label_74
.label_91:
	call	__errno_location
	mov	r12, rax
	mov	r14d, dword ptr [r12]
.label_73:
	mov	rdi, r15
	call	ferror_unlocked
	test	eax, eax
	je	.label_88
	xor	edi, edi
	mov	esi, 3
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	esi, r14d
	call	error
	cmp	byte ptr [rbx], 0x2d
	jne	.label_69
	cmp	byte ptr [rbx + 1], 0
	je	.label_70
.label_69:
	mov	rdi, r15
	call	rpl_fclose
.label_70:
	xor	ebp, ebp
	jmp	.label_74
.label_88:
	mov	r14, qword ptr [rsp + 0x10]
	cmp	byte ptr [r14], 0x2d
	jne	.label_75
	mov	bpl, 1
	cmp	byte ptr [r14 + 1], 0
	je	.label_74
.label_75:
	mov	rdi, r15
	call	rpl_fclose
	mov	bpl, 1
	cmp	eax, -1
	je	.label_84
.label_74:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_79:
	mov	r15,  qword ptr [word ptr [rip + stdin]]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jmp	.label_89
.label_84:
	mov	ebx, dword ptr [r12]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_93
	.section	.text
	.align	32
	#Procedure 0x40218a
	.globl sub_40218a
	.type sub_40218a, @function
sub_40218a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402190

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
	#Procedure 0x4021a7
	.globl sub_4021a7
	.type sub_4021a7, @function
sub_4021a7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021b0

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
.label_189:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_122
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_126]]
.label_474:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_134
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_139
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_475:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_146
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_146
	xor	r14d, r14d
.label_159:
	cmp	r14, r11
	jae	.label_154
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_154:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_159
.label_146:
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
	jmp	.label_163
.label_467:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_163
.label_470:
	mov	al, 1
.label_468:
	mov	r12b, 1
.label_471:
	test	r12b, 1
	mov	cl, 1
	je	.label_175
	mov	ecx, eax
.label_175:
	mov	al, cl
.label_469:
	test	r12b, 1
	jne	.label_178
	test	r11, r11
	je	.label_180
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_180:
	mov	r14d, 1
	jmp	.label_183
.label_178:
	xor	r14d, r14d
.label_183:
	mov	ecx, OFFSET FLAT:label_139
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_163
.label_472:
	test	r12b, 1
	jne	.label_190
	test	r11, r11
	je	.label_192
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_192:
	mov	r14d, 1
	jmp	.label_196
.label_473:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_198
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_163
.label_190:
	xor	r14d, r14d
.label_196:
	mov	eax, OFFSET FLAT:label_198
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_163:
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
	jmp	.label_95
	.section	.text
	.align	32
	#Procedure 0x40248c
	.globl sub_40248c
	.type sub_40248c, @function
sub_40248c:

	nop	dword ptr [rax]
.label_155:
	inc	rsi
.label_95:
	cmp	rbp, -1
	je	.label_138
	cmp	rsi, rbp
	jne	.label_191
	jmp	.label_143
	.section	.text
	.align	32
	#Procedure 0x4024a3
	.globl sub_4024a3
	.type sub_4024a3, @function
sub_4024a3:

	nop	word ptr cs:[rax + rax]
.label_138:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_143
.label_191:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_148
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_151
	cmp	rbp, -1
	jne	.label_151
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
.label_151:
	cmp	rbx, rbp
	jbe	.label_162
.label_148:
	xor	r8d, r8d
.label_172:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_164
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_167]]
.label_410:
	test	rsi, rsi
	jne	.label_156
	jmp	.label_170
	.section	.text
	.align	32
	#Procedure 0x40253e
	.globl sub_40253e
	.type sub_40253e, @function
sub_40253e:

	nop	
.label_162:
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
	jne	.label_182
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_172
	jmp	.label_133
.label_182:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_172
.label_414:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_199
	test	rsi, rsi
	jne	.label_200
	cmp	rbp, 1
	je	.label_170
	xor	r13d, r13d
	jmp	.label_114
.label_403:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_206
	cmp	byte ptr [rsp + 7], 0
	jne	.label_99
	cmp	r12d, 2
	jne	.label_96
	mov	eax, r9d
	and	al, 1
	jne	.label_96
	cmp	r14, r11
	jae	.label_111
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_111:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_103
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_103:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_109
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_109:
	add	r14, 3
	mov	r9b, 1
.label_96:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_118
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_118:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_121
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_121
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_121
	cmp	r14, r11
	jae	.label_135
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_135:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_106
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_106:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_114
.label_404:
	mov	bl, 0x62
	jmp	.label_144
.label_405:
	mov	cl, 0x74
	jmp	.label_147
.label_406:
	mov	bl, 0x76
	jmp	.label_144
.label_407:
	mov	bl, 0x66
	jmp	.label_144
.label_408:
	mov	cl, 0x72
	jmp	.label_147
.label_411:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_153
	cmp	byte ptr [rsp + 7], 0
	jne	.label_99
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
	jae	.label_160
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_160:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_169
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_169:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_171
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_171:
	add	r14, 3
	xor	r9d, r9d
.label_153:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_114
.label_412:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_181
	cmp	r12d, 2
	jne	.label_156
	cmp	byte ptr [rsp + 7], 0
	je	.label_156
	jmp	.label_99
.label_413:
	cmp	r12d, 2
	jne	.label_187
	cmp	byte ptr [rsp + 7], 0
	jne	.label_99
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_145
.label_164:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_207
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
.label_102:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_110
	test	r8b, r8b
	je	.label_110
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_114
.label_199:
	test	rsi, rsi
	jne	.label_120
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_120
.label_170:
	mov	dl, 1
.label_409:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_99
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_114:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_128
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_130
	jmp	.label_136
	.section	.text
	.align	32
	#Procedure 0x402884
	.globl sub_402884
	.type sub_402884, @function
sub_402884:

	nop	word ptr cs:[rax + rax]
.label_128:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_136
.label_130:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_140
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_145
	jmp	.label_152
	.section	.text
	.align	32
	#Procedure 0x4028cd
	.globl sub_4028cd
	.type sub_4028cd, @function
sub_4028cd:

	nop	dword ptr [rax]
.label_136:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_152
	jmp	.label_145
.label_140:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_152
.label_206:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_155
	xor	r15d, r15d
	jmp	.label_156
.label_187:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_147
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_145
.label_147:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_99
.label_144:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_114
	nop	word ptr cs:[rax + rax]
.label_152:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_99
	cmp	r12d, 2
	jne	.label_176
	mov	eax, r9d
	and	al, 1
	jne	.label_176
	cmp	r14, r11
	jae	.label_179
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_179:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_127
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_127:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_185
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_185:
	add	r14, 3
	mov	r9b, 1
.label_176:
	cmp	r14, r11
	jae	.label_188
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_188:
	inc	r14
	jmp	.label_193
.label_207:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_197
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_197:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_129:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_100
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_105
	cmp	rbp, -2
	je	.label_112
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_116
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_168:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_131
	bt	rsi, rdx
	jb	.label_133
.label_131:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_168
.label_116:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_142
	xor	r13d, r13d
.label_142:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_129
	jmp	.label_102
.label_121:
	xor	r13d, r13d
	jmp	.label_114
.label_120:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_114
.label_181:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_156
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_156
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_156
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_124
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_149
	cmp	byte ptr [rsp + 7], 0
	jne	.label_99
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_173
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_173:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_209
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_209:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_97
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_97:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_184
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_184:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_114
.label_156:
	xor	eax, eax
.label_200:
	xor	r13d, r13d
	jmp	.label_114
.label_110:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_195
	.section	.text
	.align	32
	#Procedure 0x402bb3
	.globl sub_402bb3
	.type sub_402bb3, @function
sub_402bb3:

	nop	word ptr cs:[rax + rax]
.label_158:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_195:
	test	r8b, r8b
	je	.label_201
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_203
	cmp	r14, r11
	jae	.label_204
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_204:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_203
	.section	.text
	.align	32
	#Procedure 0x402bfc
	.globl sub_402bfc
	.type sub_402bfc, @function
sub_402bfc:

	nop	dword ptr [rax]
.label_201:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_133
	cmp	r12d, 2
	jne	.label_101
	mov	eax, r9d
	and	al, 1
	jne	.label_101
	cmp	r14, r11
	jae	.label_104
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_104:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_157
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_157:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_117
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_117:
	add	r14, 3
	mov	r9b, 1
.label_101:
	cmp	r14, r11
	jae	.label_208
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_208:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_119
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_119:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_132
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_132:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_203:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_145
	test	r9b, 1
	je	.label_108
	mov	ebx, eax
	and	bl, 1
	jne	.label_108
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_150
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_150:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_202
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_202:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_108:
	cmp	r14, r11
	jae	.label_158
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_158
	.section	.text
	.align	32
	#Procedure 0x402d03
	.globl sub_402d03
	.type sub_402d03, @function
sub_402d03:

	nop	word ptr cs:[rax + rax]
.label_145:
	test	r9b, 1
	je	.label_165
	and	al, 1
	jne	.label_165
	cmp	r14, r11
	jae	.label_166
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_166:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_161
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_161:
	add	r14, 2
	xor	r9d, r9d
.label_165:
	mov	ebx, r15d
.label_193:
	cmp	r14, r11
	jae	.label_174
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_174:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_155
.label_105:
	xor	r13d, r13d
.label_100:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_102
.label_112:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_186
	mov	rsi, qword ptr [rsp + 0x50]
.label_194:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_115
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_194
	xor	r13d, r13d
	jmp	.label_102
.label_186:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_102
.label_115:
	xor	r13d, r13d
	jmp	.label_102
.label_124:
	xor	r13d, r13d
	jmp	.label_114
.label_149:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_114
	.section	.text
	.align	32
	#Procedure 0x402dd8
	.globl sub_402dd8
	.type sub_402dd8, @function
sub_402dd8:

	nop	dword ptr [rax + rax]
.label_143:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_205
	or	dl, al
	je	.label_133
.label_205:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_98
	or	dl, al
	jne	.label_98
	test	r10b, 1
	jne	.label_113
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_98
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_189
.label_98:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_123
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_125
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_125
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_141:
	cmp	r14, r11
	jae	.label_137
	mov	byte ptr [rcx + r14], al
.label_137:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_141
	jmp	.label_125
.label_99:
	mov	qword ptr [rsp + 0x20], rbp
.label_133:
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
.label_177:
	mov	r14, rax
.label_107:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_113:
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
	jmp	.label_177
.label_123:
	mov	rcx, qword ptr [rsp + 8]
.label_125:
	cmp	r14, r11
	jae	.label_107
	mov	byte ptr [rcx + r14], 0
	jmp	.label_107
.label_122:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x402f6c
	.globl sub_402f6c
	.type sub_402f6c, @function
sub_402f6c:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f70

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x402f79
	.globl sub_402f79
	.type sub_402f79, @function
sub_402f79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f80

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
	mov	rax,  qword ptr [word ptr [rip + label_210]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_211]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_212]]
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
	#Procedure 0x402fe8
	.globl sub_402fe8
	.type sub_402fe8, @function
sub_402fe8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ff0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x402ffa
	.globl sub_402ffa
	.type sub_402ffa, @function
sub_402ffa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403000

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
	je	.label_213
	mov	qword ptr [rax], rbx
.label_213:
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
	#Procedure 0x4030ec
	.globl sub_4030ec
	.type sub_4030ec, @function
sub_4030ec:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4030f0

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
	#Procedure 0x403127
	.globl sub_403127
	.type sub_403127, @function
sub_403127:

	nop	word ptr [rax + rax]
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_215
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x403175

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
	je	.label_216
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_216
.label_218:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_217
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_215:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
.label_217:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_219:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4031f5
	.globl sub_4031f5
	.type sub_4031f5, @function
sub_4031f5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031ff
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_219
	call	rpl_calloc
	test	rax, rax
	je	.label_219
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403220
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_220
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_220:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403243
	.globl sub_403243
	.type sub_403243, @function
sub_403243:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403250

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_221
	test	rax, rax
	je	.label_222
.label_221:
	pop	rbx
	ret	
.label_222:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40326a
	.globl sub_40326a
	.type sub_40326a, @function
sub_40326a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403270
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
	#Procedure 0x403286
	.globl sub_403286
	.type sub_403286, @function
sub_403286:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403290

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
	#Procedure 0x4032bd
	.globl sub_4032bd
	.type sub_4032bd, @function
sub_4032bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4032c0
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
	#Procedure 0x4032d3
	.globl sub_4032d3
	.type sub_4032d3, @function
sub_4032d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_223
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_80
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403310
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_225
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_228
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_226
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403384
	.globl sub_403384
	.type sub_403384, @function
sub_403384:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403390

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4033b3
	.globl sub_4033b3
	.type sub_4033b3, @function
sub_4033b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033c0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_237
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_232:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_232
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_231
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_238
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_243
	cmp	eax, 0x22
	jne	.label_231
	mov	r12d, 1
.label_243:
	test	rbp, rbp
	jne	.label_246
	jmp	.label_234
.label_238:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_231
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_231
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_231
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_246:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_234
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_236
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_242
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_242
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_229
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_233
	cmp	ecx, 0x44
	je	.label_233
	cmp	ecx, 0x69
	jne	.label_229
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_229
.label_233:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_229
.label_242:
	mov	rsi, r14
.label_229:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_236
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_244]]
.label_383:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_230
.label_236:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_245
.label_384:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_230
.label_385:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_230
.label_387:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_230
.label_381:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_235
.label_382:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_230
.label_386:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_230
.label_388:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_230
.label_389:
	lea	rdi, [rsp]
	mov	edx, 7
.label_230:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_235:
	mov	rsi, r14
.label_391:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_234:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_245:
	mov	r15d, r12d
.label_231:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_390:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_235
.label_392:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_235
.label_237:
	mov	edi, OFFSET FLAT:label_239
	mov	esi, OFFSET FLAT:label_240
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_241
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x403662
	.globl sub_403662
	.type sub_403662, @function
sub_403662:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403670
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x403678
	.globl sub_403678
	.type sub_403678, @function
sub_403678:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403680
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
	#Procedure 0x40368f
	.globl sub_40368f
	.type sub_40368f, @function
sub_40368f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403690

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
	#Procedure 0x4036c9
	.globl sub_4036c9
	.type sub_4036c9, @function
sub_4036c9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036d0
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
	#Procedure 0x4036e1
	.globl sub_4036e1
	.type sub_4036e1, @function
sub_4036e1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036f0
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
	#Procedure 0x403704
	.globl sub_403704
	.type sub_403704, @function
sub_403704:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403710

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_252
	nop	
.label_251:
	mov	edi, OFFSET FLAT:label_22
	call	strcmp
	test	eax, eax
	je	.label_249
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_251
.label_249:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_22
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_254
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_228
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_247
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_247
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_253
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_247:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_22
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_228
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_256
	mov	ecx, OFFSET FLAT:label_17
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
	#Procedure 0x40382a
	.globl sub_40382a
	.type sub_40382a, @function
sub_40382a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403830
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x403838
	.globl sub_403838
	.type sub_403838, @function
sub_403838:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403840
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40384a
	.globl sub_40384a
	.type sub_40384a, @function
sub_40384a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403850
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
	#Procedure 0x4038c2
	.globl sub_4038c2
	.type sub_4038c2, @function
sub_4038c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4038d0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_257
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_257:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4038f6
	.globl sub_4038f6
	.type sub_4038f6, @function
sub_4038f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403900

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_258
	test	rbx, rbx
	jne	.label_258
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_258:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_260
	test	rax, rax
	je	.label_259
.label_260:
	pop	rbx
	ret	
.label_259:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x403930
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40393a
	.globl sub_40393a
	.type sub_40393a, @function
sub_40393a:

	nop	word ptr [rax + rax]
.label_262:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_261
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40394b
	.globl sub_40394b
	.type sub_40394b, @function
sub_40394b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403955
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_262
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_262
.label_261:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403970

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_263
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_263:
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
	#Procedure 0x4039f3
	.globl sub_4039f3
	.type sub_4039f3, @function
sub_4039f3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a00

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
	je	.label_266
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_264
	jmp	.label_265
.label_266:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_265
.label_264:
	mov	eax, 1
	test	bpl, bpl
	je	.label_265
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
.label_265:
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
	#Procedure 0x403a88
	.globl sub_403a88
	.type sub_403a88, @function
sub_403a88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a90

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
	je	.label_267
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_269
	jmp	.label_268
.label_267:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_268
.label_269:
	mov	eax, 1
	test	bpl, bpl
	je	.label_268
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
.label_268:
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
	#Procedure 0x403b09
	.globl sub_403b09
	.type sub_403b09, @function
sub_403b09:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b10

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
	je	.label_272
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_271
	jmp	.label_270
.label_272:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_270
.label_271:
	mov	eax, 1
	test	bpl, bpl
	je	.label_270
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
.label_270:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b73
	.globl sub_403b73
	.type sub_403b73, @function
sub_403b73:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b80

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
	je	.label_275
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_273
	jmp	.label_274
.label_275:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_274
.label_273:
	mov	eax, 1
	test	bpl, bpl
	je	.label_274
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_274:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bdf
	.globl sub_403bdf
	.type sub_403bdf, @function
sub_403bdf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403be0

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
	je	.label_276
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_278
	jmp	.label_277
.label_276:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_277
.label_278:
	mov	eax, 1
	test	bpl, bpl
	je	.label_277
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_277:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c29
	.globl sub_403c29
	.type sub_403c29, @function
sub_403c29:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c30

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
	je	.label_281
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_280
	jmp	.label_279
.label_281:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_279
.label_280:
	mov	eax, 1
	test	bpl, bpl
	je	.label_279
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_279:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c75
	.globl sub_403c75
	.type sub_403c75, @function
sub_403c75:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c80

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_284
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_283
	jmp	.label_282
.label_284:
	mov	eax, 1
	test	cl, cl
	je	.label_282
.label_283:
	xor	eax, eax
.label_282:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403caf
	.globl sub_403caf
	.type sub_403caf, @function
sub_403caf:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403cb0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cba
	.globl sub_403cba
	.type sub_403cba, @function
sub_403cba:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cc0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x403cca
	.globl sub_403cca
	.type sub_403cca, @function
sub_403cca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x403cdd
	.globl sub_403cdd
	.type sub_403cdd, @function
sub_403cdd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ce0
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
	#Procedure 0x403cf0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x403cfa
	.globl sub_403cfa
	.type sub_403cfa, @function
sub_403cfa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d00

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_17
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_285
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d25
	.globl sub_403d25
	.type sub_403d25, @function
sub_403d25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d30

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x403d52
	.globl sub_403d52
	.type sub_403d52, @function
sub_403d52:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d60
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
	#Procedure 0x403d79
	.globl sub_403d79
	.type sub_403d79, @function
sub_403d79:

	nop	dword ptr [rax]
.label_287:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x403d8c
	.globl sub_403d8c
	.type sub_403d8c, @function
sub_403d8c:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d99

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_287
	ret	
	.section	.text
	.align	32
	#Procedure 0x403da0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_289:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_288
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_290
	.section	.text
	.align	32
	#Procedure 0x403dc9
	.globl sub_403dc9
	.type sub_403dc9, @function
sub_403dc9:

	nop	dword ptr [rax]
.label_288:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_290:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_291
	inc	r9
	cmp	r9, 0xa
	jb	.label_289
.label_291:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x403dff
	.globl sub_403dff
	.type sub_403dff, @function
sub_403dff:

	nop	
.label_292:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e03
	.globl sub_403e03
	.type sub_403e03, @function
sub_403e03:

	nop	
	.section	.text
	.align	32
	#Procedure 0x403e05
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_292
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e20

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_293
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_298
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_293:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
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
	#Procedure 0x403f25
	.globl sub_403f25
	.type sub_403f25, @function
sub_403f25:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f30

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
	#Procedure 0x403f79
	.globl sub_403f79
	.type sub_403f79, @function
sub_403f79:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f80
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f8a
	.globl sub_403f8a
	.type sub_403f8a, @function
sub_403f8a:

	nop	word ptr [rax + rax]
.label_302:
	inc	rdi
	mov	rax, rdi
.label_300:
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f97

	.globl adjust_column
	.type adjust_column, @function
adjust_column:
	mov	al,  byte ptr [byte ptr [rip + count_bytes]]
	test	al, al
	jne	.label_302
	xor	eax, eax
	cmp	sil, 0xd
	je	.label_300
	cmp	sil, 9
	je	.label_301
	cmp	sil, 8
	jne	.label_302
	lea	rax, [rdi - 1]
	test	rdi, rdi
	cmove	rax, rdi
	ret	
.label_301:
	mov	eax, edi
	and	eax, 7
	neg	rax
	lea	rax, [rdi + rax + 8]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fcf
	.globl sub_403fcf
	.type sub_403fcf, @function
sub_403fcf:

	nop	
.label_303:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403fd5
	.globl sub_403fd5
	.type sub_403fd5, @function
sub_403fd5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fe3

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
	je	.label_303
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
.label_304:
	ret	
.label_306:
	xor	eax, eax
	jmp	.label_304
	.section	.text
	.align	32
	#Procedure 0x404035
	.globl sub_404035
	.type sub_404035, @function
sub_404035:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40403f
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_306
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_305]]
	.section	.text
	.align	32
	#Procedure 0x404050
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40405a
	.globl sub_40405a
	.type sub_40405a, @function
sub_40405a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404060

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_307
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_308:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_308
.label_307:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40409e
	.globl sub_40409e
	.type sub_40409e, @function
sub_40409e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4040a0

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
	je	.label_309
	cmp	r15, -2
	jb	.label_309
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_309
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_309:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040f6
	.globl sub_4040f6
	.type sub_4040f6, @function
sub_4040f6:

	nop	word ptr cs:[rax + rax]
.label_311:
	mov	ecx, 1
.label_310:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x404110
	.globl sub_404110
	.type sub_404110, @function
sub_404110:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404115

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_311
	test	rsi, rsi
	mov	ecx, 1
	je	.label_310
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_310
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404150
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
	#Procedure 0x40415f
	.globl sub_40415f
	.type sub_40415f, @function
sub_40415f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404160

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40416a
	.globl sub_40416a
	.type sub_40416a, @function
sub_40416a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404170
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
	#Procedure 0x404180

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x404189
	.globl sub_404189
	.type sub_404189, @function
sub_404189:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404190

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40419a
	.globl sub_40419a
	.type sub_40419a, @function
sub_40419a:

	nop	word ptr [rax + rax]
.label_313:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_312
	test	cl, cl
	jne	.label_312
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_312:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041cb
	.globl sub_4041cb
	.type sub_4041cb, @function
sub_4041cb:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041d5

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
	je	.label_313
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_312
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_312
	.section	.text
	.align	32
	#Procedure 0x404210

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x404232
	.globl sub_404232
	.type sub_404232, @function
sub_404232:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404240

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
	mov	rcx,  qword ptr [word ptr [rip + label_210]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_211]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_212]]
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
	#Procedure 0x4042ad
	.globl sub_4042ad
	.type sub_4042ad, @function
sub_4042ad:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042b0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4042bd
	.globl sub_4042bd
	.type sub_4042bd, @function
sub_4042bd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4042c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x4042c7
	.globl sub_4042c7
	.type sub_4042c7, @function
sub_4042c7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042d0

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
	je	.label_325
	mov	edx, OFFSET FLAT:label_330
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_317
.label_325:
	mov	edx, OFFSET FLAT:label_319
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_317:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
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
	mov	esi, OFFSET FLAT:label_320
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_326
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_327]]
.label_448:
	add	rsp, 8
	jmp	.label_318
.label_326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
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
	jmp	.label_318
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
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
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
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
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
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
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
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
	jmp	.label_318
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
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
	jmp	.label_318
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
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
	jmp	.label_318
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
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
	jmp	.label_318
.label_457:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
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
	jmp	.label_318
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
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
.label_318:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404628
	.globl sub_404628
	.type sub_404628, @function
sub_404628:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404630
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
	#Procedure 0x40463f
	.globl sub_40463f
	.type sub_40463f, @function
sub_40463f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404640

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
	jne	.label_336
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
	je	.label_335
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_337
	mov	eax, OFFSET FLAT:label_338
	jmp	.label_339
.label_334:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_198
	mov	eax, OFFSET FLAT:label_139
.label_339:
	cmove	rax, rcx
.label_336:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046bf
	.globl sub_4046bf
	.type sub_4046bf, @function
sub_4046bf:

	nop	dword ptr [rax]
.label_335:
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
	je	.label_334
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_340
	mov	eax, OFFSET FLAT:label_341
	jmp	.label_339
	.section	.text
	.align	32
	#Procedure 0x404700
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
	#Procedure 0x404713
	.globl sub_404713
	.type sub_404713, @function
sub_404713:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404720
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
	#Procedure 0x404753
	.globl sub_404753
	.type sub_404753, @function
sub_404753:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404760
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
	#Procedure 0x40476d
	.globl sub_40476d
	.type sub_40476d, @function
sub_40476d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404770
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_342:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_342
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x404791
	.globl sub_404791
	.type sub_404791, @function
sub_404791:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x4047ae
	.globl sub_4047ae
	.type sub_4047ae, @function
sub_4047ae:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4047b0

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
	js	.label_346
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_349
	cmp	r12d, 0x7fffffff
	je	.label_344
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
	jne	.label_347
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_347:
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
.label_349:
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
	jbe	.label_345
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_348
.label_345:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_343
	mov	rdi, r14
	call	free
.label_343:
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
.label_348:
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
.label_346:
	call	abort
.label_344:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40496d
	.globl sub_40496d
	.type sub_40496d, @function
sub_40496d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404970

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_350
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_350
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_350:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x404996
	.globl sub_404996
	.type sub_404996, @function
sub_404996:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_352
	cmp	byte ptr [rax], 0x43
	jne	.label_354
	cmp	byte ptr [rax + 1], 0
	je	.label_351
.label_354:
	mov	esi, OFFSET FLAT:label_353
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_352
.label_351:
	xor	ebx, ebx
.label_352:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049d1
	.globl sub_4049d1
	.type sub_4049d1, @function
sub_4049d1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049e0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a0d
	.globl sub_404a0d
	.type sub_404a0d, @function
sub_404a0d:

	nop	dword ptr [rax]
.label_355:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a13
	.globl sub_404a13
	.type sub_404a13, @function
sub_404a13:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a1b
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_355
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a30

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a3a
	.globl sub_404a3a
	.type sub_404a3a, @function
sub_404a3a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404aa5
	.globl sub_404aa5
	.type sub_404aa5, @function
sub_404aa5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ab2
	.globl sub_404ab2
	.type sub_404ab2, @function
sub_404ab2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ad6
	.globl sub_404ad6
	.type sub_404ad6, @function
sub_404ad6:

	nop	word ptr cs:[rax + rax]
