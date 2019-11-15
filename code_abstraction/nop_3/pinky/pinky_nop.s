	.section	.text
	.align	16
	#Procedure 0x401930

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	ebp, edi
	nop	
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.2
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	mov	rbp, rbp
	test	rax, rax
	je	.label_7
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 3
	mov	rdi, rax
	mov	rsp, rsp
	call	strncmp
	test	eax, eax
	je	.label_7
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
.label_7:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.8
	xor	eax, eax
	call	__printf_chk
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.8
	mov	ecx, OFFSET FLAT:.str.32
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_8:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x401ba0

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x428
	mov	rbp, rbp
	mov	rbx, rsi
	mov	ebp, edi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	nop	
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_1
	lea	rdi, [rdi]
	call	setlocale
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.10
	mov	esi, OFFSET FLAT:.str.11
	nop	
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.10
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rsp, rsp
	jmp	.label_11
.label_354:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + include_home_and_shell]],  1
	nop	word ptr cs:[rax + rax]
.label_11:
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.12
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:longopts
	mov	rbp, rbp
	xor	r8d, r8d
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_30
	add	eax, -0x62
	mov	rsp, rsp
	cmp	eax, 0x15
	mov	rsp, rsp
	ja	.label_25
	jmp	qword ptr [word ptr [+ (rax * 8) + label_26]]
.label_355:
	mov	byte ptr [byte ptr [rip + include_heading]],  1
	mov	rsp, rsp
	jmp	.label_11
.label_356:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + include_project]],  1
	mov	rbp, rbp
	jmp	.label_11
.label_357:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	mov	byte ptr [byte ptr [rip + include_where]],  1
	mov	rbp, rbp
	jmp	.label_11
.label_358:
	mov	byte ptr [byte ptr [rip + do_short_format]],  1
	jmp	.label_11
.label_359:
	mov	byte ptr [byte ptr [rip + include_plan]],  1
	jmp	.label_11
.label_360:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	nop	
	mov	byte ptr [byte ptr [rip + include_where]],  1
	mov	byte ptr [byte ptr [rip + include_idle]],  1
	jmp	.label_11
.label_361:
	mov	byte ptr [byte ptr [rip + do_short_format]],  0
	lea	rsi, [rsi]
	jmp	.label_11
.label_362:
	mov	byte ptr [byte ptr [rip + include_fullname]],  1
	mov	rsp, rsp
	jmp	.label_11
.label_30:
	cmp	eax, -1
	jne	.label_43
	mov	edx,  dword ptr [dword ptr [rip + optind]]
	mov	al,  byte ptr [byte ptr [rip + do_short_format]]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 1
	jne	.label_46
	lea	rdi, [rdi]
	cmp	edx, ebp
	lea	rsi, [rsi]
	je	.label_10
.label_46:
	movsxd	rcx, edx
	mov	rsp, rsp
	mov	r14d, ebp
	nop	
	sub	r14d, ecx
	lea	rdi, [rdi]
	lea	r12, [rbx + rcx*8]
	nop	
	mov	qword ptr [rsp + 0x420], r12
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_15
	lea	rdi, [rdi]
	test	r14d, r14d
	nop	
	jle	.label_20
	lea	r15, [rsp + 0x10]
	xor	r13d, r13d
	jmp	.label_23
.label_15:
	mov	dword ptr [rsp + 0x41c], edx
	mov	qword ptr [rsp + 0x410], 0
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x10]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 0x410]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.7
	xor	ecx, ecx
	lea	rdi, [rdi]
	call	read_utmp
	test	eax, eax
	jne	.label_29
	mov	r15, qword ptr [rsp + 0x10]
	nop	
	mov	r13, qword ptr [rsp + 0x410]
	mov	rbp, rbp
	mov	edi, 2
	call	hard_locale
	mov	ecx, OFFSET FLAT:.str.36
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.37
	test	al, al
	cmovne	rdx, rcx
	mov	rsp, rsp
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + time_format]],  rdx
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + time_format_width]],  eax
	nop	
	mov	al,  byte ptr [byte ptr [rip + include_heading]]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_22
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.38
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_fullname]]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	jne	.label_19
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.40
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_19:
	mov	ebx, r14d
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.43
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.42
	nop	
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + include_idle]]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_34
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.45
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.44
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_34:
	lea	rsi, [rsi]
	mov	r14d,  dword ptr [dword ptr [rip + time_format_width]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.46
	xor	eax, eax
	nop	
	mov	edx, r14d
	call	__printf_chk
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + include_where]]
	mov	rbp, rbp
	and	al, 1
	jne	.label_18
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:.str.48
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_18:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	r14d, ebx
	nop	
	jae	.label_21
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0xa
.label_22:
	nop	
	test	r15, r15
	je	.label_20
	cmp	dword ptr [rsp + 0x41c], ebp
	mov	rbp, rbp
	jne	.label_31
.label_39:
	mov	rsp, rsp
	cmp	byte ptr [r13 + 0x2c], 0
	nop	
	je	.label_36
	lea	rsi, [rsi]
	movzx	eax, word ptr [r13]
	cmp	eax, 7
	jne	.label_36
	mov	rbp, rbp
	mov	rdi, r13
	call	print_entry
.label_36:
	add	r13, 0x180
	lea	rdi, [rdi]
	dec	r15
	jne	.label_39
	jmp	.label_20
.label_14:
	nop	
	mov	esi, 0xa
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_44
.label_48:
	mov	esi, 0xa
	call	__overflow
	lea	rsi, [rsi]
	jmp	.label_16
.label_42:
	mov	esi, 0xa
	lea	rdi, [rdi]
	call	__overflow
	jmp	.label_13
	nop	
.label_23:
	mov	rbx, qword ptr [r12 + r13*8]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	getpwnam
	nop	
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.62
	nop	
	xor	eax, eax
	mov	rdx, rbx
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.63
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_35
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp + 0x18]
	lea	rsi, [rsi]
	mov	esi, 0x2c
	mov	rbp, rbp
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	nop	
	je	.label_41
	mov	rsp, rsp
	mov	byte ptr [rax], 0
	mov	rbx, qword ptr [rbp + 0x18]
.label_41:
	mov	rsi, qword ptr [rbp]
	mov	rdi, rbx
	mov	rsp, rsp
	call	create_fullname
	mov	rbx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.48
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbx
	call	__printf_chk
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	free
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_14
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xa
.label_44:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + include_home_and_shell]]
	and	al, 1
	jne	.label_13
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rdx, qword ptr [rbp + 0x20]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.66
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rcx
	mov	rbp, rbp
	call	__printf_chk
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp + 0x28]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.48
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_42
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	nop	
	mov	byte ptr [rax], 0xa
