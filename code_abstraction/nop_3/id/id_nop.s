	.section	.text
	.align	16
	#Procedure 0x401710

	.globl usage
	.type usage, @function
usage:
	mov	rbp, rbp
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	nop	
	test	ebp, ebp
	jne	.label_8
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.4
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	nop	
	xor	esi, esi
	call	setlocale
	mov	rbp, rbp
	test	rax, rax
	je	.label_7
	mov	esi, OFFSET FLAT:.str.37
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_7
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
.label_7:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.7
	nop	
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	nop	
	mov	ecx, OFFSET FLAT:.str.41
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
	nop	
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	nop	
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x401980

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rsp, rsp
	mov	ebp, edi
	nop	
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	nop	
	mov	esi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	call	setlocale
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.9
	nop	
	call	textdomain
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:close_stdout
	mov	rbp, rbp
	call	atexit
	lea	rsi, [rsi]
	jmp	.label_27
.label_38:
	mov	byte ptr [byte ptr [rip + just_group_list]],  1
	nop	word ptr cs:[rax + rax]
.label_27:
	mov	edx, OFFSET FLAT:.str.11
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, ebp
	nop	
	mov	rsi, r14
	mov	rsp, rsp
	call	getopt_long
	cmp	eax, 0x6d
	jg	.label_11
	mov	rsp, rsp
	cmp	eax, 0x59
	jg	.label_13
	nop	
	cmp	eax, 0x46
	jle	.label_16
	cmp	eax, 0x47
	mov	rbp, rbp
	je	.label_38
	jmp	.label_19
	nop	word ptr cs:[rax + rax]
.label_11:
	cmp	eax, 0x74
	lea	rdi, [rdi]
	jg	.label_23
	cmp	eax, 0x6e
	mov	rsp, rsp
	je	.label_25
	mov	rsp, rsp
	cmp	eax, 0x72
	jne	.label_19
	mov	byte ptr [byte ptr [rip + use_real]],  1
	nop	
	jmp	.label_27
	nop	word ptr cs:[rax + rax]
.label_13:
	lea	rsi, [rsi]
	cmp	eax, 0x61
	je	.label_27
	cmp	eax, 0x67
	mov	rbp, rbp
	jne	.label_29
	nop	
	mov	byte ptr [byte ptr [rip + just_group]],  1
	lea	rsi, [rsi]
	jmp	.label_27
	nop	dword ptr [rax + rax]
.label_23:
	mov	rbp, rbp
	cmp	eax, 0x75
	je	.label_35
	cmp	eax, 0x7a
	lea	rdi, [rdi]
	jne	.label_19
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + opt_zero]],  1
	jmp	.label_27
.label_25:
	nop	
	mov	byte ptr [byte ptr [rip + use_name]],  1
	jmp	.label_27
.label_35:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + just_user]],  1
	jmp	.label_27
.label_16:
	nop	
	cmp	eax, -1
	nop	
	jne	.label_43
	movzx	edx,  byte ptr [byte ptr [rip + just_user]]
	and	edx, 1
	lea	rsi, [rsi]
	movzx	ecx,  byte ptr [byte ptr [rip + just_group]]
	mov	rsp, rsp
	and	ecx, 1
	lea	eax, [rcx + rdx]
	lea	rsi, [rsi]
	movzx	esi,  byte ptr [byte ptr [rip + just_group_list]]
	and	esi, 1
	lea	rsi, [rsi]
	add	eax, esi
	mov	rsp, rsp
	cmp	eax, 2
	jae	.label_40
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rdi, [rdi]
	mov	bl, dl
	or	bl, cl
	nop	
	or	bl, sil
	mov	rbp, rbp
	jne	.label_20
	mov	bl,  byte ptr [byte ptr [rip + use_real]]
	nop	
	and	bl, 1
	jne	.label_22
	movzx	edi,  byte ptr [byte ptr [rip + use_name]]
	nop	
	and	edi, 1
	cmp	edi, 1
	je	.label_22
	mov	rsp, rsp
	movzx	edi,  byte ptr [byte ptr [rip + opt_zero]]
	and	edi, 1
	lea	rdi, [rdi]
	cmp	edi, 1
	je	.label_28
.label_20:
	lea	rdi, [rdi]
	cmp	eax, ebp
	lea	rdi, [rdi]
	jne	.label_12
	mov	rbp, rbp
	test	dl, dl
	lea	rsi, [rsi]
	je	.label_31
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	and	al, 1
	je	.label_33
	nop	
	jmp	.label_9
.label_12:
	mov	rsp, rsp
	movsxd	r15, ebp
	lea	rsi, [rsi]
	sub	r15, rax
	cmp	r15d, 1
	seta	byte ptr [byte ptr [rip + multiple_users]]
	nop	
	add	r15, rax
	lea	rdi, [rdi]
	jmp	.label_42
	nop	dword ptr [rax + rax]
.label_30:
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	nop	
	inc	rax
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_42:
	cmp	rax, r15
	nop	
	jae	.label_39
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + rax*8]
	nop	
	cmp	byte ptr [rdi], 0
	je	.label_14
	nop	
	mov	esi, OFFSET FLAT:euid
	xor	edx, edx
	xor	ecx, ecx
	lea	rdi, [rdi]
	xor	r8d, r8d
	call	parse_user_spec
	nop	
	test	rax, rax
	mov	rbp, rbp
	jne	.label_14
	lea	rsi, [rsi]
	mov	edi,  dword ptr [dword ptr [rip + euid]]
	mov	rsp, rsp
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_14
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp]
	lea	rdi, [rdi]
	call	xstrdup
	mov	rbx, rax
	mov	eax, dword ptr [rbp + 0x10]
	mov	dword ptr [dword ptr [rip + euid]],  eax
	mov	dword ptr [dword ptr [rip + ruid]],  eax
	mov	eax, dword ptr [rbp + 0x14]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + egid]],  eax
	mov	dword ptr [dword ptr [rip + rgid]],  eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	print_stuff
	mov	rdi, rbx
	call	free
	jmp	.label_30
	nop	word ptr cs:[rax + rax]
.label_14:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8]
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
	mov	byte ptr [byte ptr [rip + ok]],  0
	jmp	.label_30
.label_31:
	or	cl, sil
	jne	.label_9
.label_33:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	geteuid
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + euid]],  eax
	nop	
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_9
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbx]
	lea	rdi, [rdi]
	test	ebx, ebx
	jne	.label_15
.label_9:
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + just_user]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_18
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	nop	
	and	al, 1
	nop	
	jne	.label_21
	mov	rsp, rsp
	jmp	.label_24
.label_18:
	mov	al,  byte ptr [byte ptr [rip + just_group]]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_24
.label_21:
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	dword ptr [rbx], 0
	nop	
	call	getuid
	mov	dword ptr [dword ptr [rip + ruid]],  eax
	lea	rsi, [rsi]
	cmp	eax, -1
	jne	.label_24
	mov	rsp, rsp
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_32
.label_24:
	mov	al,  byte ptr [byte ptr [rip + just_user]]
	and	al, 1
	jne	.label_34
	call	__errno_location
	mov	rsp, rsp
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	lea	rsi, [rsi]
	call	getegid
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + egid]],  eax
	mov	rbp, rbp
	cmp	eax, -1
	nop	
	jne	.label_36
	mov	ebp, dword ptr [rbx]
	lea	rsi, [rsi]
	test	ebp, ebp
	jne	.label_37
.label_36:
	mov	dword ptr [rbx], 0
	call	getgid
	mov	dword ptr [dword ptr [rip + rgid]],  eax
	cmp	eax, -1
	jne	.label_34
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	lea	rsi, [rsi]
	jne	.label_41
.label_34:
	xor	edi, edi
	call	print_stuff
.label_39:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + ok]]
	lea	rsi, [rsi]
	xor	eax, 1
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
.label_43:
	cmp	eax, 0xffffff7d
	mov	rsp, rsp
	je	.label_17
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7e
	lea	rsi, [rsi]
	jne	.label_19
	xor	edi, edi
	mov	rbp, rbp
	call	usage
.label_29:
	cmp	eax, 0x5a
	mov	rsp, rsp
	jne	.label_19
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	jmp	.label_26
.label_17:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.7
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	r9d, OFFSET FLAT:.str.15
	xor	eax, eax
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	call	exit
.label_19:
	lea	rdi, [rdi]
	mov	edi, 1
	call	usage
.label_40:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.17_0
	lea	rsi, [rsi]
	jmp	.label_26
.label_22:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	jmp	.label_26
.label_28:
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.19
.label_26:
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	rsp, rsp
	jmp	.label_10
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	jmp	.label_10
.label_37:
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_41:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.26
.label_10:
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f90

	.globl print_stuff
	.type print_stuff, @function
print_stuff:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	movzx	eax,  byte ptr [byte ptr [rip + just_user]]
	lea	rsi, [rsi]
	and	eax, 1
	nop	
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_60
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	and	al, 1
	mov	eax, OFFSET FLAT:ruid
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:euid
	cmovne	rcx, rax
	mov	ebx, dword ptr [rcx]
	mov	al,  byte ptr [byte ptr [rip + use_name]]
	nop	
	and	al, 1
	je	.label_64
	mov	edi, ebx
	lea	rsi, [rsi]
	call	getpwuid
	test	rax, rax
	je	.label_53
	mov	rdi, qword ptr [rax]
	jmp	.label_68
