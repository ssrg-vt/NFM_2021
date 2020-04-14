	.section	.text
	.align	16
	#Procedure 0x4016d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_7
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.2
	mov	r8d, 0x80
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	call	emit_stdin_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.2
	xor	eax, eax
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.12
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	call	emit_ancillary_info
	mov	edi, ebp
	mov	rbp, rbp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401930

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rdi, [rdi]
	push	rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.36
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401970

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	nop	
	mov	esi, OFFSET FLAT:.str.37
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	edi, OFFSET FLAT:.str.13
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	je	.label_10
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	add	rbx, 0x10
	test	rsi, rsi
	nop	
	jne	.label_9
.label_10:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.13
	lea	rsi, [rsi]
	cmovne	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.18
	lea	rdi, [rdi]
	xor	eax, eax
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	mov	rbp, rbp
	je	.label_8
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.47
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	nop	
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.49
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.13
	nop	
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	nop	
	xor	eax, eax
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.50
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.51
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	mov	rbp, rbp
	cmove	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rdx
	nop	
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	mov	rbp, rbp
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401b00

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x58
	mov	r14, rsi
	mov	r12d, edi
	lea	rdi, [rsp + 0x40]
	lea	rdi, [rdi]
	call	ptr_align
	mov	rbx, rax
	nop	
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	setlocale
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.15
	call	textdomain
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	r15d, r15d
	xor	esi, esi
	nop	
	mov	edx, 1
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	call	setvbuf
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_15
.label_17:
	nop	
	mov	byte ptr [byte ptr [rip + quiet]],  0
	mov	ecx, ebp
.label_15:
	mov	ebp, ecx
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_options
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	edi, r12d
	mov	rbp, rbp
	mov	rsi, r14
	call	getopt_long
	mov	rbp, rbp
	cmp	eax, 0x61
	mov	rbp, rbp
	jle	.label_11
	lea	ecx, [rax - 0x74]
	cmp	ecx, 0x10
	ja	.label_49
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_51]]
.label_492:
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	jmp	.label_15
.label_49:
	nop	
	cmp	eax, 0x62
	mov	rsp, rsp
	mov	ecx, 1
	je	.label_15
	mov	rsp, rsp
	cmp	eax, 0x63
	jne	.label_14
	mov	r13b, 1
	mov	ecx, ebp
	lea	rdi, [rdi]
	jmp	.label_15
.label_493:
	mov	byte ptr [byte ptr [rip + status_only]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + warn]],  1
	jmp	.label_17
.label_494:
	mov	byte ptr [byte ptr [rip + delim]],  1
	lea	rdi, [rdi]
	mov	ecx, ebp
	jmp	.label_15
.label_495:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + ignore_missing]],  1
	mov	ecx, ebp
	jmp	.label_15
.label_496:
	nop	
	mov	byte ptr [byte ptr [rip + status_only]],  1
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + warn]],  0
	jmp	.label_17
.label_497:
	mov	byte ptr [byte ptr [rip + status_only]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + warn]],  0
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + quiet]],  1
	mov	ecx, ebp
	jmp	.label_15
.label_498:
	mov	byte ptr [byte ptr [rip + strict]],  1
	mov	ecx, ebp
	nop	
	jmp	.label_15
.label_499:
	nop	
	mov	r15b, 1
	mov	rsp, rsp
	mov	ecx, 1
	jmp	.label_15
.label_11:
	mov	rsp, rsp
	cmp	eax, -1
	jne	.label_40
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + min_digest_line_length]],  1
	mov	byte ptr [byte ptr [rip + digest_hex_bytes]],  1
	test	r15b, r15b
	mov	rbp, rbp
	sete	al
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_44
	mov	rsp, rsp
	test	al, al
	je	.label_47
.label_44:
	test	r13b, r13b
	lea	rdi, [rdi]
	je	.label_22
	mov	cl,  byte ptr [byte ptr [rip + delim]]
	nop	
	xor	cl, 1
	mov	rsp, rsp
	test	cl, 1
	je	.label_52
.label_22:
	lea	rdi, [rdi]
	test	r13b, r13b
	nop	
	sete	cl
	nop	
	or	cl, al
	je	.label_12
	mov	rbp, rbp
	test	ebp, ebp
	mov	rbp, rbp
	js	.label_16
	mov	rbp, rbp
	test	r13b, r13b
	nop	
	jne	.label_18
.label_16:
	mov	rbp, rbp
	test	r13b, r13b
	jne	.label_20
	nop	
	test	byte ptr [byte ptr [rip + ignore_missing]],  1
	jne	.label_21
.label_20:
	test	r13b, r13b
	jne	.label_25
	test	byte ptr [byte ptr [rip + status_only]],  1
	jne	.label_26
.label_25:
	mov	rsp, rsp
	test	r13b, r13b
	mov	rbp, rbp
	jne	.label_27
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [rip + warn]],  1
	jne	.label_30
.label_27:
	nop	
	test	r13b, r13b
	mov	rsp, rsp
	jne	.label_32
	mov	rsp, rsp
	test	byte ptr [byte ptr [rip + quiet]],  1
	jne	.label_34
.label_32:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rbx
	movzx	eax,  byte ptr [byte ptr [rip + strict]]
	and	eax, 1
	nop	
	movzx	ecx, r13b
	mov	rsp, rsp
	xor	ecx, 1
	test	eax, ecx
	jne	.label_37
	movsxd	rax, r12d
	lea	rsi, [rsi]
	lea	rbx, [r14 + rax*8]
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + optind]],  r12d
	jne	.label_41
	mov	qword ptr [word ptr [rbx]], OFFSET FLAT:.str.31
	lea	rdi, [rdi]
	add	rbx, 8
.label_41:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	nop	
	lea	r12, [r14 + rax*8]
	nop	
	mov	r14b, 1
	lea	rsi, [rsi]
	cmp	r12, rbx
	lea	rdi, [rdi]
	jae	.label_46
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	rbp, rbp
	mov	ecx, 0x2a
	mov	eax, 0x20
	cmovle	ecx, eax
	nop	
	mov	dword ptr [rsp + 0x18], ecx
	mov	rbp, rbp
	mov	r14b, 1
	lea	rdi, [rdi]
	jmp	.label_48
.label_39:
	nop	
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_38
	nop	word ptr cs:[rax + rax]
.label_48:
	test	r13b, r13b
	mov	rbp, qword ptr [r12]
	je	.label_19
	mov	rdi, rbp
	call	digest_check
	mov	rsp, rsp
	and	r14b, al
	jmp	.label_24
	nop	dword ptr [rax]
.label_19:
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdx, [rsp + 0x3f]
	call	digest_file
	test	al, al
	mov	rsp, rsp
	je	.label_31
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r13
	mov	esi, 0x5c
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	jne	.label_36
	nop	
	mov	esi, 0xa
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strchr
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_39
.label_36:
	lea	rsi, [rsi]
	mov	r13b,  byte ptr [byte ptr [rip + delim]]
	xor	r13b, 1
.label_38:
	lea	rsi, [rsi]
	test	r15b, r15b
	je	.label_43
	mov	rbp, rbp
	test	r13b, 1
	je	.label_45
	mov	edi, 0x5c
	lea	rsi, [rsi]
	call	putchar_unlocked
.label_45:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], r14d
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r15
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.2
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:.str.32
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	al, r13b
	mov	rbp, rbp
	and	al, 1
	movzx	esi, al
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	print_filename
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.33
	call	fputs_unlocked
	mov	rbp, rbp
	jmp	.label_28
.label_31:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_24
.label_43:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x1c], r14d
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	r13b, 1
	mov	rsp, rsp
	je	.label_28
	mov	edi, 0x5c
	mov	rbp, rbp
	call	putchar_unlocked
.label_28:
	mov	al,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	r15d, 0
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_35
	nop	
.label_33:
	movzx	edx, byte ptr [r14 + r15]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.34
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rbp, rbp
	inc	r15
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	eax, 1
	lea	rsi, [rsi]
	shl	rax, 4
	cmp	r15, rax
	jb	.label_33
.label_35:
	mov	r15, qword ptr [rsp + 0x28]
	test	r15b, r15b
	mov	rsp, rsp
	jne	.label_13
	mov	edi, 0x20
	mov	rbp, rbp
	call	putchar_unlocked
	mov	edi, dword ptr [rsp + 0x18]
	call	putchar_unlocked
	lea	rdi, [rdi]
	and	r13b, 1
	nop	
	movzx	esi, r13b
	mov	rdi, rbp
	mov	rbp, rbp
	call	print_filename
.label_13:
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + delim]]
	lea	rsi, [rsi]
	and	al, 1
	mov	edi, 0xa
	mov	eax, 0
	lea	rsi, [rsi]
	cmovne	edi, eax
	nop	
	call	putchar_unlocked
	nop	
	mov	r13, qword ptr [rsp + 0x20]
	mov	r14d, dword ptr [rsp + 0x1c]
	nop	word ptr [rax + rax]
