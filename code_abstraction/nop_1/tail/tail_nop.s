	.section	.text
	.align	32
	#Procedure 0x401c40

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_7
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rbp, rbp
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, 0xa
	nop	
	mov	ecx, 5
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.7
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	call	emit_ancillary_info
	mov	edi, ebp
	lea	rdi, [rdi]
	call	exit
.label_7:
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ed0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rdi, [rdi]
	push	rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	pop	rax
	nop	
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f10

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401f40

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.25
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	edi, OFFSET FLAT:.str.13
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_8
	nop	
	mov	rsi, qword ptr [rbx + 0x10]
	nop	
	add	rbx, 0x10
	test	rsi, rsi
	nop	
	jne	.label_9
.label_8:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.13
	mov	rsp, rsp
	cmovne	rbx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_10
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	r14d, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	nop	
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	nop	
	cmp	rbx, r14
	nop	
	mov	eax, OFFSET FLAT:.str.40
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	cmove	rcx, rax
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rsi, rdx
	mov	rsp, rsp
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020c0

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	ebp, edi
	mov	dword ptr [rsp + 0xa4], 0
	mov	qword ptr [rsp + 0x98], 0xa
	movabs	rax, 0x3ff0000000000000
	mov	qword ptr [rsp + 0x90], rax
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	call	setlocale
	mov	edi, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.15
	call	textdomain
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:close_stdout
	nop	
	call	atexit
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + count_lines]],  1
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + from_start]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + forever]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + line_end]],  1
	lea	r15, [rsp + 0x98]
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, rbx
	nop	
	mov	rdx, r15
	call	parse_obsolete_option
	mov	rsp, rsp
	movzx	eax, al
	lea	rdi, [rdi]
	sub	ebp, eax
	lea	r14, [rbx + rax*8]
	lea	rcx, [rsp + 0xa4]
	lea	r8, [rsp + 0x90]
	mov	edi, ebp
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	parse_options
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_39
	mov	rax, qword ptr [rsp + 0x98]
	test	rax, rax
	nop	
	je	.label_39
	dec	rax
	mov	qword ptr [rsp + 0x98], rax
.label_39:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:main.dummy_stdin
	mov	rbp, rbp
	mov	r12d, 1
	lea	rsi, [rsi]
	cmp	ebp, eax
	jle	.label_41
	xor	r12d, r12d
	sub	ebp, eax
	mov	rbp, rbp
	lea	rbx, [r14 + rax*8]
	je	.label_11
	movsxd	r12, ebp
.label_41:
	xor	eax, eax
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_32:
	mov	rsi, qword ptr [rbx + rax*8]
	nop	
	movzx	edi, byte ptr [rsi]
	mov	rbp, rbp
	mov	edx, 0x2d
	mov	rbp, rbp
	sub	edx, edi
	nop	
	jne	.label_19
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rsi + 1]
	lea	rsi, [rsi]
	neg	edx
.label_19:
	mov	rbp, rbp
	test	edx, edx
	nop	
	mov	dl, 1
	je	.label_23
	lea	rsi, [rsi]
	mov	dl, cl
.label_23:
	inc	rax
	lea	rdi, [rdi]
	cmp	r12, rax
	mov	cl, dl
	lea	rsi, [rsi]
	jne	.label_32
	and	dl, 1
	mov	rbp, rbp
	je	.label_28
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_30
.label_28:
	lea	rdi, [rdi]
	test	dl, dl
	lea	rdi, [rdi]
	sete	al
	nop	
	cmp	byte ptr [byte ptr [rip + forever]],  0
	lea	rsi, [rsi]
	je	.label_11
	test	al, al
	mov	rbp, rbp
	jne	.label_11
	lea	rsi, [rsi]
	cmp	r12, 1
	lea	rsi, [rsi]
	jne	.label_36
	mov	eax,  dword ptr [dword ptr [rip + pid]]
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_36
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	mov	rbp, rbp
	jne	.label_36
	lea	rsi, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	call	__fstat
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_36
	mov	rsp, rsp
	mov	eax, 0xf000
	mov	rsp, rsp
	and	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	cmp	eax, 0x8000
	mov	rsp, rsp
	jne	.label_11
.label_36:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	call	isatty
	test	eax, eax
	je	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
.label_11:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x98], 0
	jne	.label_17
	mov	cl,  byte ptr [byte ptr [rip + from_start]]
	nop	
	xor	eax, eax
	or	cl,  byte ptr [byte ptr [rip + forever]]
	je	.label_24
.label_17:
	mov	esi, 0x60
	mov	rbp, rbp
	mov	rdi, r12
	call	xnmalloc
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	test	r12, r12
	je	.label_31
	mov	rax, r12
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_34:
	mov	rdx, qword ptr [rbx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rdx
	nop	
	add	rbx, 8
	add	rcx, 0x60
	lea	rsi, [rsi]
	dec	rax
	jne	.label_34
.label_31:
	mov	eax, dword ptr [rsp + 0xa4]
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_37
	cmp	r12, 2
	mov	rsp, rsp
	jb	.label_14
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_14
.label_37:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_14:
	mov	r13b, 1
	test	r12, r12
	je	.label_35
	nop	
	mov	rbx, r12
	nop	
	mov	rbp, r14
	nop	word ptr cs:[rax + rax]
.label_15:
	nop	
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	call	tail_file
	and	r13b, al
	lea	rsi, [rsi]
	add	rbp, 0x60
	lea	rsi, [rsi]
	dec	rbx
	jne	.label_15
.label_35:
	nop	
	cmp	byte ptr [byte ptr [rip + forever]],  0
	mov	rsp, rsp
	je	.label_16
	mov	rdi, r14
	mov	rsi, r12
	mov	rbp, rbp
	call	ignore_fifo_and_pipe
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_16
	lea	rsi, [rsi]
	lea	rsi, [rsp]
	mov	edi, 1
	mov	rsp, rsp
	call	__fstat
	test	eax, eax
	js	.label_26
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x1000
	sete	byte ptr [byte ptr [rip + monitor_output]]
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	mov	rbp, rbp
	and	al, 1
	nop	
	jne	.label_25
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	call	tailable_stdin
	lea	rsi, [rsi]
	test	al, al
	jne	.label_12
	nop	
	mov	rdi, r14
	mov	rsi, r12
	call	any_remote_file
	mov	rsp, rsp
	test	al, al
	jne	.label_12
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	call	any_non_remote_file
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_12
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	mov	rbp, rbp
	call	any_symlinks
	mov	rsp, rsp
	test	al, al
	nop	
	jne	.label_12
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	any_non_regular_fifo
	test	al, al
	mov	rsp, rsp
	jne	.label_12
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	mov	rbp, rbp
	jne	.label_13
	mov	al, r13b
	xor	al, 1
	je	.label_13
.label_12:
	nop	
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
.label_25:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	mov	rbp, rbp
	movsd	xmm0, qword ptr [rsp + 0x90]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	lea	rdi, [rdi]
	call	tail_forever
.label_16:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_21
	xor	edi, edi
	lea	rsi, [rsi]
	call	close
	test	eax, eax
	js	.label_27
.label_21:
	lea	rsi, [rsi]
	movzx	eax, r13b
	xor	eax, 1
.label_24:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_13:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_25
	call	inotify_init
	mov	ebx, eax
	test	ebx, ebx
	lea	rdi, [rdi]
	js	.label_18
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_38
	nop	
	movsd	xmm0, qword ptr [rsp + 0x90]
	mov	edi, ebx
	mov	rsi, r14
	mov	rdx, r12
	lea	rsi, [rsi]
	call	tail_forever_inotify
	test	al, al
	mov	rsp, rsp
	je	.label_40
.label_18:
	mov	rsp, rsp
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r15d
	mov	rdx, rcx
	call	error
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_25
	mov	rbp, r14
	lea	rdi, [rdi]
	add	rbp, 0x48
	mov	rsp, rsp
	mov	r15, r12
.label_29:
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	cmp	esi, -1
	je	.label_22
	mov	edi, ebx
	call	inotify_rm_watch
.label_22:
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp]
	lea	rdi, [rdi]
	cmp	esi, -1
	nop	
	je	.label_33
	mov	rsp, rsp
	mov	edi, ebx
	mov	rbp, rbp
	call	inotify_rm_watch
.label_33:
	lea	rdi, [rdi]
	add	rbp, 0x60
	dec	r15
	nop	
	jne	.label_29
	nop	
	jmp	.label_25
.label_40:
	mov	eax, 1
	mov	rbp, rbp
	jmp	.label_24
.label_30:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	nop	
	mov	edi, 1
	nop	
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
.label_27:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rbp, rbp
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	error
.label_26:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
.label_20:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_38:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str_1
	nop	
	jmp	.label_20
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402760

	.globl parse_obsolete_option
	.type parse_obsolete_option, @function
parse_obsolete_option:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdx
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	cmp	edi, 2
	lea	rdi, [rdi]
	je	.label_48
	lea	rsi, [rsi]
	cmp	edi, 3
	jne	.label_45
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	mov	rbp, rbp
	jne	.label_48
	cmp	byte ptr [rax + 1], 0
	lea	rdi, [rdi]
	jne	.label_53
	mov	rsp, rsp
	jmp	.label_48
.label_45:
	lea	rdi, [rdi]
	add	edi, -3
	cmp	edi, 1
	mov	rbp, rbp
	ja	.label_55
.label_53:
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	movzx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_42
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2d
	jne	.label_52
	cmp	byte ptr [rax + 2], 0
	je	.label_48
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_43
.label_48:
	lea	rdi, [rdi]
	call	posix2_version
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	lea	rdi, [rcx + 1]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	lea	rdi, [rdi]
	je	.label_58
	mov	rbp, rbp
	cmp	edx, 0x2b
	jne	.label_51
	lea	rdi, [rdi]
	add	eax, 0xfffcf250
	mov	rsp, rsp
	mov	bpl, 1
	cmp	eax, 0x2b8
	mov	rbp, rbp
	ja	.label_46
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_43
.label_58:
	cmp	eax, 0x30db0
	jge	.label_60
	lea	rdi, [rdi]
	xor	ebp, ebp
	jmp	.label_46
.label_51:
	nop	
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_43
.label_55:
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_43
.label_42:
	xor	ebp, ebp
	jmp	.label_43
.label_60:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x63
	sete	al
	nop	
	movzx	eax, al
	xor	ebp, ebp
	mov	rsp, rsp
	cmp	byte ptr [rdi + rax], 0
	mov	rsp, rsp
	je	.label_43
.label_46:
	mov	rsp, rsp
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_49:
	nop	
	movsx	esi, byte ptr [rcx + rax + 1]
	lea	rdi, [rdi]
	lea	edx, [rsi - 0x30]
	mov	rbp, rbp
	inc	rax
	mov	rsp, rsp
	cmp	edx, 0xa
	lea	rsi, [rsi]
	jb	.label_49
	mov	r15b, 1
	nop	
	mov	r8d, 0xa
	cmp	esi, 0x6c
	je	.label_54
	cmp	esi, 0x63
	nop	
	je	.label_59
	cmp	esi, 0x62
	mov	rbp, rbp
	jne	.label_44
	mov	rsp, rsp
	mov	r8d, 0x1400
.label_59:
	xor	r15d, r15d
.label_54:
	lea	rcx, [rcx + rax + 1]
	jmp	.label_47
.label_52:
	xor	ebp, ebp
	nop	
	jmp	.label_43
.label_44:
	add	rcx, rax
.label_47:
	nop	
	movzx	esi, byte ptr [rcx]
	nop	
	lea	rdx, [rcx + 1]
	cmp	esi, 0x66
	sete	r12b
	mov	rbp, rbp
	cmovne	rdx, rcx
	cmp	byte ptr [rdx], 0
	je	.label_56
	mov	rsp, rsp
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_43
.label_56:
	cmp	rax, 1
	je	.label_50
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.42
	mov	rsp, rsp
	mov	rcx, r14
	call	xstrtoumax
	test	eax, 0xfffffffd
	nop	
	je	.label_57
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.44
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rbx + 8]
	call	quote
	mov	rbx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	error
.label_50:
	lea	rdi, [rdi]
	mov	qword ptr [r14], r8
.label_57:
	mov	byte ptr [byte ptr [rip + from_start]],  bpl
	mov	byte ptr [byte ptr [rip + count_lines]],  r15b
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + forever]],  r12b
	lea	rdi, [rdi]
	mov	bpl, 1
.label_43:
	nop	
	mov	al, bpl
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4029d0

	.globl parse_options
	.type parse_options, @function
parse_options:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	nop	
	mov	ebp, edi
	mov	rsp, rsp
	jmp	.label_61
.label_82:
	mov	byte ptr [byte ptr [rip + forever]],  1
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + follow_mode]],  1
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	nop	dword ptr [rax]
.label_61:
	mov	edx, OFFSET FLAT:.str.45
	mov	ecx, OFFSET FLAT:long_options
	mov	rbp, rbp
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	mov	rsp, rsp
	mov	r13d, eax
	cmp	r13d, 0x62
	nop	
	jle	.label_76
	lea	rsi, [rsi]
	lea	eax, [r13 - 0x6e]
	cmp	eax, 0x17
	mov	rsp, rsp
	ja	.label_77
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_78]]
.label_977:
	mov	dword ptr [r15], 2
	jmp	.label_61
	nop	dword ptr [rax]
.label_76:
	nop	
	cmp	r13d, 0x2f
	lea	rdi, [rdi]
	jle	.label_81
	cmp	r13d, 0x46
	je	.label_82
	lea	rsi, [rsi]
	jmp	.label_64
.label_77:
	mov	rsp, rsp
	cmp	r13d, 0x63
	je	.label_66
	mov	rsp, rsp
	cmp	r13d, 0x66
	lea	rsi, [rsi]
	jne	.label_67
.label_985:
	mov	byte ptr [byte ptr [rip + forever]],  1
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_72
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.49
	mov	edx, OFFSET FLAT:follow_mode_string
	nop	
	mov	ecx, OFFSET FLAT:follow_mode_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + follow_mode_map]]
	mov	dword ptr [dword ptr [rip + follow_mode]],  eax
	jmp	.label_61
.label_66:
	cmp	r13d, 0x6e
	sete	byte ptr [byte ptr [rip + count_lines]]
	lea	rsi, [rsi]
	sete	al
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	je	.label_84
	movzx	ecx, dl
	mov	rsp, rsp
	cmp	ecx, 0x2b
	nop	
	jne	.label_70
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + from_start]],  1
	jmp	.label_75
.label_978:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtod
	mov	rbp, rbp
	lea	rdx, [rsp + 0x20]
	call	xstrtod
	test	al, al
	je	.label_79
	movsd	xmm0, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	ucomisd	xmm0,  qword ptr [word ptr [label_80]]
	mov	rbp, rbp
	jb	.label_79
	movsd	qword ptr [r14], xmm0
	jmp	.label_61
.label_981:
	nop	
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	jmp	.label_61
.label_983:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.51
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + pid]],  eax
	nop	
	jmp	.label_61
.label_984:
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	lea	rsi, [rsi]
	jmp	.label_61
.label_986:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	mov	rsp, rsp
	jmp	.label_61
.label_979:
	mov	dword ptr [r15], 1
	jmp	.label_61
.label_980:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + line_end]],  0
	lea	rdi, [rdi]
	jmp	.label_61
.label_982:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	nop	
	mov	rdx, -1
	nop	
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	r8, rax
	call	xdectoumax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]],  rax
	nop	
	jmp	.label_61
.label_72:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + follow_mode]],  2
	lea	rsi, [rsi]
	jmp	.label_61
.label_84:
	inc	rcx
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + optarg]],  rcx
.label_75:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + count_lines]]
.label_70:
	lea	rdi, [rdi]
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_68
	mov	esi, OFFSET FLAT:.str.47
	jmp	.label_73
.label_68:
	mov	esi, OFFSET FLAT:.str.48
.label_73:
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.46
	xor	r9d, r9d
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [r12], rax
	jmp	.label_61
.label_81:
	lea	rdi, [rdi]
	cmp	r13d, -1
	jne	.label_83
	movzx	eax,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_63
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + forever]],  0
	nop	
	je	.label_69
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_63
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	lea	rdi, [rdi]
	jmp	.label_74
.label_69:
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  0
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
.label_74:
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
.label_63:
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	mov	rsp, rsp
	test	edi, edi
	lea	rdi, [rdi]
	je	.label_62
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + forever]]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	jne	.label_62
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	jmp	.label_71
.label_62:
	mov	rsp, rsp
	test	edi, edi
	je	.label_71
	nop	
	xor	esi, esi
	call	kill
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	je	.label_71
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_71
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.61
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + pid]],  0
.label_71:
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_64:
	lea	eax, [r13 - 0x30]
	cmp	eax, 0xa
	mov	rsp, rsp
	jae	.label_67
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	mov	ecx, r13d
	call	error
.label_83:
	cmp	r13d, 0xffffff7d
	je	.label_65
	mov	rbp, rbp
	cmp	r13d, 0xffffff7e
	mov	rbp, rbp
	jne	.label_67
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_65:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x10], 0
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.56
	nop	
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.55
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.13
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.53
	mov	r9d, OFFSET FLAT:.str.54
	xor	eax, eax
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	call	exit
.label_67:
	mov	rsp, rsp
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_79:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	nop	
	call	quote
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f60

	.globl tail_file
	.type tail_file, @function
tail_file:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0xa0
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2d
	jne	.label_96
	cmp	byte ptr [rax + 1], 0
	lea	rsi, [rsi]
	je	.label_89
.label_96:
	nop	
	mov	rdi, qword ptr [rbx]
	xor	r12d, r12d
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	call	open_safer
	mov	r15d, eax
	jmp	.label_93
.label_89:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	r12b, 1
.label_93:
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	cmp	r15d, -1
	sete	cl
	lea	rsi, [rsi]
	and	cl, al
	lea	rdi, [rdi]
	xor	cl, 1
	mov	rbp, rbp
	cmp	r15d, -1
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0x36], cl
	lea	rdi, [rdi]
	je	.label_95
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_99
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	pretty_name
	mov	rdi, rax
	call	write_header
.label_99:
	mov	rdi, rbx
	call	pretty_name
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0x98]
	mov	rdi, rax
	mov	esi, r15d
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	tail
	mov	r14b, al
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_92
	mov	al, r14b
	lea	rsi, [rsi]
	not	al
	movzx	eax, al
	lea	rdi, [rdi]
	shl	eax, 0x1f
	mov	rbp, rbp
	sar	eax, 0x1f
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x3c], eax
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	mov	edi, r15d
	mov	rsp, rsp
	call	__fstat
	test	eax, eax
	js	.label_98
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x7fff
	lea	rsi, [rsi]
	jg	.label_91
	mov	rbp, rbp
	cmp	eax, 0x1000
	je	.label_86
	cmp	eax, 0x2000
	je	.label_86
	lea	rdi, [rdi]
	jmp	.label_88
.label_95:
	cmp	byte ptr [byte ptr [rip + forever]],  0
	mov	rbp, rbp
	je	.label_94
	mov	dword ptr [rbx + 0x38], 0xffffffff
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], eax
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	nop	
	and	al, 1
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	nop	
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x20], xmm0
.label_94:
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	rbp, rbp
	jmp	.label_85
.label_92:
	test	r12b, r12b
	jne	.label_87
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_87
	nop	
	call	__errno_location
	mov	r15d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	r14d, r14d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