.label_60:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + just_group]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_69
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:rgid
	mov	ecx, OFFSET FLAT:egid
	lea	rsi, [rsi]
	cmovne	rcx, rax
	mov	edi, dword ptr [rcx]
	mov	rsp, rsp
	movzx	esi,  byte ptr [byte ptr [rip + use_name]]
	and	esi, 1
	lea	rdi, [rdi]
	call	print_group
	lea	rsi, [rsi]
	and	byte ptr [byte ptr [rip + ok]],  al
	mov	rbp, rbp
	jmp	.label_51
.label_64:
	mov	ebx, ebx
	mov	rbp, rbp
	jmp	.label_54
.label_69:
	movzx	eax,  byte ptr [byte ptr [rip + just_group_list]]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_70
	mov	esi,  dword ptr [dword ptr [rip + ruid]]
	mov	edx,  dword ptr [dword ptr [rip + rgid]]
	mov	ecx,  dword ptr [dword ptr [rip + egid]]
	mov	al,  byte ptr [byte ptr [rip + opt_zero]]
	and	al, 1
	lea	rdi, [rdi]
	sete	al
	nop	
	shl	al, 5
	movzx	r8d,  byte ptr [byte ptr [rip + use_name]]
	and	r8d, 1
	movzx	r9d, al
	mov	rdi, rbx
	nop	
	call	print_group_list
	and	byte ptr [byte ptr [rip + ok]],  al
	jmp	.label_51
.label_70:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi,  dword ptr [dword ptr [rip + ruid]]
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	lea	rsi, [rsi]
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	nop	
	call	__printf_chk
	nop	
	mov	edi,  dword ptr [dword ptr [rip + ruid]]
	lea	rsi, [rsi]
	call	getpwuid
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	je	.label_45
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r14]
	lea	rdi, [rdi]
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.53
	xor	eax, eax
	call	__printf_chk
.label_45:
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.54
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [rip + rgid]]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	lea	rdi, [rdi]
	call	umaxtostr
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	call	__printf_chk
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + rgid]]
	mov	rbp, rbp
	call	getgrgid
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_61
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.53
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
.label_61:
	mov	eax,  dword ptr [dword ptr [rip + euid]]
	cmp	eax,  dword ptr [dword ptr [rip + ruid]]
	je	.label_50
	nop	
	xor	r14d, r14d
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi,  dword ptr [dword ptr [rip + euid]]
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	__printf_chk
	mov	edi,  dword ptr [dword ptr [rip + euid]]
	nop	
	call	getpwuid
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_50
	nop	
	mov	rdx, qword ptr [rbp]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.53
	xor	eax, eax
	call	__printf_chk
	mov	r14, rbp
.label_50:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + egid]]
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rip + rgid]]
	je	.label_55
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.56
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbp, rax
	mov	edi,  dword ptr [dword ptr [rip + egid]]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	mov	rbp, rbp
	call	umaxtostr
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi,  dword ptr [dword ptr [rip + egid]]
	call	getgrgid
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_55
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.53
	xor	eax, eax
	lea	rsi, [rsi]
	call	__printf_chk
.label_55:
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_67
	mov	rbp, rbp
	mov	esi, 0xffffffff
	test	r14, r14
	je	.label_44
	mov	esi, dword ptr [r14 + 0x14]
	lea	rdi, [rdi]
	jmp	.label_44
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	ebx, ebx
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	umaxtostr
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
	mov	byte ptr [byte ptr [rip + ok]],  0
.label_54:
	nop	
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	mov	rdi, rbx
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rdi, rax
.label_68:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
.label_51:
	mov	al,  byte ptr [byte ptr [rip + opt_zero]]
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	cmp	ecx, 1
	jne	.label_59
	cmp	byte ptr [byte ptr [rip + multiple_users]],  0
	lea	rdi, [rdi]
	je	.label_59
	mov	cl,  byte ptr [byte ptr [rip + just_group_list]]
	lea	rsi, [rsi]
	xor	cl, 1
	nop	
	test	cl, 1
	jne	.label_59
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_63
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rsp, rsp
	mov	byte ptr [rax], 0
.label_46:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jae	.label_66
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0
	jmp	.label_49
.label_59:
	xor	ecx, ecx
	test	al, al
	mov	esi, 0xa
	cmovne	esi, ecx
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_47
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_49:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	nop	
	pop	rbp
	ret	
.label_67:
	mov	esi,  dword ptr [dword ptr [rip + egid]]
.label_44:
	mov	rbp, rbp
	lea	rdx, [rsp + 8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	xgetgroups
	mov	ebp, eax
	lea	rsi, [rsi]
	test	ebp, ebp
	js	.label_56
	mov	rbp, rbp
	jle	.label_57
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	ebx, ebp
	xor	ebp, ebp
	lea	rsi, [rsi]
	jmp	.label_62
.label_65:
	nop	
	mov	esi, 0x2c
	call	__overflow
	mov	rsp, rsp
	jmp	.label_52
	nop	dword ptr [rax]
.label_62:
	test	rbp, rbp
	lea	rsi, [rsi]
	jle	.label_52
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_65
	lea	rsi, [rsi]
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	rbp, rbp
	mov	byte ptr [rax], 0x2c
.label_52:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax + rbp*4]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	call	umaxtostr
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	edi, dword ptr [rax + rbp*4]
	call	getgrgid
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_48
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.53
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
.label_48:
	inc	rbp
	cmp	ebx, ebp
	jne	.label_62
.label_57:
	mov	rdi, qword ptr [rsp + 8]
	nop	
	call	free
	jmp	.label_51
.label_56:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	test	rbx, rbx
	je	.label_58
	mov	esi, OFFSET FLAT:.str_1
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + ok]],  0
	mov	rbp, rbp
	jmp	.label_51
.label_47:
	lea	rsi, [rsi]
	call	__overflow
	mov	rbp, rbp
	jmp	.label_49
.label_58:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + ok]],  0
	nop	
	jmp	.label_51
.label_63:
	xor	esi, esi
	lea	rsi, [rsi]
	call	__overflow
	nop	
	jmp	.label_46
.label_66:
	xor	esi, esi
	lea	rdi, [rdi]
	call	__overflow
	mov	rbp, rbp
	jmp	.label_49
	nop	
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	ebx, r9d
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], r8d
	nop	
	mov	r12d, ecx
	mov	r14d, edx
	mov	rbp, rdi
	mov	r15b, 1
	nop	
	xor	r13d, r13d
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_83
	mov	edi, esi
	call	getpwuid
	mov	r13, rax
	test	r13, r13
	mov	rsp, rsp
	setne	r15b
.label_83:
	nop	
	mov	eax, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_89
	mov	rsp, rsp
	mov	edi, r14d
	call	getgrgid
	test	rax, rax
	je	.label_73
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	.label_99
.label_89:
	mov	rsp, rsp
	mov	edi, r14d
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	jmp	.label_79
.label_73:
	lea	rsi, [rsi]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	qword ptr [rsp], rbp
	mov	ebp, r14d
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	nop	
	mov	rcx, rbp
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp]
.label_79:
	mov	rsp, rsp
	call	umaxtostr
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
.label_99:
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	cmp	r12d, r14d
	mov	rsp, rsp
	je	.label_75
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_80
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	nop	
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_91:
	mov	eax, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	test	al, al
	je	.label_87
	mov	qword ptr [rsp], rbp
	mov	edi, r12d
	mov	rbp, rbp
	call	getgrgid
	nop	
	test	rax, rax
	je	.label_92
	mov	rbp, rbp
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	.label_94
.label_87:
	mov	edi, r12d
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	call	umaxtostr
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	jmp	.label_75
.label_92:
	mov	rsp, rsp
	xor	r15d, r15d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	ebp, r12d
	mov	rbp, rbp
	xor	edi, edi
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	nop	
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rdi, rbp
	call	umaxtostr
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
.label_94:
	call	fputs_unlocked
	mov	rbp, qword ptr [rsp]
.label_75:
	lea	rdi, [rdi]
	test	r13, r13
	lea	rdi, [rdi]
	mov	esi, r12d
	lea	rdi, [rdi]
	je	.label_97
	mov	esi, dword ptr [r13 + 0x14]
.label_97:
	mov	rsp, rsp
	lea	rdx, [rsp + 8]
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	xgetgroups
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_78
	jle	.label_81
	mov	qword ptr [rsp], r15
	mov	rbp, rbp
	movzx	r13d, bl
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	test	cl, cl
	mov	rbp, rbp
	je	.label_82
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x14], r13d
	nop	
	mov	r13d, eax
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_86
.label_78:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_93
	nop	
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	jmp	.label_84
.label_81:
	mov	rbp, rbp
	mov	qword ptr [rsp], r15
	jmp	.label_85
.label_82:
	mov	r15d, ebx
	mov	ebp, eax
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rsp, rsp
	jmp	.label_88
.label_98:
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0x14]
	call	__overflow
	jmp	.label_95
	nop	