.label_24:
	add	r12, 8
	cmp	r12, rbx
	mov	rsp, rsp
	jb	.label_48
.label_46:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	al, 1
	mov	rbp, rbp
	je	.label_29
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_50
.label_29:
	not	r14b
	and	r14b, 1
	lea	rdi, [rdi]
	movzx	eax, r14b
	mov	rbp, rbp
	add	rsp, 0x58
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
.label_40:
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7d
	je	.label_42
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7e
	jne	.label_14
	mov	rsp, rsp
	xor	edi, edi
	call	usage
.label_42:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.19
	nop	
	mov	r9d, OFFSET FLAT:.str.20
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_14:
	nop	
	mov	edi, 1
	call	usage
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	jmp	.label_23
.label_52:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.23
	nop	
	jmp	.label_23
.label_12:
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.24
	lea	rdi, [rdi]
	jmp	.label_23
.label_18:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	jmp	.label_23
.label_21:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.26
	jmp	.label_23
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	jmp	.label_23
.label_30:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.28
	jmp	.label_23
.label_34:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	nop	
	jmp	.label_23
.label_37:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
.label_23:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	error
	nop	
	mov	edi, 1
	call	usage
.label_50:
	mov	rsp, rsp
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.35
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x402210

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	add	rdi, 3
	mov	rsp, rsp
	mov	eax, edi
	lea	rdi, [rdi]
	and	eax, 3
	sub	rdi, rax
	nop	
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402230

	.globl digest_check
	.type digest_check, @function
digest_check:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbp, rdi
	nop	
	lea	rdi, [rsp + 0x80]
	call	ptr_align
	mov	qword ptr [rsp + 0x48], rax
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_68
	cmp	byte ptr [rbp + 1], 0
	mov	rsp, rsp
	je	.label_71
.label_68:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.64
	mov	rdi, rbp
	call	fopen_safer
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	test	r14, r14
	mov	rbp, rbp
	je	.label_73
	mov	qword ptr [rsp + 0x30], rbp
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x44], 0
	jmp	.label_76
.label_73:
	nop	
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	call	error
	jmp	.label_56
.label_71:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsi]
	mov	al, 1
	mov	dword ptr [rsp + 0x44], eax
	mov	rsp, rsp
	mov	r14,  qword ptr [word ptr [rip + stdin]]
.label_76:
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x78], 0
	nop	
	mov	qword ptr [rsp + 0x70], 0
	mov	rsp, rsp
	lea	rbp, [rsp + 0x78]
	mov	rbp, rbp
	lea	rbx, [rsp + 0x70]
	mov	rbp, rbp
	mov	r12d, 0
	lea	rdi, [rdi]
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
	jmp	.label_57
.label_81:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x78]
	movzx	edx, byte ptr [rcx]
	mov	rsp, rsp
	cmp	edx, 0x23
	mov	rbp, rbp
	je	.label_65
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax - 1]
	cmp	edx, 0xa
	jne	.label_75
	lea	rsi, [rsi]
	dec	rax
	mov	byte ptr [rcx + rax], 0
.label_75:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x78]
	nop	
	mov	rsi, rax
	lea	rdx, [rsp + 0x58]
	lea	rcx, [rsp + 0x64]
	mov	rsp, rsp
	lea	r8, [rsp + 0x68]
	call	split_3
	test	al, al
	je	.label_82
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x44]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_83
	mov	rax, qword ptr [rsp + 0x68]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2d
	lea	rdi, [rdi]
	jne	.label_83
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 1], 0
	lea	rsi, [rsi]
	je	.label_82
	nop	word ptr cs:[rax + rax]
.label_83:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + status_only]]
	and	al, 1
	je	.label_53
	nop	
	xor	r15d, r15d
	jmp	.label_58
	nop	word ptr [rax + rax]
.label_82:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + warn]]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_59
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	r14, r13
	lea	rsi, [rsi]
	mov	r13, r15
	mov	r15, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	nop	
	mov	r9d, OFFSET FLAT:.str.2
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, r15
	mov	r15, r13
	mov	r13, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	r8, r12
	call	error
.label_59:
	inc	qword ptr [rsp + 0x38]
	inc	r13
	lea	rsi, [rsi]
	jmp	.label_65
.label_53:
	mov	rdi, qword ptr [rsp + 0x68]
	mov	esi, 0xa
	nop	
	call	strchr
	test	rax, rax
	mov	rsp, rsp
	setne	r15b
.label_58:
	mov	rdi, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	lea	rdx, [rsp + 0x57]
	mov	rsp, rsp
	call	digest_file
	test	al, al
	je	.label_87
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_88
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + ignore_missing]]
	lea	rsi, [rsi]
	xor	al, 1
	lea	rdi, [rdi]
	test	al, 1
	je	.label_60
.label_88:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r13
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	eax, 1
	mov	rbx, rax
	mov	rbp, rbp
	shl	rbx, 4
	nop	
	cmp	rax, 1
	mov	r13d, 0
	jne	.label_54
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x58]
	call	__ctype_tolower_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_86:
	movzx	edx, byte ptr [rbp + r13*2]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rcx + r13]
	mov	rsi, rcx
	shr	rsi, 4
	lea	rsi, [rsi]
	movsx	esi,  byte ptr [byte ptr [rsi + digest_check.bin2hex]]
	cmp	dword ptr [rax + rdx*4], esi
	mov	rsp, rsp
	jne	.label_54
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbp + r13*2 + 1]
	mov	rsp, rsp
	and	ecx, 0xf
	lea	rdi, [rdi]
	movsx	ecx,  byte ptr [byte ptr [rcx + digest_check.bin2hex]]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + rdx*4], ecx
	mov	rbp, rbp
	jne	.label_54
	lea	rdi, [rdi]
	inc	r13
	lea	rdi, [rdi]
	cmp	r13, rbx
	mov	rbp, rbp
	jb	.label_86
.label_54:
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	lea	rbp, [rcx + 1]
	cmp	r13, rbx
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	jne	.label_64
	mov	al, 1
.label_64:
	cmovne	rcx, rbp
	mov	dl,  byte ptr [byte ptr [rip + status_only]]
	lea	rsi, [rsi]
	and	dl, 1
	je	.label_85
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, qword ptr [rsp + 8]
	mov	rsp, rsp
	jmp	.label_60
.label_87:
	inc	qword ptr [rsp + 0x20]
	nop	
	mov	al,  byte ptr [byte ptr [rip + status_only]]
	and	al, 1
	jne	.label_60
	test	r15b, r15b
	je	.label_55
	mov	edi, 0x5c
	lea	rsi, [rsi]
	call	putchar_unlocked
.label_55:
	mov	rdi, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	movzx	esi, r15b
	call	print_filename
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.68
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, rcx
	mov	rbp, rbp
	call	__printf_chk
.label_60:
	lea	rbp, [rsp + 0x78]
	lea	rbx, [rsp + 0x70]
.label_69:
	mov	r15b, 1
.label_65:
	mov	rdi, r14
	call	feof_unlocked
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_72
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_57
	jmp	.label_72
.label_85:
	cmp	r13, rbx
	jne	.label_77
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + quiet]]
	and	al, 1
	je	.label_77
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_60
.label_77:
	test	r15b, r15b
	mov	rbp, rbp
	je	.label_70
	mov	edi, 0x5c
	mov	rbp, rbp
	call	putchar_unlocked
.label_70:
	mov	rdi, qword ptr [rsp + 0x68]
	nop	
	movzx	esi, r15b
	mov	rsp, rsp
	call	print_filename
	cmp	r13, rbx
	lea	rdi, [rdi]
	je	.label_63
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.68
	xor	eax, eax
	mov	rdx, rcx
	nop	
	call	__printf_chk
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	mov	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jmp	.label_60
.label_63:
	mov	al,  byte ptr [byte ptr [rip + quiet]]
	and	al, 1
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	lea	rbp, [rsp + 0x78]
	lea	rbx, [rsp + 0x70]
	mov	rsp, rsp
	jne	.label_69
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.68
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	__printf_chk
	mov	rsp, rsp
	jmp	.label_69
	nop	
.label_57:
	inc	r12
	je	.label_79
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	getline
	test	rax, rax
	nop	
	jg	.label_81
.label_72:
	nop	
	mov	rdi, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	call	free
	mov	rdi, r14
	call	ferror_unlocked
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_62
	mov	rbp, rbp
	xor	ebx, ebx
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
	jmp	.label_56
.label_62:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	mov	rsp, rsp
	jne	.label_67
	mov	rdi, r14
	call	rpl_fclose
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_67
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	nop	
	mov	esi, ebp
	call	error
	nop	
	jmp	.label_56