.label_13:
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + include_project]]
	and	al, 1
	mov	rbp, rbp
	jne	.label_12
	lea	rdi, [rdi]
	mov	r12d, r14d
	mov	rdi, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	lea	rdi, [rax + 0xa]
	call	xmalloc
	mov	rbp, rbp
	mov	r14, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp + 0x20]
	mov	rdi, r14
	call	stpcpy
	movabs	rcx, 0x63656a6f72702e2f
	mov	qword ptr [rax], rcx
	mov	word ptr [rax + 8], 0x74
	mov	esi, OFFSET FLAT:.str.69
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_28
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.70
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_38
	nop	dword ptr [rax + rax]
.label_32:
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	esi, 1
	mov	rdi, r15
	mov	rbp, rbp
	mov	rdx, rax
	call	fwrite_unlocked
.label_38:
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, 0x400
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rbp, rbp
	call	fread_unlocked
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_32
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_fclose
.label_28:
	mov	rbp, rbp
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	r14d, r12d
	mov	r12, qword ptr [rsp + 0x420]
.label_12:
	nop	
	mov	al,  byte ptr [byte ptr [rip + include_plan]]
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	jne	.label_17
	mov	r12d, r14d
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp + 0x20]
	call	strlen
	lea	rdi, [rdi]
	lea	rdi, [rax + 7]
	call	xmalloc
	nop	
	mov	r14, rax
	mov	rsi, qword ptr [rbp + 0x20]
	mov	rdi, r14
	mov	rbp, rbp
	call	stpcpy
	mov	byte ptr [rax + 6], 0
	lea	rdi, [rdi]
	mov	word ptr [rax + 4], 0x6e61
	mov	dword ptr [rax], 0x6c702e2f
	mov	esi, OFFSET FLAT:.str.69
	lea	rsi, [rsi]
	mov	rdi, r14
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_33
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rbp, rbp
	jmp	.label_40
	nop	dword ptr [rax]
.label_27:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	nop	
	mov	rdi, r15
	mov	rdx, rax
	call	fwrite_unlocked
.label_40:
	mov	esi, 1
	mov	edx, 0x400
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rcx, rbx
	call	fread_unlocked
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_27
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	rpl_fclose
.label_33:
	mov	rdi, r14
	call	free
	nop	
	mov	r14d, r12d
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x420]
.label_17:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rsp, rsp
	jae	.label_48
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0xa
	jmp	.label_16
	nop	word ptr cs:[rax + rax]
.label_35:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.48
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_16:
	inc	r13
	cmp	r13d, r14d
	lea	rsi, [rsi]
	jne	.label_23
	jmp	.label_20
.label_31:
	mov	rbp, rbp
	test	r14d, r14d
	mov	rbp, rbp
	jle	.label_20
	dec	r15
	movsxd	r14, r14d
	nop	
.label_9:
	cmp	byte ptr [r13 + 0x2c], 0
	je	.label_37
	mov	rbp, rbp
	movzx	eax, word ptr [r13]
	lea	rsi, [rsi]
	cmp	eax, 7
	jne	.label_37
	nop	
	lea	rbp, [r13 + 0x2c]
	xor	ebx, ebx
	nop	
.label_47:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12 + rbx*8]
	mov	edx, 0x20
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strncmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_45
	inc	rbx
	cmp	rbx, r14
	jl	.label_47
	jmp	.label_37
.label_45:
	mov	rdi, r13
	call	print_entry
.label_37:
	add	r13, 0x180
	test	r15, r15
	lea	r15, [r15 - 1]
	nop	
	jne	.label_9
.label_20:
	xor	eax, eax
	mov	rsp, rsp
	add	rsp, 0x428
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_21:
	mov	esi, 0xa
	call	__overflow
	mov	rsp, rsp
	jmp	.label_22
.label_43:
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_24
	nop	
	cmp	eax, 0xffffff7e
	lea	rdi, [rdi]
	jne	.label_25
	xor	edi, edi
	call	usage
.label_24:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.16
	nop	
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.14
	mov	rsp, rsp
	mov	r9d, OFFSET FLAT:.str.15
	xor	eax, eax
	lea	rdi, [rdi]
	call	version_etc
	xor	edi, edi
	call	exit
.label_25:
	mov	edi, 1
	call	usage
.label_10:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_29:
	mov	rsp, rsp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	mov	edx, OFFSET FLAT:.str.7
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	nop	
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_0
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rbp, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402650

	.globl print_entry
	.type print_entry, @function
print_entry:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x1c8
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 0x2f
	nop	
	jne	.label_72
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x90]
	mov	rbp, rbp
	jmp	.label_75
.label_72:
	mov	rsp, rsp
	lea	rcx, [rsp + 0x95]
	mov	rbp, rbp
	mov	word ptr [rsp + 0x94], 0x2f
	mov	dword ptr [rsp + 0x90], 0x7665642f
.label_75:
	test	al, al
	je	.label_61
	lea	rdx, [rbx + 0x28]
	nop	
	lea	rsi, [rbx + 9]
	inc	rcx
	mov	rdi, rcx
	nop	word ptr cs:[rax + rax]
.label_70:
	nop	
	mov	rcx, rdi
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], al
	cmp	rsi, rdx
	jae	.label_61
	mov	rbp, rbp
	mov	al, byte ptr [rsi]
	inc	rsi
	mov	rsp, rsp
	lea	rdi, [rcx + 1]
	test	al, al
	jne	.label_70
.label_61:
	nop	
	mov	byte ptr [rcx], 0
	lea	rsi, [rsp + 0x90]
	lea	rdx, [rsp]
	mov	rsp, rsp
	mov	edi, 1
	call	__xstat
	mov	r15d, 0x3f
	xor	r13d, r13d
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_54
	test	byte ptr [rsp + 0x18], 0x10
	mov	eax, 0x20
	mov	r15d, 0x2a
	cmovne	r15d, eax
	mov	r13, qword ptr [rsp + 0x48]
.label_54:
	lea	r14, [rbx + 8]
	lea	rbp, [rbx + 0x2c]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 0x20
	xor	eax, eax
	mov	rcx, rbp
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_fullname]]
	and	al, 1
	jne	.label_59
	lea	rdi, [rdi]
	lea	rax, [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	rcx, [rbx + 0x4c]
	nop	dword ptr [rax]
.label_53:
	mov	rsp, rsp
	mov	dl, byte ptr [rbp]
	mov	rsp, rsp
	test	dl, dl
	je	.label_49
	inc	rbp
	lea	rdi, [rdi]
	mov	byte ptr [rax], dl
	lea	rsi, [rsi]
	inc	rax
	mov	rbp, rbp
	cmp	rbp, rcx
	jb	.label_53
.label_49:
	mov	byte ptr [rax], 0
	mov	rsp, rsp
	lea	rdi, [rsp + 0xc0]
	call	getpwnam
	mov	rsp, rsp
	mov	rbp, rax
	test	rbp, rbp
	je	.label_62
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbp + 0x18]
	mov	rsp, rsp
	mov	esi, 0x2c
	mov	rdi, r12
	call	strchr
	test	rax, rax
	je	.label_68
	mov	byte ptr [rax], 0
	mov	r12, qword ptr [rbp + 0x18]