.label_86:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	mov	eax, dword ptr [rax + r15*4]
	lea	rsi, [rsi]
	cmp	eax, r14d
	mov	rsp, rsp
	je	.label_72
	cmp	eax, r12d
	je	.label_72
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	jae	.label_98
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
.label_95:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + r15*4]
	mov	rsp, rsp
	mov	edi, ebp
	nop	
	call	getgrgid
	nop	
	test	rax, rax
	je	.label_90
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	jmp	.label_74
.label_90:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	lea	rdi, [rdi]
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	nop	
	mov	rdi, rbp
	call	umaxtostr
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
.label_74:
	nop	
	call	fputs_unlocked
.label_72:
	lea	rdi, [rdi]
	inc	r15
	mov	rbp, rbp
	cmp	r13d, r15d
	jne	.label_86
	mov	rbp, rbp
	jmp	.label_85
.label_76:
	lea	rdi, [rdi]
	mov	esi, r13d
	mov	rsp, rsp
	call	__overflow
	jmp	.label_96
	nop	word ptr cs:[rax + rax]
.label_88:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	eax, dword ptr [rax + rbx*4]
	nop	
	cmp	eax, r14d
	je	.label_71
	cmp	eax, r12d
	je	.label_71
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_76
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
.label_96:
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax + rbx*4]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rsp, rsp
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
.label_71:
	lea	rdi, [rdi]
	inc	rbx
	mov	rbp, rbp
	cmp	ebp, ebx
	mov	rbp, rbp
	jne	.label_88
.label_85:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	and	al, 1
	jmp	.label_77
.label_93:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	nop	
	mov	rdx, rcx
	call	error
.label_84:
	xor	eax, eax
.label_77:
	lea	rdi, [rdi]
	add	rsp, 0x18
	nop	
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_80:
	lea	rdi, [rdi]
	movzx	esi, bl
	call	__overflow
	jmp	.label_91
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402af0

	.globl print_group
	.type print_group, @function
print_group:
	nop	
	push	rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edi
	test	sil, sil
	je	.label_100
	mov	edi, ebp
	lea	rsi, [rsi]
	call	getgrgid
	test	rax, rax
	mov	rbp, rbp
	je	.label_102
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	mov	bl, 1
	jmp	.label_101
.label_100:
	lea	rdi, [rdi]
	mov	ebp, ebp
	mov	bl, 1
	nop	
	jmp	.label_103
.label_102:
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_0
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	ebp, ebp
	nop	
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, rbp
	lea	rdi, [rdi]
	call	error
.label_103:
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_101:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	fputs_unlocked
	mov	al, bl
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0
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
	#Procedure 0x402bb0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bc0

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
	je	.label_107
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	cmp	bl, 0
	je	.label_104
	mov	rsp, rsp
	cmp	dword ptr [rbp], 0x20
	jne	.label_104
.label_107:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	nop	
	jne	.label_105
	nop	
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_104:
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_106
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
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
.label_105:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
.label_106:
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
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
	#Procedure 0x402cc0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_108:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_108
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

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
	je	.label_109
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
	jl	.label_111
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_111
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_110
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_110:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_111:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_109:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
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
	#Procedure 0x402e10
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
	#Procedure 0x402e60
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
	#Procedure 0x402e80
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
	#Procedure 0x402ea0
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
	#Procedure 0x402f10
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
	#Procedure 0x402f30
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
	je	.label_112
	test	rdx, rdx
	nop	
	je	.label_112
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_112:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402f70
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
	#Procedure 0x403020

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
.label_161:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r12d
	lea	rsi, [rsi]
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	ja	.label_180
	mov	r9d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	r10, r15
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_185]]
.label_450:
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
.label_451:
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
	jne	.label_216
	mov	al, byte ptr [rdx]
	test	al, al
	mov	r14d, 0
	je	.label_216
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_238:
	mov	rsp, rsp
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_231
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_231:
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + r14 + 1]
	mov	rsp, rsp
	inc	r14
	test	al, al
	mov	rbp, rbp
	jne	.label_238
.label_216:
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
	jmp	.label_120
.label_443:
	xor	r9d, r9d
	xor	r14d, r14d
	mov	rbp, rbp
	mov	r13b, al
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_120
.label_446:
	lea	rsi, [rsi]
	mov	al, 1
.label_444:
	lea	rsi, [rsi]
	mov	dl, 1
.label_447:
	nop	
	test	dl, 1
	lea	rsi, [rsi]
	mov	cl, 1
	mov	rbp, rbp
	je	.label_143
	mov	rbp, rbp
	mov	cl, al
.label_143:
	mov	al, cl
.label_445:
	nop	
	mov	r9d, 2
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_150
	test	rbp, rbp
	je	.label_154
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx], 0x27
	mov	r14d, 1
	lea	rdi, [rdi]
	jmp	.label_155
.label_150:
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_155
.label_448:
	mov	rsp, rsp
	mov	r9d, 5
	test	dl, 1
	jne	.label_163
	mov	rsp, rsp
	test	rbp, rbp
	je	.label_168
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0x22
	mov	r14d, 1
	jmp	.label_171
.label_449:
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
	jmp	.label_120
.label_154:
	mov	r14d, 1
	nop	word ptr cs:[rax + rax]
.label_155:
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0x68], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xa0], rcx
	nop	
	mov	r13b, al
	nop	
	mov	sil, dl
	jmp	.label_120
.label_163:
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_171
.label_168:
	nop	
	mov	r14d, 1
.label_171:
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
.label_120:
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
	jmp	.label_217
	nop	dword ptr [rax]
.label_212:
	mov	rsp, rsp
	inc	r15
.label_217:
	lea	rdi, [rdi]
	cmp	r10, -1
	lea	rsi, [rsi]
	je	.label_115
	cmp	r15, r10
	jne	.label_136
	jmp	.label_139
	nop	dword ptr [rax]
.label_115:
	mov	rcx, -1
	nop	
	cmp	byte ptr [r11 + r15], 0
	mov	rsp, rsp
	je	.label_141
.label_136:
	cmp	byte ptr [rsp + 0x56], 0
	nop	
	je	.label_192
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa0]
	lea	rbx, [r15 + rax]
	mov	qword ptr [rsp + 0x88], r15
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_159
	lea	rdi, [rdi]
	cmp	r10, -1
	nop	
	jne	.label_159
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
.label_159:
	mov	rsp, rsp
	cmp	rbx, r10
	lea	rdi, [rdi]
	jbe	.label_178
	mov	dword ptr [rsp + 0x84], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	jmp	.label_179
	nop	dword ptr [rax]
.label_192:
	nop	
	mov	dword ptr [rsp + 0x84], 0
	lea	rsi, [rsi]
	jmp	.label_179
	nop	word ptr cs:[rax + rax]
.label_178:
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
	jne	.label_215
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
	je	.label_179
	jmp	.label_144
.label_215:
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
.label_179:
	movzx	r12d, byte ptr [r11 + r15]
	cmp	r12, 0x7e
	ja	.label_113
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r13b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	rsp, rsp
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_118]]
.label_487:
	test	r15, r15
	jne	.label_127
	jmp	.label_130
.label_491:
	xor	eax, eax
	cmp	r10, -1
	je	.label_132
	test	r15, r15
	jne	.label_133
	nop	
	cmp	r10, 1
	je	.label_130
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_114
.label_480:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0x37], 0
	mov	rbp, rbp
	je	.label_137
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_144
	nop	
	cmp	r9d, 2
	lea	rdi, [rdi]
	jne	.label_148
	nop	
	mov	al, dil
	nop	
	and	al, 1
	jne	.label_148
	cmp	r14, rbp
	jae	.label_153
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_153:
	nop	
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_126
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x24
.label_126:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rsi, [rsi]
	jae	.label_167
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_167:
	nop	
	add	r14, 3
	lea	rdi, [rdi]
	mov	dil, 1
.label_148:
	mov	rcx, r14
	nop	
	cmp	rcx, rbp
	mov	rsp, rsp
	jae	.label_176
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x5c
.label_176:
	lea	r14, [rcx + 1]
	mov	rbp, rbp
	mov	al, 1
	mov	r12b, 0x30
	cmp	r9d, 2
	je	.label_182
	lea	rdx, [r15 + 1]
	cmp	rdx, r10
	jae	.label_191
	nop	
	mov	dl, byte ptr [r11 + rdx]
	mov	rsp, rsp
	add	dl, 0xd0
	mov	rbp, rbp
	movzx	edx, dl
	cmp	edx, 9
	mov	rbp, rbp
	ja	.label_196
	mov	rsp, rsp
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_201
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rdx + r14], 0x30
.label_201:
	nop	
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_207
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + rdx], 0x30
.label_207:
	add	rcx, 3
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	r14, rcx
	jmp	.label_114
.label_481:
	mov	bl, 0x62
	nop	
	jmp	.label_211
.label_482:
	mov	rsp, rsp
	mov	cl, 0x74
	lea	rsi, [rsi]
	jmp	.label_218
.label_483:
	mov	bl, 0x76
	mov	rbp, rbp
	jmp	.label_211
.label_484:
	lea	rdi, [rdi]
	mov	bl, 0x66
	jmp	.label_211
.label_485:
	mov	cl, 0x72
	lea	rdi, [rdi]
	jmp	.label_218
.label_488:
	nop	
	mov	al, 1
	mov	qword ptr [rsp + 0xc8], rax
	cmp	r9d, 2
	jne	.label_157
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xc6], 0
	nop	
	jne	.label_235
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
	jae	.label_239
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_239:
	lea	rax, [r14 + 1]
	lea	rdi, [rdi]
	cmp	rax, rbp
	jae	.label_131
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x5c
.label_131:
	lea	rdi, [rdi]
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_214
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_214:
	mov	rbp, rbp
	add	r14, 3
	lea	rdi, [rdi]
	xor	edi, edi