.label_67:
	and	r15b, 1
	lea	rsi, [rsi]
	je	.label_78
	mov	al,  byte ptr [byte ptr [rip + status_only]]
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jne	.label_80
	nop	
	mov	r14, r15
	mov	r15, rcx
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_84
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	select_plural
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.74
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.75
	mov	rsp, rsp
	mov	r8d, 5
	mov	rcx, rax
	lea	rdi, [rdi]
	call	dcngettext
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rbx
	call	error
.label_84:
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_61
	mov	rdi, rbp
	nop	
	call	select_plural
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.76
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.77
	mov	rbp, rbp
	mov	r8d, 5
	mov	rbp, rbp
	mov	rcx, rax
	call	dcngettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
.label_61:
	mov	rcx, r15
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_74
	mov	rbx, rcx
	mov	rdi, rbx
	nop	
	call	select_plural
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	nop	
	mov	edx, OFFSET FLAT:.str.79
	mov	r8d, 5
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	call	dcngettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	call	error
	lea	rsi, [rsi]
	mov	rcx, rbx
.label_74:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_89
	test	byte ptr [byte ptr [rip + ignore_missing]],  1
	je	.label_89
	mov	r15, rcx
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	rcx, r15
.label_89:
	lea	rdi, [rdi]
	test	r14b, r14b
	lea	rdi, [rdi]
	je	.label_66
.label_80:
	lea	rsi, [rsi]
	xor	ebx, ebx
	or	rbp, rcx
	lea	rsi, [rsi]
	jne	.label_56
	nop	
	mov	rax, qword ptr [rsp + 0x18]
	and	al, 1
	mov	rsp, rsp
	je	.label_56
	lea	rsi, [rsi]
	mov	bl,  byte ptr [byte ptr [rip + strict]]
	lea	rdi, [rdi]
	test	r13, r13
	sete	al
	mov	rbp, rbp
	xor	bl, 1
	or	bl, al
	jmp	.label_56
.label_78:
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	nop	
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	mov	r8d, OFFSET FLAT:.str.2
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	lea	rsi, [rsi]
	jmp	.label_56
.label_66:
	nop	
	xor	ebx, ebx
.label_56:
	and	bl, 1
	mov	rbp, rbp
	mov	al, bl
	mov	rsp, rsp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_79:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	call	error
	.section	.text
	.align	16
	#Procedure 0x402b60

	.globl digest_file
	.type digest_file, @function
digest_file:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	r14, rsi
	nop	
	mov	r15, rdi
	movzx	eax, byte ptr [r15]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	jne	.label_95
	mov	rbp, rbp
	cmp	byte ptr [r15 + 1], 0
	mov	byte ptr [rbx], 0
	nop	
	jne	.label_93
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	bl, 1
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	jmp	.label_94
.label_95:
	mov	rsp, rsp
	mov	byte ptr [rbx], 0
.label_93:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.64
	mov	rdi, r15
	lea	rsi, [rsi]
	call	fopen_safer
	mov	rsp, rsp
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_92
	xor	ebx, ebx
.label_94:
	mov	rbp, rbp
	mov	esi, 2
	mov	rsp, rsp
	mov	rdi, rbp
	call	fadvise
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r14
	call	md5_stream
	test	eax, eax
	je	.label_90
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	cmp	rbp,  qword ptr [word ptr [rip + stdin]]
	je	.label_91
	mov	rdi, rbp
	nop	
	call	rpl_fclose
	xor	r14d, r14d
	lea	rsi, [rsi]
	jmp	.label_91
.label_92:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + ignore_missing]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_96
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 2
	mov	rbp, rbp
	jne	.label_96
	mov	rsp, rsp
	mov	byte ptr [rbx], 1
	mov	r14b, 1
	mov	rsp, rsp
	jmp	.label_91
.label_90:
	mov	r14b, 1
	nop	
	test	bl, bl
	lea	rsi, [rsi]
	jne	.label_91
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	mov	rsp, rsp
	je	.label_91
.label_96:
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_91:
	mov	rsp, rsp
	mov	al, r14b
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

	.globl print_filename
	.type print_filename, @function
print_filename:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	sil, sil
	lea	rsi, [rsi]
	je	.label_97
	lea	rsi, [rsi]
	mov	al, byte ptr [rbx]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_101
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_98:
	nop	
	movsx	edi, al
	cmp	edi, 0x5c
	je	.label_100
	cmp	edi, 0xa
	lea	rdi, [rdi]
	jne	.label_102
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.81
	lea	rsi, [rsi]
	call	fputs_unlocked
	jmp	.label_99
	nop	word ptr [rax + rax]
.label_100:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.82
	call	fputs_unlocked
	jmp	.label_99
	nop	dword ptr [rax]
.label_102:
	call	putchar_unlocked
.label_99:
	mov	al, byte ptr [rbx]
	mov	rsp, rsp
	inc	rbx
	nop	
	test	al, al
	jne	.label_98
.label_101:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_97:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	pop	rbx
	mov	rsp, rsp
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x402dd0

	.globl split_3
	.type split_3, @function
split_3:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp], rcx
	nop	
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	r12d, r12d
	jmp	.label_110
	nop	word ptr cs:[rax + rax]
.label_109:
	mov	rsp, rsp
	inc	r12
.label_110:
	movzx	eax, byte ptr [rbx + r12]
	lea	rdi, [rdi]
	cmp	eax, 0x20
	je	.label_109
	movzx	r14d, al
	lea	rdi, [rdi]
	cmp	r14d, 9
	lea	rdi, [rdi]
	je	.label_109
	nop	
	mov	qword ptr [rsp + 8], r8
	mov	rsp, rsp
	cmp	r14d, 0x5c
	sete	al
	movzx	r15d, al
	nop	
	add	r15, rbx
	lea	rbp, [r15 + r12]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 3
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_111
	cmp	r14d, 0x5c
	lea	rsi, [rsi]
	sete	dil
	mov	rbp, rbp
	mov	dl,  byte ptr [byte ptr [rip + min_digest_line_length]]
	mov	rsp, rsp
	xor	eax, eax
	and	dl, 1
	mov	rbp, rbp
	mov	edx, 0x22
	cmove	rdx, rax
	nop	
	movzx	esi, byte ptr [r15 + r12]
	lea	rsi, [rsi]
	cmp	esi, 0x5c
	lea	rdi, [rdi]
	sete	cl
	lea	rdi, [rdi]
	movzx	ecx, cl
	or	rcx, rdx
	lea	rdi, [rdi]
	movzx	edx, dil
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, rdx
	sub	rsi, r12
	mov	rbp, rbp
	cmp	rsi, rcx
	jb	.label_103
	cmp	r14d, 0x5c
	mov	rbp, rbp
	sete	al
	mov	rbp, rbp
	mov	qword ptr [r13], rbp
	lea	rdi, [rdi]
	movzx	ebp,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	ebp, 1
	shl	rbp, 5
	movzx	eax, al
	or	rax, rbp
	add	rax, rbx
	movzx	ecx, byte ptr [r12 + rax]
	mov	rbp, rbp
	cmp	ecx, 0x20
	je	.label_114
	movzx	ecx, cl
	mov	rsp, rsp
	cmp	ecx, 9
	mov	rsp, rsp
	jne	.label_107
.label_114:
	nop	
	cmp	r14d, 0x5c
	sete	cl
	lea	rsi, [rsi]
	movzx	r15d, cl
	mov	byte ptr [rax + r12], 0
	nop	
	mov	rdi, qword ptr [r13]
	call	hex_digits
	mov	rbp, rbp
	test	al, al
	je	.label_116
	add	r15, rbp
	lea	rsi, [rsi]
	lea	rcx, [r12 + r15 + 1]
	cmp	r14d, 0x5c
	sete	al
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	add	rax, rbp
	lea	rsi, [rsi]
	mov	edx, 2
	lea	rsi, [rsi]
	sub	rdx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	add	rdx, rax
	mov	rsp, rsp
	add	rdx, r12
	mov	rbp, rbp
	je	.label_104
	cmp	r14d, 0x5c
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	add	rax, rbp
	lea	rsi, [rsi]
	add	rax, rbx
	movzx	edx, byte ptr [r12 + rax + 1]
	lea	rdi, [rdi]
	cmp	edx, 0x20
	je	.label_105
	lea	rsi, [rsi]
	movzx	edx, dl
	cmp	edx, 0x2a
	lea	rsi, [rsi]
	jne	.label_104
.label_105:
	nop	
	cmp	dword ptr [dword ptr [rip + bsd_reversed]],  1
	mov	rdx, qword ptr [rsp + 8]
	mov	rbp, rbp
	je	.label_108
	cmp	r14d, 0x5c
	sete	cl
	mov	dword ptr [dword ptr [rip + bsd_reversed]],  0
	movzx	eax, byte ptr [rax + r12 + 1]
	mov	rbp, rbp
	cmp	eax, 0x2a
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	eax, al
	mov	rsi, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rsi], eax
	movzx	eax, cl
	add	rbp, rax
	lea	rsi, [rsi]
	lea	rcx, [r12 + rbp + 2]
	lea	rdi, [rdi]
	jmp	.label_108