.label_85:
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	pretty_name
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, rax
	nop	
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r15d
	nop	
	mov	rdx, rbp
	call	error
	jmp	.label_87
.label_98:
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x3c], ecx
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	pretty_name
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	nop	
	mov	esi, r14d
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	jmp	.label_90
.label_91:
	nop	
	cmp	eax, 0x8000
	mov	rbp, rbp
	je	.label_86
	cmp	eax, 0xc000
	mov	rbp, rbp
	jne	.label_88
.label_86:
	test	r14b, r14b
	nop	
	je	.label_90
	nop	
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	test	r12b, r12b
	mov	eax, 0xffffffff
	mov	r8d, 1
	cmovne	r8d, eax
	lea	rcx, [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	esi, r15d
	mov	rbp, rbp
	call	record_open_fd
	mov	rdi, rbx
	nop	
	call	pretty_name
	nop	
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, rax
	nop	
	call	fremote
	mov	rsp, rsp
	mov	byte ptr [rbx + 0x35], al
	lea	rdi, [rdi]
	jmp	.label_87
.label_88:
	mov	dword ptr [rbx + 0x3c], 0xffffffff
	mov	byte ptr [rbx + 0x36], 0
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	lea	rsi, [rsi]
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	pretty_name
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, rax
	nop	
	call	quotearg_n_style_colon
	mov	rbp, rax
	mov	r8d, OFFSET FLAT:.str_0
	nop	
	cmp	byte ptr [rbx + 0x34], 0
	je	.label_97
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r8, rax
.label_97:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
.label_90:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	xor	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x34], al
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	pretty_name
	mov	rsp, rsp
	mov	edi, r15d
	lea	rdi, [rdi]
	mov	rsi, rax
	call	close_fd
	mov	rsp, rsp
	mov	dword ptr [rbx + 0x38], 0xffffffff
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_87:
	lea	rsi, [rsi]
	mov	al, r14b
	mov	rsp, rsp
	add	rsp, 0xa0
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403380

	.globl ignore_fifo_and_pipe
	.type ignore_fifo_and_pipe, @function
ignore_fifo_and_pipe:
	xor	eax, eax
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_100
	mov	rsp, rsp
	add	rdi, 0x38
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8d, 0xf000
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi - 0x38]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx]
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_101
	cmp	byte ptr [rdx + 1], 0
	lea	rsi, [rsi]
	jne	.label_101
	cmp	byte ptr [rdi - 4], 0
	mov	rsp, rsp
	jne	.label_101
	cmp	dword ptr [rdi], 0
	mov	rbp, rbp
	js	.label_101
	mov	ecx, dword ptr [rdi - 8]
	and	ecx, r8d
	lea	rsi, [rsi]
	cmp	ecx, 0x1000
	lea	rdi, [rdi]
	jne	.label_101
	mov	rbp, rbp
	mov	dword ptr [rdi], 0xffffffff
	nop	
	mov	byte ptr [rdi - 4], 1
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_101:
	inc	rax
.label_103:
	mov	rbp, rbp
	add	rdi, 0x60
	dec	rsi
	mov	rbp, rbp
	jne	.label_102
.label_100:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403430

	.globl tailable_stdin
	.type tailable_stdin, @function
tailable_stdin:
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	test	rsi, rsi
	mov	rsp, rsp
	mov	eax, 0
	je	.label_104
	nop	word ptr cs:[rax + rax]
.label_106:
	cmp	byte ptr [rdi + 0x34], 0
	jne	.label_105
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	movzx	eax, byte ptr [rdx]
	mov	rbp, rbp
	cmp	eax, 0x2d
	jne	.label_105
	mov	rsp, rsp
	mov	al, 1
	cmp	byte ptr [rdx + 1], 0
	nop	
	je	.label_104
	nop	word ptr cs:[rax + rax]
.label_105:
	lea	rsi, [rsi]
	inc	rcx
	lea	rsi, [rsi]
	add	rdi, 0x60
	cmp	rcx, rsi
	lea	rsi, [rsi]
	jb	.label_106
	nop	
	xor	eax, eax
.label_104:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4034a0

	.globl any_remote_file
	.type any_remote_file, @function
any_remote_file:
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_107
	add	rdi, 0x38
	mov	rbp, rbp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_109:
	mov	rsp, rsp
	cmp	dword ptr [rdi], 0
	js	.label_108
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rdi - 3], 0
	lea	rsi, [rsi]
	jne	.label_110
.label_108:
	nop	
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	lea	rdi, [rdi]
	jb	.label_109
.label_107:
	xor	eax, eax
.label_110:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl any_non_remote_file
	.type any_non_remote_file, @function
any_non_remote_file:
	test	rsi, rsi
	je	.label_111
	add	rdi, 0x38
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_112:
	lea	rsi, [rsi]
	cmp	dword ptr [rdi], 0
	js	.label_114
	nop	
	mov	al, 1
	nop	
	cmp	byte ptr [rdi - 3], 0
	je	.label_113
.label_114:
	inc	rcx
	mov	rbp, rbp
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_112
.label_111:
	xor	eax, eax
.label_113:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403530

	.globl any_symlinks
	.type any_symlinks, @function
any_symlinks:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x90
	mov	rsp, rsp
	mov	r14, rsi
	mov	r12, rdi
	nop	
	xor	ebx, ebx
	test	r14, r14
	mov	eax, 0
	lea	rsi, [rsi]
	je	.label_115
	lea	rdi, [rdi]
	lea	r15, [rsp]
	mov	ebp, 0xf000
	nop	dword ptr [rax + rax]
.label_116:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12]
	mov	rsi, r15
	call	__lstat
	mov	rbp, rbp
	test	eax, eax
	jne	.label_117
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x18]
	and	ecx, ebp
	mov	rsp, rsp
	mov	al, 1
	cmp	ecx, 0xa000
	je	.label_115
.label_117:
	mov	rbp, rbp
	inc	rbx
	add	r12, 0x60
	lea	rdi, [rdi]
	cmp	rbx, r14
	jb	.label_116
	mov	rsp, rsp
	xor	eax, eax
.label_115:
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	nop	
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035d0

	.globl any_non_regular_fifo
	.type any_non_regular_fifo, @function
any_non_regular_fifo:
	test	rsi, rsi
	lea	rdi, [rdi]
	je	.label_118
	add	rdi, 0x38
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r8d, 0xf000
	nop	word ptr [rax + rax]
.label_121:
	mov	rbp, rbp
	cmp	dword ptr [rdi], 0
	js	.label_119
	mov	edx, dword ptr [rdi - 8]
	lea	rsi, [rsi]
	and	edx, r8d
	cmp	edx, 0x8000
	je	.label_119
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	cmp	edx, 0x1000
	jne	.label_120
.label_119:
	mov	rbp, rbp
	inc	rcx
	add	rdi, 0x60
	nop	
	cmp	rcx, rsi
	jb	.label_121
.label_118:
	xor	eax, eax
.label_120:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403630

	.globl tail_forever_inotify
	.type tail_forever_inotify, @function
tail_forever_inotify:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x148
	nop	
	movsd	qword ptr [rsp + 0x68], xmm0
	mov	rax, rdx
	mov	qword ptr [rsp + 0x78], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x9c], edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:wd_hasher
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:wd_comparator
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rdi, rax
	mov	rbx, rax
	call	hash_initialize
	lea	rsi, [rsi]
	mov	r12, rax
	test	r12, r12
	je	.label_139
	nop	
	mov	dword ptr [rsp + 0x98], 0xc06
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_141
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x98], 2
.label_141:
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rcx, rbx
	mov	qword ptr [rsp + 0x90], rcx
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_135
	mov	rbp, qword ptr [rsp + 0x78]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], rax
	mov	rsp, rsp
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_145:
	nop	
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_160
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp]
	call	strlen
	lea	rdi, [rdi]
	cmp	r13, rax
	nop	
	cmovb	r13, rax
	mov	dword ptr [rbp + 0x44], 0xffffffff
	nop	
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	lea	rdi, [rdi]
	jne	.label_164
	mov	qword ptr [rsp + 0x88], r13
	mov	r13, r12
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	dir_len
	mov	r15, rax
	mov	r12b, byte ptr [rbx + r15]
	mov	rdi, rbx
	call	last_component
	sub	rax, rbx
	mov	qword ptr [rbp + 0x50], rax
	mov	rax, qword ptr [rbp]
	mov	byte ptr [rax + r15], 0
	mov	rbp, rbp
	test	r15, r15
	mov	esi, OFFSET FLAT:.str.96
	mov	rbp, rbp
	je	.label_173
	mov	rsi, qword ptr [rbp]
.label_173:
	mov	rsp, rsp
	mov	edx, 0x784
	nop	
	mov	edi, dword ptr [rsp + 0x9c]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x48], eax
	mov	rax, qword ptr [rbp]
	nop	
	mov	byte ptr [rax + r15], r12b
	lea	rdi, [rdi]
	cmp	dword ptr [rbp + 0x48], 0
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	js	.label_179
.label_164:
	nop	
	mov	rsi, qword ptr [rbp]
	mov	edi, dword ptr [rsp + 0x9c]
	mov	edx, dword ptr [rsp + 0x98]
	call	inotify_add_watch
	mov	rsp, rsp
	mov	dword ptr [rbp + 0x44], eax
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_167
	mov	rdi, r12
	mov	rsi, rbp
	call	hash_insert
	mov	cl, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x80], rcx
	lea	rsi, [rsi]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x90]
	jne	.label_160
	jmp	.label_127
.label_167:
	cmp	dword ptr [rbp + 0x38], -1
	je	.label_128
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rax
.label_128:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	eax, ebx
	or	eax, 0x10
	mov	rbp, rbp
	cmp	eax, 0x1c
	je	.label_132
	cmp	ebx, dword ptr [rbp + 0x3c]
	je	.label_133
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.99
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	nop	
	mov	rsi, qword ptr [rbp]
	lea	rdi, [rdi]
	mov	edi, 4
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	nop	
	mov	rdx, r15
	mov	rbp, rbp
	call	error
.label_133:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x90]
	nop	
.label_160:
	inc	r14
	add	rbp, 0x60
	cmp	r14, rcx
	mov	rsp, rsp
	jb	.label_145
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [rip + follow_mode]]
	mov	rdx, qword ptr [rsp + 0x70]
	test	dl, 1
	je	.label_149
	mov	rbp, rbp
	cmp	eax, 2
	mov	rdx, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	je	.label_151
	mov	rsp, rsp
	jmp	.label_155
.label_135:
	mov	eax,  dword ptr [dword ptr [rip + follow_mode]]
	xor	r13d, r13d
	xor	edx, edx
	lea	rsi, [rsi]
	jmp	.label_155
.label_149:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x80]
.label_155:
	test	dl, 1
	jne	.label_158
	nop	
	cmp	eax, 2
	jne	.label_158
	xor	ebx, ebx
	jmp	.label_153
.label_158:
	nop	
	lea	rax, [rcx + rcx*2]
	mov	rsp, rsp
	shl	rax, 5
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	lea	rax, [rax + rdx - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x140], rax
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_162
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	r15, [rsp + 0x140]
	mov	rbp, qword ptr [rsp + 0x78]
	nop	word ptr cs:[rax + rax]
.label_122:
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 0x34], 0
	mov	rbp, rbp
	jne	.label_172
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	lea	rsi, [rsi]
	jne	.label_174
	mov	r14, rcx
	xor	esi, esi
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	recheck
	mov	rsp, rsp
	jmp	.label_178
.label_174:
	mov	r14, rcx
	cmp	dword ptr [rbp + 0x38], -1
	mov	rsp, rsp
	je	.label_178
	mov	rdi, qword ptr [rbp]
	mov	rbp, rbp
	lea	rsi, [rsp + 0xb0]
	mov	rsp, rsp
	call	stat
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_178
	mov	rax, qword ptr [rbp + 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_157
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x28]
	cmp	rax, qword ptr [rsp + 0xb8]
	jne	.label_157
	nop	dword ptr [rax + rax]
.label_178:
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rsp, rsp
	call	check_fspec
	lea	rdi, [rdi]
	mov	rcx, r14
.label_172:
	mov	rbp, rbp
	inc	rbx
	add	rbp, 0x60
	cmp	rbx, rcx
	mov	rbp, rbp
	jb	.label_122
.label_162:
	mov	rbp, rcx
	mov	rsp, rsp
	add	r13, 0x11
	mov	rbp, rbp
	mov	rdi, r13
	call	xmalloc
	mov	r15, rax
	mov	edx, dword ptr [rsp + 0x9c]
	lea	rdi, [rdi]
	mov	eax, edx
	sar	eax, 0x1f
	shr	eax, 0x1a
	add	eax, edx
	lea	rdi, [rdi]
	and	eax, 0xc0
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, 1
	shl	rax, cl
	mov	qword ptr [rsp + 0x58], rax
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	test	edx, edx
	nop	
	mov	eax, 1
	cmovg	eax, edx
	mov	rsp, rsp
	inc	eax
	mov	dword ptr [rsp + 0x4c], eax
	mov	rbp, rbp
	movsd	xmm1, qword ptr [rsp + 0x68]
	cvttsd2si	rax, xmm1
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	cvtsi2sd	xmm0, rax
	subsd	xmm1, xmm0
	lea	rdi, [rdi]
	mulsd	xmm1,  qword ptr [word ptr [rip + label_130]]
	cvttsd2si	rax, xmm1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x78]
	lea	rcx, [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rsi]
	lea	rax, [rax + 0x50]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	ebx, 3
	mov	dword ptr [rsp + 0x68], 0
	jmp	.label_131
.label_179:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x1c
	jne	.label_180
.label_132:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.98
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_151
.label_180:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.97
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
.label_151:
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	hash_free
	jmp	.label_175
.label_157:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	pretty_name
	mov	rsp, rsp
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, r14d
	mov	rdx, r15
	call	error
.label_161:
	mov	rsp, rsp
	mov	rdi, r12
	call	hash_free
	mov	dword ptr [rbx], 0
	jmp	.label_185
.label_140:
	mov	rsp, rsp
	add	r13, r13
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r13
	call	xrealloc
	mov	r15, rax
	nop	word ptr [rax + rax]
.label_131:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r15
	mov	qword ptr [rsp + 0x88], r13
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x70], rax
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x80], rax
	lea	rdi, [rdi]
	mov	eax, ebx
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_125
.label_126:
	xor	esi, esi
	mov	rsp, rsp
	mov	rdi, r14
	call	recheck
	nop	
.label_125:
	lea	rdi, [rdi]
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	lea	rsi, [rsi]
	jne	.label_136
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	mov	rsp, rsp
	and	al, 1
	jne	.label_136
	mov	rdi, r12
	call	hash_get_n_entries
	nop	
	test	rax, rax
	mov	rbp, rbp
	je	.label_137
.label_136:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x70]
	mov	rbp, rbp
	cmp	rbx, qword ptr [rsp + 0x80]
	lea	rsi, [rsi]
	lea	r14, [rsp + 0xb0]
	lea	rdi, [rdi]
	ja	.label_124
.label_182:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	test	edi, edi
	lea	rsi, [rsi]
	je	.label_147
	mov	eax, dword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_150
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x68], 0
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	call	kill
	test	eax, eax
	mov	rbp, rbp
	je	.label_154
	nop	
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 1
	mov	rsp, rsp
	setne	al
	mov	dword ptr [rsp + 0x68], eax
	je	.label_154
	mov	rsp, rsp
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	jmp	.label_147
	nop	dword ptr [rax]
.label_154:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa0], rax
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
.label_147:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	rdi, r14
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	__fdelt_chk
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x58]
	nop	
	or	qword ptr [rsp + rax*8 + 0xb0], rcx
	mov	rbp, rbp
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	je	.label_170
	mov	rsp, rsp
	mov	edi, 1
	call	__fdelt_chk
	mov	rbp, rbp
	or	byte ptr [rsp + rax*8 + 0xb0], 2
.label_170:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + pid]],  0
	mov	rbp, rbp
	lea	r8, [rsp + 0xa0]
	lea	rsi, [rsi]
	jne	.label_177
	mov	rbp, rbp
	xor	r8d, r8d
.label_177:
	xor	edx, edx
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x4c]
	nop	
	mov	rsi, r14
	call	select
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_181
	mov	rsp, rsp
	cmp	rbx, qword ptr [rsp + 0x80]
	jbe	.label_182
	mov	rbp, rbp
	jmp	.label_124
	nop	dword ptr [rax + rax]
.label_181:
	lea	rdi, [rdi]
	cmp	eax, -1
	je	.label_184
	mov	edi, 1
	mov	rbp, rbp
	call	__fdelt_chk
	lea	rdi, [rdi]
	test	byte ptr [rsp + rax*8 + 0xb0], 2
	mov	rbp, rbp
	jne	.label_187
	cmp	rbx, qword ptr [rsp + 0x80]
	ja	.label_124
	mov	edi, dword ptr [rsp + 0x9c]
	mov	rsi, r15
	mov	rdx, r13
	call	safe_read
	nop	
	mov	rbx, rax
	test	rbx, rbx
	je	.label_168
	lea	rdi, [rdi]
	cmp	rbx, -1
	lea	rdi, [rdi]
	jne	.label_129
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_134
.label_168:
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	lea	ebx, [rax - 1]
	test	eax, eax
	jne	.label_140
	mov	eax, ebx
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	mov	rbx, rcx
.label_129:
	mov	rax, rbx
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, 1
	mov	eax, 0
	nop	
	mov	qword ptr [rsp + 0x80], rax
	nop	
	jbe	.label_134
.label_124:
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rdi, [r15 + rcx]
	mov	eax, dword ptr [r15 + rcx + 0xc]
	test	byte ptr [r15 + rcx + 5], 4
	je	.label_144
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_144
	test	rbp, rbp
	je	.label_144
	mov	ecx, dword ptr [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
	xor	esi, esi
	nop	dword ptr [rax]
.label_163:
	cmp	ecx, dword ptr [rdx]
	je	.label_152
	inc	rsi
	add	rdx, 0x60
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jb	.label_163
.label_144:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], rbx
	nop	
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rcx, [rcx + rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x80], rcx
	mov	rsp, rsp
	cmp	dword ptr [rdi + 0xc], 0
	mov	rsp, rsp
	je	.label_156
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x60], rdi
	nop	
	test	rbp, rbp
	nop	
	mov	ebx, 0
	lea	rsi, [rsi]
	je	.label_165
	nop	
	mov	rax, qword ptr [rsp + 0x60]
	lea	r14, [rax + 0x10]
	mov	r13d, dword ptr [rax]
	mov	r15, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_176:
	lea	rdi, [rdi]
	cmp	dword ptr [r15 - 8], r13d
	nop	
	jne	.label_169
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 - 0x50]
	add	rsi, qword ptr [r15]
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_165
.label_169:
	lea	rsi, [rsi]
	inc	rbx
	lea	rsi, [rsi]
	add	r15, 0x60
	nop	
	cmp	rbx, rbp
	mov	rsp, rsp
	jb	.label_176