.label_157:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	r13b, 1
	jmp	.label_114
.label_489:
	lea	rdi, [rdi]
	cmp	r9d, 5
	je	.label_149
	mov	rbp, rbp
	cmp	r9d, 2
	jne	.label_127
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_127
	nop	
	jmp	.label_160
.label_490:
	mov	rsp, rsp
	cmp	r9d, 2
	nop	
	jne	.label_162
	cmp	byte ptr [rsp + 0xc6], 0
	je	.label_165
	jmp	.label_169
.label_113:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x38], edi
	mov	qword ptr [rsp + 0xd0], r9
	mov	byte ptr [rsp + 0xf7], r8b
	mov	qword ptr [rsp + 0x78], rbp
	cmp	qword ptr [rsp + 0xa8], 1
	lea	rsi, [rsi]
	jne	.label_187
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
	jmp	.label_151
.label_132:
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_199
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_199
.label_130:
	mov	dl, 1
.label_486:
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_203
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r13b, dl
	lea	rdi, [rdi]
	jmp	.label_114
.label_137:
	cmp	dword ptr [rsp + 0x94], 0
	mov	rsp, rsp
	jne	.label_212
	jmp	.label_127
.label_162:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	cl, r12b
	je	.label_218
.label_165:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_188
.label_218:
	cmp	byte ptr [rsp + 0xc7], 0
	mov	rbp, rbp
	mov	bl, cl
	je	.label_226
.label_211:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x37], 0
	mov	r13d, 0
	mov	rbp, rbp
	je	.label_114
	jmp	.label_229
.label_187:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x70], 0
	lea	rsi, [rsi]
	cmp	r10, -1
	lea	rbp, [rsp + 0x70]
	jne	.label_233
	mov	rdi, r11
	mov	rbx, r11
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	r10, rax
.label_233:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd8], r10
	nop	
	mov	r13b, 1
	nop	
	cmp	byte ptr [rsp + 0x47], 0
	lea	rsi, [rsi]
	mov	edx, 0
	je	.label_117
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
	je	.label_140
	mov	rsp, rsp
	cmp	rbx, -1
	movabs	rsi, 0x20000002b
	je	.label_146
	test	rbx, rbx
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	je	.label_220
	lea	rsi, [rsi]
	cmp	rbx, 2
	nop	
	mov	rbp, qword ptr [rsp + 0x78]
	jb	.label_158
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0xe8]
	lea	rdi, [rdi]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax + rax]
.label_138:
	nop	
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	mov	rbp, rbp
	cmp	edx, 0x21
	mov	rbp, rbp
	ja	.label_173
	lea	rsi, [rsi]
	bt	rsi, rdx
	nop	
	jb	.label_177
.label_173:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbx
	jb	.label_138
.label_158:
	mov	edi, dword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	call	iswprint
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_184
	mov	rbp, rbp
	xor	r13d, r13d
.label_184:
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
	jmp	.label_128
	nop	
.label_117:
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
	je	.label_223
	mov	rsp, rsp
	cmp	rbp, -1
	je	.label_146
	mov	rbp, rbp
	cmp	rbp, -2
	mov	rsp, rsp
	je	.label_140
	mov	edi, dword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	iswprint
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_195
	xor	r13d, r13d
.label_195:
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
	je	.label_117
	lea	rsi, [rsi]
	jmp	.label_128
.label_199:
	lea	rdi, [rdi]
	mov	r10, -1
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_114
.label_149:
	cmp	dword ptr [rsp + 0x5c], 0
	lea	rdi, [rdi]
	je	.label_127
	lea	rcx, [r15 + 2]
	cmp	rcx, r10
	jae	.label_127
	movzx	eax, byte ptr [r15 + r11 + 1]
	mov	rsp, rsp
	cmp	eax, 0x3f
	jne	.label_127
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	nop	
	cmp	edx, 0x3e
	lea	rdi, [rdi]
	ja	.label_142
	movabs	rsi, 0x7000a38200000000
	mov	rbp, rbp
	bt	rsi, rdx
	lea	rsi, [rsi]
	jae	.label_147
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_232
	lea	rdi, [rdi]
	cmp	r14, rbp
	jae	.label_125
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x3f
.label_125:
	mov	rsp, rsp
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, rbp
	jae	.label_164
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x22
.label_164:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_181
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 0x22
.label_181:
	nop	
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_186
	nop	
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 0x3f
.label_186:
	add	r14, 4
	xor	eax, eax
	nop	
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12b, dl
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_114
.label_127:
	mov	rbp, rbp
	xor	eax, eax
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_114:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x83], 0
	je	.label_209
	cmp	qword ptr [rsp + 0x130], 0
	jne	.label_200
	nop	
	jmp	.label_119
	nop	dword ptr [rax + rax]
.label_209:
	cmp	byte ptr [rsp + 0x57], 0
	lea	rdi, [rdi]
	je	.label_119
.label_200:
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
	jne	.label_208
	mov	rcx, qword ptr [rsp + 0x130]
	and	esi, dword ptr [rcx + rdx*4]
	mov	rbp, rbp
	jmp	.label_219
	nop	word ptr cs:[rax + rax]
.label_119:
	mov	ecx, dword ptr [rsp + 0x84]
	test	cl, cl
.label_219:
	mov	bl, r12b
	je	.label_188
	jmp	.label_229
.label_208:
	mov	bl, r12b
.label_229:
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_144
	cmp	r9d, 2
	jne	.label_190
	mov	al, dil
	and	al, 1
	jne	.label_190
	lea	rdi, [rdi]
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_237
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_237:
	nop	
	lea	rax, [r14 + 1]
	mov	rsp, rsp
	cmp	rax, rbp
	jae	.label_236
	mov	rcx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_236:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_121
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + rax], 0x27
.label_121:
	mov	rsp, rsp
	add	r14, 3
	mov	dil, 1
.label_190:
	mov	rbp, rbp
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_129
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_129:
	mov	rbp, rbp
	inc	r14
	jmp	.label_230
.label_133:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_114
.label_182:
	xor	r13d, r13d
	jmp	.label_114
.label_191:
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_114
.label_196:
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_114
.label_146:
	xor	r13d, r13d
.label_223:
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rdx, qword ptr [rsp + 0x88]
	mov	rsp, rsp
	jmp	.label_128
.label_140:
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x88]
	lea	rax, [rdx + r15]
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	rax, r10
	mov	r11, qword ptr [rsp + 0xe0]
	jae	.label_156
	lea	rax, [r11 + r15]
.label_172:
	mov	rbp, rbp
	cmp	byte ptr [rax + rdx], 0
	mov	rbp, rbp
	je	.label_175
	lea	rcx, [r15 + rdx + 1]
	inc	rdx
	cmp	rcx, r10
	lea	rdi, [rdi]
	jb	.label_172
	mov	rsp, rsp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_128
.label_156:
	xor	r13d, r13d
	jmp	.label_128
.label_175:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_128
.label_220:
	lea	rsi, [rsi]
	mov	r11, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0x88]
.label_128:
	mov	rbp, rbp
	mov	rbx, r10
.label_151:
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
	ja	.label_204
	test	cl, cl
	je	.label_204
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_114
.label_204:
	mov	rsp, rsp
	add	rdx, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x88], rdx
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_210
	nop	dword ptr [rax]
.label_202:
	nop	
	inc	r14
	mov	rbp, rbp
	mov	r12b, byte ptr [r11 + r15 + 1]
	nop	
	mov	r15, rdx
.label_210:
	mov	rsp, rsp
	test	cl, cl
	je	.label_222
	mov	edx, dword ptr [rsp + 0x84]
	test	dl, 1
	lea	rsi, [rsi]
	je	.label_225
	cmp	r14, rbp
	jae	.label_228
	nop	
	mov	rdx, qword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + r14], 0x5c
.label_228:
	inc	r14
	mov	dword ptr [rsp + 0x84], 0
.label_225:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_234
	nop	dword ptr [rax + rax]
.label_222:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_240
	cmp	r9d, 2
	mov	rsp, rsp
	mov	r10, rbx
	jne	.label_116
	mov	rsp, rsp
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_116
	lea	rsi, [rsi]
	cmp	r14, rbp
	mov	rbp, rbp
	jae	.label_122
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_122:
	lea	rax, [r14 + 1]
	nop	
	cmp	rax, rbp
	jae	.label_198
	mov	rdx, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_198:
	lea	rax, [r14 + 2]
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_134
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdx + rax], 0x27
.label_134:
	lea	rsi, [rsi]
	add	r14, 3
	mov	rsp, rsp
	mov	dil, 1
.label_116:
	cmp	r14, rbp
	jae	.label_206
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x5c
.label_206:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	lea	rdi, [rdi]
	jae	.label_194
	mov	dl, r12b
	lea	rdi, [rdi]
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], dl
.label_194:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	mov	rsp, rsp
	jae	.label_224
	mov	dl, r12b
	shr	dl, 3
	and	dl, 7
	nop	
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xb8]
	nop	
	mov	byte ptr [rsi + rax], dl