.label_111:
	cmp	r14d, 0x5c
	sete	al
	movzx	eax, al
	lea	rcx, [rbx + rax]
	nop	
	movzx	ecx, byte ptr [r12 + rcx + 3]
	cmp	ecx, 0x20
	jne	.label_112
	lea	rsi, [rsi]
	lea	rax, [rax + r12 + 4]
	nop	
	jmp	.label_115
.label_112:
	lea	rsi, [rsi]
	lea	rax, [rax + r12 + 3]
.label_115:
	movzx	ecx, byte ptr [rbx + rax]
	mov	rsp, rsp
	cmp	ecx, 0x28
	mov	rbp, rbp
	jne	.label_106
	cmp	r14d, 0x5c
	lea	rsi, [rsi]
	sete	cl
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	dword ptr [rdx], 0
	lea	rsi, [rsi]
	lea	rdi, [rbx + rax + 1]
	inc	rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, rax
	lea	rsi, [rsi]
	movzx	r8d, cl
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	call	bsd_split_3
	jmp	.label_103
.label_106:
	xor	eax, eax
	jmp	.label_103
.label_107:
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_103
.label_116:
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_103
.label_104:
	cmp	dword ptr [dword ptr [rip + bsd_reversed]],  0
	nop	
	je	.label_113
	mov	dword ptr [dword ptr [rip + bsd_reversed]],  1
	mov	rdx, qword ptr [rsp + 8]
.label_108:
	lea	rdi, [rdi]
	add	rbx, rcx
	mov	rsp, rsp
	mov	qword ptr [rdx], rbx
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	cmp	r14d, 0x5c
	lea	rdi, [rdi]
	jne	.label_103
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, rcx
	mov	rdi, rbx
	mov	rbp, rbp
	call	filename_unescape
	mov	rbp, rbp
	test	rax, rax
	setne	al
	lea	rsi, [rsi]
	jmp	.label_103
.label_113:
	mov	rsp, rsp
	xor	eax, eax
.label_103:
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403130

	.globl select_plural
	.type select_plural, @function
select_plural:
	mov	rax, rdi
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403140

	.globl bsd_split_3
	.type bsd_split_3, @function
bsd_split_3:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	r14, rdx
	mov	rbp, rbp
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_117
	lea	r15, [rdi + rsi]
	xor	eax, eax
.label_124:
	mov	rbx, rax
	lea	rax, [rsi + rbx]
	cmp	rax, 1
	mov	rbp, rbp
	je	.label_122
	lea	rax, [rbx - 1]
	movzx	edx, byte ptr [r15 + rbx - 1]
	cmp	edx, 0x29
	jne	.label_124
.label_122:
	movzx	eax, byte ptr [rbx + r15 - 1]
	lea	rsi, [rsi]
	cmp	eax, 0x29
	jne	.label_127
	mov	qword ptr [rcx], rdi
	mov	rbp, rbp
	test	r8b, r8b
	lea	rdi, [rdi]
	je	.label_119
	lea	rsi, [rsi + rbx - 1]
	call	filename_unescape
	test	rax, rax
	je	.label_126
.label_119:
	mov	rbp, rbp
	lea	rdi, [rbx + r15 + 1]
	lea	rsi, [rsi]
	mov	byte ptr [r15 + rbx - 1], 0
	xor	eax, eax
	jmp	.label_125
	nop	word ptr [rax + rax]
.label_120:
	inc	rdi
.label_125:
	movzx	ecx, byte ptr [rdi - 1]
	cmp	ecx, 9
	je	.label_120
	nop	
	movzx	ecx, cl
	cmp	ecx, 0x20
	je	.label_120
	cmp	ecx, 0x3d
	lea	rdi, [rdi]
	jne	.label_121
	jmp	.label_123
	nop	
.label_118:
	inc	rdi
.label_123:
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	eax, 0x20
	je	.label_118
	movzx	eax, al
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_118
	mov	rbp, rbp
	mov	qword ptr [r14], rdi
	nop	
	call	hex_digits
	lea	rsi, [rsi]
	jmp	.label_121
.label_117:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_121
.label_127:
	xor	eax, eax
.label_121:
	nop	
	pop	rbx
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_126:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_121
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403240

	.globl hex_digits
	.type hex_digits, @function
hex_digits:
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	movzx	eax,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	nop	
	and	eax, 1
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_128
	nop	
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	movzx	ecx,  byte ptr [byte ptr [rip + digest_hex_bytes]]
	and	ecx, 1
	mov	rsp, rsp
	shl	rcx, 5
	mov	edx, 1
	nop	dword ptr [rax + rax]
.label_131:
	movzx	esi, bl
	lea	rsi, [rsi]
	test	byte ptr [rax + rsi*2 + 1], 0x10
	lea	rsi, [rsi]
	je	.label_130
	mov	esi, edx
	nop	
	cmp	rsi, rcx
	mov	bl, byte ptr [r14 + rdx]
	lea	rdx, [rdx + 1]
	nop	
	jb	.label_131
.label_128:
	test	bl, bl
	sete	al
	jmp	.label_129
.label_130:
	mov	rbp, rbp
	xor	eax, eax
.label_129:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl filename_unescape
	.type filename_unescape, @function
filename_unescape:
	nop	
	test	rsi, rsi
	mov	rcx, rdi
	mov	rsp, rsp
	je	.label_135
	lea	rsi, [rsi]
	lea	r8, [rsi - 1]
	xor	edx, edx
	mov	rcx, rdi
	nop	dword ptr [rax]
.label_134:
	mov	rbp, rbp
	mov	r9b, byte ptr [rdi + rdx]
	movsx	eax, r9b
	mov	rbp, rbp
	cmp	eax, 0x5c
	je	.label_137
	test	eax, eax
	mov	eax, 0
	je	.label_133
	mov	byte ptr [rcx], r9b
	jmp	.label_132
	nop	word ptr cs:[rax + rax]
.label_137:
	cmp	rdx, r8
	mov	rbp, rbp
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_133
	nop	
	movsx	eax, byte ptr [rdi + rdx + 1]
	mov	rsp, rsp
	inc	rdx
	nop	
	cmp	eax, 0x5c
	mov	rsp, rsp
	je	.label_138
	cmp	eax, 0x6e
	mov	eax, 0
	jne	.label_133
	lea	rdi, [rdi]
	mov	byte ptr [rcx], 0xa
	lea	rsi, [rsi]
	jmp	.label_132
	nop	word ptr [rax + rax]
.label_138:
	nop	
	mov	byte ptr [rcx], 0x5c
.label_132:
	mov	rsp, rsp
	inc	rcx
	lea	rdi, [rdi]
	inc	rdx
	cmp	rdx, rsi
	lea	rsi, [rsi]
	jb	.label_134
.label_135:
	add	rsi, rdi
	cmp	rcx, rsi
	mov	rbp, rbp
	jae	.label_136
	mov	byte ptr [rcx], 0
.label_136:
	nop	
	mov	rax, rdi
.label_133:
	mov	rbp, rbp
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4033a0
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
	#Procedure 0x4033b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033c0

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
	je	.label_142
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_139
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_139
.label_142:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_141
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_139:
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
	jne	.label_140
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
.label_141:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_140:
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
	#Procedure 0x4034c0

	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:
	mov	dword ptr [rdi], 0x67452301
	lea	rsi, [rsi]
	mov	dword ptr [rdi + 4], 0xefcdab89
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 8], 0x98badcfe
	mov	dword ptr [rdi + 0xc], 0x10325476
	mov	rsp, rsp
	mov	dword ptr [rdi + 0x14], 0
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	mov	dword ptr [rdi + 0x18], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x403500

	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:
	nop
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	esi, dword ptr [r14]
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	set_uint32
	lea	rsi, [rsi]
	lea	rdi, [rbx + 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [r14 + 4]
	call	set_uint32
	mov	rsp, rsp
	lea	rdi, [rbx + 8]
	mov	esi, dword ptr [r14 + 8]
	lea	rsi, [rsi]
	call	set_uint32
	mov	rsp, rsp
	lea	rdi, [rbx + 0xc]
	mov	esi, dword ptr [r14 + 0xc]
	call	set_uint32
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403570

	.globl set_uint32
	.type set_uint32, @function
set_uint32:
	mov	dword ptr [rdi], esi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403580

	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	mov	rsp, rsp
	cmp	rax, 0x38
	mov	ecx, 0x10
	nop	
	mov	r15d, 0x20
	cmovb	r15, rcx
	nop	
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_143
	inc	dword ptr [rbx + 0x14]
.label_143:
	mov	ecx, dword ptr [rbx + 0x10]
	shl	ecx, 3
	lea	r12, [rbx + 0x1c]
	mov	rbp, rbp
	mov	dword ptr [rbx + r15*4 + 0x14], ecx
	mov	ecx, dword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rbx + 0x14]
	mov	rsp, rsp
	shld	edx, ecx, 3
	mov	rsp, rsp
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	mov	rsp, rsp
	lea	rdi, [rbx + rax + 0x1c]
	lea	rdx, [r15*4 - 8]
	sub	rdx, rax
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	nop	
	shl	r15, 2
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	rdi, rbx
	mov	rsi, r14
	nop	
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rsi, [rsi]
	jmp	md5_read_ctx
	.section	.text
	.align	16
	#Procedure 0x403640

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp - 0x80], rdx
	nop	
	mov	rax, rsi
	and	rax, 0xfffffffffffffffc
	add	rax, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp - 0x78], rax
	mov	r10d, dword ptr [rdx]
	mov	rbp, rbp
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	nop	
	mov	r8, rsi
	shr	r8, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	add	ecx, esi
	mov	rbp, rbp
	mov	dword ptr [rdx + 0x10], ecx
	mov	rsp, rsp
	adc	r8d, 0
	add	dword ptr [rdx + 0x14], r8d
	mov	rsp, rsp
	cmp	rdi, rax
	nop	
	jae	.label_144
	nop	dword ptr [rax + rax]