.label_165:
	cmp	rbx, rbp
	mov	r13, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x40]
	je	.label_125
	lea	r15, [rbx + rbx*2]
	shl	r15, 5
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	lea	r14, [rax + r15]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	ebx, dword ptr [rax + 4]
	nop	
	mov	eax, 0x200
	and	ebx, eax
	jne	.label_142
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14]
	mov	edi, dword ptr [rsp + 0x9c]
	mov	edx, dword ptr [rsp + 0x98]
	call	inotify_add_watch
	mov	ecx, eax
	mov	rbp, rbp
	test	ebx, ebx
	mov	rsp, rsp
	sete	al
	nop	
	test	ecx, ecx
	lea	rdi, [rdi]
	jns	.label_123
	mov	rsp, rsp
	test	al, al
	je	.label_123
	mov	rbp, rbp
	mov	ebx, ecx
	mov	rbp, rbp
	call	__errno_location
	mov	edx, dword ptr [rax]
	mov	ecx, edx
	mov	rbp, rbp
	or	ecx, 0x10
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	cmp	ecx, 0x1c
	je	.label_148
	mov	dword ptr [rsp + 0x10], edx
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.99
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	rsi, qword ptr [r14]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	error
	mov	ecx, ebx
.label_123:
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + r15 + 0x44]
	lea	rsi, [rsi]
	test	esi, esi
	js	.label_138
	lea	rdi, [rdi]
	cmp	ecx, esi
	je	.label_142
.label_138:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x78]
	lea	rbx, [rax + r15 + 0x44]
	test	esi, esi
	lea	rdi, [rdi]
	js	.label_143
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x9c]
	lea	rsi, [rsi]
	mov	r15d, ecx
	nop	
	call	inotify_rm_watch
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r14
	lea	rsi, [rsi]
	call	hash_delete
	mov	ecx, r15d
.label_143:
	mov	dword ptr [rbx], ecx
	cmp	ecx, -1
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x40]
	je	.label_125
	mov	rbp, rbp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	call	hash_delete
	mov	rsp, rsp
	mov	rbx, rax
	test	rbx, rbx
	je	.label_159
	nop	
	cmp	rbx, r14
	je	.label_159
	nop	
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	lea	rsi, [rsi]
	jne	.label_186
	nop	
	xor	esi, esi
	mov	rdi, rbx
	call	recheck
.label_186:
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x44], 0xffffffff
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rbx + 0x38]
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	pretty_name
	mov	edi, r15d
	nop	
	mov	rsi, rax
	call	close_fd
.label_159:
	mov	rdi, r12
	mov	rsi, r14
	nop	
	call	hash_insert
	test	rax, rax
	mov	rsp, rsp
	je	.label_171
	nop	dword ptr [rax]
.label_142:
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jne	.label_146
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	call	recheck
	jmp	.label_146
	nop	dword ptr [rax + rax]
.label_156:
	mov	eax, dword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], rdi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xf4], eax
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	mov	rsi, r14
	call	hash_lookup
	mov	rbp, rbp
	mov	r14, rax
.label_146:
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_125
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	nop	
	mov	eax, dword ptr [rax + 4]
	test	ax, 0xe04
	lea	rsi, [rsi]
	je	.label_183
	mov	rsp, rsp
	test	ah, 4
	je	.label_126
	nop	
	mov	esi, dword ptr [r14 + 0x44]
	mov	edi, dword ptr [rsp + 0x9c]
	call	inotify_rm_watch
	mov	rdi, r12
	mov	rsi, r14
	mov	rsp, rsp
	call	hash_delete
	jmp	.label_126
.label_183:
	mov	rdi, r14
	mov	rsp, rsp
	lea	rsi, [rsp + 0x140]
	call	check_fspec
	jmp	.label_125
.label_152:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	hash_free
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.104
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	error
.label_175:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_185:
	mov	bl, 1
.label_153:
	mov	al, bl
	add	rsp, 0x148
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_137:
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.101
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	jmp	.label_153
.label_148:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.98
	nop	
	mov	edx, 5
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
	mov	rsp, rsp
	jmp	.label_161
.label_127:
	call	xalloc_die
.label_184:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.102
	lea	rsi, [rsi]
	jmp	.label_166
.label_139:
	call	xalloc_die
.label_150:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_187:
	nop	
	call	die_pipe
.label_134:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.103
.label_166:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_171:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404390

	.globl tail_forever
	.type tail_forever, @function
tail_forever:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0xd8
	lea	rdi, [rdi]
	movsd	qword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbp, rbp
	xor	eax, eax
	nop	
	cmp	r14, 1
	jne	.label_189
	mov	ecx,  dword ptr [dword ptr [rip + pid]]
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_189
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	lea	rdi, [rdi]
	jne	.label_189
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_212
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	setne	al
	jmp	.label_189
.label_212:
	lea	rsi, [rsi]
	xor	eax, eax
.label_189:
	lea	rcx, [r14 - 1]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x44], eax
	test	al, al
	sete	al
	lea	rsi, [rsi]
	movzx	eax, al
	shl	eax, 0xb
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], eax
	mov	rbp, rbp
	xor	ebp, ebp
.label_209:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], ebp
	nop	dword ptr [rax]
.label_205:
	mov	rsp, rsp
	xor	r15d, r15d
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbx
	lea	rdi, [rdi]
	mov	r12d, 0
	jne	.label_193
	mov	rbp, rbp
	jmp	.label_199
.label_200:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]]
	mov	rcx, qword ptr [rbp + 0x58]
	lea	rdx, [rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x58], rdx
	cmp	rax, rcx
	mov	r12, qword ptr [rsp + 0x30]
	ja	.label_190
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_190
	lea	rdi, [rdi]
	cmp	dword ptr [rbp + 0x40], 0
	mov	rbp, rbp
	setne	al
	movzx	esi, al
	mov	rdi, rbp
	call	recheck
	mov	rsp, rsp
	mov	qword ptr [rbp + 0x58], 0
	nop	
	jmp	.label_190
	nop	word ptr cs:[rax + rax]
.label_193:
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 0x34], 0
	mov	rsp, rsp
	jne	.label_190
	nop	
	mov	r13d, dword ptr [rbp + 0x38]
	mov	rdi, rbp
	nop	
	test	r13d, r13d
	js	.label_211
	call	pretty_name
	mov	rbp, rbp
	mov	ebx, dword ptr [rbp + 0x30]
	mov	ecx, dword ptr [rbp + 0x40]
	mov	rsp, rsp
	cmp	ecx, dword ptr [rsp + 0x44]
	je	.label_213
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	mov	esi, 3
	xor	eax, eax
	mov	edi, r13d
	call	rpl_fcntl
	test	eax, eax
	mov	rbp, rbp
	js	.label_191
	mov	edx, eax
	mov	rbp, rbp
	or	edx, dword ptr [rsp + 0x2c]
	cmp	edx, eax
	je	.label_192
	mov	esi, 4
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r13d
	lea	rsi, [rsi]
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_191
.label_192:
	mov	eax, dword ptr [rsp + 0x44]
	lea	rdi, [rdi]
	mov	dword ptr [rbp + 0x40], eax
	mov	ecx, eax
	jmp	.label_197
.label_211:
	mov	esi, dword ptr [rsp + 0x44]
	mov	rsp, rsp
	call	recheck
	mov	rbp, rbp
	jmp	.label_190
.label_191:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp + 0x30]
	nop	
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	mov	rbp, rbp
	jne	.label_202
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 1
	lea	rsi, [rsi]
	jne	.label_202
	mov	ecx, dword ptr [rbp + 0x40]
.label_197:
	nop	
	mov	rax, qword ptr [rsp + 0x38]
.label_213:
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_201
	mov	qword ptr [rsp + 0x30], r12
	mov	r12, r14
	nop	
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [rdi]
	mov	edi, r13d
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x48]
	lea	rdi, [rdi]
	call	__fstat
	test	eax, eax
	je	.label_210
	mov	dword ptr [rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp + 0x3c], ecx
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x38]
	call	quotearg_n_style_colon
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, r14d
	call	error
	mov	edi, r13d
	lea	rsi, [rsi]
	call	close
	mov	r14, r12
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_190
.label_210:
	mov	eax, dword ptr [rsp + 0x60]
	nop	
	cmp	dword ptr [rbp + 0x30], eax
	mov	r14, r12
	mov	rbp, rbp
	jne	.label_195
	mov	rbp, rbp
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x8000
	jne	.label_196
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rsp + 0x78]
	jne	.label_195
.label_196:
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime
	lea	rdi, [rdi]
	mov	rcx, rdx
	mov	rdi, qword ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x18]
	lea	rdi, [rdi]
	mov	rdx, rax
	call	timespec_cmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_200
.label_195:
	nop	
	lea	rdi, [rsp + 0x48]
	nop	
	call	get_stat_mtime
	mov	qword ptr [rbp + 0x10], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x18], rdx
	mov	eax, dword ptr [rsp + 0x60]
	nop	
	mov	dword ptr [rbp + 0x30], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp + 0x58], 0
	mov	eax, ebx
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	r12, qword ptr [rsp + 0x30]
	jne	.label_194
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	cmp	rax, qword ptr [rbp + 8]
	jge	.label_194
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.115
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x10]
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	edi, r13d
	nop	
	mov	rcx, r14
	mov	r14, r12
	mov	r12, qword ptr [rsp + 0x30]
	call	xlseek
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 8], 0
.label_194:
	lea	rsi, [rsi]
	cmp	r15, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	je	.label_201
	movzx	ecx,  byte ptr [byte ptr [rip + print_headers]]
	and	ecx, 1
	cmp	ecx, 1
	nop	
	mov	qword ptr [rsp + 0x18], r15
	jne	.label_201
	mov	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r12
	lea	rdi, [rdi]
	mov	r12, r14
	mov	r14, rax
	lea	rsi, [rsi]
	call	write_header
	mov	rbp, rbp
	mov	rax, r14
	mov	rsp, rsp
	mov	r14, r12
	nop	
	mov	r12, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], r15
.label_201:
	mov	rcx, -2
	lea	rdi, [rdi]
	cmp	dword ptr [rbp + 0x40], 0
	jne	.label_208
	mov	rbp, rbp
	and	ebx, 0xf000
	mov	rcx, -1
	cmp	ebx, 0x8000
	jne	.label_208
	lea	rsi, [rsi]
	cmp	byte ptr [rbp + 0x35], 0
	je	.label_208
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x78]
	sub	rcx, qword ptr [rbp + 8]
.label_208:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	edx, r13d
	lea	rdi, [rdi]
	call	dump_remainder
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	setne	cl
	and	r12b, 1
	or	r12b, cl
	add	qword ptr [rbp + 8], rax
	nop	dword ptr [rax + rax]
.label_190:
	inc	r15
	add	rbp, 0x60
	lea	rdi, [rdi]
	cmp	r15, r14
	jb	.label_193
.label_199:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, rbx
	mov	rsi, r14
	mov	rsp, rsp
	call	any_live_files
	lea	rdi, [rdi]
	test	al, al
	je	.label_198
	and	r12b, 1
	mov	rbp, rbp
	sete	al
	cmp	dword ptr [rsp + 0x44], 0
	nop	
	jne	.label_188
	test	al, al
	je	.label_203
.label_188:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	call	fflush_unlocked
	nop	
	test	eax, eax
	nop	
	jne	.label_204
.label_203:
	call	check_output_alive
	nop	
	test	r12b, r12b
	jne	.label_205
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_206
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	edi, edi
	lea	rdi, [rdi]
	je	.label_207
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_207
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	bpl
	jne	.label_209
.label_207:
	movsd	xmm0, qword ptr [rsp]
	call	xnanosleep
	nop	
	test	eax, eax
	je	.label_209
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.117
	jmp	.label_214
.label_198:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.101
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
.label_206:
	lea	rdi, [rdi]
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_202:
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.116
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	nop	
	call	error
.label_204:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_1
.label_214:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0

	.globl pretty_name
	.type pretty_name, @function
pretty_name:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_215
	cmp	byte ptr [rax + 1], 0
	je	.label_216
.label_215:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	lea	rdi, [rdi]
	ret	
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	mov	rbp, rbp
	jmp	dcgettext
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a30

	.globl write_header
	.type write_header, @function
write_header:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	rcx, rdi
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	eax, OFFSET FLAT:.str.85
	mov	edx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	cmovne	rdx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.84
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
	pop	rax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a80

	.globl tail
	.type tail, @function
tail:
	mov	rsp, rsp
	push	rax
	mov	qword ptr [rcx], 0
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + count_lines]],  0
	je	.label_217
	mov	rbp, rbp
	call	tail_lines
	lea	rsi, [rsi]
	pop	rcx
	mov	rbp, rbp
	ret	
.label_217:
	call	tail_bytes
	mov	rsp, rsp
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ac0

	.globl close_fd
	.type close_fd, @function
close_fd:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	ebx, edi
	lea	rsi, [rsi]
	lea	eax, [rbx + 1]
	lea	rdi, [rdi]
	cmp	eax, 2
	jb	.label_218
	lea	rdi, [rdi]
	mov	edi, ebx
	lea	rdi, [rdi]
	call	close
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_218
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r15d, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.93
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	nop	
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	esi, r15d
	nop	
	mov	rdx, rbp
	nop	
	mov	r8d, ebx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	nop	
	jmp	error
.label_218:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b80

	.globl record_open_fd
	.type record_open_fd, @function
record_open_fd:
	mov	rbp, rbp
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	r14d, r8d
	mov	rbx, rcx
	mov	rbp, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp + 0x38], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 8], rdx
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	get_stat_mtime
	mov	rbp, rbp
	mov	qword ptr [rbp + 0x10], rax
	nop	
	mov	qword ptr [rbp + 0x18], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbp + 0x20], rax
	nop	
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	qword ptr [rbp + 0x28], rax
	mov	eax, dword ptr [rbx + 0x18]
	mov	dword ptr [rbp + 0x30], eax
	mov	rbp, rbp
	mov	dword ptr [rbp + 0x40], r14d
	mov	qword ptr [rbp + 0x58], 0
	mov	byte ptr [rbp + 0x34], 0
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bf0

	.globl fremote
	.type fremote, @function
fremote:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x78
	mov	r14, rsi
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	call	fstatfs
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_219
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	mov	bl, 1
	nop	
	cmp	ebp, 0x26
	je	.label_220
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.94
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	r15, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, r15
	call	error
	nop	
	jmp	.label_220
.label_219:
	nop	
	mov	rdi, qword ptr [rsp]
	call	is_local_fs_type
	inc	eax
	mov	rbp, rbp
	cmp	eax, 3
	jae	.label_221
	nop	
	and	al, 7
	mov	bl, 3
	mov	rbp, rbp
	mov	cl, al
	shr	bl, cl
	and	bl, 1
.label_220:
	mov	rsp, rsp
	mov	al, bl
	add	rsp, 0x78
	pop	rbx
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_221:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.95
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 0x3c9
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.fremote
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl tail_lines
	.type tail_lines, @function
tail_lines:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x98
	mov	rbp, rbp
	mov	r14, rcx
	mov	r15, rdx
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	r12, rdi
	lea	rsi, [rsp + 8]
	nop	
	mov	edi, ebp
	mov	rbp, rbp
	call	__fstat
	lea	rdi, [rdi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_224
	mov	rbp, rbp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	nop	
	mov	edi, 4
	mov	rsi, r12
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r14d
	mov	rbp, rbp
	mov	rdx, rbp
	call	error
	jmp	.label_222
.label_224:
	lea	rdi, [rdi]
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_227
	mov	rdi, r12
	nop	
	mov	esi, ebp
	mov	rdx, r15
	mov	rcx, r14
	mov	rsp, rsp
	call	start_lines
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	je	.label_225
	shr	ebx, 0x1f
	jmp	.label_222
.label_227:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	and	al, 1
	mov	rbp, rbp
	jne	.label_226
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	cmp	eax, 0x8000
	lea	rsi, [rsi]
	jne	.label_226
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	edx, 1
	mov	rbp, rbp
	mov	edi, ebp
	call	lseek
	mov	r13, rax
	cmp	r13, -1
	je	.label_226
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, 2
	lea	rsi, [rsi]
	mov	edi, ebp
	call	lseek
	mov	rsp, rsp
	cmp	r13, rax
	lea	rsi, [rsi]
	jge	.label_223
	nop	
	mov	qword ptr [r14], rax
	mov	rbp, rbp
	mov	bl, 1
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_222
	mov	rdi, r12
	mov	rsp, rsp
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, r15
	nop	
	mov	rcx, r13
	mov	r8, rax
	mov	r9, r14
	call	file_lines
	test	al, al
	lea	rdi, [rdi]
	jne	.label_222
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_222
.label_225:
	xor	edi, edi
	mov	rcx, -1
	nop	
	mov	rsi, r12
	mov	edx, ebp
	call	dump_remainder
	add	qword ptr [r14], rax
	nop	
	mov	bl, 1
	jmp	.label_222
.label_223:
	xor	edx, edx
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rcx, r12
	mov	rsp, rsp
	call	xlseek
.label_226:
	mov	rdi, r12
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	call	pipe_lines
	mov	rsp, rsp
	mov	bl, al
.label_222:
	lea	rdi, [rdi]
	mov	al, bl
	mov	rsp, rsp
	add	rsp, 0x98
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404ed0

	.globl tail_bytes
	.type tail_bytes, @function
tail_bytes:
	mov	rbp, rbp
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	sub	rsp, 0x98
	mov	r14, rcx
	mov	r12, rdx
	mov	ebp, esi
	nop	
	mov	r15, rdi
	lea	rsi, [rsp + 8]
	mov	edi, ebp
	call	__fstat
	test	eax, eax
	mov	rsp, rsp
	je	.label_231
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, r15
	call	quotearg_style
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
	lea	rsi, [rsi]
	jmp	.label_234
.label_231:
	mov	rbp, rbp
	mov	cl,  byte ptr [byte ptr [rip + presume_input_pipe]]
	nop	
	xor	cl, 1
	test	r12, r12
	setns	al
	nop	
	and	al, cl
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_239
	nop	
	test	al, al
	je	.label_232
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_233
	lea	rsi, [rsi]
	mov	edx, 1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rcx, r15
	nop	
	call	xlseek
	test	rax, rax
	mov	rsp, rsp
	jns	.label_240
.label_233:
	nop	
	mov	edx, 1
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r12
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_232
.label_240:
	add	qword ptr [r14], r12
	mov	r12, -1
	jmp	.label_237
.label_232:
	mov	rdi, r15
	mov	esi, ebp
	nop	
	mov	rdx, r12
	mov	rsp, rsp
	mov	rcx, r14
	call	start_bytes
	mov	ebx, eax
	test	ebx, ebx
	lea	rdi, [rdi]
	mov	r12, -1
	je	.label_237
	shr	ebx, 0x1f
	lea	rsi, [rsi]
	jmp	.label_234
.label_239:
	nop	
	mov	rbx, -1
	mov	rbp, rbp
	test	al, al
	je	.label_238
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_228
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_230
.label_238:
	mov	r13, -1
	mov	rsp, rsp
	jmp	.label_230
.label_228:
	mov	rsi, r12
	neg	rsi
	mov	edx, 2
	lea	rsi, [rsi]
	mov	edi, ebp
	call	lseek
	mov	rbx, rax
	lea	rsi, [rsi]
	lea	r13, [rbx + r12]
	lea	rsi, [rsi]
	cmp	rbx, -1
	cmove	r13, rbx
.label_230:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	movabs	rcx, 0x2000000000000001
	mov	rsp, rsp
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	rbp, rbp
	mov	edx, 0x200
	nop	
	cmovb	rdx, rax
	lea	rdi, [rdi]
	test	rax, rax
	cmovle	rdx, rcx
	cmp	r13, rdx
	jle	.label_229
	nop	
	cmp	rbx, -1
	jne	.label_236
	nop	
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	edi, ebp
	mov	rcx, r15
	lea	rdi, [rdi]
	call	xlseek
	mov	rbx, rax
.label_236:
	mov	rax, r13
	sub	rax, rbx
	jle	.label_235
	cmp	rax, r12
	jbe	.label_235
	sub	r13, r12
	lea	rdi, [rdi]
	xor	edx, edx
	nop	
	mov	edi, ebp
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rcx, r15
	call	xlseek
	mov	rbx, r13
.label_235:
	mov	rbp, rbp
	mov	qword ptr [r14], rbx
.label_237:
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	rsi, r15
	mov	rsp, rsp
	mov	edx, ebp
	mov	rcx, r12
	call	dump_remainder
	mov	rsp, rsp
	add	qword ptr [r14], rax
	mov	bl, 1
	jmp	.label_234
.label_229:
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rbp, rbp
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r14
	call	pipe_bytes
	mov	bl, al
.label_234:
	mov	al, bl
	lea	rdi, [rdi]
	add	rsp, 0x98
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405170

	.globl start_lines
	.type start_lines, @function
start_lines:
	mov	rbp, rbp
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	r13, rcx
	mov	rbx, rdx
	mov	rsp, rsp
	mov	eax, esi
	mov	dword ptr [rsp + 0xc], eax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_243
	mov	qword ptr [rsp], rdi
	nop	
	lea	r15, [rsp + 0x10]
	mov	rbp, rbp
	mov	r14d, 0xffffffff
	mov	rsp, rsp
	jmp	.label_242
	nop	dword ptr [rax]
.label_244:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0xc]
.label_242:
	mov	edx, 0x2000
	mov	edi, eax
	mov	rsi, r15
	call	safe_read
	mov	rbp, rbp
	test	rax, rax
	je	.label_243
	mov	rbp, rbp
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_241
	lea	rsi, [rsi]
	lea	r12, [rsp + rax + 0x10]
	add	qword ptr [r13], rax
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	lea	rdi, [rdi]
	and	al, 1
	mov	ebp, 0
	lea	rsi, [rsi]
	mov	eax, 0xa
	cmovne	ebp, eax
	mov	rax, r15
	nop	