.label_68:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp]
	lea	rdi, [rdi]
	mov	rdi, r12
	call	create_fullname
	mov	rbp, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.54
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rsp, rsp
	call	__printf_chk
	mov	rdi, rbp
	call	free
	jmp	.label_59
.label_62:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.52
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	__printf_chk
.label_59:
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.55
	mov	rsp, rsp
	mov	ecx, 0x20
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, r15d
	mov	rsp, rsp
	mov	r8, r14
	lea	rsi, [rsi]
	call	__printf_chk
	mov	al,  byte ptr [byte ptr [rip + include_idle]]
	and	al, 1
	jne	.label_50
	test	r13, r13
	nop	
	je	.label_55
	mov	rcx,  qword ptr [word ptr [rip + idle_string.now]]
	mov	rbp, rbp
	test	rcx, rcx
	jne	.label_58
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + idle_string.now]]
.label_58:
	nop	
	sub	rcx, r13
	mov	ebp, OFFSET FLAT:.str.58
	cmp	rcx, 0x3c
	jl	.label_65
	mov	rbp, rbp
	cmp	rcx, 0x1517f
	lea	rdi, [rdi]
	jg	.label_60
	mov	rsp, rsp
	movabs	rdx, 0x48d159e26af37c05
	mov	rax, rcx
	mov	rsp, rsp
	imul	rdx
	mov	rsp, rsp
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x3f
	sar	rdx, 0xa
	mov	rsp, rsp
	lea	r8d, [rdx + rax]
	add	rdx, rax
	mov	rbp, rbp
	imul	rax, rdx, 0xe10
	lea	rsi, [rsi]
	sub	rcx, rax
	movabs	rdx, 0x8888888888888889
	mov	rax, rcx
	lea	rdi, [rdi]
	imul	rdx
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 0x3f
	lea	rsi, [rsi]
	shr	rdx, 5
	lea	r9d, [rdx + rax]
	mov	ebp, OFFSET FLAT:idle_string.buf
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:idle_string.buf
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, 0x16
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.59
	lea	rdi, [rdi]
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_65
.label_55:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.44
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdx, rcx
	nop	
	jmp	.label_56
.label_60:
	movabs	rdx, 0x1845c8a0ce512957
	mov	rax, rcx
	mov	rbp, rbp
	imul	rdx
	nop	
	mov	rax, rdx
	shr	rax, 0x3f
	lea	rdi, [rdi]
	sar	rdx, 0xd
	lea	r8, [rdx + rax]
	lea	rsi, [rsi]
	mov	ebp, OFFSET FLAT:idle_string.buf
	mov	edi, OFFSET FLAT:idle_string.buf
	mov	rsp, rsp
	mov	esi, 1
	lea	rdi, [rdi]
	mov	edx, 0x16
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.60
	xor	eax, eax
	call	__sprintf_chk
.label_65:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.44
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	rdx, rbp
.label_56:
	call	__printf_chk
.label_50:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xc0]
	call	localtime
	nop	
	test	rax, rax
	je	.label_63
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	rbp, rbp
	mov	ebp, OFFSET FLAT:time_string.buf
	mov	edi, OFFSET FLAT:time_string.buf
	lea	rdi, [rdi]
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	jmp	.label_73
.label_63:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:time_string.buf
	mov	rsp, rsp
	call	imaxtostr
	mov	rsp, rsp
	mov	rbp, rax
.label_73:
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.48
	xor	eax, eax
	mov	rdx, rbp
	nop	
	call	__printf_chk
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + include_where]]
	mov	rsp, rsp
	and	al, 1
	jne	.label_52
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx + 0x4c]
	lea	rdi, [rdi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_52
	lea	rax, [rbx + 0x14c]
	add	rbx, 0x4d
	mov	rsp, rsp
	lea	rdx, [rsp + 0xc1]
	nop	
.label_74:
	mov	byte ptr [rdx - 1], cl
	lea	rsi, [rsi]
	cmp	rbx, rax
	mov	rbp, rbp
	mov	rsi, rdx
	jae	.label_71
	lea	rsi, [rsi]
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbx]
	lea	rsi, [rsi]
	inc	rbx
	lea	rsi, [rsi]
	inc	rdx
	test	cl, cl
	nop	
	jne	.label_74
.label_71:
	lea	rdi, [rdi]
	mov	byte ptr [rsi], 0
	lea	r14, [rsp + 0xc0]
	mov	esi, 0x3a
	mov	rsp, rsp
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	xor	ebp, ebp
	test	rax, rax
	je	.label_57
	nop	
	mov	rbp, rax
	inc	rbp
	nop	
	mov	byte ptr [rax], 0
.label_57:
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xc0], 0
	nop	
	je	.label_66
	mov	rbp, rbp
	lea	rdi, [rsp + 0xc0]
	call	canon_host
	nop	
	mov	rbx, rax
.label_66:
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	cmovne	r14, rbx
	mov	edi, 1
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_69
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.57
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, r14
	nop	
	mov	rcx, rbp
	call	__printf_chk
	jmp	.label_67
.label_69:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.48
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, r14
	call	__printf_chk
.label_67:
	test	rbx, rbx
	je	.label_52
	lea	rdi, [rdi]
	mov	rdi, r14
	call	free
.label_52:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	nop	
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	jae	.label_64
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_51:
	add	rsp, 0x1c8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_64:
	mov	esi, 0xa
	nop	
	call	__overflow
	jmp	.label_51
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c10

	.globl create_fullname
	.type create_fullname, @function
create_fullname:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	push	rax
	mov	r14, rsi
	mov	r12, rdi
	call	strlen
	nop	
	mov	r15, rax
	xor	ebx, ebx
	mov	rax, r12
	nop	word ptr cs:[rax + rax]
.label_76:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x26
	sete	dl
	movzx	edx, dl
	lea	rdi, [rdi]
	add	rbx, rdx
	inc	rax
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_76
	mov	rbp, rbp
	inc	r15
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_81
	mov	rdi, r14
	mov	rbp, rbp
	call	strlen
	mov	rcx, rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_79
	mov	rsp, rsp
	imul	rcx, rbx
	lea	rsi, [rsi]
	mov	rax, rcx
	lea	rdi, [rdi]
	sub	rax, rbx
	add	r15, rax
	cmp	r15, rcx
	jb	.label_79
.label_81:
	mov	rsp, rsp
	mov	rdi, r15
	call	xmalloc
	nop	
	mov	qword ptr [rsp], rax
	lea	r13, [r14 + 1]
	mov	rbp, rax
	mov	rsp, rsp
	jmp	.label_83
	nop	word ptr cs:[rax + rax]