.label_146:
	mov	qword ptr [rsp + 8], rbx
	mov	qword ptr [rsp - 0x40], r9
	nop	
	mov	qword ptr [rsp - 0x38], rbp
	mov	dword ptr [rsp - 0x2c], r10d
	mov	eax, r9d
	xor	eax, ebp
	mov	rbp, rbp
	and	eax, ebx
	xor	eax, ebp
	lea	rdi, [rdi]
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	nop	
	mov	qword ptr [rsp - 0x50], rcx
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 8], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	rol	edx, 7
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	edx, eax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	xor	eax, r9d
	mov	rsp, rsp
	and	eax, edx
	lea	rsi, [rsi]
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	rdi, [rdi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	xor	eax, ecx
	mov	rsp, rsp
	and	eax, ebp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	xor	eax, ecx
	mov	rbp, rbp
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x18], rcx
	lea	rsi, [rsi]
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	nop	
	add	ebx, ebp
	lea	rdi, [rdi]
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	rsp, rsp
	mov	esi, dword ptr [rdi + 0xc]
	lea	rsi, [rsi]
	mov	qword ptr [rsp - 0x68], rsi
	mov	rcx, qword ptr [rsp + 8]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	lea	rsi, [rsi]
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	mov	rsp, rsp
	xor	ecx, ebp
	mov	rsp, rsp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	nop	
	mov	dword ptr [rsp - 0x20], esi
	nop	
	add	edx, esi
	nop	
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	nop	
	add	ecx, eax
	lea	rsi, [rsi]
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x28], esi
	nop	
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	rsp, rsp
	xor	edx, eax
	mov	rsp, rsp
	and	edx, r8d
	xor	edx, eax
	mov	rsp, rsp
	mov	esi, dword ptr [rdi + 0x18]
	mov	dword ptr [rsp - 0x44], esi
	mov	rsp, rsp
	add	ebx, esi
	mov	rbp, rbp
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	lea	rdi, [rdi]
	add	ebx, r8d
	mov	rbp, rbp
	mov	ebp, r8d
	nop	
	xor	ebp, ecx
	mov	rsp, rsp
	and	ebp, ebx
	mov	rsp, rsp
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x1c], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	mov	rbp, rbp
	rol	r9d, 0x16
	add	r9d, ebx
	mov	rbp, rbp
	mov	eax, ebx
	xor	eax, r8d
	lea	rsi, [rsi]
	and	eax, r9d
	xor	eax, r8d
	lea	rsi, [rsi]
	mov	edx, dword ptr [rdi + 0x20]
	mov	rsp, rsp
	mov	dword ptr [rsp - 0x24], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	mov	rbp, rbp
	rol	ecx, 7
	mov	rsp, rsp
	add	ecx, r9d
	mov	eax, r9d
	mov	rsp, rsp
	xor	eax, ebx
	and	eax, ecx
	mov	rbp, rbp
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp + 4], edx
	lea	rsi, [rsi]
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	lea	rdi, [rdi]
	rol	ebp, 0xc
	nop	
	add	ebp, ecx
	lea	rsi, [rsi]
	mov	eax, ecx
	mov	rsp, rsp
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	nop	
	mov	dword ptr [rsp - 0x5c], edx
	add	ebx, edx
	mov	r13d, edx
	lea	rsi, [rsi]
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	mov	rbp, rbp
	add	r15d, ebp
	lea	rdi, [rdi]
	mov	eax, ebp
	lea	rdi, [rdi]
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	mov	dword ptr [rsp - 0xc], edx
	add	r9d, edx
	lea	rsi, [rsi]
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	mov	rbp, rbp
	xor	eax, ebp
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x54], ebx
	add	ecx, ebx
	mov	rsp, rsp
	lea	ecx, [rax + rcx + 0x6b901122]
	lea	rsi, [rsi]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	lea	rsi, [rsi]
	xor	eax, r15d
	mov	rsp, rsp
	and	eax, ecx
	nop	
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	mov	dword ptr [rsp - 0x58], ebx
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	lea	rdi, [rdi]
	add	r9d, ecx
	mov	eax, ecx
	mov	rsp, rsp
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	nop	
	mov	r14d, dword ptr [rdi + 0x38]
	mov	dword ptr [rsp - 0x6c], r14d
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	mov	rbp, rbp
	add	r8d, r9d
	mov	eax, r9d
	nop	
	xor	eax, ecx
	and	eax, r8d
	lea	rsi, [rsi]
	xor	eax, ecx
	nop	
	mov	ebp, dword ptr [rdi + 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rsp - 0x48], ebp
	add	r11d, ebp
	lea	rsi, [rsi]
	mov	r15d, ebp
	lea	rdi, [rdi]
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	mov	rbp, rbp
	xor	eax, r8d
	and	eax, r9d
	lea	rsi, [rsi]
	xor	eax, r8d
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp - 8]
	add	ecx, ebp
	lea	rsi, [rsi]
	lea	ecx, [rax + rcx - 0x9e1da9e]
	lea	rdi, [rdi]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	mov	rsp, rsp
	xor	eax, r11d
	and	eax, r8d
	mov	rbp, rbp
	xor	eax, r11d
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	lea	rdi, [rdi]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	lea	rsi, [rsi]
	xor	eax, ecx
	lea	rsi, [rsi]
	and	eax, r11d
	xor	eax, ecx
	nop	
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x265e5a51]
	mov	rsp, rsp
	rol	r8d, 0xe
	mov	rsp, rsp
	add	r8d, ebp
	mov	rbp, rbp
	mov	eax, r8d
	xor	eax, ebp
	mov	rsp, rsp
	and	eax, ecx
	lea	rdi, [rdi]
	xor	eax, ebp
	mov	rsp, rsp
	add	r11d, r10d
	lea	rsi, [rsi]
	lea	r11d, [rax + r11 - 0x16493856]
	mov	rbp, rbp
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	nop	
	xor	eax, r8d
	nop	
	and	eax, ebp
	nop	
	xor	eax, r8d
	nop	
	mov	r9d, dword ptr [rsp - 0x28]
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	mov	rsp, rsp
	rol	ecx, 5
	lea	rsi, [rsi]
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	lea	rsi, [rsi]
	and	eax, r8d
	lea	rdi, [rdi]
	xor	eax, r11d
	lea	rdi, [rdi]
	add	ebp, r13d
	lea	rsi, [rsi]
	lea	ebp, [rax + rbp + 0x2441453]
	mov	rbp, rbp
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	lea	rsi, [rsi]
	xor	eax, ecx
	nop	
	and	eax, r11d
	xor	eax, ecx
	mov	rbp, rbp
	add	r8d, r15d
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	nop	
	add	r8d, ebp
	lea	rdi, [rdi]
	mov	eax, r8d
	xor	eax, ebp
	lea	rdi, [rdi]
	and	eax, ecx
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x20]
	lea	rsi, [rsi]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	lea	rdi, [rdi]
	add	r11d, r8d
	mov	rbp, rbp
	mov	eax, r11d
	xor	eax, r8d
	lea	rsi, [rsi]
	and	eax, ebp
	nop	
	xor	eax, r8d
	mov	rbp, rbp
	add	ecx, dword ptr [rsp + 4]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	nop	
	and	eax, r8d
	lea	rdi, [rdi]
	xor	eax, r11d
	mov	rbp, rbp
	mov	r13d, r14d
	nop	
	add	ebp, r13d
	mov	rbp, rbp
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	rol	ebp, 9
	mov	rbp, rbp
	add	ebp, ecx
	mov	rbp, rbp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	nop	
	xor	eax, ecx
	mov	rbp, rbp
	add	r8d, r12d
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	lea	rdi, [rdi]
	add	r8d, ebp
	mov	rbp, rbp
	mov	eax, r8d
	mov	rsp, rsp
	xor	eax, ebp
	and	eax, ecx
	lea	rsi, [rsi]
	xor	eax, ebp
	mov	rbp, rbp
	mov	esi, dword ptr [rsp - 0x24]
	lea	rdi, [rdi]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	lea	rsi, [rsi]
	rol	r11d, 0x14
	nop	
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	nop	
	lea	ecx, [rax + rcx - 0x561c16fb]
	mov	rbp, rbp
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	nop	
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x18]
	lea	rsi, [rsi]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	mov	rsp, rsp
	rol	r14d, 9
	nop	
	add	r14d, ecx
	nop	
	mov	eax, r14d
	lea	rdi, [rdi]
	xor	eax, ecx
	and	eax, r11d
	mov	rbp, rbp
	xor	eax, ecx
	nop	
	mov	edx, dword ptr [rsp - 0x1c]
	add	r8d, edx
	nop	
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	lea	rdi, [rdi]
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	lea	rsi, [rsi]
	mov	eax, ebp
	and	eax, ecx
	nop	
	xor	eax, r14d
	mov	rbp, rbp
	mov	r15d, dword ptr [rsp - 0x54]
	mov	rsp, rsp
	add	r11d, r15d
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	lea	rsi, [rsi]
	add	eax, r8d
	lea	rdi, [rdi]
	xor	ebp, eax
	mov	rbp, rbp
	add	ecx, r9d
	mov	rsp, rsp
	lea	r11d, [rbp + rcx - 0x5c6be]
	rol	r11d, 4
	nop	
	add	r11d, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	xor	ecx, r8d
	lea	rdi, [rdi]
	xor	ecx, r11d
	lea	rdi, [rdi]
	add	r14d, esi
	lea	rdi, [rdi]
	lea	r14d, [rcx + r14 - 0x788e097f]
	rol	r14d, 0xb
	add	r14d, r11d
	lea	rdi, [rdi]
	mov	ebp, r11d
	lea	rdi, [rdi]
	xor	ebp, eax
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0xc]
	mov	rbp, rbp
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	rol	ebp, 0x10
	lea	rsi, [rsi]
	add	ebp, r14d
	mov	rbp, rbp
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, ebp
	mov	rbp, rbp
	add	eax, r13d
	lea	r8d, [rcx + rax - 0x21ac7f4]
	nop	
	rol	r8d, 0x17
	add	r8d, ebp
	nop	
	mov	eax, ebp
	mov	rsp, rsp
	xor	eax, r14d
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 8]
	mov	rbp, rbp
	add	r11d, ecx
	lea	r11d, [rax + r11 - 0x5b4115bc]
	lea	rsi, [rsi]
	rol	r11d, 4
	lea	rsi, [rsi]
	add	r11d, r8d
	mov	rsp, rsp
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	rsi, [rsi]
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	rol	r14d, 0xb
	lea	rdi, [rdi]
	add	r14d, r11d
	lea	rsi, [rsi]
	mov	eax, r11d
	mov	rsp, rsp
	xor	eax, r8d
	xor	eax, r14d
	add	ebp, edx
	nop	
	lea	ebp, [rax + rbp - 0x944b4a0]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	mov	rsp, rsp
	xor	eax, r11d
	mov	rsp, rsp
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x5c]
	lea	rdi, [rdi]
	add	r8d, r10d
	lea	rsi, [rsi]
	lea	r8d, [rax + r8 - 0x41404390]
	rol	r8d, 0x17
	lea	rdi, [rdi]
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	lea	rdi, [rdi]
	add	eax, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x50]
	add	r14d, esi
	nop	
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	nop	
	add	r11d, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rsp, rsp
	xor	ecx, r8d
	lea	rdi, [rdi]
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x68]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	lea	rsi, [rsi]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	mov	rsp, rsp
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x44]
	nop	
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	lea	rdi, [rdi]
	rol	r8d, 0x17
	mov	rbp, rbp
	add	r8d, r14d
	lea	rsi, [rsi]
	mov	ecx, r14d
	xor	ecx, r11d
	lea	rdi, [rdi]
	xor	ecx, r8d
	lea	rdi, [rdi]
	add	eax, dword ptr [rsp + 4]
	mov	rbp, rbp
	lea	ecx, [rcx + rax - 0x262b2fc7]
	lea	rsi, [rsi]
	rol	ecx, 4
	add	ecx, r8d
	lea	rdi, [rdi]
	mov	eax, r8d
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	nop	
	add	edx, ecx
	mov	ebp, ecx
	xor	ebp, r8d
	nop	
	xor	ebp, edx
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rsp - 0x48]
	add	r14d, r13d
	lea	rsi, [rsi]
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	rbp, rbp
	mov	ebp, edx
	mov	rsp, rsp
	xor	ebp, ecx
	mov	rbp, rbp
	xor	ebp, r11d
	mov	rbp, rbp
	mov	rax, qword ptr [rsp - 0x18]
	mov	rbp, rbp
	add	r8d, eax
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	lea	rsi, [rsi]
	mov	eax, edx
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x1c]
	rol	ecx, 6
	add	ecx, r8d
	nop	
	mov	eax, r11d
	not	eax
	lea	rdi, [rdi]
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	mov	rsp, rsp
	add	r11d, dword ptr [rsp - 0x6c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	rbp, rbp
	mov	eax, r8d
	lea	rsi, [rsi]
	not	eax
	or	eax, ebp
	mov	rsp, rsp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	mov	rsp, rsp
	add	r8d, dword ptr [rsp - 0x28]
	lea	rsi, [rsi]
	rol	eax, 0xf
	mov	rbp, rbp
	add	eax, ebp
	mov	rbp, rbp
	mov	edx, ecx
	not	edx
	or	edx, eax
	mov	rbp, rbp
	xor	edx, ebp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	mov	rsp, rsp
	add	esi, eax
	mov	edx, ebp
	not	edx
	lea	rdi, [rdi]
	or	edx, esi
	xor	edx, eax
	mov	rsp, rsp
	lea	ecx, [rdx + rcx + 0x655b59c3]
	add	ebp, r9d
	rol	ecx, 6
	mov	rsp, rsp
	add	ecx, esi
	mov	rbp, rbp
	mov	edx, eax
	not	edx
	lea	rdi, [rdi]
	or	edx, ecx
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	mov	rsp, rsp
	add	eax, r10d
	mov	rbx, qword ptr [rsp + 8]
	rol	ebp, 0xa
	add	ebp, ecx
	nop	
	mov	edx, esi
	mov	rsp, rsp
	not	edx
	or	edx, ebp
	lea	rdi, [rdi]
	xor	edx, ecx
	mov	rbp, rbp
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	mov	rbp, rbp
	add	eax, ebp
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp - 8]
	add	esi, edx
	mov	edx, ecx
	mov	rbp, rbp
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	lea	rdi, [rdi]
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x24]
	mov	edx, ebp
	not	edx
	lea	rsi, [rsi]
	or	edx, r8d
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	lea	rdi, [rdi]
	rol	ecx, 6
	nop	
	add	ecx, r8d
	lea	rdi, [rdi]
	add	ebp, r13d
	lea	rdi, [rdi]
	mov	edx, eax
	not	edx
	mov	rbp, rbp
	or	edx, ecx
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	mov	rbp, rbp
	rol	edx, 0xa
	mov	rbp, rbp
	add	edx, ecx
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	nop	
	xor	esi, ecx
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	mov	rbp, rbp
	add	ebp, edx
	mov	rbp, rbp
	add	r8d, dword ptr [rsp - 0x58]
	lea	rdi, [rdi]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	nop	
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x78]
	mov	r10d, dword ptr [rsp - 0x2c]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x20]
	mov	rsp, rsp
	mov	eax, edx
	not	eax
	mov	rsp, rsp
	or	eax, esi
	lea	rdi, [rdi]
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	lea	rsi, [rsi]
	add	ecx, esi
	add	edx, dword ptr [rsp - 0xc]
	nop	
	mov	eax, ebp
	mov	rbp, rbp
	not	eax
	lea	rdi, [rdi]
	or	eax, ecx
	mov	rsp, rsp
	xor	eax, esi
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	lea	rdi, [rdi]
	add	edx, ecx
	lea	rdi, [rdi]
	add	ebp, r14d
	lea	rdi, [rdi]
	mov	eax, esi
	not	eax
	or	eax, edx
	lea	rsi, [rsi]
	xor	eax, ecx
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp + 4]
	rol	eax, 0xf
	add	eax, edx
	mov	rbp, rbp
	add	r10d, ecx
	not	ecx
	mov	rbp, rbp
	or	ecx, eax
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	nop	
	add	ebx, eax
	add	ebx, ecx
	mov	rcx, qword ptr [rsp - 0x40]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 0x38]
	lea	rdi, [rdi]
	add	edx, ecx
	nop	
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_146
	mov	rsp, rsp
	jmp	.label_145