.label_245:
	mov	rdx, r12
	sub	rdx, rax
	mov	rsp, rsp
	mov	rdi, rax
	mov	esi, ebp
	mov	rsp, rsp
	call	memchr
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_244
	inc	rax
	dec	rbx
	nop	
	jne	.label_245
	xor	r14d, r14d
	lea	rdi, [rdi]
	cmp	rax, r12
	jae	.label_243
	sub	r12, rax
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rbp, rbp
	call	xwrite_stdout
.label_243:
	mov	eax, r14d
	add	rsp, 0x2018
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_241:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	lea	rsi, [rsi]
	mov	r14d, 1
	jmp	.label_243
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0

	.globl dump_remainder
	.type dump_remainder, @function
dump_remainder:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	rsp, rsp
	mov	r12, rcx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], edx
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rsi
	mov	ebp, edi
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	r13, [rsp + 0x10]
	mov	r15, r12
	mov	rbp, rbp
	jmp	.label_250
.label_247:
	sub	r15, r14
.label_250:
	cmp	r15, 0x2000
	mov	edx, 0x2000
	lea	rdi, [rdi]
	cmovb	rdx, r15
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, r13
	lea	rsi, [rsi]
	call	safe_read
	mov	r14, rax
	test	r14, r14
	mov	rsp, rsp
	je	.label_249
	cmp	r14, -1
	je	.label_246
	test	bpl, 1
	lea	rdi, [rdi]
	je	.label_248
	mov	rdi, qword ptr [rsp]
	call	write_header
	xor	ebp, ebp
.label_248:
	mov	rbp, rbp
	mov	rdi, r13
	mov	rsi, r14
	mov	rbp, rbp
	call	xwrite_stdout
	mov	rbp, rbp
	add	rbx, r14
	nop	
	cmp	r12, -1
	je	.label_250
	nop	
	cmp	r12, -2
	lea	rsi, [rsi]
	je	.label_249
	cmp	r15, r14
	mov	rsp, rsp
	jne	.label_247
	lea	rdi, [rdi]
	jmp	.label_249
.label_246:
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0xb
	lea	rsi, [rsi]
	jne	.label_251
.label_249:
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	add	rsp, 0x2018
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_251:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405430

	.globl file_lines
	.type file_lines, @function
file_lines:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x2038
	mov	qword ptr [rsp + 0x18], r9
	lea	rdi, [rdi]
	mov	r14, rdx
	mov	ebp, esi
	mov	r13, rdi
	mov	bl, 1
	nop	
	test	r14, r14
	je	.label_254
	nop	
	mov	rax, r8
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	qword ptr [rsp + 0x10], rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	mov	r15, r8
	mov	qword ptr [rsp + 8], r8
	sub	r15, rbx
	xor	edx, edx
	mov	rsp, rsp
	mov	edi, ebp
	nop	
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rcx, r13
	lea	rdi, [rdi]
	call	xlseek
	mov	edi, ebp
	mov	dword ptr [rsp + 0x2c], edi
	lea	r12, [rsp + 0x30]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, rbx
	call	safe_read
	cmp	rax, -1
	je	.label_257
	nop	
	mov	qword ptr [rsp + 0x20], r13
	lea	rcx, [rax + r15]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp], rcx
	nop	
	xor	r13d, r13d
	test	rax, rax
	je	.label_259
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax + r12 - 1]
	mov	rbp, rbp
	mov	dl,  byte ptr [byte ptr [rip + line_end]]
	and	dl, 1
	mov	edx, 0xa
	cmove	edx, r13d
	cmp	ecx, edx
	setne	cl
	nop	
	movzx	ecx, cl
	mov	rbp, rbp
	sub	r14, rcx
	mov	r13, rax
.label_259:
	mov	rbp, rbp
	mov	ecx, 0xa
.label_260:
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	mov	rsp, rsp
	and	al, 1
	mov	ebx, 0
	lea	rsi, [rsi]
	cmovne	ebx, ecx
	nop	
	neg	r14
	mov	rdx, r13
	nop	dword ptr [rax + rax]
.label_261:
	test	rdx, rdx
	je	.label_258
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	esi, ebx
	call	memrchr
	test	rax, rax
	je	.label_258
	mov	rdx, rax
	sub	rdx, r12
	inc	r14
	cmp	r14, 1
	lea	rdi, [rdi]
	jne	.label_261
	lea	rsi, [rsi]
	jmp	.label_256
	nop	
.label_258:
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	cmp	r15, rsi
	lea	rsi, [rsi]
	je	.label_255
	add	r15, -0x2000
	xor	edx, edx
	mov	ebx, dword ptr [rsp + 0x2c]
	mov	edi, ebx
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	nop	
	call	xlseek
	mov	edx, 0x2000
	mov	edi, ebx
	nop	
	mov	rsi, r12
	nop	
	call	safe_read
	lea	rsi, [rsi]
	mov	r13, rax
	lea	rsi, [rsi]
	cmp	r13, -1
	je	.label_262
	neg	r14
	lea	rax, [r13 + r15]
	nop	
	mov	qword ptr [rbp], rax
	nop	
	test	r13, r13
	mov	rsp, rsp
	mov	ecx, 0xa
	lea	rdi, [rdi]
	jne	.label_260
	jmp	.label_252
.label_256:
	lea	rdi, [rdi]
	lea	rsi, [r13 - 1]
	lea	rdi, [rdi]
	cmp	rdx, rsi
	je	.label_253
	inc	rax
	sub	rsi, rdx
	mov	rdi, rax
	lea	rsi, [rsi]
	call	xwrite_stdout
.label_253:
	mov	rcx, qword ptr [rsp + 8]
	sub	rcx, r13
	sub	rcx, r15
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	mov	edx, dword ptr [rsp + 0x2c]
	call	dump_remainder
	mov	rbp, rbp
	add	qword ptr [rbp], rax
.label_252:
	mov	bl, 1
	jmp	.label_254
.label_257:
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	nop	
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r15, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, r13
	lea	rdi, [rdi]
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, r15
	mov	rsp, rsp
	call	error
.label_254:
	mov	rbp, rbp
	mov	al, bl
	nop	
	add	rsp, 0x2038
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_255:
	mov	rbp, rbp
	xor	edx, edx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	edi, r14d
	mov	rbx, qword ptr [rsp + 0x20]
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	rcx, rbx
	call	xlseek
	xor	edi, edi
	mov	rsi, rbx
	mov	edx, r14d
	mov	rcx, qword ptr [rsp + 8]
	call	dump_remainder
	add	rax, r15
	lea	rsi, [rsi]
	mov	qword ptr [rbp], rax
	jmp	.label_252
.label_262:
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	error
	mov	rbp, rbp
	jmp	.label_254
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405760

	.globl xlseek
	.type xlseek, @function
xlseek:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	rbx, rsi
	call	lseek
	test	rax, rax
	js	.label_263
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	nop	
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_263:
	mov	rbp, rbp
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	offtostr
	mov	r14, rax
	nop	
	cmp	ebp, 2
	nop	
	je	.label_266
	cmp	ebp, 1
	mov	rsp, rsp
	je	.label_265
	lea	rsi, [rsi]
	test	ebp, ebp
	jne	.label_267
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.88
	jmp	.label_264
.label_266:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	jmp	.label_264
.label_265:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.89
.label_264:
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, r15
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	nop	
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	r8, r14
	nop	
	call	error
	mov	edi, 1
	call	exit
.label_267:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405870

	.globl pipe_lines
	.type pipe_lines, @function
pipe_lines:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x28
	nop	
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], esi
	nop	
	mov	qword ptr [rsp], rdi
	mov	edi, 0x2018
	call	xmalloc
	mov	rbp, rax
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbp + 0x2000], xmm0
	nop	
	mov	qword ptr [rbp + 0x2010], 0
	mov	rsp, rsp
	mov	edi, 0x2018
	lea	rsi, [rsi]
	call	xmalloc
	lea	rsi, [rsi]
	xor	ecx, ecx
	nop	
	mov	r15d, 0xa
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rdi]
	jmp	.label_286
.label_269:
	mov	rax, rdx
	mov	rdx, qword ptr [rdx + 0x2010]
	mov	qword ptr [rsp + 0x10], rdx
	nop	word ptr cs:[rax + rax]
.label_286:
	mov	rbp, rbp
	mov	r14, rcx
	jmp	.label_287
	nop	dword ptr [rax + rax]
.label_281:
	mov	rsp, rsp
	mov	edi, 0x2018
	lea	rdi, [rdi]
	call	xmalloc
.label_287:
	mov	rsp, rsp
	mov	r13, rbp
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rbp, rbp
	lea	rbx, [rbp + 0x2008]
	mov	rsp, rsp
	jmp	.label_277
	nop	dword ptr [rax + rax]
.label_279:
	lea	rdi, [rdi]
	add	rdi, r13
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x2000]
	mov	rbp, rbp
	add	qword ptr [r13 + 0x2000], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x2008]
	mov	rbp, rbp
	add	qword ptr [r13 + 0x2008], rax
.label_277:
	lea	rdi, [rdi]
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, rbp
	call	safe_read
	lea	rdi, [rdi]
	mov	r12, rax
	lea	rax, [r12 + 1]
	cmp	rax, 2
	lea	rsi, [rsi]
	jb	.label_271
	nop	
	mov	qword ptr [rbp + 0x2000], r12
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	add	qword ptr [rax], r12
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx], xmm0
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	esi, 0
	cmovne	esi, r15d
	mov	rdi, rbp
	mov	rdx, r12
	nop	
	call	memchr
	test	rax, rax
	je	.label_289
	add	r12, rbp
	nop	dword ptr [rax]
.label_274:
	mov	rsp, rsp
	inc	rax
	nop	
	inc	qword ptr [rbx]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	mov	esi, 0
	mov	rbp, rbp
	cmovne	esi, r15d
	mov	rdx, r12
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	rdi, rax
	call	memchr
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_274
.label_289:
	add	r14, qword ptr [rbp + 0x2008]
	mov	rdx, qword ptr [rbp + 0x2000]
	mov	rdi, qword ptr [r13 + 0x2000]
	mov	rbp, rbp
	lea	rax, [rdi + rdx]
	cmp	rax, 0x1fff
	jbe	.label_279
	mov	qword ptr [r13 + 0x2010], rbp
	mov	rbp, rbp
	mov	rcx, r14
	mov	rdx, qword ptr [rsp + 0x10]
	sub	rcx, qword ptr [rdx + 0x2008]
	nop	
	cmp	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jbe	.label_281
	lea	rdi, [rdi]
	jmp	.label_269
.label_271:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	cmp	r12, -1
	nop	
	je	.label_273
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	test	rsi, rsi
	mov	rbp, rbp
	mov	r15b, 1
	je	.label_276
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x2000]
	test	rax, rax
	je	.label_280
	movsx	eax, byte ptr [rax + r13 - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	xor	edx, edx
	and	cl, 1
	mov	ecx, 0xa
	lea	rdi, [rdi]
	cmove	ecx, edx
	mov	rbp, rbp
	cmp	eax, ecx
	mov	rbp, rbp
	je	.label_284
	nop	
	inc	qword ptr [r13 + 0x2008]
	nop	
	inc	r14
.label_284:
	nop	
	mov	rax, r14
	nop	
	mov	r13, qword ptr [rsp + 0x10]
	nop	
	sub	rax, qword ptr [r13 + 0x2008]
	lea	rsi, [rsi]
	cmp	rax, rsi
	mov	rbx, r13
	nop	
	jbe	.label_268
	mov	rbx, r13
	nop	word ptr cs:[rax + rax]
.label_290:
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x2010]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbx + 0x2008]
	lea	rsi, [rsi]
	cmp	rax, rsi
	ja	.label_290
.label_268:
	mov	r12, qword ptr [rbx + 0x2000]
	add	r12, rbx
	lea	rdi, [rdi]
	cmp	r14, rsi
	mov	rax, rbx
	lea	rdi, [rdi]
	jbe	.label_283
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	r15d, 0xa
	lea	rsi, [rsi]
	cmove	r15d, ecx
	mov	rsp, rsp
	sub	rsi, r14
	mov	rsp, rsp
	mov	rax, rbx
	nop	dword ptr [rax]
.label_282:
	mov	rbp, rsi
	mov	rdx, r12
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r15d
	nop	
	call	memchr
	nop	
	test	rax, rax
	nop	
	je	.label_285
	inc	rax
	mov	rsi, rbp
	inc	rsi
	jne	.label_282
.label_283:
	nop	
	sub	r12, rax
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, r12
	call	xwrite_stdout
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 0x2010]
	mov	r15b, 1
	jmp	.label_288
	nop	word ptr cs:[rax + rax]
.label_272:
	mov	rsi, qword ptr [rbp + 0x2000]
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	xwrite_stdout
	mov	rbp, qword ptr [rbp + 0x2010]
.label_288:
	lea	rdi, [rdi]
	test	rbp, rbp
	nop	
	jne	.label_272
	lea	rsi, [rsi]
	jmp	.label_275
.label_273:
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	nop	
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	r13, qword ptr [rsp + 0x10]
	nop	
	jmp	.label_275
.label_276:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_275
.label_280:
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x10]
.label_275:
	test	r13, r13
	je	.label_270
	nop	word ptr cs:[rax + rax]
.label_278:
	mov	rbx, qword ptr [r13 + 0x2010]
	mov	rdi, r13
	mov	rsp, rsp
	call	free
	test	rbx, rbx
	mov	rsp, rsp
	mov	r13, rbx
	jne	.label_278
.label_270:
	mov	al, r15b
	mov	rbp, rbp
	add	rsp, 0x28
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_285:
	mov	edi, OFFSET FLAT:.str.91
	mov	esi, OFFSET FLAT:.str.92
	mov	rsp, rsp
	mov	edx, 0x2e0
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pipe_lines
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d00

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	mov	rbx, rsi
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_291
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	fwrite_unlocked
	cmp	rax, rbx
	nop	
	jb	.label_292
.label_291:
	lea	rdi, [rdi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_292:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.20
	call	quotearg_style
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	nop	
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405db0

	.globl start_bytes
	.type start_bytes, @function
start_bytes:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rbp, rbp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x2000
	lea	rsi, [rsi]
	mov	r15, rcx
	mov	rbx, rdx
	mov	rbp, rbp
	mov	ebp, esi
	mov	rbp, rbp
	mov	r14, rdi
	test	rbx, rbx
	je	.label_296
	lea	r12, [rsp]
	nop	dword ptr [rax + rax]
.label_294:
	mov	edx, 0x2000
	lea	rdi, [rdi]
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	call	safe_read
	nop	
	mov	ecx, 0xffffffff
	mov	rbp, rbp
	test	rax, rax
	je	.label_293
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_297
	mov	rbp, rbp
	add	qword ptr [r15], rax
	lea	rsi, [rsi]
	mov	rcx, rbx
	sub	rcx, rax
	jb	.label_295
	mov	rbx, rcx
	mov	rsp, rsp
	jne	.label_294
	lea	rdi, [rdi]
	jmp	.label_296
.label_295:
	lea	rsi, [rsi]
	sub	rax, rbx
	mov	rbp, rbp
	je	.label_296
	mov	rbp, rbp
	lea	rdi, [rsp + rbx]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	xwrite_stdout
.label_296:
	nop	
	xor	ecx, ecx
.label_293:
	mov	eax, ecx
	mov	rbp, rbp
	add	rsp, 0x2000
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_297:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, r14
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
	mov	ecx, 1
	mov	rsp, rsp
	jmp	.label_293
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ee0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	mov	eax, 0x2000
	or	eax, dword ptr [rdi + 0x18]
	mov	rbp, rbp
	and	eax, 0xf000
	mov	rsp, rsp
	cmp	eax, 0xa000
	lea	rsi, [rsi]
	jne	.label_298
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	ret	
.label_298:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405f10

	.globl pipe_bytes
	.type pipe_bytes, @function
pipe_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rdx
	nop	
	mov	ebx, esi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdi
	mov	rsp, rsp
	mov	edi, 0x2010
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbp, rax
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbp + 0x2000], xmm0
	mov	rbp, rbp
	mov	edi, 0x2010
	mov	rsp, rsp
	call	xmalloc
	nop	
	xor	ecx, ecx
	mov	r13, rbp
	mov	rbp, rbp
	jmp	.label_309
.label_300:
	mov	rbp, rbp
	mov	rax, r13
	lea	rdi, [rdi]
	mov	r13, qword ptr [r13 + 0x2008]
	nop	word ptr cs:[rax + rax]
.label_309:
	mov	r12, rbp
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	r14, rcx
	lea	rdi, [rdi]
	jmp	.label_302
	nop	word ptr cs:[rax + rax]
.label_299:
	mov	rsp, rsp
	add	rdi, r12
	mov	rsi, rbp
	mov	rdx, r15
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x2000]
	lea	rdi, [rdi]
	add	qword ptr [r12 + 0x2000], rax