.label_224:
	nop	
	add	r14, 3
	mov	rsp, rsp
	and	r12b, 7
	or	r12b, 0x30
	mov	rbp, rbp
	mov	al, 1
.label_234:
	lea	rdx, [r15 + 1]
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x88], rdx
	lea	rsi, [rsi]
	jbe	.label_188
	mov	rbp, rbp
	test	dil, 1
	lea	rsi, [rsi]
	je	.label_166
	lea	rsi, [rsi]
	mov	bl, al
	and	bl, 1
	jne	.label_166
	nop	
	cmp	r14, rbp
	mov	rsp, rsp
	jae	.label_145
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + r14], 0x27
.label_145:
	lea	rsi, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rsi, rbp
	jae	.label_193
	mov	rdi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rdi + rsi], 0x27
.label_193:
	add	r14, 2
	mov	rsp, rsp
	xor	edi, edi
.label_166:
	nop	
	mov	rbx, r10
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_202
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	byte ptr [rsi + r14], r12b
	jmp	.label_202
	nop	word ptr cs:[rax + rax]
.label_188:
	test	dil, 1
	je	.label_213
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_213
	nop	
	cmp	r14, rbp
	lea	rsi, [rsi]
	jae	.label_205
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	byte ptr [rax + r14], 0x27
.label_205:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_241
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_241:
	lea	rdi, [rdi]
	add	r14, 2
	nop	
	xor	edi, edi
.label_213:
	lea	rsi, [rsi]
	mov	bl, r12b
.label_230:
	cmp	r14, rbp
	jae	.label_174
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	byte ptr [rax + r14], bl
.label_174:
	inc	r14
	lea	rsi, [rsi]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	lea	rsi, [rsi]
	mov	r8b, r13b
	jmp	.label_212
.label_142:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_114
.label_147:
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_114
	nop	word ptr [rax + rax]
.label_139:
	nop	
	mov	rcx, r15
.label_141:
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
	je	.label_124
	mov	rsp, rsp
	or	al, dl
	je	.label_227
.label_124:
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
	je	.label_135
	mov	rsp, rsp
	or	al, dl
	jne	.label_135
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rdi, [rdi]
	jne	.label_152
	cmp	qword ptr [rsp + 0x48], 0
	mov	rsp, rsp
	je	.label_135
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
	je	.label_161
.label_135:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	je	.label_170
	nop	
	cmp	byte ptr [rsp + 0xc6], 0
	jne	.label_170
	mov	rsp, rsp
	mov	al, byte ptr [rdx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_170
	mov	rbp, rbp
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_189:
	cmp	r14, rbp
	jae	.label_183
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	byte ptr [rcx + r14], al
.label_183:
	mov	rbp, rbp
	inc	r14
	nop	
	mov	al, byte ptr [rdx]
	inc	rdx
	lea	rsi, [rsi]
	test	al, al
	jne	.label_189
.label_170:
	cmp	r14, rbp
	jae	.label_197
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	mov	byte ptr [rax + r14], 0
	jmp	.label_197
.label_203:
	lea	rdi, [rdi]
	mov	r9d, 2
	jmp	.label_144
.label_177:
	mov	r9d, 2
	lea	rdi, [rdi]
	mov	r11, qword ptr [rsp + 0xe0]
	jmp	.label_144
.label_240:
	lea	rdi, [rdi]
	mov	r10, rbx
	lea	rdi, [rdi]
	jmp	.label_144
.label_227:
	lea	rdi, [rdi]
	mov	r10, rcx
	mov	rsp, rsp
	jmp	.label_144
.label_226:
	nop	
	mov	r9d, 2
.label_144:
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
.label_123:
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	r14, rax
.label_197:
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
.label_152:
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
	jmp	.label_123
.label_235:
	mov	r9d, 2
	jmp	.label_144
.label_169:
	nop	
	mov	r9d, 2
	mov	rsp, rsp
	jmp	.label_144
.label_160:
	mov	r9d, 2
	mov	rbp, rbp
	jmp	.label_144
.label_232:
	mov	r9d, 5
	nop	
	jmp	.label_144
.label_180:
	lea	rsi, [rsi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0
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
	#Procedure 0x404600
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
	je	.label_242
	mov	qword ptr [rax], rbx
.label_242:
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
	#Procedure 0x404750
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_243
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_247:
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
	jl	.label_247
.label_243:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_246
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_245]], OFFSET FLAT:slot0
.label_246:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_244
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_244:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404810
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404820

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
	js	.label_251
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_253
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_249
.label_253:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_254
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
	jne	.label_250
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_250:
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
.label_249:
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
	ja	.label_248
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
	je	.label_252
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_252:
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
.label_248:
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
.label_251:
	lea	rdi, [rdi]
	call	abort
.label_254:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x404a90
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404aa0
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
	#Procedure 0x404ad0
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
	#Procedure 0x404b00
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
	je	.label_255
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
.label_255:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b90
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
	je	.label_256
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
.label_256:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c30
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
	je	.label_257
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
.label_257:
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cc0
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
	je	.label_258
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
.label_258:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404d30
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	rbp, rbp
	mov	r8, rsi
	mov	rbp, rbp
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_259]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
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
	#Procedure 0x404dd0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
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
	#Procedure 0x404e70

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	rax, rdi
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + label_259]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
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
	#Procedure 0x404ee0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rdx, rdi
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
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
	#Procedure 0x404f50
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
	je	.label_262
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
.label_262:
	lea	rsi, [rsi]
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405030
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	rax,  qword ptr [word ptr [rip + label_259]]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	nop	
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_263
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_263
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
.label_263:
	nop	
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4050c0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	mov	rsp, rsp
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_259]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_264
	test	rdx, rdx
	je	.label_264
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
.label_264:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_259]]
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 0xa
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_265
	mov	rbp, rbp
	test	rsi, rsi
	je	.label_265
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
.label_265:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_259]]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x20], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_261]]
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_266
	test	rsi, rsi
	je	.label_266
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
.label_266:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405290
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052a0
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
	#Procedure 0x4052c0
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
	#Procedure 0x4052e0

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
	#Procedure 0x405310

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
	jne	.label_269
	mov	rsp, rsp
	call	locale_charset
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	mov	rsp, rsp
	je	.label_267
	nop	
	cmp	ecx, 0x55
	mov	rbp, rbp
	jne	.label_268
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_268
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	lea	rdi, [rdi]
	cmp	ecx, 0x46
	jne	.label_268
	movzx	ecx, byte ptr [rax + 3]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_268
	nop	
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	lea	rdi, [rdi]
	jne	.label_268
	cmp	byte ptr [rax + 5], 0
	lea	rdi, [rdi]
	jne	.label_268
	nop	
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	mov	rbp, rbp
	cmp	ecx, 0x60
	mov	rsp, rsp
	je	.label_269
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_269
.label_267:
	movsx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	and	ecx, 0xffffffdf
	nop	
	cmp	ecx, 0x42
	jne	.label_268
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x31
	jne	.label_268
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	mov	rsp, rsp
	jne	.label_268
	movzx	ecx, byte ptr [rax + 4]
	lea	rsi, [rsi]
	cmp	ecx, 0x30
	jne	.label_268
	movzx	ecx, byte ptr [rax + 5]
	lea	rsi, [rsi]
	cmp	ecx, 0x33
	lea	rsi, [rsi]
	jne	.label_268
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 6]
	mov	rbp, rbp
	cmp	ecx, 0x30
	nop	
	jne	.label_268
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 7], 0
	lea	rsi, [rsi]
	je	.label_270
.label_268:
	lea	rsi, [rsi]
	cmp	ebp, 9
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_269:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
.label_270:
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	mov	rbp, rbp
	je	.label_269
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_269
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405480

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	nop	
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_271
	mov	esi, 0x3a
	mov	rdi, r13
	mov	rsp, rsp
	call	strchr
	nop	
	mov	r14, rax
.label_271:
	mov	rsp, rsp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	r8, r15
	mov	rbp, rbp
	mov	r9, rbp
	mov	qword ptr [rsp], rbp
	lea	rdi, [rdi]
	call	parse_with_separator
	mov	rbp, rbp
	mov	rbp, rax
	test	rbx, rbx
	je	.label_272
	test	r14, r14
	jne	.label_272
	nop	
	test	rbp, rbp
	nop	
	je	.label_272
	lea	rdi, [rdi]
	mov	esi, 0x2e
	lea	rdi, [rdi]
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_272
	mov	rdi, r13
	nop	
	mov	rsi, rax
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	rcx, rbx
	mov	r8, r15
	nop	
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_273
.label_272:
	mov	rax, rbp
.label_273:
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405570

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x58
	mov	r14, r8
	mov	rbp, rcx
	mov	rsp, rsp
	mov	r15, rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rdx]
	lea	rdi, [rdi]
	mov	ebx, 0xffffffff
	nop	
	test	rbp, rbp
	je	.label_301
	nop	
	mov	ebx, dword ptr [rbp]
.label_301:
	test	r14, r14
	je	.label_285
	lea	rdi, [rdi]
	mov	qword ptr [r14], 0
.label_285:
	lea	rsi, [rsi]
	test	r9, r9
	je	.label_295
	mov	qword ptr [r9], 0