.label_77:
	inc	r12
.label_83:
	movzx	eax, byte ptr [r12]
	mov	rsp, rsp
	cmp	eax, 0x26
	nop	
	je	.label_82
	test	al, al
	mov	rsp, rsp
	je	.label_85
	nop	
	mov	byte ptr [rbp], al
	inc	rbp
	mov	rsp, rsp
	inc	r12
	lea	rsi, [rsi]
	jmp	.label_83
	nop	
.label_82:
	mov	bl, byte ptr [r14]
	mov	rbp, rbp
	movzx	r15d, bl
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	test	byte ptr [rax + r15*2 + 1], 2
	jne	.label_80
	mov	rbp, rbp
	mov	rax, r14
	nop	
	jmp	.label_84
	nop	word ptr cs:[rax + rax]
.label_80:
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	al, byte ptr [rax + r15*4]
	mov	byte ptr [rbp], al
	inc	rbp
	mov	bl, byte ptr [r13]
	mov	rax, r13
.label_84:
	test	bl, bl
	lea	rsi, [rsi]
	je	.label_77
	mov	rbp, rbp
	inc	rax
	nop	dword ptr [rax + rax]
.label_78:
	mov	byte ptr [rbp], bl
	nop	
	inc	rbp
	nop	
	mov	bl, byte ptr [rax]
	mov	rsp, rsp
	inc	rax
	test	bl, bl
	mov	rsp, rsp
	jne	.label_78
	mov	rbp, rbp
	jmp	.label_77
.label_85:
	mov	byte ptr [rbp], 0
	nop	
	mov	rax, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_79:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dc0

	.globl canon_host
	.type canon_host, @function
canon_host:
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [dword ptr [rip + canon_host_r.hints]],  2
	lea	rcx, [rsp + 8]
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_88
	mov	dword ptr [dword ptr [rip + last_cherror]],  eax
	xor	ebx, ebx
	jmp	.label_86
.label_88:
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_87
	mov	dword ptr [dword ptr [rip + last_cherror]],  0xfffffff6
.label_87:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	nop	
	call	freeaddrinfo
.label_86:
	mov	rax, rbx
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e60
	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:

	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	r14, rsi
	mov	rbx, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	mov	dword ptr [dword ptr [rip + canon_host_r.hints]],  2
	nop	
	lea	rcx, [rsp]
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:canon_host_r.hints
	mov	rsp, rsp
	call	getaddrinfo
	test	eax, eax
	je	.label_89
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_90
	lea	rsi, [rsi]
	mov	dword ptr [r14], eax
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_90
.label_89:
	nop	
	mov	rax, qword ptr [rsp]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	cmovne	rbx, rax
	mov	rsp, rsp
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	mov	rsp, rsp
	test	r14, r14
	je	.label_91
	test	rbx, rbx
	jne	.label_91
	mov	dword ptr [r14], 0xfffffff6
.label_91:
	mov	rdi, qword ptr [rsp]
	mov	rsp, rsp
	call	freeaddrinfo
.label_90:
	mov	rbp, rbp
	mov	rax, rbx
	add	rsp, 8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f20
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi,  dword ptr [dword ptr [rip + last_cherror]]
	jmp	gai_strerror
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f30
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
	#Procedure 0x402f40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f50

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_93
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_92
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_92
.label_93:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_95
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_92:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_2
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_94
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rsp, rsp
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_95:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_94:
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
	mov	r8, rbx
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403050

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
	je	.label_97
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_96
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_98
.label_96:
	nop	
	mov	esi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_97
.label_98:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_97:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4030a0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	lea	rsi, [rsi]
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	lea	rsi, [rsi]
	js	.label_99
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
.label_102:
	lea	rdi, [rdi]
	mov	rax, rcx
	imul	r8
	mov	rbp, rbp
	mov	rax, rdx
	mov	rsp, rsp
	shr	rax, 0x3f
	sar	rdx, 2
	nop	
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	rdi, [rdi]
	lea	r9d, [rdi + rdi*4]
	nop	
	mov	edi, ecx
	sub	edi, r9d
	lea	rsi, [rsi]
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rbp, rbp
	mov	rcx, rdx
	ja	.label_102
	mov	rbp, rbp
	jmp	.label_101
.label_99:
	add	rsi, 0x15
	movabs	r8, 0x6666666666666667
.label_100:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	nop	
	sar	rdx, 2
	lea	edi, [rdx + r10]
	lea	rdi, [rdi]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	lea	rdi, [rdi]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	nop	
	sub	eax, edi
	nop	
	mov	byte ptr [rsi - 2], al
	add	rdx, r10
	mov	rbp, rbp
	add	rcx, 9
	dec	rsi
	mov	rsp, rsp
	cmp	rcx, 0x12
	mov	rcx, rdx
	mov	rsp, rsp
	ja	.label_100
	mov	rbp, rbp
	mov	byte ptr [rsi - 2], 0x2d
	mov	rsp, rsp
	add	rsi, -2
.label_101:
	nop	
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403190

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
	je	.label_103
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
	jl	.label_105
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_105
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
	jne	.label_104
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_104:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_105:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_103:
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
	#Procedure 0x403280
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
	#Procedure 0x4032d0
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
	#Procedure 0x4032f0
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
	#Procedure 0x403310
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
	#Procedure 0x403380
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
	#Procedure 0x4033a0
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
	je	.label_106
	test	rdx, rdx
	nop	
	je	.label_106
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_106:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033e0
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x30]
	mov	rsp, rsp
	add	rbp, 8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	qword ptr [rsp], rbp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403490

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
	sub	rsp, 0xf8
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x24], ebx
	mov	r12d, r8d
	mov	r15, rcx
	mov	qword ptr [rsp + 0xe0], rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	qword ptr [rsp + 0xb8], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x140]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x98], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x138]
	mov	qword ptr [rsp + 0x18], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	dl, bl
	mov	rbp, rbp
	shr	dl, 1
	mov	rbp, rbp
	and	dl, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x94], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x5c], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xc8], rcx