.label_302:
	mov	rsp, rsp
	mov	edx, 0x2000
	mov	edi, ebx
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	safe_read
	mov	r15, rax
	lea	rsi, [rsi]
	lea	rax, [r15 + 1]
	cmp	rax, 2
	nop	
	jb	.label_307
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	qword ptr [rax], r15
	nop	
	mov	qword ptr [rbp + 0x2000], r15
	mov	qword ptr [rbp + 0x2008], 0
	add	r14, r15
	mov	rdi, qword ptr [r12 + 0x2000]
	mov	rax, r15
	add	rax, rdi
	lea	rdi, [rdi]
	cmp	rax, 0x1fff
	lea	rsi, [rsi]
	jbe	.label_299
	mov	rsp, rsp
	mov	qword ptr [r12 + 0x2008], rbp
	lea	rdi, [rdi]
	mov	rcx, r14
	lea	rsi, [rsi]
	sub	rcx, qword ptr [r13 + 0x2000]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	cmp	rcx, rax
	ja	.label_300
	mov	rbp, rbp
	mov	edi, 0x2010
	mov	rbp, rbp
	call	xmalloc
	mov	rsp, rsp
	mov	r12, rbp
	mov	rbp, rax
	mov	rsp, rsp
	jmp	.label_302
.label_307:
	nop	
	mov	rdi, rbp
	nop	
	call	free
	lea	rsi, [rsi]
	cmp	r15, -1
	je	.label_303
	mov	rsi, qword ptr [r13 + 0x2000]
	mov	rax, r14
	sub	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	mov	rbx, r13
	jbe	.label_306
	nop	
	mov	rbx, r13
	nop	dword ptr [rax]
.label_308:
	mov	r14, rax
	mov	rbx, qword ptr [rbx + 0x2008]
	mov	rsi, qword ptr [rbx + 0x2000]
	mov	rbp, rbp
	sub	rax, rsi
	cmp	rax, rcx
	lea	rdi, [rdi]
	ja	.label_308
.label_306:
	xor	eax, eax
	mov	rsp, rsp
	sub	r14, rcx
	cmova	rax, r14
	mov	rsp, rsp
	lea	rdi, [rbx + rax]
	sub	rsi, rax
	call	xwrite_stdout
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x2008]
	mov	r14b, 1
	jmp	.label_311
	nop	dword ptr [rax]
.label_310:
	mov	rsi, qword ptr [rbp + 0x2000]
	mov	rdi, rbp
	nop	
	call	xwrite_stdout
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbp + 0x2008]
.label_311:
	lea	rdi, [rdi]
	test	rbp, rbp
	mov	rsp, rsp
	jne	.label_310
	jmp	.label_301
.label_303:
	call	__errno_location
	nop	
	mov	r15d, dword ptr [rax]
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r15d
	mov	rbp, rbp
	mov	rdx, rbp
	nop	
	call	error
.label_301:
	nop	
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_305
	nop	word ptr cs:[rax + rax]
.label_304:
	mov	rbx, qword ptr [r13 + 0x2008]
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_304
.label_305:
	mov	al, r14b
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl is_local_fs_type
	.type is_local_fs_type, @function
is_local_fs_type:
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	cmp	rdi, 0x2fc12fc0
	jg	.label_367
	cmp	rdi, 0xadfe
	mov	rsp, rsp
	jle	.label_313
	cmp	rdi, 0x13111a7
	nop	
	jg	.label_316
	cmp	rdi, 0x1021993
	jg	.label_321
	lea	rdi, [rdi]
	cmp	rdi, 0x11953
	jle	.label_324
	cmp	rdi, 0x414a52
	nop	
	jle	.label_326
	nop	
	cmp	rdi, 0x414a53
	mov	rbp, rbp
	je	.label_312
	lea	rdi, [rdi]
	cmp	rdi, 0xc0ffee
	je	.label_312
	cmp	rdi, 0xc36400
	mov	rsp, rsp
	je	.label_320
	jmp	.label_314
.label_367:
	lea	rdi, [rdi]
	cmp	rdi, 0x65735542
	jle	.label_332
	mov	ecx, 0x858458f5
	mov	rsp, rsp
	cmp	rdi, rcx
	jle	.label_334
	mov	ecx, 0xc97e8167
	cmp	rdi, rcx
	jg	.label_337
	lea	rdi, [rdi]
	mov	ecx, 0xaad7aae9
	mov	rsp, rsp
	cmp	rdi, rcx
	lea	rdi, [rdi]
	jg	.label_323
	mov	ecx, 0x958458f5
	cmp	rdi, rcx
	nop	
	jg	.label_342
	mov	ecx, 0x858458f6
	nop	
	cmp	rdi, rcx
	lea	rdi, [rdi]
	je	.label_312
	mov	ecx, 0x9123683e
	mov	rsp, rsp
	jmp	.label_339
.label_313:
	cmp	rdi, 0x482a
	jg	.label_346
	lea	rsi, [rsi]
	cmp	rdi, 0x2467
	jg	.label_347
	cmp	rdi, 0x1372
	jle	.label_349
	nop	
	lea	rcx, [rdi - 0x1373]
	cmp	rcx, 0x1c
	ja	.label_350
	mov	rsp, rsp
	mov	edx, 0x10001401
	lea	rdi, [rdi]
	bt	rdx, rcx
	mov	rbp, rbp
	jb	.label_312
.label_350:
	cmp	rdi, 0x1cd1
	je	.label_312
	jmp	.label_314
.label_332:
	lea	rsi, [rsi]
	cmp	rdi, 0x541900ff
	jg	.label_318
	cmp	rdi, 0x47504652
	jle	.label_354
	lea	rdi, [rdi]
	cmp	rdi, 0x5346414e
	lea	rdi, [rdi]
	jg	.label_355
	nop	
	cmp	rdi, 0x52654972
	lea	rdi, [rdi]
	jg	.label_357
	mov	rsp, rsp
	cmp	rdi, 0x47504653
	lea	rdi, [rdi]
	je	.label_320
	cmp	rdi, 0x50495045
	je	.label_320
	lea	rdi, [rdi]
	jmp	.label_314
.label_334:
	mov	rsp, rsp
	cmp	rdi, 0x73636672
	jle	.label_364
	lea	rsi, [rsi]
	cmp	rdi, 0x7461636e
	jg	.label_363
	cmp	rdi, 0x73727278
	jg	.label_366
	lea	rsi, [rsi]
	cmp	rdi, 0x73636673
	lea	rdi, [rdi]
	je	.label_312
	cmp	rdi, 0x73717368
	nop	
	je	.label_312
	jmp	.label_314
.label_346:
	mov	rsp, rsp
	cmp	rdi, 0x6968
	jle	.label_317
	nop	
	cmp	rdi, 0x965f
	jg	.label_322
	cmp	rdi, 0x6969
	mov	rsp, rsp
	je	.label_320
	lea	rdi, [rdi]
	cmp	rdi, 0x7275
	je	.label_312
	cmp	rdi, 0x72b6
	je	.label_312
	jmp	.label_314
.label_318:
	cmp	rdi, 0x6165676b
	mov	rsp, rsp
	jle	.label_330
	lea	rsi, [rsi]
	cmp	rdi, 0x62656571
	mov	rbp, rbp
	jg	.label_331
	mov	rsp, rsp
	cmp	rdi, 0x62646575
	jg	.label_333
	cmp	rdi, 0x6165676c
	nop	
	je	.label_312
	cmp	rdi, 0x61756673
	je	.label_320
	jmp	.label_314
.label_316:
	cmp	rdi, 0x15013345
	jg	.label_338
	cmp	rdi, 0xbad1de9
	jle	.label_340
	mov	rsp, rsp
	cmp	rdi, 0x11307853
	jg	.label_343
	lea	rsi, [rsi]
	cmp	rdi, 0xbad1dea
	mov	rbp, rbp
	je	.label_312
	mov	rsp, rsp
	cmp	rdi, 0xbd00bd0
	je	.label_320
	jmp	.label_314
.label_321:
	cmp	rdi, 0x12fd16c
	jg	.label_348
	cmp	rdi, 0x1021994
	lea	rsi, [rsi]
	je	.label_312
	cmp	rdi, 0x1021997
	je	.label_312
	mov	rbp, rbp
	cmp	rdi, 0x1161970
	nop	
	je	.label_320
	jmp	.label_314
.label_337:
	nop	
	mov	ecx, 0xf97cff8b
	mov	rsp, rsp
	cmp	rdi, rcx
	jg	.label_351
	mov	ecx, 0xde5e81e3
	cmp	rdi, rcx
	mov	rsp, rsp
	jg	.label_353
	mov	ecx, 0xc97e8168
	mov	rsp, rsp
	cmp	rdi, rcx
	je	.label_312
	lea	rsi, [rsi]
	mov	ecx, 0xcafe4a11
	jmp	.label_339
.label_347:
	mov	rbp, rbp
	cmp	rdi, 0x3fff
	jle	.label_359
	nop	
	lea	rcx, [rdi - 0x4000]
	nop	
	cmp	rcx, 6
	ja	.label_360
	mov	edx, 0x51
	bt	rdx, rcx
	lea	rsi, [rsi]
	jb	.label_312
.label_360:
	mov	rbp, rbp
	cmp	rdi, 0x4244
	nop	
	je	.label_312
	jmp	.label_314
.label_354:
	cmp	rdi, 0x42494e4c
	lea	rdi, [rdi]
	jle	.label_365
	cmp	rdi, 0x453dcd27
	jg	.label_361
	cmp	rdi, 0x42494e4d
	je	.label_312
	cmp	rdi, 0x43415d53
	je	.label_312
	jmp	.label_314
.label_364:
	lea	rsi, [rsi]
	cmp	rdi, 0x68191121
	jle	.label_315
	lea	rdi, [rdi]
	cmp	rdi, 0x6e667363
	jg	.label_319
	lea	rdi, [rdi]
	cmp	rdi, 0x68191122
	lea	rdi, [rdi]
	je	.label_312
	mov	rbp, rbp
	cmp	rdi, 0x6b414653
	je	.label_320
	jmp	.label_314
.label_317:
	cmp	rdi, 0x4d59
	jle	.label_327
	mov	rbp, rbp
	cmp	rdi, 0x564b
	jg	.label_329
	cmp	rdi, 0x4d5a
	je	.label_312
	lea	rdi, [rdi]
	cmp	rdi, 0x517b
	je	.label_320
	jmp	.label_314
.label_330:
	cmp	rdi, 0x58465341
	jle	.label_356
	lea	rsi, [rsi]
	cmp	rdi, 0x5dca2df4
	mov	rsp, rsp
	jg	.label_336
	mov	rbp, rbp
	cmp	rdi, 0x58465342
	nop	
	je	.label_312
	nop	
	cmp	rdi, 0x5a3c69f0
	je	.label_312
	lea	rsi, [rsi]
	jmp	.label_314
.label_338:
	lea	rsi, [rsi]
	cmp	rdi, 0x1badfacd
	jle	.label_344
	mov	rbp, rbp
	cmp	rdi, 0x28cd3d44
	mov	rsp, rsp
	jg	.label_345
	mov	rbp, rbp
	cmp	rdi, 0x1badface
	je	.label_312
	cmp	rdi, 0x24051905
	je	.label_312
	jmp	.label_314
.label_324:
	lea	rsi, [rsi]
	cmp	rdi, 0xef52
	jg	.label_341
	cmp	rdi, 0xadff
	mov	rbp, rbp
	je	.label_312
	cmp	rdi, 0xef51
	mov	rsp, rsp
	je	.label_312
	mov	rsp, rsp
	jmp	.label_314
.label_323:
	mov	rbp, rbp
	mov	ecx, 0xbacbacbb
	cmp	rdi, rcx
	jg	.label_352
	mov	ecx, 0xaad7aaea
	mov	rbp, rbp
	cmp	rdi, rcx
	nop	
	je	.label_320
	nop	
	mov	ecx, 0xabba1974
	lea	rdi, [rdi]
	jmp	.label_339
.label_355:
	nop	
	cmp	rdi, 0x5346544d
	jg	.label_358
	nop	
	cmp	rdi, 0x5346414f
	nop	
	je	.label_320
	cmp	rdi, 0x53464846
	lea	rsi, [rsi]
	je	.label_312
	lea	rsi, [rsi]
	jmp	.label_314
.label_363:
	mov	rbp, rbp
	cmp	rdi, 0x794c762f
	lea	rsi, [rsi]
	jg	.label_362
	lea	rsi, [rsi]
	cmp	rdi, 0x7461636f
	nop	
	je	.label_320
	cmp	rdi, 0x74726163
	je	.label_312
	mov	rsp, rsp
	jmp	.label_314
.label_322:
	nop	
	lea	rcx, [rdi - 0x9fa0]
	lea	rsi, [rsi]
	cmp	rcx, 3
	jb	.label_312
	cmp	rdi, 0x9660
	mov	rbp, rbp
	je	.label_312
	mov	rbp, rbp
	cmp	rdi, 0xadf5
	lea	rsi, [rsi]
	je	.label_312
	nop	
	jmp	.label_314
.label_331:
	mov	rbp, rbp
	cmp	rdi, 0x6462671f
	mov	rsp, rsp
	jg	.label_325
	mov	rbp, rbp
	cmp	rdi, 0x62656572
	je	.label_312
	mov	rsp, rsp
	cmp	rdi, 0x63677270
	je	.label_312
	mov	rsp, rsp
	jmp	.label_314
.label_348:
	mov	rsp, rsp
	lea	rcx, [rdi - 0x12ff7b4]
	cmp	rcx, 4
	jb	.label_312
	lea	rsi, [rsi]
	cmp	rdi, 0x12fd16d
	je	.label_312
	jmp	.label_314
.label_351:
	lea	rdi, [rdi]
	mov	ecx, 0xfe534d41
	cmp	rdi, rcx
	jg	.label_335
	lea	rdi, [rdi]
	mov	ecx, 0xf97cff8c
	mov	rbp, rbp
	cmp	rdi, rcx
	je	.label_312
	lea	rsi, [rsi]
	mov	ecx, 0xf995e849
	mov	rsp, rsp
	jmp	.label_339
.label_349:
	nop	
	cmp	rdi, 0x2f
	mov	rsp, rsp
	je	.label_312
	cmp	rdi, 0x187
	mov	rsp, rsp
	je	.label_312
	nop	
	cmp	rdi, 0x7c0
	lea	rdi, [rdi]
	je	.label_312
	jmp	.label_314
.label_340:
	cmp	rdi, 0x13111a8
	mov	rsp, rsp
	je	.label_320
	cmp	rdi, 0x7655821
	je	.label_312
	cmp	rdi, 0x9041934
	je	.label_312
	lea	rsi, [rsi]
	jmp	.label_314
.label_359:
	cmp	rdi, 0x2468
	lea	rdi, [rdi]
	je	.label_312
	lea	rsi, [rsi]
	cmp	rdi, 0x2478
	mov	rbp, rbp
	je	.label_312
	mov	rbp, rbp
	cmp	rdi, 0x3434
	lea	rdi, [rdi]
	je	.label_312
	mov	rsp, rsp
	jmp	.label_314
.label_365:
	cmp	rdi, 0x2fc12fc1
	je	.label_312
	lea	rdi, [rdi]
	cmp	rdi, 0x3153464a
	mov	rbp, rbp
	je	.label_312
	mov	rsp, rsp
	cmp	rdi, 0x42465331
	mov	rbp, rbp
	je	.label_312
	nop	
	jmp	.label_314
.label_315:
	lea	rdi, [rdi]
	cmp	rdi, 0x65735543
	je	.label_320
	cmp	rdi, 0x65735546
	mov	rsp, rsp
	je	.label_320
	cmp	rdi, 0x67596969
	je	.label_312
	lea	rdi, [rdi]
	jmp	.label_314
.label_327:
	lea	rdi, [rdi]
	cmp	rdi, 0x482b
	je	.label_312
	cmp	rdi, 0x4858
	je	.label_312
	cmp	rdi, 0x4d44
	nop	
	je	.label_312
	nop	
	jmp	.label_314
.label_356:
	cmp	rdi, 0x54190100
	lea	rdi, [rdi]
	je	.label_312
	lea	rsi, [rsi]
	cmp	rdi, 0x565a4653
	je	.label_312
	lea	rsi, [rsi]
	cmp	rdi, 0x58295829
	je	.label_312
	jmp	.label_314
.label_344:
	cmp	rdi, 0x15013346
	je	.label_312
	mov	rsp, rsp
	cmp	rdi, 0x19800202
	je	.label_312
	lea	rdi, [rdi]
	cmp	rdi, 0x19830326
	lea	rdi, [rdi]
	je	.label_320
	jmp	.label_314
.label_326:
	lea	rdi, [rdi]
	cmp	rdi, 0x11954
	je	.label_312
	cmp	rdi, 0x27e0eb
	je	.label_312
	jmp	.label_314
.label_342:
	lea	rsi, [rsi]
	mov	ecx, 0x958458f6
	cmp	rdi, rcx
	lea	rdi, [rdi]
	je	.label_312
	nop	
	mov	eax, 0xa501fcf5
	jmp	.label_328
.label_357:
	cmp	rdi, 0x52654973
	mov	rsp, rsp
	je	.label_312
	mov	rbp, rbp
	cmp	rdi, 0x5346314d
	lea	rdi, [rdi]
	je	.label_312
	jmp	.label_314
.label_366:
	cmp	rdi, 0x73727279
	je	.label_312
	mov	rsp, rsp
	cmp	rdi, 0x73757245
	nop	
	je	.label_320
	jmp	.label_314
.label_333:
	cmp	rdi, 0x62646576
	je	.label_312
	nop	
	cmp	rdi, 0x62656570
	je	.label_312
	jmp	.label_314
.label_343:
	cmp	rdi, 0x11307854
	mov	rsp, rsp
	je	.label_312
	mov	rbp, rbp
	cmp	rdi, 0x13661366
	je	.label_312
	jmp	.label_314
.label_353:
	mov	ecx, 0xde5e81e4
	mov	rbp, rbp
	cmp	rdi, rcx
	je	.label_312
	lea	rsi, [rsi]
	mov	ecx, 0xf2f52010
.label_339:
	lea	rdi, [rdi]
	cmp	rdi, rcx
	je	.label_312
	jmp	.label_314
.label_361:
	cmp	rdi, 0x453dcd28
	je	.label_312
	nop	
	cmp	rdi, 0x45584653
	mov	rsp, rsp
	je	.label_312
	mov	rbp, rbp
	jmp	.label_314
.label_319:
	mov	rsp, rsp
	cmp	rdi, 0x6e667364
	je	.label_320
	cmp	rdi, 0x6e736673
	je	.label_312
	mov	rbp, rbp
	jmp	.label_314
.label_329:
	mov	rbp, rbp
	cmp	rdi, 0x564c
	nop	
	je	.label_320
	lea	rsi, [rsi]
	cmp	rdi, 0x5df5
	je	.label_312
	lea	rsi, [rsi]
	jmp	.label_314
.label_336:
	mov	rsp, rsp
	cmp	rdi, 0x5dca2df5
	je	.label_312
	cmp	rdi, 0x61636673
	je	.label_320
	jmp	.label_314
.label_345:
	cmp	rdi, 0x28cd3d45
	lea	rsi, [rsi]
	je	.label_312
	mov	rsp, rsp
	cmp	rdi, 0x2bad1dea
	mov	rsp, rsp
	je	.label_312
	jmp	.label_314