.label_295:
	test	r15, r15
	je	.label_291
	mov	rsp, rsp
	mov	r12, rbx
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], r9
	xor	r13d, r13d
	lea	rsi, [rsi]
	mov	rbx, r15
	sub	rbx, rdi
	mov	rbp, rbp
	je	.label_293
	lea	rsi, [rbx + 1]
	lea	rsi, [rsi]
	call	xmemdup
	mov	r13, rax
	mov	byte ptr [r13 + rbx], 0
.label_293:
	xor	ebx, ebx
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 1], 0
	mov	qword ptr [rsp + 0x20], r12
	nop	
	je	.label_276
	lea	rdi, [rdi]
	lea	rbx, [r15 + 1]
	jmp	.label_276
.label_291:
	xor	r12d, r12d
	cmp	byte ptr [rdi], 0
	lea	rdi, [rdi]
	je	.label_283
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r9
	call	xstrdup
	lea	rsi, [rsi]
	mov	r13, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_276:
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	r13, r13
	je	.label_296
	movzx	eax, byte ptr [r13]
	cmp	eax, 0x2b
	lea	rsi, [rsi]
	je	.label_288
	mov	rbp, rbp
	mov	rdi, r13
	lea	rdi, [rdi]
	call	getpwnam
	mov	rsp, rsp
	test	rax, rax
	je	.label_288
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rsp, rsp
	test	r15, r15
	je	.label_278
	mov	r15, rbx
	mov	rsp, rsp
	test	r15, r15
	mov	rsp, rsp
	jne	.label_284
	mov	rbx, rax
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	shr	rbx, 0x20
	mov	edi, ebx
	mov	rbp, rbp
	call	getgrgid
	nop	
	test	rax, rax
	je	.label_292
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r14
	mov	rdi, qword ptr [rax]
	jmp	.label_297
.label_288:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x18], r14
	mov	r14d, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	r15, r15
	mov	rsp, rsp
	mov	r15, rbx
	nop	
	je	.label_280
	test	r15, r15
	nop	
	jne	.label_280
	mov	rbx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	jmp	.label_282
.label_296:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r14
	xor	r13d, r13d
	xor	r14d, r14d
	mov	r15, rbx
	nop	
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_287
.label_280:
	mov	rsp, rsp
	lea	rcx, [rsp + 0x30]
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, 0xa
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, r13
	lea	rdi, [rdi]
	call	xstrtoul
	test	eax, eax
	jne	.label_274
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_274
	mov	rsp, rsp
	xor	r14d, r14d
	cmp	eax, -1
	jne	.label_294
.label_274:
	mov	r14d, OFFSET FLAT:.str_5
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x50]
.label_294:
	nop	
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_282
.label_283:
	mov	qword ptr [rsp + 0x50], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdx
	mov	rsp, rsp
	xor	r13d, r13d
	jmp	.label_289
.label_278:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	nop	
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r14
	lea	rdi, [rdi]
	xor	r14d, r14d
	mov	rsp, rsp
	mov	r15, rbx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_282
.label_284:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r14
	xor	r14d, r14d
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x20]
	nop	
	jmp	.label_282
.label_292:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x18], r14
	nop	
	lea	rsi, [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	umaxtostr
	mov	rdi, rax
.label_297:
	call	xstrdup
	mov	rbp, rbp
	mov	r12, rax
	call	endgrent
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_282:
	call	endpwent
.label_287:
	mov	rsp, rsp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_300
	test	r14, r14
	mov	rbp, rbp
	jne	.label_300
	movzx	eax, byte ptr [r15]
	mov	rbp, rbp
	cmp	eax, 0x2b
	mov	rsp, rsp
	je	.label_275
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	getgrnam
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_275
	mov	ebx, dword ptr [rax + 0x10]
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rdi, [rdi]
	jmp	.label_277
.label_275:
	lea	rsi, [rsi]
	mov	rbp, rbx
	mov	rbp, rbp
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str_0
	mov	rdi, r15
	mov	rbp, rbp
	call	xstrtoul
	nop	
	test	eax, eax
	jne	.label_299
	nop	
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	mov	rbp, rbp
	shr	rax, 0x20
	lea	rsi, [rsi]
	jne	.label_299
	lea	rdi, [rdi]
	xor	r14d, r14d
	cmp	ebx, -1
	jne	.label_277
.label_299:
	mov	r14d, OFFSET FLAT:.str.1_3
	mov	ebx, ebp
.label_277:
	nop	
	call	endgrent
	mov	rdi, r15
	call	xstrdup
	mov	r12, rax
.label_300:
	nop	
	mov	r9, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_281
	mov	rbp, rbp
	xor	ebx, ebx
	jmp	.label_286
.label_281:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x28]
.label_289:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	dword ptr [rax], ecx
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_290
	lea	rsi, [rsi]
	mov	dword ptr [rbp], ebx
.label_290:
	mov	rbp, rbp
	test	r14, r14
	nop	
	je	.label_298
	lea	rdi, [rdi]
	mov	qword ptr [r14], r13
	xor	r13d, r13d
.label_298:
	mov	rbp, rbp
	mov	bl, 1
	xor	r14d, r14d
	test	r9, r9
	je	.label_286
	nop	
	mov	qword ptr [r9], r12
	xor	r14d, r14d
	xor	r12d, r12d
.label_286:
	mov	rdi, r13
	call	free
	mov	rdi, r12
	mov	rsp, rsp
	call	free
	xor	eax, eax
	lea	rdi, [rdi]
	test	bl, bl
	mov	rbp, rbp
	jne	.label_279
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
.label_279:
	add	rsp, 0x58
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059d0

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
	je	.label_305
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_6
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_307
.label_305:
	mov	edx, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_307:
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
	ja	.label_309
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_310]]
.label_434:
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
.label_309:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_303
.label_435:
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
.label_436:
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
.label_437:
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
	jmp	.label_304
.label_438:
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
	jmp	.label_302
.label_439:
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
	jmp	.label_311
.label_440:
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
.label_311:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_302:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_304:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_308
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_303:
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
	jmp	.label_306
.label_441:
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
.label_306:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_308:
	mov	rbp, rbp
	call	__fprintf_chk
.label_433:
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
	#Procedure 0x405dc0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_312:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_312
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405df0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	nop	
	xor	r9d, r9d
	nop	dword ptr [rax + rax]
.label_316:
	lea	rdi, [rdi]
	cmp	r10d, 0x28
	ja	.label_313
	movsxd	r11, r10d
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	rbp, rbp
	mov	dword ptr [r8], r10d
	mov	rsp, rsp
	jmp	.label_315
	nop	word ptr cs:[rax + rax]
.label_313:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_315:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_314
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_316
.label_314:
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
	#Procedure 0x405e80

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x118
	test	al, al
	nop	
	je	.label_317
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
.label_317:
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
.label_319:
	lea	rdi, [rdi]
	cmp	r8d, 0x28
	ja	.label_318
	lea	rdi, [rdi]
	movsxd	r10, r8d
	mov	rbp, rbp
	add	r10, qword ptr [rsp + 0x110]
	add	r8d, 8
	mov	dword ptr [rsp + 0x100], r8d
	jmp	.label_320
	nop	dword ptr [rax + rax]
.label_318:
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x108]
	lea	rdi, [rdi]
	lea	rax, [r10 + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x108], rax
.label_320:
	mov	rbp, rbp
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8], rax
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_321
	inc	r9
	cmp	r9, 0xa
	jb	.label_319
.label_321:
	mov	rsp, rsp
	lea	r8, [rsp]
	mov	rbp, rbp
	call	version_etc_arn
	add	rsp, 0x118
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fc0
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
	mov	esi, OFFSET FLAT:.str.16
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
	#Procedure 0x406050
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
	jb	.label_322
	imul	rbx, rdi
	nop	
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_323
	test	rax, rax
	je	.label_322
.label_323:
	nop	
	pop	rbx
	ret	
.label_322:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4060a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_324
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_325
.label_324:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_325:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d0
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
	jb	.label_327
	mov	rbp, rbp
	imul	rbx, rsi
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_326
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_326
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	xor	eax, eax
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_326:
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_328
	test	rax, rax
	je	.label_327
.label_328:
	mov	rsp, rsp
	pop	rbx
	ret	
.label_327:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406150

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_329
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_329
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_329:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_330
	test	rax, rax
	nop	
	je	.label_331
.label_330:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_331:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_332
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_336
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_335
.label_332:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_338
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_338:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_333
.label_335:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	rbx, rcx
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	je	.label_334
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_334
	lea	rsi, [rsi]
	call	free
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_334:
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	realloc
	test	rbx, rbx
	je	.label_337
	test	rax, rax
	mov	rbp, rbp
	je	.label_336
.label_337:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	ret	
.label_336:
	call	xalloc_die
.label_333:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406280
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_340
	test	rax, rax
	mov	rbp, rbp
	je	.label_339
.label_340:
	pop	rbx
	ret	
.label_339:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4062a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi]
	nop	
	test	rdi, rdi
	je	.label_341
	movabs	rcx, 0x5555555555555554
	lea	rdi, [rdi]
	cmp	rax, rcx
	jae	.label_344
	mov	rbx, rax
	mov	rbp, rbp
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_345
	call	free
	xor	eax, eax
	jmp	.label_342
.label_341:
	mov	rbp, rbp
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	js	.label_343
	mov	rsp, rsp
	mov	qword ptr [rsi], rbx
