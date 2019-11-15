	.section	.text
	.align	16
	#Procedure 0x401350

	.globl usage
	.type usage, @function
usage:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ebp, edi
	lea	rsi, [rsi]
	test	ebp, ebp
	nop	
	jne	.label_7
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	nop	
	xor	eax, eax
	nop	
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	lea	rdi, [rdi]
	call	__printf_chk
	call	emit_ancillary_info
	mov	rsp, rsp
	mov	edi, ebp
	call	exit
.label_7:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	mov	edi, ebp
	nop	
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4014f0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.16
	nop	word ptr cs:[rax + rax]
.label_10:
	mov	edi, OFFSET FLAT:.str.7
	call	strcmp
	test	eax, eax
	je	.label_9
	nop	
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	add	rbx, 0x10
	test	rsi, rsi
	mov	rbp, rbp
	jne	.label_10
.label_9:
	nop	
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.18
	nop	
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	mov	edi, 5
	xor	esi, esi
	mov	rsp, rsp
	call	setlocale
	nop	
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.26
	mov	rbp, rbp
	mov	edx, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strncmp
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	je	.label_8
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.7
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.7
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rbp, rbp
	cmp	rbx, r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.30
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401680

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	nop	
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.9
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_15:
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	call	getopt_long
	lea	rsi, [rsi]
	cmp	eax, 0x79
	jle	.label_13
	mov	bl, 1
	nop	
	cmp	eax, 0x7a
	lea	rdi, [rdi]
	je	.label_15
	jmp	.label_14
.label_13:
	mov	rsp, rsp
	cmp	eax, -1
	jne	.label_16
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + optind]],  r15d
	jge	.label_18
	nop	
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	rsp, rsp
	cmp	eax, r15d
	jge	.label_11
	lea	rsi, [rsi]
	xor	ecx, ecx
	test	bl, bl
	nop	
	mov	ebx, 0xa
	mov	rsp, rsp
	cmovne	ebx, ecx
	mov	r12d, OFFSET FLAT:main.dot
	mov	r13d, 1
	nop	word ptr cs:[rax + rax]
.label_17:
	cdqe	
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r14 + rax*8]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rbp, rbp
	call	dir_len
	mov	rsp, rsp
	test	rax, rax
	cmove	rbp, r12
	mov	rbp, rbp
	cmove	rax, r13
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rdx, rax
	call	fwrite_unlocked
	mov	edi, ebx
	mov	rbp, rbp
	call	putchar_unlocked
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	rbp, rbp
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
	cmp	eax, r15d
	jl	.label_17
.label_11:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_16:
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7d
	je	.label_12
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7e
	jne	.label_14
	xor	edi, edi
	call	usage
.label_18:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_12:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	nop	
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.13
	mov	r9d, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	call	version_etc
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	call	exit
.label_14:
	mov	edi, 1
	call	usage
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4018c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4018d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4018e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_21
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_19
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_19
.label_21:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_22
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_20
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_22:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_20:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4019e0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_24:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_23
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_24
.label_23:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a50
	.globl mdir_name
	.type mdir_name, @function
mdir_name:

	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	sete	al
	nop	
	movzx	eax, al
	nop	
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	xor	eax, eax
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_26
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_25
	mov	rsp, rsp
	mov	byte ptr [r14 + rbx], 0x2e
	nop	
	mov	ebx, 1
.label_25:
	nop	
	mov	byte ptr [r14 + rbx], 0
	mov	rsp, rsp
	mov	rax, r14
.label_26:
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ae0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_27:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_27
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_29
	nop	word ptr [rax + rax]
.label_30:
	inc	rax
	mov	rbp, rbp
	mov	cl, dl
.label_29:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	mov	rsp, rsp
	je	.label_30
	test	sil, sil
	mov	rsp, rsp
	je	.label_31
	mov	rbp, rbp
	mov	dl, cl
	and	dl, 1
	mov	rsp, rsp
	je	.label_28
	xor	ecx, ecx
.label_28:
	test	dl, dl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_30
.label_31:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401b60
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_33:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_32
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_33
.label_32:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ba0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_34
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_36
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_36
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_35
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_35:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_36:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_34:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c90
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401ce0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d00
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d20

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d90
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401db0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_37
	test	rdx, rdx
	nop	
	je	.label_37
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_37:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401df0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e90

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_149:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_126
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_128]]
.label_275:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_276:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_40
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_40
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_82:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_69
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_69:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_82
.label_40:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_94
.label_268:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_94
.label_271:
	mov	rsp, rsp
	mov	al, 1
.label_269:
	mov	r15b, 1
.label_272:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_117
	mov	cl, al
.label_117:
	lea	rdi, [rdi]
	mov	al, cl