.label_341:
	lea	rdi, [rdi]
	cmp	rdi, 0xef53
	je	.label_312
	cmp	rdi, 0xf15f
	nop	
	je	.label_312
	nop	
	jmp	.label_314
.label_352:
	mov	eax, 0xbacbacbc
	mov	rbp, rbp
	cmp	rdi, rax
	lea	rsi, [rsi]
	je	.label_320
	nop	
	mov	eax, 0xbeefdead
	jmp	.label_328
.label_358:
	nop	
	cmp	rdi, 0x5346544e
	mov	rbp, rbp
	je	.label_312
	cmp	rdi, 0x534f434b
	je	.label_312
	jmp	.label_314
.label_362:
	cmp	rdi, 0x794c7630
	mov	rbp, rbp
	je	.label_320
	cmp	rdi, 0x7c7c6673
	lea	rdi, [rdi]
	je	.label_320
	jmp	.label_314
.label_325:
	nop	
	cmp	rdi, 0x64626720
	mov	rbp, rbp
	je	.label_312
	cmp	rdi, 0x64646178
	mov	rsp, rsp
	jne	.label_314
.label_312:
	lea	rsi, [rsi]
	ret	
.label_335:
	mov	rsp, rsp
	mov	eax, 0xfe534d42
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_320
	mov	eax, 0xff534d42
.label_328:
	nop	
	cmp	rdi, rax
	nop	
	jne	.label_314
.label_320:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	ret	
.label_314:
	mov	rbp, rbp
	mov	eax, 0xffffffff
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cf0

	.globl wd_hasher
	.type wd_hasher, @function
wd_hasher:
	movsxd	rax, dword ptr [rdi + 0x44]
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	mov	rax, rdx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d10

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	mov	rbp, rbp
	mov	eax, dword ptr [rdi + 0x44]
	cmp	eax, dword ptr [rsi + 0x44]
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d30

	.globl recheck
	.type recheck, @function
recheck:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x98
	mov	ebp, esi
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx]
	nop	
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	lea	r14, [rbx + 0x36]
	cmp	ecx, 0x2d
	jne	.label_375
	mov	rbp, rbp
	lea	r12, [rbx + 0x3c]
	cmp	byte ptr [rax + 1], 0
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x36]
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 7], al
	mov	rsp, rsp
	mov	r13d, dword ptr [rbx + 0x3c]
	mov	rbp, rbp
	jne	.label_381
	xor	r15d, r15d
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	dword ptr [rsp], eax
	mov	rbp, rbp
	jmp	.label_384
.label_375:
	mov	al, byte ptr [rbx + 0x36]
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 7], al
	lea	r12, [rbx + 0x3c]
	mov	r13d, dword ptr [rbx + 0x3c]
.label_381:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	test	bpl, bpl
	sete	al
	movzx	esi, al
	lea	rdi, [rdi]
	shl	esi, 0xb
	lea	rsi, [rsi]
	mov	dword ptr [rsp], 0
	xor	eax, eax
	call	open_safer
	mov	rbp, rbp
	mov	r15d, eax
.label_384:
	mov	rsp, rsp
	mov	rdi, rbx
	call	valid_file_spec
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_388
	lea	rdi, [rdi]
	cmp	r15d, -1
	sete	al
	mov	rbp, rbp
	and	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	rsp, rsp
	mov	byte ptr [r14], al
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_377
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	nop	
	call	__lstat
	mov	rsp, rsp
	test	eax, eax
	jne	.label_377
	mov	eax, 0xf000
	mov	rsp, rsp
	and	eax, dword ptr [rsp + 0x20]
	nop	
	cmp	eax, 0xa000
	mov	rsp, rsp
	jne	.label_377
	mov	dword ptr [r12], 0xffffffff
	nop	
	mov	byte ptr [rbx + 0x34], 1
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rbp
	nop	
	call	error
	mov	rsp, rsp
	jmp	.label_374
.label_377:
	mov	rbp, rbp
	cmp	r15d, -1
	mov	rsp, rsp
	je	.label_385
	lea	rsi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edi, r15d
	lea	rsi, [rsi]
	call	__fstat
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	js	.label_385
	lea	rsi, [rsi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x7fff
	lea	rsi, [rsi]
	jg	.label_373
	cmp	eax, 0x1000
	je	.label_368
	cmp	eax, 0x2000
	lea	rsi, [rsi]
	je	.label_368
	lea	rsi, [rsi]
	jmp	.label_370
.label_385:
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [r12], ebp
	mov	rbp, rbp
	cmp	byte ptr [r14], 0
	je	.label_372
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	cmp	r13d, ebp
	lea	rdi, [rdi]
	je	.label_374
	mov	rdi, rbx
	nop	
	call	pretty_name
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	rbp, rbp
	jmp	.label_374
.label_372:
	cmp	byte ptr [rsp + 7], 0
	mov	rsp, rsp
	je	.label_374
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	r14, rax
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	pretty_name
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_374
.label_373:
	cmp	eax, 0x8000
	je	.label_368
	nop	
	cmp	eax, 0xc000
	mov	rsp, rsp
	jne	.label_370
.label_368:
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	fremote
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x35], al
	lea	rsi, [rsi]
	test	al, al
	je	.label_369
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	je	.label_371
.label_369:
	mov	dword ptr [r12], 0
	mov	rsp, rsp
	or	r13d, 2
	cmp	r13d, 2
	jne	.label_386
	cmp	dword ptr [rbx + 0x38], -1
	mov	rbp, rbp
	je	.label_378
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_379
	nop	
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_379
	mov	rdi, rbx
	mov	rbp, rbp
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	close_fd
	jmp	.label_383
.label_370:
	mov	dword ptr [r12], 0xffffffff
	nop	
	mov	byte ptr [r14], 0
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	lea	rdi, [rdi]
	and	al, 1
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	sete	cl
	and	cl, al
	nop	
	xor	cl, 1
	mov	byte ptr [rbx + 0x34], cl
	cmp	byte ptr [rsp + 7], 0
	nop	
	jne	.label_376
	cmp	r13d, dword ptr [r12]
	je	.label_374
.label_376:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	pretty_name
	mov	rbp, rbp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_style
	mov	rbp, rax
	mov	r8d, OFFSET FLAT:.str_0
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x34], 0
	lea	rdi, [rdi]
	je	.label_380
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r8, rax
.label_380:
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, r14
	nop	
	mov	rcx, rbp
	call	error
	lea	rdi, [rdi]
	jmp	.label_374
.label_371:
	mov	dword ptr [r12], 0xffffffff
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.110
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	
	call	quotearg_style
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	word ptr [rbx + 0x34], 0x101
.label_374:
	mov	rdi, rbx
	call	pretty_name
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	call	close_fd
	nop	
	mov	ebp, dword ptr [rbx + 0x38]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	pretty_name
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rbp, rbp
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_383
.label_386:
	cmp	dword ptr [rbx + 0x38], -1
	jne	.label_387
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
	mov	rbp, rbp
	jmp	.label_389
.label_379:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.114
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	pretty_name
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	r14d, dword ptr [rbx + 0x38]
	mov	rbp, rbp
	mov	rdi, rbx
	call	pretty_name
	lea	rsi, [rsi]
	mov	edi, r14d
	mov	rsi, rax
	call	close_fd
	mov	rbp, rbp
	jmp	.label_382
.label_378:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.113
.label_389:
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r14, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, r14
	nop	
	call	error
.label_382:
	movzx	eax, bpl
	mov	ecx, dword ptr [rsp]
	test	cl, cl
	lea	rsi, [rsi]
	mov	r8d, 0xffffffff
	cmove	r8d, eax
	lea	rsi, [rsi]
	lea	rcx, [rsp + 8]
	xor	edx, edx
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	esi, r15d
	call	record_open_fd
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	pretty_name
	xor	esi, esi
	xor	edx, edx
	mov	edi, r15d
	nop	
	mov	rcx, rax
	call	xlseek
.label_383:
	nop	
	add	rsp, 0x98
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_388:
	mov	edi, OFFSET FLAT:.str.105
	mov	esi, OFFSET FLAT:.str.92
	mov	rsp, rsp
	mov	edx, 0x3df
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	mov	rsp, rsp
	call	__assert_fail
.label_387:
	mov	edi, OFFSET FLAT:.str.111
	nop	
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 0x42c
	nop	
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x407360

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x98
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x38], -1
	nop	
	je	.label_395
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	pretty_name
	mov	r15, rax
	mov	edi, dword ptr [rbx + 0x38]
	lea	rsi, [rsp + 8]
	nop	
	call	__fstat
	test	eax, eax
	je	.label_394
	mov	rsp, rsp
	call	__errno_location
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbx + 0x3c], eax
	mov	edi, dword ptr [rbx + 0x38]
	mov	rsi, r15
	nop	
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
	jmp	.label_395
.label_394:
	mov	rsp, rsp
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbx + 0x30]
	and	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0x8000
	jne	.label_392
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rcx, qword ptr [rbx + 8]
	jge	.label_392
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.115
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	r12, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r15
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r12
	call	error
	mov	edi, dword ptr [rbx + 0x38]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rcx, r15
	lea	rdi, [rdi]
	call	xlseek
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], 0
	mov	rbp, rbp
	jmp	.label_393
.label_392:
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	jne	.label_393
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	jne	.label_393
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	nop	
	call	get_stat_mtime
	mov	rcx, rdx
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	mov	rdx, rax
	call	timespec_cmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_395
.label_393:
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_396
	nop	
	cmp	qword ptr [r14], rbx
	mov	rsp, rsp
	setne	al
	jmp	.label_390
.label_396:
	xor	eax, eax
.label_390:
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbx + 0x38]
	movzx	edi, al
	lea	rdi, [rdi]
	mov	rcx, -1
	mov	rsi, r15
	nop	
	call	dump_remainder
	lea	rsi, [rsi]
	add	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_395
	lea	rdi, [rdi]
	mov	qword ptr [r14], rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_391
.label_395:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
.label_391:
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407560

	.globl die_pipe
	.type die_pipe, @function
die_pipe:
	mov	rbp, rbp
	push	rax
	lea	rsi, [rsi]
	mov	edi, 0xd
	call	raise
	mov	edi, 1
	mov	rbp, rbp
	call	exit
	nop	
	.section	.text
	.align	32
	#Procedure 0x407580

	.globl valid_file_spec
	.type valid_file_spec, @function
valid_file_spec:
	cmp	dword ptr [rdi + 0x38], -1
	sete	cl
	nop	
	cmp	dword ptr [rdi + 0x3c], 0
	sete	al
	xor	al, cl
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075a0

	.globl any_live_files
	.type any_live_files, @function
any_live_files:
	mov	al, 1
	movzx	ecx,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_397
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	lea	rdi, [rdi]
	je	.label_398
.label_397:
	test	rsi, rsi
	nop	
	je	.label_399
	nop	
	mov	r8b,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	nop	
	xor	r8b, 1
	lea	rsi, [rsi]
	add	rdi, 0x38
	mov	rsp, rsp
	xor	edx, edx
	nop	
.label_400:
	cmp	dword ptr [rdi], 0
	mov	rbp, rbp
	jns	.label_398
	cmp	byte ptr [rdi - 4], 0
	mov	rsp, rsp
	setne	cl
	or	cl, r8b
	nop	
	test	cl, 1
	je	.label_398
	nop	
	inc	rdx
	lea	rdi, [rdi]
	add	rdi, 0x60
	mov	rbp, rbp
	cmp	rdx, rsi
	jb	.label_400
.label_399:
	mov	rsp, rsp
	xor	eax, eax
.label_398:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407620

	.globl check_output_alive
	.type check_output_alive, @function
check_output_alive:
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	rsp, rsp
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	nop	
	je	.label_401
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	lea	rbx, [rsp]
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8], 2
	lea	r8, [rsp + 0x80]
	lea	rdi, [rdi]
	mov	edi, 2
	nop	
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	select
	cmp	eax, 1
	nop	
	je	.label_402
.label_401:
	nop	
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_402:
	lea	rsi, [rsi]
	call	die_pipe
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4076c0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x4076d0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_407
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_403:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_406
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_409
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_405
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_404
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_406
.label_404:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_406
.label_405:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_406:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_403
	lea	rsi, [rsi]
	jmp	.label_408
.label_407:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_408:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_409:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x407850

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_410
	mov	esi, OFFSET FLAT:.str.1_0
	nop	
	jmp	.label_411
.label_410:
	nop	
	mov	esi, OFFSET FLAT:.str_4
.label_411:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4078f0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	je	.label_414
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_413:
	test	rbp, rbp
	je	.label_412
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_416
.label_412:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_415
	nop	
.label_416:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_415:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	mov	rsp, rsp
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_413
.label_414:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	putc_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a40

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_417
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, r15
	call	argmatch_valid
	mov	rsp, rsp
	call	r14
	lea	rsi, [rsi]
	mov	rax, -1
.label_417:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ae0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_418
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_419:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_418
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_419
.label_418:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b70

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	mov	rsp, rsp
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsp + 0x10]
	call	strtod
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_420
	lea	rdi, [rdi]
	movsd	qword ptr [rsp], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	rdi, rbx
	call	c_strtod
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	jae	.label_421
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_420
.label_421:
	mov	rsp, rsp
	mov	dword ptr [r15], ebp
	lea	rsi, [rsi]
	movsd	xmm0, qword ptr [rsp]
.label_420:
	mov	rbp, rbp
	test	r14, r14
	je	.label_422
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r14], rax
.label_422:
	mov	rbp, rbp
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407c20
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407c30
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c40

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
	je	.label_426
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_423
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_423
.label_426:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_424
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_423:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
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
	jne	.label_425
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_3
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
.label_424:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_425:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
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
	.align	32
	#Procedure 0x407d40

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
.label_428:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_427
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_428
.label_427:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407db0
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
	je	.label_430
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_429
	mov	rsp, rsp
	mov	byte ptr [r14 + rbx], 0x2e
	nop	
	mov	ebx, 1
.label_429:
	nop	
	mov	byte ptr [r14 + rbx], 0
	mov	rsp, rsp
	mov	rax, r14
.label_430:
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
	.align	32
	#Procedure 0x407e40

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_431:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_431
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_432
	nop	word ptr [rax + rax]
.label_434:
	inc	rax
	mov	rbp, rbp
	mov	cl, dl
.label_432:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	mov	rsp, rsp
	je	.label_434
	test	sil, sil
	mov	rsp, rsp
	je	.label_433
	mov	rbp, rbp
	mov	dl, cl
	and	dl, 1
	mov	rsp, rsp
	je	.label_435
	xor	ecx, ecx
.label_435:
	test	dl, dl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_434
.label_433:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ec0
	.globl base_len
	.type base_len, @function
base_len:

	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_437:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_436
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_437
.label_436:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f00

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_438
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_438:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_439
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rsp, rsp
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x10
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_441
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_440
.label_441:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_440:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_439:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	mov	edi, eax
	mov	rsp, rsp
	call	fd_safer
	mov	rbp, rbp
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408020

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408030

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408040

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408050

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 8]
	nop	
	jae	.label_442
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_445:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_444
	nop	word ptr cs:[rax + rax]
.label_443:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	test	rdi, rdi
	jne	.label_443
	nop	
	cmp	rsi, rax
	mov	rsp, rsp
	cmova	rax, rsi
.label_444:
	mov	rbp, rbp
	add	rcx, 0x10
	nop	
	cmp	rcx, rdx
	jb	.label_445
.label_442:
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4080c0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rbp, rbp
	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	edx, 0
	jae	.label_446
	mov	r8, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_448:
	lea	rdi, [rdi]
	cmp	qword ptr [rsi], 0
	mov	rbp, rbp
	mov	rax, rsi
	je	.label_447
	nop	
.label_449:
	lea	rdi, [rdi]
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_449
	inc	rdx
.label_447:
	mov	rsp, rsp
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_448
.label_446:
	mov	rbp, rbp
	cmp	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	jne	.label_451
	lea	rsi, [rsi]
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	mov	rsp, rsp
	je	.label_450
.label_451:
	mov	rbp, rbp
	xor	eax, eax
.label_450:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408140
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r13, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	call	hash_get_n_entries
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	hash_get_n_buckets
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	rbp, rbp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	hash_get_max_bucket_length
	mov	rsp, rsp
	mov	r14, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_5
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_1
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_452]]
	punpckldq	xmm1, xmm2
	mov	rsp, rsp
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_453]]
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	addpd	xmm0, xmm1
	nop	
	mulsd	xmm0,  qword ptr [word ptr [rip + label_454]]
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_1
	mov	rsp, rsp
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
	nop	
	xor	eax, eax
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408290

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r12, rsi
	mov	rsp, rsp
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	lea	rsi, [rsi]
	cmp	qword ptr [rbx], 0
	je	.label_455
	test	rbx, rbx
	nop	
	je	.label_455
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_456:
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	cmp	rsi, r12
	je	.label_457
	lea	rsi, [rsi]
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_457
	mov	rbx, qword ptr [rbx + 8]
	nop	
	test	rbx, rbx
	jne	.label_456
	jmp	.label_455
.label_457:
	mov	r15, qword ptr [rbx]
.label_455:
	nop	
	mov	rax, r15
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408320

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_458
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	pop	rbx
	nop	
	ret	
.label_458:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408360
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_459
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	jmp	.label_461
	nop	word ptr cs:[rax + rax]
.label_462:
	mov	rbp, rbp
	add	rcx, 0x10
.label_461:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_460
	mov	rax, qword ptr [rcx]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_462
.label_459:
	ret	
.label_460:
	mov	rsp, rsp
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083b0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	call	safe_hasher
	mov	rbp, rbp
	mov	rcx, rax
	nop	dword ptr [rax + rax]
.label_464:
	cmp	qword ptr [rcx], rbx
	jne	.label_463
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	jne	.label_466
.label_463:
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	test	rcx, rcx
	jne	.label_464
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	dword ptr [rax + rax]
.label_467:
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jae	.label_465
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_467
	jmp	.label_465
.label_466:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx]
.label_465:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408440
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r8, qword ptr [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_468
	nop	dword ptr [rax + rax]
.label_471:
	mov	rbp, rbp
	add	r8, 0x10
.label_468:
	cmp	r8, qword ptr [rdi + 8]
	nop	
	jae	.label_470
	lea	rdi, [rdi]
	cmp	qword ptr [r8], 0
	lea	rsi, [rsi]
	je	.label_471
	test	r8, r8
	mov	r9, r8
	mov	rbp, rbp
	je	.label_471
	nop	word ptr cs:[rax + rax]
.label_469:
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rsp, rsp
	jae	.label_470
	mov	rcx, qword ptr [r9]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	nop	
	inc	rax
	lea	rdi, [rdi]
	mov	r9, qword ptr [r9 + 8]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_469
	nop	
	jmp	.label_471
.label_470:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4084b0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	xor	ebx, ebx
	jmp	.label_472
	nop	word ptr cs:[rax + rax]
.label_473:
	mov	rsp, rsp
	add	r13, 0x10
.label_472:
	lea	rsi, [rsi]
	cmp	r13, qword ptr [r12 + 8]
	nop	
	jae	.label_475
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	je	.label_473
	mov	rbp, rbp
	test	r13, r13
	mov	rbp, r13
	je	.label_473
	nop	word ptr [rax + rax]
.label_474:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	je	.label_475
	mov	rsp, rsp
	inc	rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rbp + 8]
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_474
	jmp	.label_473