.label_345:
	mov	rsi, rbx
	call	realloc
	nop	
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_342
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_343
.label_342:
	lea	rsi, [rsi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_343:
	mov	rbp, rbp
	call	xalloc_die
.label_344:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406330
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
	je	.label_346
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_347
.label_346:
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
.label_347:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406390
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
	jb	.label_348
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_348
	pop	rcx
	ret	
.label_348:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4063c0

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
	je	.label_350
	mov	rbp, rbp
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_349
.label_350:
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
.label_349:
	nop	
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406420

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
	je	.label_351
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_352
.label_351:
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
.label_352:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406480

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4064d0

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	mov	rsp, rsp
	cmp	ebx, -1
	jne	.label_353
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0xc
	nop	
	je	.label_354
.label_353:
	nop	
	mov	eax, ebx
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_354:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406500

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r14, r8
	nop	
	mov	r12d, edx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	r12d, 0x25
	lea	rsi, [rsi]
	jae	.label_355
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	nop	
	call	__errno_location
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	
.label_376:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdx]
	inc	rdx
	mov	rbp, rbp
	test	byte ptr [rcx + rax*2 + 1], 0x20
	lea	rdi, [rdi]
	jne	.label_376
	mov	rbp, rbp
	test	rbp, rbp
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	cmovne	rsi, rbp
	movzx	eax, al
	mov	rsp, rsp
	mov	r13d, 4
	cmp	eax, 0x2d
	lea	rsi, [rsi]
	je	.label_357
	mov	rsp, rsp
	mov	rdi, rbx
	mov	edx, r12d
	mov	rbp, rsi
	call	strtoul
	mov	rcx, rbp
	mov	rbp, rax
	mov	rbp, rbp
	mov	r12, qword ptr [rcx]
	mov	rbp, rbp
	cmp	r12, rbx
	mov	rbp, rbp
	je	.label_366
	mov	eax, dword ptr [r15]
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_374
	cmp	eax, 0x22
	lea	rsi, [rsi]
	jne	.label_357
	mov	ebx, 1
.label_374:
	test	r14, r14
	jne	.label_378
	mov	rbp, rbp
	jmp	.label_370
.label_366:
	mov	rsp, rsp
	test	r14, r14
	je	.label_357
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	lea	rdi, [rdi]
	je	.label_357
	nop	
	mov	rdi, r14
	mov	rsp, rsp
	mov	rbx, rcx
	call	strchr
	nop	
	mov	rcx, rbx
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	mov	ebp, 1
	test	rax, rax
	je	.label_357
.label_378:
	movsx	r13d, byte ptr [r12]
	nop	
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_370
	mov	rsp, rsp
	mov	qword ptr [rsp], rcx
	nop	
	mov	rdi, r14
	mov	esi, r13d
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	je	.label_359
	mov	rsp, rsp
	mov	r15d, 1
	lea	rdi, [rdi]
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_358
	movabs	rdx, 0x814400308945
	lea	rsi, [rsi]
	bt	rdx, rax
	lea	rdi, [rdi]
	jae	.label_358
	mov	esi, 0x30
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strchr
	nop	
	mov	r15d, 1
	mov	rbp, rbp
	mov	esi, 0x400
	test	rax, rax
	je	.label_358
	movsx	eax, byte ptr [r12 + 1]
	mov	rsp, rsp
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	nop	
	je	.label_372
	nop	
	cmp	eax, 0x44
	je	.label_372
	cmp	eax, 0x69
	jne	.label_358
	mov	rbp, rbp
	movzx	eax, byte ptr [r12 + 2]
	lea	rsi, [rsi]
	mov	r15d, 3
	cmp	eax, 0x42
	je	.label_377
	mov	r15d, 1
.label_377:
	lea	rdi, [rdi]
	mov	esi, 0x400
	mov	rsp, rsp
	jmp	.label_358
.label_372:
	mov	r15d, 2
	nop	
	mov	esi, 0x3e8
.label_358:
	cmp	r13d, 0x59
	jg	.label_362
	lea	eax, [r13 - 0x42]
	mov	rbp, rbp
	cmp	eax, 0xe
	ja	.label_364
	jmp	qword ptr [word ptr [+ (rax * 8) + label_365]]
.label_474:
	nop	
	mov	rax, rbp
	shr	rax, 0x36
	setne	dl
	mov	rsp, rsp
	shl	rbp, 0xa
	jmp	.label_369
.label_362:
	cmp	r13d, 0x73
	mov	rbp, rbp
	jg	.label_375
	lea	edx, [r13 - 0x62]
	cmp	edx, 0xb
	ja	.label_360
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_367]]
.label_459:
	nop	
	mov	rax, rbp
	shr	rax, 0x37
	setne	dl
	shl	rbp, 9
.label_369:
	cmp	rax, 1
	mov	rbp, rbp
	sbb	rax, rax
	not	rax
	lea	rdi, [rdi]
	or	rbp, rax
	movzx	eax, dl
	jmp	.label_379
.label_364:
	lea	rdi, [rdi]
	cmp	r13d, 0x54
	lea	rdi, [rdi]
	je	.label_361
	mov	rbp, rbp
	cmp	r13d, 0x59
	jne	.label_359
	mov	rsp, rsp
	mov	rdi, -1
	mov	rax, -1
	nop	
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	cmovb	rbp, rdi
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r9b, r9b
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	lea	rsi, [rsi]
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	mov	rsp, rsp
	cmp	rax, rbp
	mov	rsp, rsp
	sbb	r11b, r11b
	lea	rdi, [rdi]
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	lea	rdi, [rdi]
	cmp	rax, rcx
	sbb	r14b, r14b
	nop	
	mov	rbp, rcx
	imul	rbp, rsi
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r13b, r13b
	nop	
	mov	rcx, rbp
	imul	rcx, rsi
	nop	
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rsi, rdi
	nop	
	or	dl, r8b
	lea	rsi, [rsi]
	or	dl, r9b
	or	dl, r10b
	mov	rsp, rsp
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	mov	rbp, rbp
	or	dl, r13b
	nop	
	or	dl, bpl
	mov	rbp, rbp
	jmp	.label_368
.label_375:
	nop	
	cmp	r13d, 0x74
	mov	rbp, rbp
	je	.label_361
	mov	rsp, rsp
	cmp	r13d, 0x77
	jne	.label_359
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	rsp, rsp
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_379
.label_460:
	lea	rsi, [rsi]
	mov	r8, -1
	mov	rbp, rbp
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rsp, rsp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	lea	rsi, [rsi]
	sbb	dl, dl
	lea	rdi, [rdi]
	mov	rbp, rdi
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rdi
	nop	
	cmovb	rbp, r8
	lea	rsi, [rsi]
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	nop	
	or	dl, r9b
	or	dl, dil
	nop	
	jmp	.label_363
.label_461:
	mov	rbp, rbp
	mov	rdi, -1
	lea	rdi, [rdi]
	mov	rax, -1
	xor	edx, edx
	lea	rsi, [rsi]
	div	rsi
	mov	rsp, rsp
	imul	rsi, rbp
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	mov	rsp, rsp
	and	eax, 1
	jmp	.label_356
.label_462:
	mov	r8, -1
	nop	
	mov	rax, -1
	lea	rsi, [rsi]
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rsi, [rsi]
	sbb	r9b, r9b
	mov	rdi, rbp
	lea	rsi, [rsi]
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	mov	rsp, rsp
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	lea	rdi, [rdi]
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	nop	
	jmp	.label_363
.label_361:
	mov	rbp, rbp
	mov	r9, -1
	nop	
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	lea	rdi, [rdi]
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	imul	rdi, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdi, r9
	lea	rsi, [rsi]
	cmp	rax, rdi
	mov	rbp, rbp
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	lea	rdi, [rdi]
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	mov	rsp, rsp
	imul	rdi, rsi
	mov	rbp, rbp
	cmp	rax, rbp
	cmovb	rdi, r9
	mov	rbp, rbp
	cmp	rax, rdi
	nop	
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	lea	rsi, [rsi]
	cmovb	rsi, r9
	lea	rdi, [rdi]
	or	dl, r8b
	mov	rbp, rbp
	or	dl, r10b
	or	dl, cl
	jmp	.label_363