.label_270:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_118
	test	r10, r10
	je	.label_124
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_127
.label_118:
	xor	ecx, ecx
	jmp	.label_127
.label_273:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_137
	test	r10, r10
	je	.label_141
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_60
.label_274:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_94
.label_124:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_127:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_94
.label_137:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_60
.label_141:
	mov	rbp, rbp
	mov	eax, 1
.label_60:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_94:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_87
	nop	word ptr [rax + rax]
.label_106:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_87:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_131
	cmp	rsi, rbp
	jne	.label_112
	jmp	.label_135
	nop	word ptr cs:[rax + rax]
.label_131:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_135
.label_112:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_142
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_147
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_147
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_147:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_56
.label_142:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_110:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_63
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_70]]
.label_284:
	test	rsi, rsi
	jne	.label_79
	jmp	.label_81
	nop	word ptr [rax + rax]
.label_56:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_101
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_110
	mov	rsp, rsp
	jmp	.label_86
.label_101:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_110
.label_288:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_120
	test	rsi, rsi
	nop	
	jne	.label_89
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_81
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_44
.label_277:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_136
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_86
	cmp	edi, 2
	nop	
	jne	.label_144
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_146
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_152
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_152:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_158
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_158:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_43
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_43:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_55
.label_278:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_62
.label_279:
	mov	cl, 0x74
	jmp	.label_68
.label_280:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_62
.label_281:
	mov	bl, 0x66
	jmp	.label_62
.label_282:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_68
.label_285:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_108
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_66
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_90
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_90:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_107
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_107:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_113
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_113:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_119
.label_286:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_125
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_134
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_66
.label_134:
	mov	rdi, r14
	jmp	.label_79
.label_287:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_140
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_66
	mov	rdi, r14
	jmp	.label_150
.label_63:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_154
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_103:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_51
	test	dl, dl
	mov	rsp, rsp
	je	.label_51
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_44
.label_120:
	test	rsi, rsi
	jne	.label_76
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_76
.label_81:
	mov	rbp, rbp
	mov	dl, 1
.label_283:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_86
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_44
.label_136:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_79
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_87
.label_108:
	mov	rdi, r14
.label_119:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_44
.label_140:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_68
.label_150:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_38
.label_68:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_86
.label_62:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_44
	lea	rsi, [rsi]
	jmp	.label_53
.label_154:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_116
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_116:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_93:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_155
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_133
	cmp	rbp, -2
	nop	
	je	.label_49
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_91
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_73:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_83
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_71
.label_83:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_73
.label_91:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_139
	xor	r15d, r15d
.label_139:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_93
	jmp	.label_103
.label_76:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_44
.label_125:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_79
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_79
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_79
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_114
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_74
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_86
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_99
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_99:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_65
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_65:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_92
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_92:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_104
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_104:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_44
.label_79:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_44:
	test	r12b, r12b
	je	.label_132
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_59
	jmp	.label_57
	nop	word ptr cs:[rax + rax]
.label_132:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_57
.label_59:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_85
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_38
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
.label_57:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_53
	jmp	.label_38
.label_85:
	mov	bl, r13b
	mov	rsi, r14
.label_53:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_86
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_102
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_102
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_46
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_46:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_109
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_109:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_148
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_148:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_102:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_129
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_129:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_72
.label_89:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_44
.label_51:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_138:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_145:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_157
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_54
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_41
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_41:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_54
	nop	dword ptr [rax]
.label_157:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_66
	cmp	r14d, 2
	jne	.label_105
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_105
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_78
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_78:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_95
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_95:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_97
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_97:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_105:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_52
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_52:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_77
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_77:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_121
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_121:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_54:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_38
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_153
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_50
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_156
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_156:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_42
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_42:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_50
	nop	word ptr cs:[rax + rax]
.label_153:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_50:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_138
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_138
	nop	word ptr cs:[rax + rax]
.label_38:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_88
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_88
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_48
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_48:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_96
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_96:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_72
	nop	word ptr cs:[rax + rax]
.label_88:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_72:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_106
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_106
.label_144:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_55
.label_146:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_55:
	cmp	rcx, r10
	jae	.label_122
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_122:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_130
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_80
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_143
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_100
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_100:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_159
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_159:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_44
.label_130:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_44
.label_80:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_44
.label_143:
	xor	r15d, r15d
	jmp	.label_44
.label_155:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_67
.label_133:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_75
.label_49:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_84
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_98:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_45
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_98
	xor	r15d, r15d
	nop	
	jmp	.label_67
.label_84:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_75:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_67:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_103
.label_45:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_67
.label_114:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_44
.label_74:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_44
	nop	word ptr cs:[rax + rax]
.label_135:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_115
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_66
.label_115:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_61
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_61
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_151
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_61
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_149
.label_61:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_39
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_39
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_39
	inc	rdx
	nop	dword ptr [rax + rax]