.label_475:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408560
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_477
	inc	rdi
	nop	
	xor	edx, edx
.label_476:
	mov	rcx, rdx
	nop	
	shl	rcx, 5
	sub	rcx, rdx
	nop	
	movzx	eax, al
	add	rax, rcx
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_476
.label_477:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085a0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_478]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4085c0

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, r8
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	lea	rdi, [rdi]
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	rsp, rsp
	mov	r14d, OFFSET FLAT:raw_comparator
	lea	rdi, [rdi]
	cmovne	r14, rcx
	mov	edi, 0x50
	mov	rsp, rsp
	call	malloc
	mov	rsp, rsp
	mov	r13, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	test	r13, r13
	je	.label_480
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	mov	rsp, rsp
	test	al, al
	je	.label_479
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_479
	mov	esi, 0x10
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_479
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	nop	
	mov	rax, r13
	jmp	.label_480
.label_479:
	mov	rbp, rbp
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_480:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rsp, rsp
	mov	esi, 3
	mov	rsp, rsp
	call	rotr_sz
	lea	rdi, [rdi]
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408730

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	lea	rsi, [rsi]
	cmp	rdi, rsi
	sete	al
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408740

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	mov	rsp, rsp
	je	.label_481
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_483]]
	nop	
	jbe	.label_482
	movss	xmm1,  dword ptr [dword ptr [rip + label_485]]
	ucomiss	xmm1, xmm0
	jbe	.label_482
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_484]]
	jbe	.label_482
	movss	xmm1, dword ptr [rcx]
	lea	rdi, [rdi]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_482
	mov	rsp, rsp
	addss	xmm1,  dword ptr [dword ptr [rip + label_483]]
	ucomiss	xmm0, xmm1
	jbe	.label_482
	mov	rsp, rsp
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_486]]
	ucomiss	xmm2, xmm0
	nop	
	jb	.label_482
	ucomiss	xmm0, xmm1
	ja	.label_481
.label_482:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_481:
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4087d0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_487
	mov	eax, edi
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	test	rdi, rdi
	js	.label_489
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdi
	mov	rbp, rbp
	jmp	.label_488
.label_489:
	lea	rsi, [rsi]
	shr	rdi, 1
	or	rax, rdi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_488:
	divss	xmm0, dword ptr [rsi + 8]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_490]]
	nop	
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	mov	rsp, rsp
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rsp, rsp
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_491]]
	jae	.label_492
.label_487:
	push	rax
	mov	rbp, rbp
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	lea	rsi, [rsi]
	add	rsp, 8
.label_492:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408880
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r15]
	mov	rsp, rsp
	jmp	.label_493
	nop	dword ptr [rax]
.label_497:
	add	r14, 0x10
.label_493:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_495
	cmp	qword ptr [r14], 0
	lea	rdi, [rdi]
	je	.label_497
	nop	
	mov	rbx, qword ptr [r14 + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_499
	nop	dword ptr [rax + rax]
.label_498:
	test	cl, 1
	nop	
	je	.label_494
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	rax
.label_494:
	lea	rdi, [rdi]
	mov	qword ptr [rbx], 0
	nop	
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	nop	
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	lea	rsi, [rsi]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	jne	.label_498
.label_499:
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_496
	mov	rdi, qword ptr [r14]
	call	rax
.label_496:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_497
.label_495:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408950

	.globl hash_free
	.type hash_free, @function
hash_free:
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_503
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_503
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	jmp	.label_509
	nop	word ptr cs:[rax + rax]
.label_504:
	mov	rbp, rbp
	add	r14, 0x10
.label_509:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	jae	.label_503
	cmp	qword ptr [r14], 0
	je	.label_504
	test	r14, r14
	mov	rbp, rbp
	mov	rbx, r14
	je	.label_504
	nop	word ptr cs:[rax + rax]
.label_500:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_500
	jmp	.label_504
.label_503:
	mov	r14, qword ptr [r15]
	jmp	.label_505
	nop	word ptr [rax + rax]
.label_501:
	mov	rbp, rbp
	add	r14, 0x10
.label_505:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_507
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_501
	nop	dword ptr [rax]
.label_502:
	mov	rbp, rbp
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	jne	.label_502
	lea	rdi, [rdi]
	jmp	.label_501
.label_507:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_506
	nop	word ptr cs:[rax + rax]
.label_508:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rdi, rbx
	lea	rdi, [rdi]
	jne	.label_508
.label_506:
	mov	rdi, qword ptr [r15]
	call	free
	nop	
	mov	rdi, r15
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a70

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rax
	mov	rsp, rsp
	call	compute_bucket_size
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_512
	lea	rsi, [rsi]
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	je	.label_511
	lea	rdi, [rdi]
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_512
	mov	qword ptr [rsp + 0x10], rbp
	mov	rsp, rsp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rsp + 0x18], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x38]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_513
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	jmp	.label_511
.label_513:
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 1
	nop	
	mov	rdi, rbx
	call	transfer_entries
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	je	.label_510
	lea	rsi, [rsp]
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	nop	
	call	transfer_entries
	test	al, al
	lea	rdi, [rdi]
	je	.label_510
	mov	rdi, qword ptr [rsp]
	call	free
.label_512:
	mov	rbp, rbp
	xor	r14d, r14d
.label_511:
	lea	rsi, [rsi]
	mov	al, r14b
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_510:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c20

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	r12, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [r12]
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	r15, qword ptr [r12 + 8]
	nop	
	jae	.label_517
	nop	
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_523:
	cmp	qword ptr [r15], 0
	nop	
	je	.label_518
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_521
	nop	word ptr [rax + rax]
.label_516:
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r13
	call	safe_hasher
	nop	
	mov	rbp, qword ptr [rbx + 8]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_515
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	nop	
	jmp	.label_519
	nop	word ptr [rax + rax]
.label_515:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	lea	rsi, [rsi]
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	free_entry
.label_519:
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	jne	.label_516
.label_521:
	mov	r13, qword ptr [r15]
	nop	
	mov	qword ptr [r15 + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	nop	
	jne	.label_518
	mov	rdi, r14
	mov	rsi, r13
	mov	rsp, rsp
	call	safe_hasher
	mov	rbx, rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbx], 0
	mov	rsp, rsp
	je	.label_514
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	allocate_entry
	test	rax, rax
	je	.label_520
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_522
.label_514:
	mov	qword ptr [rbx], r13
	nop	
	inc	qword ptr [r14 + 0x18]
.label_522:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_518:
	nop	
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	mov	rbp, rbp
	jb	.label_523
	mov	al, 1
	jmp	.label_517
.label_520:
	nop	
	xor	eax, eax
.label_517:
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408da0

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	je	.label_530
	lea	rdx, [rsp]
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	hash_find_entry
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_535
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_533
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	jmp	.label_533
.label_535:
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	nop	
	js	.label_526
	cvtsi2ss	xmm0, rcx
	lea	rdi, [rdi]
	jmp	.label_537
.label_526:
	shr	rcx, 1
	lea	rdi, [rdi]
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_537:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	and	edx, 1
	test	rax, rax
	js	.label_538
	cvtsi2ss	xmm1, rax
	mov	rsp, rsp
	jmp	.label_527
.label_538:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	mov	rsp, rsp
	addss	xmm1, xmm1
.label_527:
	mulss	xmm1, dword ptr [rcx + 8]
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	jbe	.label_536
	mov	rdi, r15
	call	check_tuning
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	lea	rdi, [rdi]
	and	edx, 1
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_525
	lea	rdi, [rdi]
	cvtsi2ss	xmm2, rcx
	jmp	.label_534
.label_525:
	shr	rcx, 1
	lea	rsi, [rsi]
	or	rdx, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_534:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	nop	
	and	edx, 1
	mov	rbp, rbp
	test	rax, rax
	js	.label_524
	cvtsi2ss	xmm0, rax
	jmp	.label_531
.label_524:
	shr	rax, 1
	or	rdx, rax
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rdx
	mov	rsp, rsp
	addss	xmm0, xmm0
.label_531:
	movaps	xmm3, xmm1
	lea	rsi, [rsi]
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	mov	rbp, rbp
	jbe	.label_536
	mov	rbp, rbp
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_528
	mulss	xmm0, xmm1
.label_528:
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_491]]
	lea	rdi, [rdi]
	jae	.label_533
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_490]]
	movaps	xmm2, xmm0
	lea	rdi, [rdi]
	subss	xmm2, xmm1
	nop	
	cvttss2si	rax, xmm2
	nop	
	movabs	rcx, 0x8000000000000000
	mov	rsp, rsp
	xor	rcx, rax
	mov	rbp, rbp
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	nop	
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	mov	rbp, rbp
	je	.label_533
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	call	hash_find_entry
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_530
.label_536:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_532
	mov	rdi, r15
	call	allocate_entry
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_533
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	inc	qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	jmp	.label_529
.label_532:
	mov	qword ptr [rax], r14
	nop	
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_529:
	mov	rbp, rbp
	mov	ebp, 1
.label_533:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_530:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409020

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	nop	
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rbp, rbp
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	nop	
	test	rsi, rsi
	je	.label_541
	cmp	rsi, r13
	nop	
	je	.label_539
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_544
.label_539:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	mov	rsp, rsp
	je	.label_541
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_540
	nop	
	movups	xmm0, xmmword ptr [rsi]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_543
.label_544:
	mov	rax, qword ptr [rbx + 8]
	nop	
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_541
	lea	rsi, [rsi]
	add	rbx, 8
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_545:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	cmp	rsi, r13
	mov	rsp, rsp
	je	.label_542
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	mov	rsp, rsp
	test	al, al
	jne	.label_542
	nop	
	mov	rbx, qword ptr [rbx]
	nop	
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_545
	jmp	.label_541
.label_540:
	mov	rbp, rbp
	mov	qword ptr [rbx], 0
	lea	rsi, [rsi]
	jmp	.label_541
.label_542:
	nop	
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_541
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_543:
	mov	rdi, r14
	mov	rbp, rbp
	call	free_entry
.label_541:
	mov	rax, r15
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409140

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	nop	
	je	.label_546
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_546:
	push	rax
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	add	rsp, 8
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409170

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	ecx, -1
	je	.label_547
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_547:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091c0

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	nop	
	mov	r15, rdi
	lea	rdi, [rdi]
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	mov	rbp, rbp
	xor	eax, eax
	test	r14, r14
	mov	rbp, rbp
	je	.label_557
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_556
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	nop	
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_551
	cvtsi2ss	xmm0, rax
	jmp	.label_552
.label_551:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	nop	
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_552:
	nop	
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	mov	rsp, rsp
	and	edx, 1
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_560
	mov	rbp, rbp
	cvtsi2ss	xmm1, rcx
	mov	rsp, rsp
	jmp	.label_553
.label_560:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_553:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_556
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_549
	mov	rsp, rsp
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	lea	rsi, [rsi]
	jmp	.label_555
.label_549:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	xorps	xmm1, xmm1
	lea	rsi, [rsi]
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_555:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_548
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rax
	jmp	.label_554
.label_548:
	shr	rax, 1
	or	rdx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_554:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_556
	mov	rbp, rbp
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	mov	rsp, rsp
	jne	.label_550
	mulss	xmm0, dword ptr [rcx + 8]
.label_550:
	movss	xmm1,  dword ptr [dword ptr [rip + label_490]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	lea	rdi, [rdi]
	cvttss2si	rax, xmm2
	mov	rsp, rsp
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	mov	rsp, rsp
	ucomiss	xmm0, xmm1
	mov	rsp, rsp
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	lea	rsi, [rsi]
	test	al, al
	jne	.label_556
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	nop	
	je	.label_558
	nop	word ptr cs:[rax + rax]
.label_559:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	mov	rdi, rbx
	jne	.label_559
.label_558:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_556:
	mov	rax, r14
.label_557:
	add	rsp, 0x10
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4093b0

	.globl next_prime
	.type next_prime, @function
next_prime:
	nop	
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	nop	
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	lea	rsi, [rsi]
	or	rbx, 1
	mov	r14, -1
	jmp	.label_561
	nop	word ptr cs:[rax + rax]
.label_562:
	lea	rsi, [rsi]
	add	rbx, 2
.label_561:
	mov	rbp, rbp
	cmp	rbx, -1
	nop	
	je	.label_563
	nop	
	mov	rdi, rbx
	call	is_prime
	test	al, al
	mov	rbp, rbp
	je	.label_562
	mov	rsp, rsp
	mov	r14, rbx
.label_563:
	nop	
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409420

	.globl is_prime
	.type is_prime, @function
is_prime:
	lea	rdi, [rdi]
	mov	r8, rdi
	nop	
	mov	esi, 3
	nop	
	mov	edi, 9
	nop	
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_564
	nop	
.label_565:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_564
	add	rdi, rcx
	mov	rbp, rbp
	add	rsi, 2
	lea	rdi, [rdi]
	add	rcx, 8
	mov	rbp, rbp
	cmp	rdi, r8
	jb	.label_565
.label_564:
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rax, r8
	div	rsi
	lea	rsi, [rsi]
	test	rdx, rdx
	setne	al
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409480

	.globl free_entry
	.type free_entry, @function
free_entry:
	lea	rsi, [rsi]
	mov	qword ptr [rsi], 0
	nop	
	mov	rax, qword ptr [rdi + 0x48]
	nop	
	mov	qword ptr [rsi + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4094a0

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	mov	rsp, rsp
	test	rcx, rcx
	js	.label_566
	add	rsi, 0x14
	mov	rbp, rbp
	movabs	r8, 0x6666666666666667
.label_567:
	mov	rax, rcx
	mov	rsp, rsp
	imul	r8
	mov	rsp, rsp
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	rsi, [rsi]
	lea	edi, [rdx + rax]
	mov	rsp, rsp
	add	edi, edi
	mov	rbp, rbp
	lea	r9d, [rdi + rdi*4]
	lea	rdi, [rdi]
	mov	edi, ecx
	lea	rdi, [rdi]
	sub	edi, r9d
	add	edi, 0x30
	lea	rdi, [rdi]
	mov	byte ptr [rsi - 1], dil
	lea	rdi, [rdi]
	dec	rsi
	mov	rbp, rbp
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rbp, rbp
	ja	.label_567
	jmp	.label_568
.label_566:
	mov	rsp, rsp
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_569:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	nop	
	sub	edi, r9d
	mov	eax, 0x30
	nop	
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	lea	rdi, [rdi]
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	nop	
	mov	rcx, rdx
	lea	rsi, [rsi]
	ja	.label_569
	mov	byte ptr [rsi], 0x2d
.label_568:
	mov	rsp, rsp
	mov	rax, rsi
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409590

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	mov	rsp, rsp
	push	rax
	mov	edi, OFFSET FLAT:.str_6
	lea	rdi, [rdi]
	call	getenv
	mov	rcx, rax
	mov	rbp, rbp
	mov	eax, 0x31069
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_570
	mov	rbp, rbp
	mov	eax, 0x31069
	lea	rdi, [rdi]
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_570
	mov	rsp, rsp
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	strtol
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_570
	nop	
	mov	eax, 0x31069
.label_570:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	nop	
	cmp	rax, -0x80000000
	mov	rbp, rbp
	mov	eax, 0x80000000
	nop	
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409620

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
	je	.label_571
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
	jl	.label_573
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_573
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_572
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_572:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_573:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_571:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_7
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409710
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
	.align	32
	#Procedure 0x409760
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
	.align	32
	#Procedure 0x409780
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
	.align	32
	#Procedure 0x4097a0

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
	.align	32
	#Procedure 0x409810
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
	.align	32
	#Procedure 0x409830

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
	je	.label_574
	test	rdx, rdx
	nop	
	je	.label_574
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_574:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409870
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
	.align	32
	#Procedure 0x409910

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
.label_597:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_694
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_582]]
.label_953:
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
	mov	edi, OFFSET FLAT:.str.12_0
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
.label_954:
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
	jne	.label_616
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_616
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_649:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_672
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_672:
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
	jne	.label_649
.label_616:
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
	jmp	.label_600
.label_946:
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
	jmp	.label_600
.label_949:
	mov	rsp, rsp
	mov	al, 1
.label_947:
	mov	r15b, 1
.label_950:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_682
	mov	cl, al
.label_682:
	lea	rdi, [rdi]
	mov	al, cl
.label_948:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_685
	test	r10, r10
	je	.label_692
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_581
.label_685:
	xor	ecx, ecx
	jmp	.label_581
.label_951:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_583
	test	r10, r10
	je	.label_589
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_594
.label_952:
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
	jmp	.label_600
.label_692:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_581:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_600
.label_583:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_594
.label_589:
	mov	rbp, rbp
	mov	eax, 1
.label_594:
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
.label_600:
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
	jmp	.label_647
	nop	word ptr [rax + rax]
.label_654:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_647:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_575
	cmp	rsi, rbp
	jne	.label_578
	jmp	.label_579
	nop	word ptr cs:[rax + rax]
.label_575:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_579
.label_578:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_591
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_596
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_596
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
.label_596:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_626
.label_591:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_669:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_635
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_640]]
.label_964:
	test	rsi, rsi
	jne	.label_621
	jmp	.label_648
	nop	word ptr [rax + rax]
.label_626:
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
	jne	.label_666
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
	je	.label_669
	mov	rsp, rsp
	jmp	.label_586
.label_666:
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
	jmp	.label_669
.label_968:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_662
	test	rsi, rsi
	nop	
	jne	.label_693
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_648
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_590
.label_957:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_612
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_586
	cmp	edi, 2
	nop	
	jne	.label_593
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_595
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_684
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_684:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_609
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_609:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_619
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_619:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_625
.label_958:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_634
.label_959:
	mov	cl, 0x74
	jmp	.label_638
.label_960:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_634
.label_961:
	mov	bl, 0x66
	jmp	.label_634
.label_962:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_638
.label_965:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_643
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_580
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
	jae	.label_656
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_656:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_671
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_671:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_676
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_676:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_686
.label_966:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_674
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_577
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_580
.label_577:
	mov	rdi, r14
	jmp	.label_621
.label_967:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_588
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_580
	mov	rdi, r14
	jmp	.label_599
.label_635:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_602
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
.label_668:
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
	ja	.label_624
	test	dl, dl
	mov	rsp, rsp
	je	.label_624
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_590
.label_662:
	test	rsi, rsi
	jne	.label_644
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_644
.label_648:
	mov	rbp, rbp
	mov	dl, 1
.label_963:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_586
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_590
.label_612:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_621
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_647
.label_643:
	mov	rdi, r14
.label_686:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_590
.label_588:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_638
.label_599:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_604
.label_638:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_586
.label_634:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_590
	lea	rsi, [rsi]
	jmp	.label_632
.label_602:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_681
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
.label_681:
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
.label_658:
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
	je	.label_603
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
	je	.label_607
	cmp	rbp, -2
	nop	
	je	.label_622
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_670
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_642:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_659
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_641
.label_659:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_642
.label_670:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_610
	xor	r15d, r15d
.label_610:
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
	je	.label_658
	jmp	.label_668
.label_644:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_590
.label_674:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_621
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_621
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_621
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_677
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_665
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_586
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_623
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_623:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_655
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_655:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_678
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_678:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_615
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_615:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_590
.label_621:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_590:
	test	r12b, r12b
	je	.label_614
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_629
	jmp	.label_631
	nop	word ptr cs:[rax + rax]
.label_614:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_631
.label_629:
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
	jne	.label_639
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_604
	jmp	.label_632
	nop	word ptr cs:[rax + rax]