.label_360:
	cmp	r13d, 0x5a
	lea	rdi, [rdi]
	jne	.label_359
	lea	rsi, [rsi]
	mov	rdi, -1
	nop	
	mov	rax, -1
	nop	
	xor	edx, edx
	div	rsi
	lea	rsi, [rsi]
	cmp	rax, rbp
	nop	
	sbb	r8b, r8b
	mov	rbp, rbp
	mov	rcx, rbp
	mov	rbp, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	nop	
	imul	rcx, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	imul	rbp, rsi
	lea	rsi, [rsi]
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rsp, rsp
	mov	rcx, rbp
	imul	rcx, rsi
	lea	rdi, [rdi]
	cmp	rax, rbp
	cmovb	rcx, rdi
	nop	
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rcx
	lea	rdi, [rdi]
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rsi, [rsi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	dl, r8b
	or	dl, r9b
	lea	rsi, [rsi]
	or	dl, r10b
	lea	rsi, [rsi]
	and	dl, 1
	or	dl, r11b
	mov	rbp, rbp
	or	dl, r14b
	or	dl, cl
.label_368:
	lea	rsi, [rsi]
	movzx	eax, dl
	and	eax, 1
	jmp	.label_356
.label_359:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	mov	rsp, rsp
	jmp	.label_371
.label_475:
	lea	rdi, [rdi]
	mov	r9, -1
	mov	rbp, rbp
	mov	rax, -1
	xor	edx, edx
	mov	rbp, rbp
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	imul	rdi, rsi
	mov	rsp, rsp
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	nop	
	sbb	dl, dl
	mov	rbp, rdi
	lea	rsi, [rsi]
	imul	rbp, rsi
	mov	rsp, rsp
	cmp	rax, rdi
	cmovb	rbp, r9
	mov	rsp, rsp
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	nop	
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rbp
	mov	rbp, rdi
	nop	
	imul	rbp, rsi
	cmp	rax, rdi
	nop	
	cmovb	rbp, r9
	mov	rbp, rbp
	cmp	rax, rbp
	sbb	r14b, r14b
	nop	
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	lea	rsi, [rsi]
	or	dl, r11b
	lea	rsi, [rsi]
	or	dl, r14b
	lea	rdi, [rdi]
	or	dl, bpl
.label_363:
	lea	rdi, [rdi]
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
.label_356:
	mov	rbp, rsi
.label_379:
	or	eax, ebx
	nop	
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp]
	mov	rbp, rbp
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	cmp	byte ptr [r12 + r15], 0
	mov	rbp, rbp
	je	.label_373
	or	eax, 2
.label_373:
	mov	ebx, eax
.label_370:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rax], rbp
.label_371:
	mov	r13d, ebx
.label_357:
	mov	eax, r13d
	mov	rsp, rsp
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_476:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	mov	rbp, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	lea	rdi, [rdi]
	mov	rbp, rdx
	nop	
	imul	rbp, rsi
	mov	rbp, rbp
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	nop	
	sbb	r9b, r9b
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	imul	rdx, rsi
	nop	
	cmp	rax, rbp
	mov	rbp, rbp
	cmovb	rdx, rdi
	nop	
	cmp	rax, rdx
	mov	rsp, rsp
	sbb	r10b, r10b
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbp, rbp
	imul	rbp, rsi
	lea	rdi, [rdi]
	cmp	rax, rdx
	cmovb	rbp, rdi
	nop	
	cmp	rax, rbp
	sbb	dl, dl
	lea	rsi, [rsi]
	imul	rsi, rbp
	cmp	rax, rbp
	lea	rdi, [rdi]
	cmovb	rsi, rdi
	mov	rbp, rbp
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	nop	
	or	cl, dl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	jmp	.label_356
.label_355:
	mov	edi, OFFSET FLAT:.str_7
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.1_6
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoul
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406de0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_380
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_381
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
	je	.label_381
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
.label_380:
	mov	ecx, 1
.label_381:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e50

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
	je	.label_382
	nop	
	cmp	r15, -2
	jb	.label_382
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_382
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_382:
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
	#Procedure 0x406ee0

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
	jne	.label_383
	mov	rbp, rbp
	test	eax, eax
	nop	
	sete	cl
	neg	eax
	mov	rbp, rbp
	sbb	ebx, ebx
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_384
	test	cl, cl
	mov	rsp, rsp
	jne	.label_384
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	cmove	ebx, ecx
	jmp	.label_384
.label_383:
	mov	ebx, 0xffffffff
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_384
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
.label_384:
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
	#Procedure 0x406f70

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
	je	.label_386
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_385
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_387
.label_385:
	nop	
	mov	esi, OFFSET FLAT:.str.1_7
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_386
.label_387:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_386:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406fc0

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
	mov	eax, OFFSET FLAT:.str.1_8
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_388
	nop	
	mov	rax, rcx
.label_388:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407000

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r13d, esi
	mov	rbp, rbp
	mov	rbx, rdi
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_389
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0xa
	xor	edi, edi
	mov	esi, 0x28
	call	realloc
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r14d, 0xffffffff
	test	rbp, rbp
	je	.label_390
	mov	qword ptr [rsp + 8], r12
	mov	r12d, 0xa
	lea	r15, [rsp + 0x14]
	lea	rdi, [rdi]
	jmp	.label_401
	nop	word ptr cs:[rax + rax]
.label_404:
	nop	
	mov	r12d, dword ptr [rsp + 0x14]
	mov	rbp, rax
.label_401:
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	esi, r13d
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rcx, r15
	call	getgrouplist
	mov	rsp, rsp
	mov	r14d, eax
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x14]
	mov	rbp, rbp
	test	r14d, r14d
	mov	rsp, rsp
	jns	.label_391
	lea	rsi, [rsi]
	cmp	r12d, eax
	jne	.label_391
	add	r12d, r12d
	mov	dword ptr [rsp + 0x14], r12d
	mov	eax, r12d
.label_391:
	test	eax, eax
	nop	
	js	.label_398
	lea	rdi, [rdi]
	movsxd	rsi, eax
	shl	rsi, 2
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	realloc
	test	rax, rax
	nop	
	je	.label_402
	mov	rbp, rbp
	test	r14d, r14d
	nop	
	js	.label_404
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	r14d, dword ptr [rsp + 0x14]
	jmp	.label_390
.label_389:
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	call	getgroups
	mov	dword ptr [rsp + 0x14], eax
	mov	rbp, rbp
	test	eax, eax
	js	.label_396
	nop	
	cmp	r13d, -1
	jne	.label_392
	test	eax, eax
	mov	ebx, eax
	jne	.label_393
.label_392:
	mov	rsp, rsp
	lea	ebx, [rax + 1]
	mov	dword ptr [rsp + 0x14], ebx
	lea	rsi, [rsi]
	cmp	eax, -2
	lea	rsi, [rsi]
	jg	.label_393
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	mov	r14d, 0xffffffff
	jmp	.label_390
.label_393:
	lea	rsi, [rsi]
	movsxd	rsi, ebx
	lea	rdi, [rdi]
	shl	rsi, 2
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	call	realloc
	mov	rsp, rsp
	mov	r15, rax
	lea	rdi, [rdi]
	mov	r14d, 0xffffffff
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	je	.label_390
	cmp	r13d, -1
	mov	rsp, rsp
	setne	al
	nop	
	movzx	eax, al
	lea	rdi, [rdi]
	sub	ebx, eax
	mov	rbp, rbp
	lea	rsi, [r15 + rax*4]
	mov	rbp, rbp
	mov	edi, ebx
	call	getgroups
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	js	.label_394
	lea	rsi, [rsi]
	cmp	r13d, -1
	lea	rsi, [rsi]
	mov	r14d, eax
	je	.label_400
	mov	rbp, rbp
	mov	dword ptr [r15], r13d
	lea	rsi, [rsi]
	inc	eax
	lea	rsi, [rsi]
	mov	r14d, eax
.label_400:
	mov	qword ptr [r12], r15
	cmp	r14d, 2
	mov	rbp, rbp
	jl	.label_390
	lea	rdi, [rdi]
	movsxd	rax, r14d
	lea	rax, [r15 + rax*4]
	nop	
	mov	rcx, r15
	add	rcx, 4
	nop	
	cmp	rcx, rax
	jae	.label_390
	mov	rsp, rsp
	mov	edx, dword ptr [r15]
	mov	esi, edx
	nop	dword ptr [rax]
.label_399:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rcx]
	cmp	edi, edx
	je	.label_403
	cmp	edi, esi
	jne	.label_395
.label_403:
	mov	rbp, rbp
	dec	r14d
	add	rcx, 4
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	rsp, rsp
	jb	.label_399
	lea	rdi, [rdi]
	jmp	.label_390
.label_395:
	mov	dword ptr [r15 + 4], edi
	lea	rsi, [rsi]
	add	r15, 4
	lea	rdi, [rdi]
	add	rcx, 4
	lea	rdi, [rdi]
	cmp	rcx, rax
	mov	esi, edi
	jb	.label_399
	nop	
	jmp	.label_390
.label_396:
	mov	rsp, rsp
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, 0xffffffff
	nop	
	cmp	dword ptr [rax], 0x26
	mov	rbp, rbp
	jne	.label_390
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 4
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	je	.label_390
	mov	qword ptr [r12], rax
	mov	dword ptr [rax], r13d
	cmp	r13d, -1
	nop	
	setne	al
	movzx	r14d, al
	jmp	.label_390
.label_398:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	rbx, rax
	nop	
	mov	dword ptr [rbx], 0xc
	jmp	.label_397
.label_402:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
.label_397:
	mov	r14d, dword ptr [rbx]
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	mov	r14d, 0xffffffff
.label_390:
	mov	eax, r14d
	lea	rdi, [rdi]
	add	rsp, 0x18
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
.label_394:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	dword ptr [rbx], ebp
	jmp	.label_390
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407350

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
	js	.label_405
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_406
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
	je	.label_405
.label_406:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_405
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	test	ebp, ebp
	je	.label_407
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_407:
	pop	rbx
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_405:
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
	#Procedure 0x407400

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_408
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_408
	test	byte ptr [rbx + 1], 1
	je	.label_408
	mov	rsp, rsp
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	nop	
	call	rpl_fseeko
.label_408:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407440

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
	jne	.label_409
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_409
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_410
.label_409:
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
.label_410:
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
	je	.label_411
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_411:
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
	#Procedure 0x4074f0

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