.label_144:
	mov	eax, r9d
	mov	edx, ebp
.label_145:
	mov	rcx, qword ptr [rsp - 0x80]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
	add	rsp, 0x10
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404140

	.globl md5_stream
	.type md5_stream, @function
md5_stream:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0xa8
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	edi, 0x8048
	lea	rsi, [rsi]
	call	malloc
	mov	r12, rax
	mov	rsp, rsp
	mov	r15d, 1
	mov	rbp, rbp
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_151
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	call	md5_init_ctx
	lea	rsi, [rsi]
	mov	rdi, r13
	call	feof_unlocked
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_147
	lea	rbp, [rsp + 8]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_152:
	nop	
	lea	rdi, [r12 + rbx]
	mov	edx, 0x8000
	lea	rsi, [rsi]
	sub	rdx, rbx
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rcx, r13
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	jne	.label_153
	nop	
	mov	esi, 0x8000
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	md5_process_block
	mov	rbp, rbp
	xor	ebx, ebx
	jmp	.label_149
	nop	dword ptr [rax]
.label_153:
	test	rax, rax
	je	.label_150
.label_149:
	mov	rdi, r13
	nop	
	call	feof_unlocked
	test	eax, eax
	je	.label_152
.label_148:
	test	rbx, rbx
	nop	
	je	.label_147
	lea	rdi, [rdi]
	lea	rdx, [rsp + 8]
	mov	rdi, r12
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	md5_process_bytes
.label_147:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	rsi, r14
	mov	rsp, rsp
	call	md5_finish_ctx
	mov	rdi, r12
	call	free