.label_631:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_632
	jmp	.label_604
.label_639:
	mov	bl, r13b
	mov	rsi, r14
.label_632:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_586
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_637
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_637
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_651
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_651:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_673
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_673:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_683
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_683:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_637:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_695
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_695:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_585
.label_693:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_590
.label_624:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_664
	nop	word ptr cs:[rax + rax]
.label_598:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_664:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_606
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_608
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_617
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_617:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_608
	nop	dword ptr [rax]
.label_606:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_580
	cmp	r14d, 2
	jne	.label_688
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_688
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_646
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_646:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_653
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_653:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_663
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_663:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_688:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_657
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_657:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_576
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
.label_576:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_689
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
.label_689:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_608:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_604
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_601
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_584
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_605
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_605:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_618
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_618:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_584
	nop	word ptr cs:[rax + rax]
.label_601:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_584:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_598
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_598
	nop	word ptr cs:[rax + rax]
.label_604:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_627
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_627
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_652
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_652:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_661
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_661:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_585
	nop	word ptr cs:[rax + rax]
.label_627:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_585:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_654
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_654
.label_593:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_625
.label_595:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_625:
	cmp	rcx, r10
	jae	.label_690
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_690:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_696
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_667
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_592
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_687
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_687:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_613
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_613:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_590
.label_696:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_590
.label_667:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_590
.label_592:
	xor	r15d, r15d
	jmp	.label_590
.label_603:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_620
.label_607:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_633
.label_622:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_650
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_660:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_630
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_660
	xor	r15d, r15d
	nop	
	jmp	.label_620
.label_650:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_633:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_620:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_668
.label_630:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_620
.label_677:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_590
.label_665:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_590
	nop	word ptr cs:[rax + rax]
.label_579:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_679
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_580
.label_679:
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
	je	.label_587
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_587
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_645
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_587
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
	je	.label_597
.label_587:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_611
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_611
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_611
	inc	rdx
	nop	dword ptr [rax + rax]
.label_628:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_680
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_680:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_628
.label_611:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_636
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_636
.label_586:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_675:
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
.label_691:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_636:
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
.label_641:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_675
.label_580:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_675
.label_645:
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
	jmp	.label_691
.label_694:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b060
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
	.align	32
	#Procedure 0x40b080

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
	je	.label_697
	mov	qword ptr [rax], rbx
.label_697:
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
	.align	32
	#Procedure 0x40b1d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_698
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_702:
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
	jl	.label_702
.label_698:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_701
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_699]], OFFSET FLAT:slot0
.label_701:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_700
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_700:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b290

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b2a0

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
	js	.label_706
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_708
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_704
.label_708:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_709
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
	jne	.label_705
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_705:
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
.label_704:
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
	ja	.label_703
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
	je	.label_707
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_707:
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
.label_703:
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
.label_706:
	lea	rdi, [rdi]
	call	abort
.label_709:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b510

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b520
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
	.align	32
	#Procedure 0x40b540
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
	.align	32
	#Procedure 0x40b560

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
	.align	32
	#Procedure 0x40b5c0

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
	je	.label_710
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
.label_710:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b630

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
	.align	32
	#Procedure 0x40b690

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
	.align	32
	#Procedure 0x40b6b0
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
	.align	32
	#Procedure 0x40b6d0

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
	mov	rcx,  qword ptr [word ptr [rip + label_711]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_712]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_713]]
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
	.align	32
	#Procedure 0x40b770

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
	.align	32
	#Procedure 0x40b790

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7b0

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
	.align	32
	#Procedure 0x40b820

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b830

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
	mov	rax,  qword ptr [word ptr [rip + label_711]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_712]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_713]]
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
	.align	32
	#Procedure 0x40b8c0
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
	.align	32
	#Procedure 0x40b8f0
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
	.align	32
	#Procedure 0x40b920

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b930
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
	.align	32
	#Procedure 0x40b950

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b960

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
	.align	32
	#Procedure 0x40b970

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
	jne	.label_714
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
	je	.label_715
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_714
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_714
.label_715:
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
	je	.label_716
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_714
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_714
.label_716:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_714:
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
	.align	32
	#Procedure 0x40baa0

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
	je	.label_718
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_717
	jmp	.label_719
.label_718:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_719
.label_717:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_719
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
.label_719:
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
	.align	32
	#Procedure 0x40bb60

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
	je	.label_722
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_721
	lea	rsi, [rsi]
	jmp	.label_720
.label_722:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_720
.label_721:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_720
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
.label_720:
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
	.align	32
	#Procedure 0x40bc50

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
	je	.label_725
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_724
	jmp	.label_723
.label_725:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_723
.label_724:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_723
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
.label_723:
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
	.align	32
	#Procedure 0x40bd20

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
	je	.label_728
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_727
	jmp	.label_726
.label_728:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_726
.label_727:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_726
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
.label_726:
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
	.align	32
	#Procedure 0x40bdc0

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
	je	.label_731
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_730
	nop	
	jmp	.label_729
.label_731:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_729
.label_730:
	mov	eax, 1
	test	bpl, bpl
	je	.label_729
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
.label_729:
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
	.align	32
	#Procedure 0x40be60

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
	je	.label_734
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_733
	lea	rsi, [rsi]
	jmp	.label_732
.label_734:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_732
.label_733:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_732
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
.label_732:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bef0

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
	je	.label_737
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_736
	jmp	.label_735
.label_737:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_735
.label_736:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_735
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_735:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40bf60

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
	je	.label_738
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_740
	mov	rbp, rbp
	jmp	.label_739
.label_738:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_739
.label_740:
	xor	eax, eax
.label_739:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bfb0

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_741:
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_742
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	lea	rdi, [rdi]
	je	.label_741
	cmp	eax, 0x16
	lea	rsi, [rsi]
	sete	cl
	nop	
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	cmovne	rcx, r12
	lea	rdi, [rdi]
	test	dl, dl
	mov	rsp, rsp
	cmovne	rbp, r13
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	mov	rbp, rbp
	jb	.label_742
	lea	rsi, [rsi]
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_741
.label_742:
	mov	rax, rbp
	mov	rsp, rsp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c090
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x50]
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0a0
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0b0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0c0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0d0
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0x50]
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0f0
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c100

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c110
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	mov	rax, -1
	mov	rsp, rsp
	mov	rdx, -1
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c130
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	mov	eax, edi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c140

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	mov	rax, rdi
	mov	rdx, rsi
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c150

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_743
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	jg	.label_743
	mov	rbp, rbp
	sub	esi, ecx
	mov	eax, esi
.label_743:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c180
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	mov	rsp, rsp
	or	rsi, rdi
	setne	al
	test	rdi, rdi
	movzx	ecx, al
	mov	rbp, rbp
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c1a0
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_744]]
	nop	
	addsd	xmm0, xmm1
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c1c0

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	ja	.label_745
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	mov	rsp, rsp
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_746
.label_745:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_746:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40c230

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
	je	.label_752
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_8
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_755
.label_752:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_755:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
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
	mov	esi, OFFSET FLAT:.str.3_2
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
	ja	.label_750
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_748]]
.label_933:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_750:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_756
.label_934:
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
.label_935:
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
.label_936:
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
	jmp	.label_751
.label_937:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
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
	jmp	.label_749
.label_938:
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
	jmp	.label_754
.label_939:
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
.label_754:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_749:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_751:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_747
.label_941:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_756:
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
	jmp	.label_753
.label_940:
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
.label_753:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_747:
	mov	rbp, rbp
	call	__fprintf_chk
.label_932:
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
	.align	32
	#Procedure 0x40c620
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_757:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_757
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c650

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_761:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_758
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_760
	nop	word ptr cs:[rax + rax]
.label_758:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_760:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_759
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_761
.label_759:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c6e0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_762
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
.label_762:
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
	.align	32
	#Procedure 0x40c790
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
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
	mov	esi, OFFSET FLAT:.str.19_0
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
	.align	32
	#Procedure 0x40c820

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
	jb	.label_763
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_763:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c860

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_764
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_765
.label_764:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_765:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c890
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
	jb	.label_766
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_766:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c8d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_767
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_767
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_767:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_768
	test	rax, rax
	nop	
	je	.label_769
.label_768:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_769:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c920

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_770
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_771
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_773
.label_770:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_772
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_772:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_774
.label_773:
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
.label_771:
	call	xalloc_die
.label_774:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c9c0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c9d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c9e0
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
	.align	32
	#Procedure 0x40ca20
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
	jb	.label_775
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_775
	pop	rcx
	ret	
.label_775:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ca50

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
	.align	32
	#Procedure 0x40caa0
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
	.align	32
	#Procedure 0x40cac0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cb10

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, r9
	mov	rbp, rbp
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_778
	cmp	eax, 1
	je	.label_780
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_777
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	cmp	rbx, r12
	lea	rsi, [rsi]
	jb	.label_776
	cmp	rbx, r15
	jbe	.label_781
.label_776:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	jb	.label_779
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_777
.label_778:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_777
.label_780:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_777
.label_779:
	mov	dword ptr [rax], 0x22
.label_777:
	nop	
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	nop	
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rcx, r14
	nop	
	call	error
.label_781:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc30

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	rsp, rsp
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rsp, rsp
	mov	r9, r10
	mov	rsp, rsp
	call	xnumtoumax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cc70

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	call	dtotimespec
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	rsp, rsp
	mov	r14, rax
	mov	dword ptr [r14], 0
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rdi, [rsp]
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	call	rpl_nanosleep
	test	eax, eax
	je	.label_782
	lea	r15, [rsp]
	nop	word ptr cs:[rax + rax]
.label_783:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_782
	mov	dword ptr [r14], 0
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_783
.label_782:
	nop	
	mov	eax, ebx
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40cd20

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rbp
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	lea	rsi, [rsi]
	mov	dword ptr [r12], 0
	mov	rbp, rbp
	lea	rsi, [rsp + 8]
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	r13
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	nop	
	cmp	rax, rbx
	mov	rsp, rsp
	je	.label_786
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	jne	.label_784
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_784
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_787
.label_784:
	lea	rsi, [rsi]
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	nop	
	jne	.label_788
	jnp	.label_785
.label_788:
	lea	rsi, [rsi]
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_785
.label_786:
	lea	rdi, [rdi]
	xor	eax, eax
.label_785:
	test	r15, r15
	mov	rbp, rbp
	je	.label_787
	nop	
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r15], rcx
.label_787:
	movsd	qword ptr [r14], xmm0
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40cdf0

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_811
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_803:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_803
	mov	rbp, rbp
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r15d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_789
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	lea	rdi, [rdi]
	call	strtoumax
	mov	rcx, rbp
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, rbx
	nop	
	je	.label_795
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_797
	cmp	eax, 0x22
	jne	.label_789
	lea	rsi, [rsi]
	mov	r12d, 1
.label_797:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_796
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_809
.label_795:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_789
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_789
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_789
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_796:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_801
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_793
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_813
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_794
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strchr
	mov	r14d, 1
	mov	rsp, rsp
	mov	rbx, r13
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_792
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_806
	cmp	ecx, 0x44
	je	.label_806
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_792
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_792
	mov	r14d, 1
	jmp	.label_792
.label_806:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_792:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_807
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_799
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_800]]
.label_885:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_802
.label_807:
	cmp	eax, 0x73
	jg	.label_805
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_808
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_810]]
.label_901:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_802
.label_799:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_791
	nop	
	cmp	eax, 0x59
	jne	.label_793
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_790
.label_805:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_791
	cmp	eax, 0x77
	nop	
	jne	.label_793
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_802:
	nop	
	call	bkm_scale
	jmp	.label_804
.label_887:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_790
.label_888:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_790
.label_889:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_790
.label_791:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_790
.label_808:
	cmp	eax, 0x5a
	jne	.label_793
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_790
.label_793:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_798
.label_886:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_790
.label_890:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_790:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power
.label_804:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_812
	lea	rdi, [rdi]
	or	eax, 2
.label_812:
	mov	r12d, eax
.label_801:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_809:
	mov	qword ptr [rcx], rax
.label_798:
	mov	r15d, r12d
.label_789:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_813:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_792
.label_794:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_792
.label_811:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40d200

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	mov	rsp, rsp
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	imul	rcx, rdx
	cmp	rax, rdx
	mov	rsp, rsp
	cmovb	rcx, rsi
	sbb	eax, eax
	lea	rdi, [rdi]
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d240

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	lea	rsi, [rsi]
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	r15, rdi
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_814
	nop	word ptr [rax + rax]
.label_815:
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	call	bkm_scale
	or	ebx, eax
	lea	rdi, [rdi]
	dec	ebp
	mov	rsp, rsp
	jne	.label_815
.label_814:
	mov	rsp, rsp
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d2b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_816
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_817
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
	je	.label_817
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
.label_816:
	mov	ecx, 1
.label_817:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d320

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_827
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_827:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x10
	nop	
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_829
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_818
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_821
	mov	rbp, rbp
	test	esi, esi
	jne	.label_829
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_831
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_825
.label_829:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_822
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_821
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_826
.label_818:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_821:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_830
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_820
.label_830:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_820:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_826:
	nop	
	cmp	eax, 6
	jne	.label_822
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_824
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_828
.label_822:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_819
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_823
.label_831:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_825:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_824:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_828:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_819:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_823:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d5c0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	mov	ecx, esi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	jmp	fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d5e0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	lea	rsi, [rsi]
	js	.label_832
	mov	esi, 0x406
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	jns	.label_833
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_833
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_834
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_835
.label_833:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_835
.label_832:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_835:
	test	ebx, ebx
	js	.label_834
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_834
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_836
	or	ecx, 1
	nop	
	mov	esi, 2
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	mov	rsp, rsp
	call	fcntl
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_834
.label_836:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_834:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d6f0

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
	je	.label_837
	nop	
	cmp	r15, -2
	jb	.label_837
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_837
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_837:
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
	.align	32
	#Procedure 0x40d780

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	r15, rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + 8], 0x3b9aca00
	jb	.label_838
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_840
.label_838:
	mov	rbp, rbp
	mov	rbx, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	r14, [rsp]
	nop	dword ptr [rax]
.label_841:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	nop	
	cmp	rbx, 0x1fa401
	mov	rsp, rsp
	jl	.label_839
	mov	qword ptr [rsp], 0x1fa400
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	nop	
	call	nanosleep
	lea	rdi, [rdi]
	add	rbx, -0x1fa400
	test	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 0
	je	.label_841
	test	r15, r15
	je	.label_840
	add	qword ptr [r15], rbx
	jmp	.label_840
.label_839:
	mov	rsp, rsp
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	lea	rdi, [rdi]
	call	nanosleep
.label_840:
	nop	
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d850
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	rsp, rsp
	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d860
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	lea	rdi, [rdi]
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d870
	.globl rotl32
	.type rotl32, @function
rotl32:

	lea	rdi, [rdi]
	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d880
	.globl rotr32
	.type rotr32, @function
rotr32:

	nop
	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d890
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	mov	rbp, rbp
	rol	rdi, cl
	mov	rax, rdi
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8a0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d8b0
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	lea	rsi, [rsi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	mov	rbp, rbp
	shr	edi, cl
	or	edi, eax
	mov	rbp, rbp
	movzx	eax, di
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d8e0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	rbp, rbp
	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rsp, rsp
	sub	ecx, esi
	shl	edi, cl
	lea	rsi, [rsi]
	or	edi, eax
	movzx	eax, di
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d910
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	rbp, rbp
	mov	eax, edi
	nop	
	mov	cl, sil
	mov	rsp, rsp
	shl	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	sub	ecx, esi
	nop	
	shr	edi, cl
	lea	rdi, [rdi]
	or	edi, eax
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d940
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	rsp, rsp
	mov	cl, sil
	nop	
	shr	eax, cl
	mov	rsp, rsp
	mov	ecx, 8
	lea	rsi, [rsi]
	sub	ecx, esi
	lea	rdi, [rdi]
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d970
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_842
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_842
.label_843:
	ret	
.label_842:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_843
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9a0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_844
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_844:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d9c0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d9d0
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
	.align	32
	#Procedure 0x40d9e0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_845
.label_846:
	ret	
.label_845:
	cmp	edi, 0x7f
	je	.label_846
	xor	eax, eax
	jmp	.label_846
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da00
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da10
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da20
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da30
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da40
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_847
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_847
.label_848:
	ret	
.label_847:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_848
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da70
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_849
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_849:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40da90

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40daa0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_850
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_850:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dac0
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
	.align	32
	#Procedure 0x40dad0
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
	.align	32
	#Procedure 0x40dae0

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	lea	rsi, [rsi]
	push	rbx
	nop	
	push	rax
	nop	
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	lea	rsi, [rsi]
	call	c_locale
	test	rax, rax
	mov	rsp, rsp
	je	.label_852
	mov	rbp, rbp
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, rax
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	jmp	strtod_l
.label_852:
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_851
	mov	qword ptr [rbx], r14
.label_851:
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db40

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	nop	
	jne	.label_853
	lea	rdi, [rdi]
	push	rax
	nop	
	mov	edi, 0x1fbf
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_10
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_853:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40db80

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
	je	.label_855
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_854
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_854
.label_855:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_854
	test	cl, cl
	jne	.label_854
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_854:
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
	.align	32
	#Procedure 0x40dc20

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	movabs	rdi, 0x7fffffffffffffff
	nop	
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_856]]
	mov	rbp, rbp
	jbe	.label_857
	movsd	xmm1,  qword ptr [word ptr [rip + label_858]]
	lea	rsi, [rsi]
	ucomisd	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_859
	mov	rsp, rsp
	cvttsd2si	rdi, xmm0
	lea	rdi, [rdi]
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rdi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_744]]
	cvttsd2si	rax, xmm0
	mov	rbp, rbp
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	ucomisd	xmm0, xmm1
	seta	cl
	movzx	ecx, cl
	lea	rdi, [rdi]
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	nop	
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	nop	
	shr	rax, 0x3f
	mov	rbp, rbp
	sar	rdx, 0x1a
	lea	rsi, [rsi]
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	nop	
	mov	rsi, rcx
	sub	rsi, rax
	mov	rbp, rbp
	add	rsi, 0x3b9aca00
	lea	rdi, [rdi]
	sub	rcx, rax
	cmovns	rsi, rcx
	lea	rdi, [rdi]
	add	rdi, rdx
	sar	rcx, 0x3f
	add	rcx, rdi
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	jmp	.label_860
.label_857:
	inc	rdi
	mov	rbp, rbp
	xor	esi, esi
	jmp	.label_860
.label_859:
	nop	
	mov	esi, 0x3b9ac9ff
.label_860:
	lea	rsi, [rsi]
	call	make_timespec
	mov	rsp, rsp
	pop	rcx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dd20

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
	je	.label_862
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_861
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_863
.label_861:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_862
.label_863:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_862:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dd70

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
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_864
	nop	
	mov	rax, rcx
.label_864:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ddb0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ddd0

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
	js	.label_865
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_867
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
	je	.label_865
.label_867:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_865
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_866
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_866:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_865:
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
	.align	32
	#Procedure 0x40de90

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_868
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_868
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_868:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dec0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_869
	mov	rbp, rbp
	ret	
.label_869:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dee0

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
	jne	.label_872
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_872
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_870
.label_872:
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
.label_870:
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
	je	.label_871
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_871:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40df90

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e060

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40e070

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