.label_187:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_205
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_225]]
.label_402:
	mov	r15d, edi
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.11_0
	nop	
	mov	esi, r12d
	mov	r14, r10
	nop	
	mov	r13b, r8b
	mov	bl, dl
	mov	rbp, rbp
	call	gettext_quote
	mov	qword ptr [rsp + 0x18], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	rsp, rsp
	mov	esi, r12d
	call	gettext_quote
	mov	rsp, rsp
	mov	dl, bl
	mov	rsp, rsp
	mov	edi, r15d
	mov	r8b, r13b
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x98], rax
.label_403:
	nop	
	mov	qword ptr [rsp + 0xd8], r10
	mov	byte ptr [rsp + 0xf7], r8b
	mov	dword ptr [rsp + 0x38], edi
	test	dl, 1
	mov	rbp, rbp
	mov	r15b, dl
	mov	rbp, rbp
	mov	r14d, 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	jne	.label_121
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_121
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_139:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_126
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_126:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_139
.label_121:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x98]
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strlen
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x68], rbx
	mov	r13b, 1
	mov	rbp, rbp
	mov	sil, r15b
	mov	r10, qword ptr [rsp + 0xd8]
	nop	
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	edi, dword ptr [rsp + 0x38]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	jmp	.label_147
.label_395:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_147
.label_398:
	lea	rsi, [rsi]
	mov	al, 1
.label_396:
	lea	rsi, [rsi]
	mov	dl, 1
.label_399:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_169
	mov	rbp, rbp
	mov	cl, al
.label_169:
	mov	al, cl
.label_397:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_173
	test	rbp, rbp
	je	.label_180
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_181
.label_173:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_181
.label_400:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_190
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_195
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_119
.label_401:
	mov	r13b, 1
	mov	rsp, rsp
	mov	r9d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xa0], rax
	mov	sil, 1
	lea	rsi, [rsi]
	jmp	.label_147
.label_180:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_181:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_147
.label_190:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_119
.label_195:
	nop	
	mov	r14d, 1
.label_119:
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0x68], rax
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa0], rax
	lea	rdi, [rdi]
	mov	r13b, 1
	mov	sil, dl
	nop	word ptr cs:[rax + rax]
.label_147:
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x46], r13b
	cmp	qword ptr [rsp + 0x130], 0
	mov	rbp, rbp
	setne	r12b
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	r15b
	sete	al
	mov	cl, r13b
	mov	rsp, rsp
	and	cl, 1
	mov	byte ptr [rsp + 0x37], cl
	lea	rsi, [rsi]
	sete	byte ptr [rsp + 0xf6]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0x83], bl
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0xa0], 0
	lea	rsi, [rsi]
	setne	cl
	mov	dl, cl
	lea	rsi, [rsi]
	and	dl, bl
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x56], dl
	mov	rbp, rbp
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc6], bl
	sete	dl
	lea	rdi, [rdi]
	and	al, bl
	mov	byte ptr [rsp + 0x47], al
	and	r12b, bl
	mov	byte ptr [rsp + 0x57], r12b
	mov	rsp, rsp
	or	dl, r15b
	mov	byte ptr [rsp + 0xc7], dl
	and	r13b, sil
	mov	rbp, rbp
	and	r13b, cl
	mov	byte ptr [rsp + 0xb7], r13b
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_107
	nop	dword ptr [rax]
.label_138:
	mov	rsp, rsp
	inc	r15
.label_107:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_174
	cmp	r15, r10
	jne	.label_164
	jmp	.label_165
	nop	dword ptr [rax]
.label_174:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_166
.label_164:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_227
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_175
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_175
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	rdi, r11
	mov	r12b, r8b
	mov	r13, r9
	mov	r15, r14
	lea	rsi, [rsi]
	mov	r14, r11
	nop	
	call	strlen
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, r15
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x38]
	mov	r9, r13
	mov	r8b, r12b
	mov	r10, rax
.label_175:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_204
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_132
	nop	dword ptr [rax]
.label_227:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_132
	nop	word ptr cs:[rax + rax]
.label_204:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r13, r9
	mov	rsp, rsp
	mov	r12b, r8b
	lea	rsi, [rsi]
	mov	rbx, r10
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [r11 + rax]
	nop	
	mov	r14, r11
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xa0]
	call	memcmp
	lea	rsi, [rsi]
	test	eax, eax
	sete	al
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], eax
	mov	rsp, rsp
	jne	.label_235
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xc6], 0
	mov	rsp, rsp
	mov	r10, rbx
	nop	
	mov	r8b, r12b
	lea	rsi, [rsi]
	mov	r9, r13
	nop	
	mov	edi, r15d
	mov	rbp, rbp
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r15, qword ptr [rsp + 0x88]
	je	.label_132
	jmp	.label_127
.label_235:
	mov	r10, rbx
	mov	r8b, r12b
	mov	r9, r13
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	r11, r14
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x88]
	nop	dword ptr [rax + rax]
.label_132:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_143
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_146]]
.label_425:
	test	r15, r15
	jne	.label_136
	jmp	.label_155
.label_429:
	xor	eax, eax
	cmp	r10, -1
	je	.label_157
	test	r15, r15
	jne	.label_159
	nop	
	cmp	r10, 1
	je	.label_155
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_120
.label_418:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_177
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_127
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_171
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_171
	cmp	r14, rbp
	jae	.label_179
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_179:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_163
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_163:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_194
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_194:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_171:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_202
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_202:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_207
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_215
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_217
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_224
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_224:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_183
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_183:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_120
.label_419:
	mov	bl, 0x62
	nop	
	jmp	.label_109
.label_420:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_108
.label_421:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_109
.label_422:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_109
.label_423:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_108
.label_426:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_125
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_134
	nop	
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rdx, rcx
	mov	rsp, rsp
	test	rdx, rdx
	setne	cl
	lea	rsi, [rsi]
	or	cl, al
	mov	rbp, rbp
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x48], rdx
	mov	rsp, rsp
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_140
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_140:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_156
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_156:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_150
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_150:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_125:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_120
.label_427:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_172
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_136
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_136
	nop	
	jmp	.label_186
.label_428:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_188
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_192
	jmp	.label_196
.label_143:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_197
	mov	rbp, rbp
	mov	rbx, r10
	mov	rbp, r11
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	r11, rbp
	nop	
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r12*2]
	shr	r13d, 0xe
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	edx, 1
	lea	rsi, [rsi]
	jmp	.label_211
.label_157:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_116
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_116
.label_155:
	mov	dl, 1
.label_424:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_229
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_120
.label_177:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_138
	jmp	.label_136
.label_188:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_108
.label_192:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_110
.label_108:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_115
.label_109:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_120
	jmp	.label_123
.label_197:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_222
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_222:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_144
	lea	rax, [r11 + r15]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe8], rax
	lea	rsi, [rsi]
	mov	r13b, 1
	nop	
	xor	edx, edx
.label_221:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [r11 + rax]
	mov	rsp, rsp
	mov	rdx, r10
	lea	rsi, [rsi]
	sub	rdx, rax
	lea	rdi, [rsp + 0x58]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	rbx, rax
	cmp	rbx, -2
	lea	rdi, [rdi]
	je	.label_122
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_117
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_178
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_184
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_206:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_200
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_203
.label_200:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_206
.label_184:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_210
	mov	rbp, rbp
	xor	r13d, r13d