.label_151:
	mov	eax, r15d
	add	rsp, 0xa8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_150:
	mov	rdi, r13
	mov	rbp, rbp
	call	ferror_unlocked
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	je	.label_148
	nop	
	mov	rdi, r12
	call	free
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	jmp	.label_151
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042c0

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	r13d, dword ptr [r14 + 0x18]
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_154
	mov	rbp, rbp
	mov	ebx, 0x80
	sub	rbx, r13
	cmp	rbx, r12
	cmova	rbx, r12
	lea	rsi, [rsi]
	lea	rdi, [r14 + r13 + 0x1c]
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	esi, dword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	add	rsi, rbx
	mov	rsp, rsp
	mov	dword ptr [r14 + 0x18], esi
	cmp	esi, 0x41
	jb	.label_158
	mov	rsp, rsp
	lea	rbp, [r14 + 0x1c]
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	and	edx, 0x3f
	lea	rsi, [rsi]
	mov	dword ptr [r14 + 0x18], edx
	add	r13, rbx
	and	r13, 0xffffffffffffffc0
	mov	rbp, rbp
	add	r13, rbp
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r13
	mov	rsp, rsp
	call	memcpy
.label_158:
	nop	
	add	r15, rbx
	sub	r12, rbx
.label_154:
	lea	rsi, [rsi]
	cmp	r12, 0x40
	jb	.label_155
	mov	rsp, rsp
	mov	rbx, r12
	nop	
	and	rbx, 0xffffffffffffffc0
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rsp, rsp
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_155:
	test	r12, r12
	je	.label_157
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_156
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	mov	rsp, rsp
	add	rbx, -0x40
	mov	rbp, rbp
	lea	rsi, [r14 + 0x5c]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
.label_156:
	mov	rbp, rbp
	mov	dword ptr [r14 + 0x18], ebx
.label_157:
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404440
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	nop
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	sub	rsp, 0xa8
	lea	rsi, [rsi]
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	lea	r12, [rsp + 8]
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsp, rsp
	call	md5_init_ctx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r12
	call	md5_process_bytes
	nop	
	mov	rdi, r12
	mov	rsi, r14
	nop	
	call	md5_finish_ctx
	add	rsp, 0xa8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_159
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_159:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044f0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_160
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_162
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_163
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_164
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_160
.label_164:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_161
.label_162:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_160
.label_163:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_161:
	xor	eax, eax
.label_160:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045d0

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
	je	.label_165
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
	jl	.label_167
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_167
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
	jne	.label_166
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_166:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_167:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_165:
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
	#Procedure 0x4046c0
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
	#Procedure 0x404710
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
	#Procedure 0x404730
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
	#Procedure 0x404750

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
	#Procedure 0x4047c0
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
	#Procedure 0x4047e0

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
	je	.label_168
	test	rdx, rdx
	nop	
	je	.label_168
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_168:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404820
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
	#Procedure 0x4048c0

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
.label_288:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_267
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_275]]
.label_422:
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
.label_423:
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
	jne	.label_186
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_186
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_223:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_240
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_240:
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
	jne	.label_223
.label_186:
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
	jmp	.label_189
.label_415:
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
	jmp	.label_189
.label_418:
	mov	rsp, rsp
	mov	al, 1
.label_416:
	mov	r15b, 1
.label_419:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_256
	mov	cl, al
.label_256:
	lea	rdi, [rdi]
	mov	al, cl
.label_417:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_260
	test	r10, r10
	je	.label_265
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_268
.label_260:
	xor	ecx, ecx
	jmp	.label_268
.label_420:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_277
	test	r10, r10
	je	.label_280
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_205
.label_421:
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
	jmp	.label_189
.label_265:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_268:
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
	jmp	.label_189
.label_277:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_205
.label_280:
	mov	rbp, rbp
	mov	eax, 1
.label_205:
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
.label_189:
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
	jmp	.label_232
	nop	word ptr [rax + rax]
.label_176:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_232:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_272
	cmp	rsi, rbp
	jne	.label_195
	jmp	.label_274
	nop	word ptr cs:[rax + rax]
.label_272:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_274
.label_195:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_282
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_179
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_179
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
.label_179:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_201
.label_282:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_228:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_208
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_276]]
.label_434:
	test	rsi, rsi
	jne	.label_221
	jmp	.label_222
	nop	word ptr [rax + rax]
.label_201:
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
	jne	.label_239
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
	je	.label_228
	mov	rsp, rsp
	jmp	.label_227
.label_239:
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
	jmp	.label_228
.label_438:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_254
	test	rsi, rsi
	nop	
	jne	.label_266
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_222
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_173
.label_427:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_212
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_227
	cmp	edi, 2
	nop	
	jne	.label_285
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_287
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_290
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_290:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_182
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_182:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_190
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_190:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_200
.label_428:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_207
.label_429:
	mov	cl, 0x74
	jmp	.label_211
.label_430:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_207
.label_431:
	mov	bl, 0x66
	jmp	.label_207
.label_432:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_211
.label_435:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_192
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_210
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
	jae	.label_230
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_230:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_246
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_246:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_250
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_250:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_261
.label_436:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_278
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_273
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_210
.label_273:
	mov	rdi, r14
	jmp	.label_221
.label_437:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_279
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_210
	mov	rdi, r14
	jmp	.label_289
.label_208:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_171
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
.label_241:
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
	ja	.label_198
	test	dl, dl
	mov	rsp, rsp
	je	.label_198
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_173
.label_254:
	test	rsi, rsi
	jne	.label_219
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_219
.label_222:
	mov	rbp, rbp
	mov	dl, 1
.label_433:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_227
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_173
.label_212:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_221
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_232
.label_192:
	mov	rdi, r14
.label_261:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_173
.label_279:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_211
.label_289:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_199
.label_211:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_227
.label_207:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_173
	lea	rsi, [rsi]
	jmp	.label_252
.label_171:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_255
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
.label_255:
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
.label_234:
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
	je	.label_174
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
	je	.label_178
	cmp	rbp, -2
	nop	
	je	.label_194
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_185
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_217:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_259
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_215
.label_259:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_217
.label_185:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_224
	xor	r15d, r15d
.label_224:
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
	je	.label_234
	jmp	.label_241
.label_219:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_173
.label_278:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_221
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_221
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_221
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_251
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_233
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_227
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_213
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_213:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_216
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_216:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_281
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_281:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_283
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_283:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_173
.label_221:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_173:
	test	r12b, r12b
	je	.label_202
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_204
	jmp	.label_206
	nop	word ptr cs:[rax + rax]
.label_202:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_206
.label_204:
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
	jne	.label_214
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_199
	jmp	.label_252
	nop	word ptr cs:[rax + rax]
.label_206:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_252
	jmp	.label_199
.label_214:
	mov	bl, r13b
	mov	rsi, r14
.label_252:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_227
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_235
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_235
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_245
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_245:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_247
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_247:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_257
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_257:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_235:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_270
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_270:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_242
.label_266:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_173
.label_198:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_286
	nop	word ptr cs:[rax + rax]
.label_231:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_286:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_177
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_181
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_187
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_187:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_181
	nop	dword ptr [rax]