.label_58:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_47
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_47:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_58
.label_39:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_64
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_64
.label_86:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_111:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_123:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_64:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_71:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_111
.label_66:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_111
.label_151:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_123
.label_126:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035e0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403600

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xcharalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_160
	mov	qword ptr [rax], rbx
.label_160:
	mov	rax, r14
	mov	rsp, rsp
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
	#Procedure 0x403750
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_161
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_165:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_165
.label_161:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_164
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_162]], OFFSET FLAT:slot0
.label_164:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_163
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_163:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403810

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403820

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_169
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_171
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_167
.label_171:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_172
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_168
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_168:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_167:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_166
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_170
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_170:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_166:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_169:
	lea	rdi, [rdi]
	call	abort
.label_172:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a90

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403aa0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ac0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ae0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b40

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_173
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_173:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403bb0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403c10
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c30
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c50

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_174]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_175]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_176]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cf0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d10

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403da0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403db0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_174]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_175]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_176]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e40
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e70
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ea0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403eb0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ed0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ee0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x403ef0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_177
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_178
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_177
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_177
.label_178:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_179
	nop	
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_177
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_177
.label_179:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_177:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404020

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_181
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_180
	jmp	.label_182
.label_181:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_182
.label_180:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_182
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_182:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040e0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_185
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_184
	lea	rsi, [rsi]
	jmp	.label_183
.label_185:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_183
.label_184:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_183
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_183:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041d0

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_188
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_187
	jmp	.label_186
.label_188:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_186
.label_187:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_186
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_186:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
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
	#Procedure 0x4042a0

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_191
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_190
	jmp	.label_189
.label_191:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_189
.label_190:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_189
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_189:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404340

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_194
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_193
	nop	
	jmp	.label_192
.label_194:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_192
.label_193:
	mov	eax, 1
	test	bpl, bpl
	je	.label_192
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_192:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_197
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_196
	lea	rsi, [rsi]
	jmp	.label_195
.label_197:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_195
.label_196:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_195
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_195:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404470

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_200
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_199
	jmp	.label_198
.label_200:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_198
.label_199:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_198
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_198:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4044e0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_201
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_203
	mov	rbp, rbp
	jmp	.label_202
.label_201:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_202
.label_203:
	xor	eax, eax
.label_202:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404530

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_211
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_4
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_213
.label_211:
	mov	edx, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_213:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_209
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_204]]
.label_301:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_209:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_207
.label_302:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_303:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_304:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_210
.label_305:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_208
.label_306:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_205
.label_307:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_205:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_208:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_210:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_206
.label_309:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
.label_207:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_212
.label_308:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_212:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_206:
	mov	rbp, rbp
	call	__fprintf_chk
.label_300:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404920
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_214:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_214
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404950

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_218:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_215
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_217
	nop	word ptr cs:[rax + rax]
.label_215:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_217:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_216
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_218
.label_216:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_219
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_219:
	mov	qword ptr [rsp + 0x28], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	mov	rsp, rsp
	call	version_etc_va
	lea	rdi, [rdi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x404b20
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_220
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_220:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_221
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_222
.label_221:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_222:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b90
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_223
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_223:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bd0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_224
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_224
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_224:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_225
	test	rax, rax
	nop	
	je	.label_226
.label_225:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_226:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c20

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_227
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_228
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_229
.label_227:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_230
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_230:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_231
.label_229:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_228:
	call	xalloc_die
.label_231:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404cc0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ce0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_232
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_232
	pop	rcx
	ret	
.label_232:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404d50

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e10

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_233
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_234
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_234
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_233:
	mov	ecx, 1
.label_234:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e80

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_235
	nop	
	cmp	r15, -2
	jb	.label_235
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_235
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_235:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f10
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_236
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_236
.label_237:
	ret	
.label_236:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_237
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f40
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_238
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_238:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f60
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f80
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_239
.label_240:
	ret	
.label_239:
	cmp	edi, 0x7f
	je	.label_240
	xor	eax, eax
	jmp	.label_240
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fa0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fd0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_241
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_241
.label_242:
	ret	
.label_241:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_242
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405010
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_243
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_243:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405030

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405040
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_244
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_244:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405060
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405070
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405080

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_245
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_246
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_246
.label_245:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_246
	test	cl, cl
	jne	.label_246
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_246:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405120

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_248
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_247
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_249
.label_247:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_248
.label_249:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_248:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405170

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_250
	nop	
	mov	rax, rcx
.label_250:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_251
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_253
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_251
.label_253:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_251
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_252
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_252:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_251:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405270

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_254
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_254
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_254:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x4052a0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_255
	mov	rbp, rbp
	ret	
.label_255:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x4052c0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_256
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_256
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_258
.label_256:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_258:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_257
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_257:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x405370

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