.label_210:
	lea	rbp, [rsp + 0x70]
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	add	rax, rbx
	mov	rdi, rbp
	nop	
	mov	rbx, rax
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	je	.label_221
	jmp	.label_152
	nop	
.label_144:
	mov	qword ptr [rsp + 0x88], rdx
	lea	rax, [rdx + r15]
	lea	rsi, [rsi]
	lea	rsi, [r11 + rax]
	mov	rdx, r10
	lea	rdi, [rdi]
	sub	rdx, rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x58]
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	call	rpl_mbrtowc
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_113
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_117
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_122
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_135
	xor	r13d, r13d
.label_135:
	nop	
	mov	rax, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	add	rax, rbp
	mov	rsp, rsp
	mov	rbp, rbx
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	call	mbsinit
	mov	rdx, rbx
	test	eax, eax
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_144
	lea	rsi, [rsi]
	jmp	.label_152
.label_116:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_120
.label_172:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_136
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_136
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_136
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_168
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_170
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_131
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_185
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_185:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_191
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_191:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_128
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_128:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_220
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_220:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_120
.label_136:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_120:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_219
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_223
	nop	
	jmp	.label_167
	nop	dword ptr [rax + rax]
.label_219:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_167
.label_223:
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	lea	rsi, [rsi]
	mov	cl, r12b
	shl	esi, cl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
	jne	.label_231
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_149
	nop	word ptr cs:[rax + rax]
.label_167:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_149:
	mov	bl, r12b
	je	.label_110
	jmp	.label_123
.label_231:
	mov	bl, r12b
.label_123:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_127
	cmp	r9d, 2
	jne	.label_129
	mov	al, dil
	and	al, 1
	jne	.label_129
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_137
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_137:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_142
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_142:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_148
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_148:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_129:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_154
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_154:
	mov	rbp, rbp
	inc	r14
	jmp	.label_161
.label_159:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_120
.label_207:
	xor	r13d, r13d
	jmp	.label_120
.label_215:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_120
.label_217:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_120
.label_117:
	xor	r13d, r13d
.label_113:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_152
.label_122:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_182
	lea	rax, [r11 + r15]
.label_199:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_212
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_199
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_152
.label_182:
	xor	r13d, r13d
	jmp	.label_152
.label_212:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_152
.label_178:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_152:
	mov	rbp, rbp
	mov	rbx, r10
.label_211:
	mov	rsp, rsp
	and	r13b, 1
	lea	rdi, [rdi]
	mov	cl, r13b
	lea	rdi, [rdi]
	or	cl, byte ptr [rsp + 0xf6]
	cmp	rdx, 1
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	mov	r8b, byte ptr [rsp + 0xf7]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0xd0]
	mov	edi, dword ptr [rsp + 0x38]
	ja	.label_213
	test	cl, cl
	je	.label_213
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_120
.label_213:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_233
	nop	dword ptr [rax]
.label_226:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_233:
	mov	rsp, rsp
	test	cl, cl
	je	.label_112
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_114
	cmp	r14, rbp
	jae	.label_118
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_118:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_114:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_133
	nop	dword ptr [rax + rax]
.label_112:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_141
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_145
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_145
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_193
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_193:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_232
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_232:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_160
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_160:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_145:
	cmp	r14, rbp
	jae	.label_198
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_198:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_216
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_216:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_158
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_158:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_133:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_110
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_189
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_189
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_162
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_162:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_228
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_228:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_189:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_226
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_226
	nop	word ptr cs:[rax + rax]
.label_110:
	test	dil, 1
	je	.label_234
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_234
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_124
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_124:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_153
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_153:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_234:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_161:
	cmp	r14, rbp
	jae	.label_209
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_209:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_138
.label_168:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_120
.label_170:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_120
	nop	word ptr [rax + rax]
.label_165:
	nop	
	mov	rcx, r15
.label_166:
	mov	rbp, rbp
	cmp	r9d, 2
	nop	
	setne	al
	mov	rbp, rbp
	test	r14, r14
	mov	rsp, rsp
	setne	dl
	cmp	byte ptr [rsp + 0xc6], 0
	lea	rsi, [rsi]
	je	.label_151
	mov	rsp, rsp
	or	al, dl
	je	.label_230
.label_151:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], r11
	cmp	r9d, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xc8]
	lea	rsi, [rsi]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x46]
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	je	.label_111
	mov	rsp, rsp
	or	al, dl
	jne	.label_111
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_176
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_111
	mov	rbp, rbp
	test	rbp, rbp
	mov	rbp, rbp
	mov	r12d, r9d
	mov	al, bl
	mov	r15, rcx
	lea	rsi, [rsi]
	mov	dl, sil
	mov	r13, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	je	.label_187
.label_111:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_130
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_130
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_130
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_214:
	cmp	r14, rbp
	jae	.label_208
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_208:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_214
.label_130:
	cmp	r14, rbp
	jae	.label_218
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_218
.label_229:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_127
.label_203:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_127
.label_141:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_127
.label_230:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_127
.label_115:
	nop	
	mov	r9d, 2
.label_127:
	cmp	byte ptr [rsp + 0x37], 0
	mov	r8d, 4
	mov	rbp, rbp
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], 0
	nop	
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r11
	nop	
	mov	rcx, r10
.label_201:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_218:
	lea	rdi, [rdi]
	mov	rax, r14
	lea	rdi, [rdi]
	add	rsp, 0xf8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
.label_176:
	mov	rax, qword ptr [rsp + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x130]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x24]
	jmp	.label_201
.label_134:
	mov	r9d, 2
	jmp	.label_127
.label_196:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_127
.label_186:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_127
.label_131:
	mov	r9d, 5
	nop	
	jmp	.label_127
.label_205:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404930
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rbp, rbp
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r14d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r14, rdx
	lea	rsi, [rsi]
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x24], ecx
	mov	rsp, rsp
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	mov	rbp, rbp
	or	ebp, 1
	mov	rbp, rbp
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r12
	lea	rdi, [rdi]
	mov	r9d, ebp
	nop	
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	rbx, rax
	lea	rdi, [rdi]
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	lea	rsi, [rsi]
	mov	r13, rax
	nop	
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	nop	
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rcx, r12
	mov	r9d, ebp
	lea	rsi, [rsi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a70
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
	mov	qword ptr [rsp + 0x40], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x3c], ecx
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
	call	xmalloc
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
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x3c]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_236
	mov	qword ptr [rax], rbx
.label_236:
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
	#Procedure 0x404bc0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_237
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_241:
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
	jl	.label_241
.label_237:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_240
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_238]], OFFSET FLAT:slot0
.label_240:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_239
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_239:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c80
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404c90

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
	mov	qword ptr [rsp + 0x20], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_247
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_243
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_248
.label_243:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_244
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
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
	jne	.label_246
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_246:
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
.label_248:
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
	mov	qword ptr [rsp + 0x30], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rdx
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
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_245
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
	je	.label_242
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_242:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xmalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_245:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x1c]
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
.label_247:
	lea	rdi, [rdi]
	call	abort