.label_177:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_210
	cmp	r14d, 2
	jne	.label_172
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_172
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_220
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_220:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_229
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_229:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_238
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_238:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_172:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_248
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_248:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_180
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
.label_180:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_262
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
.label_262:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_181:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_199
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_169
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_197
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_175
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_175:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_188
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_188:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_197
	nop	word ptr cs:[rax + rax]
.label_169:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_197:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_231
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_231
	nop	word ptr cs:[rax + rax]
.label_199:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_226
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_226
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_269
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_269:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_237
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_237:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_242
	nop	word ptr cs:[rax + rax]
.label_226:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_242:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_176
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_176
.label_285:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_200
.label_287:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_200:
	cmp	rcx, r10
	jae	.label_263
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_263:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_271
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_258
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_284
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_170
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_170:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_184
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_184:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_173
.label_271:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_173
.label_258:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_173
.label_284:
	xor	r15d, r15d
	jmp	.label_173
.label_174:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_196
.label_178:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_218
.label_194:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_225
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_236:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_244
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_236
	xor	r15d, r15d
	nop	
	jmp	.label_196
.label_225:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_218:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_196:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_241
.label_244:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_196
.label_251:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_173
.label_233:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_173
	nop	word ptr cs:[rax + rax]
.label_274:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_253
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_210
.label_253:
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
	je	.label_191
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_191
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_243
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_191
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
	je	.label_288
.label_191:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_183
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_183
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_183
	inc	rdx
	nop	dword ptr [rax + rax]
.label_203:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_193
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_193:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_203
.label_183:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_209
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_209
.label_227:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_249:
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
.label_264:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_209:
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
.label_215:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_249
.label_210:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_249
.label_243:
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
	jmp	.label_264
.label_267:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406010
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
	#Procedure 0x406030

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
	je	.label_291
	mov	qword ptr [rax], rbx
.label_291:
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
	#Procedure 0x406180
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_292
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_295:
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
	jl	.label_295
.label_292:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_294
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_296]], OFFSET FLAT:slot0
.label_294:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_293
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_293:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406240

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x406250

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
	js	.label_303
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_298
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_301
.label_298:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_299
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
	jne	.label_302
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_302:
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
.label_301:
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
	ja	.label_300
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
	je	.label_297
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_297:
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
.label_300:
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
.label_303:
	lea	rdi, [rdi]
	call	abort
.label_299:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4064c0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064d0
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
	#Procedure 0x4064f0
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
	#Procedure 0x406510

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
	#Procedure 0x406570

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
	je	.label_304
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
.label_304:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4065e0

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
	#Procedure 0x406640
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
	#Procedure 0x406660
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
	#Procedure 0x406680

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
	mov	rcx,  qword ptr [word ptr [rip + label_305]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_306]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_307]]
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
	#Procedure 0x406720

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
	#Procedure 0x406740

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
	#Procedure 0x406750
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406760

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
	#Procedure 0x4067d0

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
	#Procedure 0x4067e0

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
	mov	rax,  qword ptr [word ptr [rip + label_305]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_306]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_307]]
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
	#Procedure 0x406870
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
	#Procedure 0x4068a0
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
	#Procedure 0x4068d0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068e0
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
	#Procedure 0x406900

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406910
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
	#Procedure 0x406920

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
	jne	.label_308
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
	je	.label_309
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_308
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_308
.label_309:
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
	je	.label_310
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_308
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_308
.label_310:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_308:
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
	#Procedure 0x406a50

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
	je	.label_312
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_311
	jmp	.label_313
.label_312:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_313
.label_311:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_313
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
.label_313:
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
	#Procedure 0x406b10

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
	je	.label_316
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_315
	lea	rsi, [rsi]
	jmp	.label_314
.label_316:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_314
.label_315:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_314
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
.label_314:
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
	#Procedure 0x406c00

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
	je	.label_319
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_318
	jmp	.label_317
.label_319:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_317
.label_318:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_317
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
.label_317:
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
	#Procedure 0x406cd0

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
	je	.label_322
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_321
	jmp	.label_320
.label_322:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_320
.label_321:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_320
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
.label_320:
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
	#Procedure 0x406d70

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
	je	.label_325
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_324
	nop	
	jmp	.label_323
.label_325:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_323
.label_324:
	mov	eax, 1
	test	bpl, bpl
	je	.label_323
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
.label_323:
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
	#Procedure 0x406e10

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
	je	.label_328
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_327
	lea	rsi, [rsi]
	jmp	.label_326
.label_328:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_326
.label_327:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_326
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
.label_326:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ea0

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
	je	.label_331
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_330
	jmp	.label_329
.label_331:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_329
.label_330:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_329
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_329:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406f10

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
	je	.label_332
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_334
	mov	rbp, rbp
	jmp	.label_333
.label_332:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_333
.label_334:
	xor	eax, eax
.label_333:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f60

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
	.align	16
	#Procedure 0x406f80

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
	je	.label_335
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
	jmp	.label_338
.label_335:
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
.label_338:
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
	ja	.label_340
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_341]]
.label_465:
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
.label_340:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_337
.label_466:
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
.label_467:
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
.label_468:
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
	jmp	.label_344
.label_469:
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
	jmp	.label_343
.label_470:
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
	jmp	.label_342
.label_471:
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
.label_342:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_343:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_344:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_339
.label_473:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_337:
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
	jmp	.label_336
.label_472:
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
.label_336:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_339:
	mov	rbp, rbp
	call	__fprintf_chk
.label_464:
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
	#Procedure 0x407370
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_345:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_345
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073a0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_349:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_346
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_348
	nop	word ptr cs:[rax + rax]
.label_346:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_348:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_347
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_349
.label_347:
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
	#Procedure 0x407430

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_350
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
.label_350:
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
	#Procedure 0x4074e0
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
	.align	16
	#Procedure 0x407570
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
	jb	.label_351
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_351:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075b0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_352
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_353
.label_352:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_353:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075e0
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
	jb	.label_354
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_354:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407620

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_355
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_355
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_355:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_356
	test	rax, rax
	nop	
	je	.label_357
.label_356:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_357:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407670

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_358
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_359
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_360
.label_358:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_361
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_361:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_362
.label_360:
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
.label_359:
	call	xalloc_die
.label_362:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407710

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407720
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407730
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
	#Procedure 0x407770
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
	jb	.label_363
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_363
	pop	rcx
	ret	
.label_363:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4077a0

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
	#Procedure 0x4077f0
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
	#Procedure 0x407810

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
	#Procedure 0x407860

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_364
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_365
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
	je	.label_365
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
.label_364:
	mov	ecx, 1
.label_365:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078d0

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
	js	.label_366
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_368
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
	je	.label_366
.label_368:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_366
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_367
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_367:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_366:
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
	#Procedure 0x407990

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_375
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
.label_375:
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
	ja	.label_377
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_381
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_369
	mov	rbp, rbp
	test	esi, esi
	jne	.label_377
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_379
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_373
.label_377:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_370
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_369
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_374
.label_381:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_369:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_378
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_380
.label_378:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_380:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_374:
	nop	
	cmp	eax, 6
	jne	.label_370
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_372
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_376
.label_370:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_382
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_371
.label_379:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_373:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_372:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_376:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_382:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_371:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c30

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
	.align	16
	#Procedure 0x407c50

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
	js	.label_387
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
	jns	.label_384
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_384
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_383
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_386
.label_384:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_386
.label_387:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_386:
	test	ebx, ebx
	js	.label_383
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_383
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_385
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
	jne	.label_383
.label_385:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_383:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_388
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_388
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_388:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x407d90

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_389
	mov	rbp, rbp
	ret	
.label_389:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x407db0

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
	jne	.label_390
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_390
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_392
.label_390:
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
.label_392:
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
	je	.label_391
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_391:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e60

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
	je	.label_393
	nop	
	cmp	r15, -2
	jb	.label_393
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_393
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_393:
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
	#Procedure 0x407ef0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_394
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_394
.label_395:
	ret	
.label_394:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_395
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f20
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_396
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_396:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407f40
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f50
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
	#Procedure 0x407f60
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_397
.label_398:
	ret	
.label_397:
	cmp	edi, 0x7f
	je	.label_398
	xor	eax, eax
	jmp	.label_398
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f80
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
	#Procedure 0x407f90
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
	#Procedure 0x407fa0
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
	#Procedure 0x407fb0
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
	#Procedure 0x407fc0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_399
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_399
.label_400:
	ret	
.label_399:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_400
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ff0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_401
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_401:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408010

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
	#Procedure 0x408020
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_402
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_402:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408040
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
	#Procedure 0x408050
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
	#Procedure 0x408060

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
	je	.label_403
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_404
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_404
.label_403:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_404
	test	cl, cl
	jne	.label_404
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_404:
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
	#Procedure 0x408100

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
	je	.label_406
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_405
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_407
.label_405:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_406
.label_407:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_406:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408150

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
	je	.label_408
	nop	
	mov	rax, rcx
.label_408:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x408190

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