.label_244:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f00
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f10
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	nop	
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f40
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	nop
	sub	rsp, 0x78
	mov	rbp, rbp
	mov	rax, rdx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	je	.label_249
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x64], xmm2
	lea	rdi, [rdi]
	movups	xmmword ptr [rsp + 0x54], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rbp, rbp
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsp, rsp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_249:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405000
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	mov	rbp, rbp
	sub	rsp, 0x78
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp + 0x30], 0
	lea	rdi, [rdi]
	cmp	esi, 0xa
	lea	rsi, [rsi]
	je	.label_250
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x40], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	nop	
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x44], xmm0
	mov	rsp, rsp
	lea	rax, [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_250:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	mov	rsp, rsp
	je	.label_251
	mov	dword ptr [rsp + 0x40], edi
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x30]
	nop	
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	nop	
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x78
	lea	rsi, [rsi]
	ret	
.label_251:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405130
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_252
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	mov	rsp, rsp
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	mov	rsp, rsp
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	nop	
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x78
	ret	
.label_252:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4051a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_253]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_254]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_255]]
	nop	
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	al, cl
	nop	
	shr	al, 5
	movzx	eax, al
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + rax*4 + 8]
	lea	rsi, [rsi]
	mov	edi, esi
	mov	rsp, rsp
	shr	edi, cl
	not	edi
	mov	rbp, rbp
	and	edi, 1
	lea	rsi, [rsi]
	shl	edi, cl
	xor	edi, esi
	nop	
	mov	dword ptr [rsp + rax*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r8
	nop	
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405240
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_253]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_254]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_255]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	mov	rbp, rbp
	shr	dl, 5
	lea	rsi, [rsi]
	movzx	edx, dl
	lea	rsi, [rsi]
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	lea	rdi, [rdi]
	mov	edi, esi
	shr	edi, cl
	nop	
	not	edi
	mov	rsp, rsp
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	rdx, -1
	mov	rbp, rbp
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_253]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_254]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_255]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	mov	rsp, rsp
	lea	rcx, [rsp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405350
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_253]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_254]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_255]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rsi, [rsi]
	lea	rcx, [rsp]
	xor	edi, edi
	nop	
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	quotearg_n_options
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053c0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xb8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_256
	nop	
	mov	ecx, dword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x70], ecx
	mov	rsp, rsp
	movaps	xmm0, xmmword ptr [rsp]
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x80], esi
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x70]
	nop	
	mov	dword ptr [rsp + 0xb4], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	nop	
	movups	xmmword ptr [rsp + 0xa4], xmm2
	lea	rsi, [rsi]
	movups	xmmword ptr [rsp + 0x94], xmm1
	movups	xmmword ptr [rsp + 0x84], xmm0
	or	byte ptr [rsp + 0x8f], 4
	lea	rcx, [rsp + 0x80]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0xb8
	mov	rsp, rsp
	ret	
.label_256:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4054a0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_253]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_254]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_255]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_257
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_257
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	lea	rsi, [rsi]
	mov	rdx, -1
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rcx, rax
	mov	rbp, rbp
	call	quotearg_n_options
	nop	
	add	rsp, 0x38
	ret	
.label_257:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405530
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_253]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_254]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_255]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_258
	test	rdx, rdx
	je	.label_258
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	nop	
	call	quotearg_n_options
	mov	rbp, rbp
	add	rsp, 0x38
	ret	
.label_258:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_253]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_254]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_255]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_259
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_259
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rdi]
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	ret	
.label_259:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405660
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_253]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_254]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_255]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_260
	test	rsi, rsi
	je	.label_260
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [rsi]
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	mov	rsp, rsp
	ret	
.label_260:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405700
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405710
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rdx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405730
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsp, rsp
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405750
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:quote_quoting_options
	lea	rdi, [rdi]
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405780

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbp, rbp
	cmp	rax, rbx
	jne	.label_262
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_264
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_261
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_261
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_261
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_261
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_261
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_261
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_262
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_262
.label_264:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_261
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_261
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_261
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_261
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_261
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_261
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_263
.label_261:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_262:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_263:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_262
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_262
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4058f0

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
	je	.label_271
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
	jmp	.label_274
.label_271:
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
.label_274:
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
	ja	.label_270
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_267]]
.label_380:
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
.label_270:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_266
.label_381:
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
.label_382:
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
.label_383:
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
	jmp	.label_272
.label_384:
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
	jmp	.label_269
.label_385:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
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
	jmp	.label_268
.label_386:
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
.label_268:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_269:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_272:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_265
.label_388:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_266:
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
	jmp	.label_273
.label_387:
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
.label_273:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_265:
	mov	rbp, rbp
	call	__fprintf_chk
.label_379:
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
	#Procedure 0x405ce0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_275:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_275
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d10
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_279:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_276
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_277
	nop	word ptr cs:[rax + rax]
.label_276:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_277:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_278
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_279
.label_278:
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
	#Procedure 0x405da0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_280
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0xc0], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm5
	movaps	xmmword ptr [rsp + 0xe0], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xf0], xmm7
.label_280:
	mov	qword ptr [rsp + 0x78], r9
	nop	
	mov	qword ptr [rsp + 0x70], r8
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x110], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0x120]
	mov	qword ptr [rsp + 0x108], rax
	mov	dword ptr [rsp + 0x104], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x100], 0x20
	xor	r9d, r9d
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0x100]
	nop	word ptr [rax + rax]
.label_282:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_281
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_283
	nop	dword ptr [rax + rax]
.label_281:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_283:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_284
	inc	r9
	cmp	r9, 0xa
	jb	.label_282
.label_284:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ee0
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
	#Procedure 0x405f70
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	div	rbx
	cmp	rax, rdi
	jb	.label_285
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_286
	test	rax, rax
	je	.label_285
.label_286:
	nop	
	pop	rbx
	ret	
.label_285:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405fc0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_287
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_288
.label_287:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_288:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ff0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdx
	nop	
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	cmp	rax, rsi
	jb	.label_290
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_289
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_289
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_289:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_291
	test	rax, rax
	je	.label_290
.label_291:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_290:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406070

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_292
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_292
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_292:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_293
	test	rax, rax
	nop	
	je	.label_294
.label_293:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_294:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_295
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_299
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_298
.label_295:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_301
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_301:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_296
.label_298:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_297
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_297
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_297:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_300
	test	rax, rax
	mov	rbp, rbp
	je	.label_299
.label_300:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_299:
	call	xalloc_die
.label_296:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_303
	test	rax, rax
	mov	rbp, rbp
	je	.label_302
.label_303:
	pop	rbx
	ret	
.label_302:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4061c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_304
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_307
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_308
	call	free
	xor	eax, eax
	jmp	.label_305
.label_304:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_306
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_308:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_305
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_306
.label_305:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_306:
	mov	rbp, rbp
	call	xalloc_die
.label_307:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406250
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	nop	
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_309
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_310
.label_309:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	memset
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
.label_310:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062b0
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
	jb	.label_311
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_311
	pop	rcx
	ret	
.label_311:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4062e0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rbp, rbp
	test	rbx, rbx
	je	.label_313
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_312
.label_313:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	memcpy
	mov	rax, r15
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_312:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406340
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	mov	rbp, rbp
	call	malloc
	mov	rsp, rsp
	mov	r15, rax
	mov	rsp, rsp
	inc	rbx
	lea	rsi, [rsi]
	je	.label_314
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_315
.label_314:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	nop	
	pop	r15
	nop	
	ret	
.label_315:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4063a0

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
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4063f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_316
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_317
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
	je	.label_317
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
.label_316:
	mov	ecx, 1
.label_317:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406460

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_318
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_319
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
	je	.label_318
.label_319:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_318
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_320
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_320:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_318:
	lea	rsi, [rsi]
	mov	rdi, rbx
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	nop	
	jmp	fclose
	.section	.text
	.align	16
	#Procedure 0x406510

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_321
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_321
	test	byte ptr [rbx + 1], 1
	je	.label_321
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_321:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406550

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
	jne	.label_322
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_322
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_323
.label_322:
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
.label_323:
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
	je	.label_324
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_324:
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
	#Procedure 0x406600

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
	je	.label_325
	nop	
	cmp	r15, -2
	jb	.label_325
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_325
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_325:
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
	#Procedure 0x406690
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	lea	rsi, [rsi]
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	lea	rdi, [rdi]
	call	xmalloc
	nop	
	mov	rbx, rax
	mov	rsp, rsp
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strncpy
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	lea	rsi, [rsi]
	test	rax, rax
	jle	.label_326
	lea	rdi, [rdi]
	add	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_327:
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax - 1]
	nop	
	cmp	ecx, 0x20
	jne	.label_326
	mov	rbp, rbp
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	mov	rbp, rbp
	jb	.label_327
.label_326:
	mov	rax, rbx
	mov	rbp, rbp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406730

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	call	utmpxname
	call	setutxent
	lea	rsi, [rsi]
	call	getutxent
	mov	rbp, rbp
	mov	rbp, rax
	xor	ebx, ebx
	mov	rsp, rsp
	test	rbp, rbp
	mov	r13d, 0
	je	.label_332
	lea	rdi, [rdi]
	mov	r14d, r12d
	mov	rsp, rsp
	and	r14d, 2
	mov	rbp, rbp
	and	r12d, 1
	xor	ebx, ebx
	xor	r13d, r13d
	xor	r15d, r15d
.label_330:
	mov	rbp, rbp
	test	r14d, r14d
	mov	rbp, rbp
	jne	.label_333
	test	r12d, r12d
	je	.label_329
	nop	word ptr cs:[rax + rax]
.label_334:
	mov	rsp, rsp
	cmp	byte ptr [rbp + 0x2c], 0
	lea	rsi, [rsi]
	je	.label_329
	mov	rbp, rbp
	movzx	eax, word ptr [rbp]
	lea	rdi, [rdi]
	cmp	eax, 7
	jne	.label_329
	lea	rsi, [rsi]
	mov	edi, dword ptr [rbp + 4]
	test	edi, edi
	jle	.label_329
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	call	kill
	test	eax, eax
	nop	
	jns	.label_329
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_329
	lea	rdi, [rdi]
	call	getutxent
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_334
	mov	rsp, rsp
	jmp	.label_332
	nop	word ptr cs:[rax + rax]
.label_333:
	lea	rsi, [rsi]
	test	r12d, r12d
	nop	
	jne	.label_336
	nop	dword ptr [rax]
.label_340:
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_335
	movzx	eax, word ptr [rbp]
	lea	rdi, [rdi]
	cmp	eax, 7
	lea	rdi, [rdi]
	je	.label_329
.label_335:
	lea	rdi, [rdi]
	call	getutxent
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	jne	.label_340
	jmp	.label_332
.label_336:
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 0x2c], 0
	je	.label_328
	movzx	eax, word ptr [rbp]
	cmp	eax, 7
	jne	.label_328
	mov	rbp, rbp
	mov	edi, dword ptr [rbp + 4]
	test	edi, edi
	jle	.label_329
	xor	esi, esi
	mov	rsp, rsp
	call	kill
	mov	rsp, rsp
	test	eax, eax
	nop	
	jns	.label_329
	call	__errno_location
	nop	
	cmp	dword ptr [rax], 3
	jne	.label_329
.label_328:
	call	getutxent
	mov	rsp, rsp
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_336
	nop	
	jmp	.label_332
	nop	
.label_329:
	nop	
	cmp	rbx, r15
	jne	.label_339
	lea	rdi, [rdi]
	test	r13, r13
	mov	rbp, rbp
	je	.label_337
	mov	rsp, rsp
	movabs	rax, 0x38e38e38e38e38
	nop	
	cmp	rbx, rax
	lea	rsi, [rsi]
	jae	.label_338
	mov	rbp, rbp
	mov	rax, rbx
	nop	
	shr	rax, 1
	lea	r15, [rbx + rax + 1]
	jmp	.label_341
.label_337:
	mov	rbp, rbp
	test	rbx, rbx
	mov	r15, rbx
	mov	eax, 1
	lea	rdi, [rdi]
	cmove	r15, rax
	mov	rsp, rsp
	movabs	rax, 0x55555555555556
	mov	rsp, rsp
	cmp	r15, rax
	jae	.label_331
.label_341:
	mov	rax, r15
	shl	rax, 7
	mov	rbp, rbp
	lea	rsi, [rax + rax*2]
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rdi, [rdi]
	call	xrealloc
	mov	r13, rax
.label_339:
	lea	rdi, [rbx + rbx*2]
	inc	rbx
	mov	rbp, rbp
	shl	rdi, 7
	add	rdi, r13
	nop	
	mov	edx, 0x180
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rsp, rsp
	call	memcpy
	call	getutxent
	nop	
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	jne	.label_330
.label_332:
	call	endutxent
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbx
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r13
	xor	eax, eax
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_338:
	call	xalloc_die
.label_331:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4069e0

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
	mov	ebp, dword ptr [rbx]
	mov	rbp, rbp
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	nop	
	jne	.label_342
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_343
	test	cl, cl
	mov	rsp, rsp
	jne	.label_343
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_343
.label_342:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_343
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_343:
	mov	eax, ebx
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406a70

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
	mov	ecx, OFFSET FLAT:.str_1
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_344
	nop	
	mov	rax, rcx
.label_344:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x406ab0

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