	.section	.text
	.align	16
	#Procedure 0x402790

	.globl usage
	.type usage, @function
usage:
	push	rbp
	nop	
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebp, edi
	mov	rsp, rsp
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_7
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rcx
	nop	
	mov	rcx, rdx
	lea	rsi, [rsi]
	mov	r8, rdx
	lea	rsi, [rsi]
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.3
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	rsp, rsp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	rsp, rsp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.15
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.17
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	call	emit_backup_suffix_note
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	call	emit_ancillary_info
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
.label_7:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	lea	rdi, [rdi]
	mov	edi, ebp
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x402b00

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.42
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	mov	rbp, rbp
	jmp	fputs_unlocked
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402b30

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b90

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.45
	nop	word ptr [rax + rax]
.label_8:
	nop	
	mov	edi, OFFSET FLAT:.str.19
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	nop	
	je	.label_10
	mov	rsi, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	add	rbx, 0x10
	test	rsi, rsi
	lea	rsi, [rsi]
	jne	.label_8
.label_10:
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.19
	mov	rsp, rsp
	cmovne	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.53
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	mov	rbp, rbp
	call	setlocale
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_9
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.55
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rdi, rax
	nop	
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_9
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.19
	nop	
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.19
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.59
	nop	
	mov	ecx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x108
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	mov	edi, OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.22
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xb8]
	mov	rbp, rbp
	call	cp_option_init
	nop	
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rax
	xor	r13d, r13d
	nop	
	xor	ecx, ecx
	xor	r15d, r15d
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_11
.label_18:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xe2], 1
	mov	rsp, rsp
	mov	cl, r12b
	nop	
.label_11:
	nop	
	mov	r12b, cl
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.23
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	edi, ebx
	nop	
	mov	rsi, r14
	nop	
	call	getopt_long
	cmp	eax, 0x47
	jle	.label_40
	lea	rsi, [rsi]
	add	eax, -0x48
	lea	rdi, [rdi]
	cmp	eax, 0x40
	mov	rbp, rbp
	ja	.label_23
	mov	cl, 1
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rax * 8) + label_14]]
.label_1261:
	mov	dword ptr [rsp + 0xbc], 3
	mov	cl, r12b
	jmp	.label_11
.label_1262:
	mov	dword ptr [rsp + 0xbc], 4
	nop	
	mov	cl, r12b
	mov	rbp, rbp
	jmp	.label_11
.label_1264:
	mov	bpl, 1
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	cl, r12b
	jmp	.label_11
.label_1265:
	mov	rbp, rbp
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	cl, r12b
	jmp	.label_11
.label_1266:
	cmp	qword ptr [word ptr [rip + optarg]],  0
	mov	cl, r12b
	je	.label_11
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	cl, r12b
	mov	rsp, rsp
	jmp	.label_11
.label_1267:
	mov	dword ptr [rsp + 0xbc], 2
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xda], 1
	mov	word ptr [rsp + 0xd5], 0x101
	mov	byte ptr [rsp + 0xd7], 1
	mov	byte ptr [rsp + 0xdc], 1
	nop	
	mov	byte ptr [rsp + 0xdf], 1
	nop	
	mov	byte ptr [rsp + 0xe1], 1
	jmp	.label_18
.label_1268:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	rsp, rsp
	test	rax, rax
	cmovne	r13, rax
	mov	bpl, 1
	nop	
	mov	cl, r12b
	jmp	.label_11
.label_1269:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xda], 1
.label_1263:
	mov	dword ptr [rsp + 0xbc], 2
	mov	cl, r12b
	jmp	.label_11
.label_1270:
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xce], 1
	mov	rbp, rbp
	mov	cl, r12b
	lea	rsi, [rsi]
	jmp	.label_11
.label_1271:
	mov	dword ptr [rsp + 0xc0], 3
	nop	
	mov	cl, r12b
	jmp	.label_11
.label_1272:
	mov	byte ptr [rsp + 0xcf], 1
	mov	cl, r12b
	jmp	.label_11
.label_1273:
	nop	
	mov	dword ptr [rsp + 0xc0], 2
	mov	rbp, rbp
	mov	cl, r12b
	nop	
	jmp	.label_11
.label_1274:
	mov	byte ptr [rsp + 0xe4], 1
	mov	cl, r12b
	mov	rsp, rsp
	jmp	.label_11
.label_1275:
	nop	
	test	r15, r15
	jne	.label_25
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x28]
	mov	rsp, rsp
	call	stat
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_31
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rsp + 0x40]
	nop	
	cmp	eax, 0x4000
	jne	.label_34
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	cl, r12b
	jmp	.label_11
.label_1276:
	mov	byte ptr [rsp + 0xe5], 1
	mov	cl, r12b
	jmp	.label_11
.label_1277:
	mov	byte ptr [rsp + 0xe6], 1
	lea	rsi, [rsi]
	mov	cl, r12b
	lea	rsi, [rsi]
	jmp	.label_11
.label_1278:
	mov	byte ptr [rsp + 0xd4], 1
	mov	rbp, rbp
	mov	cl, r12b
	mov	rbp, rbp
	jmp	.label_11
.label_1279:
	mov	byte ptr [rsp + 0xdb], 0
	mov	rbp, rbp
	mov	cl, r12b
	jmp	.label_11
.label_1280:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	lea	rsi, [rsp + 0xb8]
	xor	edx, edx
	call	decode_preserve_arg
	mov	rbp, rbp
	mov	cl, r12b
	jmp	.label_11
.label_1281:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + parents_option]],  1
	mov	rsp, rsp
	mov	cl, r12b
	nop	
	jmp	.label_11
.label_1282:
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	test	rdi, rdi
	je	.label_22
	lea	rsi, [rsp + 0xb8]
	mov	edx, 1
	mov	rbp, rbp
	call	decode_preserve_arg
	jmp	.label_26
.label_22:
	mov	word ptr [rsp + 0xd5], 0x101
	mov	byte ptr [rsp + 0xd7], 1
.label_26:
	mov	byte ptr [rsp + 0xdc], 1
	mov	cl, r12b
	jmp	.label_11
.label_1285:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	mov	cl, r12b
	jmp	.label_11
.label_1283:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_37
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.25
	nop	
	mov	edx, OFFSET FLAT:reflink_type_string
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:reflink_type
	mov	r8d, 4
	lea	rdi, [rdi]
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + reflink_type]]
	mov	dword ptr [rsp + 0xf0], eax
	nop	
	mov	cl, r12b
	lea	rsi, [rsi]
	jmp	.label_11
.label_1284:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.24
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:sparse_type_string
	mov	ecx, OFFSET FLAT:sparse_type
	mov	rsp, rsp
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + sparse_type]]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc4], eax
	mov	rbp, rbp
	mov	cl, r12b
	jmp	.label_11
.label_1286:
	mov	byte ptr [rsp + 0xcd], 1
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rsi, [rsi]
	jmp	.label_11
.label_37:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	mov	cl, r12b
	jmp	.label_11
.label_40:
	cmp	eax, -1
	jne	.label_27
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xcf], 0
	je	.label_30
	cmp	byte ptr [rsp + 0xe4], 0
	lea	rdi, [rdi]
	jne	.label_32
.label_30:
	nop	
	cmp	dword ptr [rsp + 0xc0], 2
	jne	.label_36
	mov	byte ptr [rsp + 0xe5], 0
.label_36:
	test	bpl, bpl
	je	.label_39
	cmp	dword ptr [rsp + 0xc0], 2
	mov	rbp, rbp
	je	.label_21
.label_39:
	cmp	dword ptr [rsp + 0xf0], 2
	jne	.label_41
	cmp	dword ptr [rsp + 0xc4], 2
	jne	.label_12
.label_41:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_16
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	nop	
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, r13
	nop	
	call	xget_version
.label_16:
	nop	
	mov	dword ptr [rsp + 0xb8], eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	set_simple_backup_suffix
	cmp	dword ptr [rsp + 0xbc], 1
	jne	.label_19
	cmp	byte ptr [rsp + 0xe2], 0
	je	.label_20
	mov	al, byte ptr [rsp + 0xcf]
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_20
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xbc], 2
	jmp	.label_19
.label_20:
	mov	dword ptr [rsp + 0xbc], 4
.label_19:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xe2], 0
	je	.label_24
	mov	byte ptr [rsp + 0xcc], r12b
.label_24:
	cmp	byte ptr [rsp + 0xd9], 0
	je	.label_28
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xde], 0
	nop	
	jne	.label_28
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xdd], 0
.label_28:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xdd], 0
	je	.label_35
	lea	rdi, [rdi]
	mov	al, byte ptr [rsp + 0xd9]
	test	al, al
	mov	rbp, rbp
	jne	.label_38
.label_35:
	cmp	byte ptr [rsp + 0xde], 0
	lea	rdi, [rdi]
	jne	.label_33
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xe0], 0
	nop	
	jne	.label_17
	call	hash_init
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	lea	rsi, [r14 + rax*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	setne	al
	nop	
	movzx	ecx, al
	lea	r8, [rsp + 0xb8]
	mov	rsp, rsp
	mov	edi, ebx
	mov	rdx, r15
	lea	rsi, [rsi]
	call	do_copy
	movzx	eax, al
	lea	rdi, [rdi]
	xor	eax, 1
	mov	rbp, rbp
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_27:
	nop	
	cmp	eax, 0xffffff7d
	je	.label_13
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7e
	lea	rsi, [rsi]
	jne	.label_23
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_13:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.33
	nop	
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, OFFSET FLAT:.str.17_0
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.31
	mov	r9d, OFFSET FLAT:.str.32
	xor	eax, eax
	mov	rbp, rbp
	call	version_etc
	xor	edi, edi
	call	exit
.label_23:
	mov	edi, 1
	call	usage
.label_25:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	jmp	.label_29
.label_31:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rbp, rbp
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	mov	rbp, rbp
	call	error
.label_34:
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.28
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	edi, 4
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	call	error
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	lea	rsi, [rsi]
	jmp	.label_15
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	jmp	.label_29
.label_33:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.39
	jmp	.label_29
.label_17:
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.41
.label_29:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	call	error
.label_32:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	rsp, rsp
	jmp	.label_15
.label_12:
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.36
.label_15:
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	error
	mov	rbp, rbp
	mov	edi, 1
	call	usage
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403570

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	mov	rbx, rdi
	call	cp_options_default
	mov	byte ptr [rbx + 0x14], 1
	mov	rsp, rsp
	mov	dword ptr [rbx + 4], 1
	mov	byte ptr [rbx + 0x15], 0
	nop	
	mov	byte ptr [rbx + 0x16], 0
	mov	byte ptr [rbx + 0x17], 0
	mov	dword ptr [rbx + 8], 4
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x18], 0
	nop	
	mov	byte ptr [rbx + 0x19], 0
	mov	dword ptr [rbx + 0x38], 0
	mov	byte ptr [rbx + 0x22], 0
	mov	rbp, rbp
	mov	word ptr [rbx + 0x20], 0
	mov	dword ptr [rbx + 0x1c], 0
	mov	byte ptr [rbx + 0x29], 0
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x25], 0
	mov	byte ptr [rbx + 0x23], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0x24], 0
	mov	rsp, rsp
	mov	byte ptr [rbx + 0x2a], 0
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xc], 2
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x2f], 0
	mov	rbp, rbp
	mov	dword ptr [rbx + 0x2b], 0
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.60
	nop	
	call	getenv
	test	rax, rax
	mov	rsp, rsp
	setne	byte ptr [rbx + 0x30]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x40], xmm0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403630

	.globl decode_preserve_arg
	.type decode_preserve_arg, @function
decode_preserve_arg:
	push	rbp
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	push	rax
	mov	r12d, edx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rbp, rbp
	call	xstrdup
	mov	r14, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r14
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.99
	lea	rsi, [rsi]
	mov	r15d, OFFSET FLAT:.str.100
	mov	rsp, rsp
	test	r12b, r12b
	lea	rdi, [rdi]
	cmovne	r15, rcx
	mov	rsp, rsp
	mov	r13b, r12b
	mov	rsp, rsp
	xor	r13b, 1
	nop	dword ptr [rax + rax]
.label_44:
	mov	rbp, r14
	nop	
	mov	esi, 0x2c
	nop	
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	r14d, 0
	je	.label_43
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rsi, [rsi]
	inc	r14
	nop	
	mov	byte ptr [rax], 0
.label_43:
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:decode_preserve_arg.preserve_args
	mov	ecx, OFFSET FLAT:decode_preserve_arg.preserve_vals
	mov	rsp, rsp
	mov	r8d, 4
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbp
	call	__xargmatch_internal
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + decode_preserve_arg.preserve_vals]]
	mov	rbp, rbp
	cmp	rax, 6
	ja	.label_46
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_42]]
.label_1417:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x20], r13b
	nop	
	jmp	.label_45
.label_1418:
	lea	rsi, [rsi]
	mov	byte ptr [rbx + 0x1f], r12b
	lea	rdi, [rdi]
	jmp	.label_45
.label_1419:
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x1d], r12b
	jmp	.label_45
.label_1420:
	mov	byte ptr [rbx + 0x22], r12b
	jmp	.label_45
.label_1421:
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x26], r12b
	mov	byte ptr [rbx + 0x25], r12b
	mov	rbp, rbp
	jmp	.label_45
.label_1422:
	mov	byte ptr [rbx + 0x27], r12b
	mov	rbp, rbp
	mov	byte ptr [rbx + 0x28], r12b
	jmp	.label_45
.label_1423:
	mov	byte ptr [rbx + 0x1e], r12b
	mov	byte ptr [rbx + 0x1f], r12b
	mov	byte ptr [rbx + 0x1d], r12b
	lea	rdi, [rdi]
	mov	byte ptr [rbx + 0x22], r12b
	nop	
	mov	byte ptr [rbx + 0x20], r13b
	mov	byte ptr [rbx + 0x27], r12b
	nop	dword ptr [rax]
.label_45:
	test	r14, r14
	jne	.label_44
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	jmp	free
.label_46:
	mov	rsp, rsp
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037b0

	.globl do_copy
	.type do_copy, @function
do_copy:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0xd8
	mov	r12, r8
	mov	qword ptr [rbp - 0xf8], r12
	mov	r14, rsi
	mov	qword ptr [rbp - 0x100], r14
	mov	rsp, rsp
	mov	ebx, edi
	mov	byte ptr [rbp - 0xb9], 0
	mov	rsp, rsp
	mov	sil, 1
	lea	rsi, [rsi]
	cmp	byte ptr [r12 + 0x15], 0
	jne	.label_71
	cmp	byte ptr [r12 + 0x16], 0
	lea	rsi, [rsi]
	setne	sil
.label_71:
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	sete	al
	movzx	eax, al
	cmp	eax, ebx
	jge	.label_54
	lea	rsi, [rsi]
	test	cl, cl
	nop	
	je	.label_57
	test	rdx, rdx
	nop	
	jne	.label_58
	lea	rsi, [rsi]
	cmp	ebx, 3
	jge	.label_60
	movsxd	rcx, ebx
	mov	rdi, qword ptr [r14 + rcx*8 - 8]
	movzx	ecx, sil
	lea	rsi, [rbp - 0xb8]
	nop	
	lea	rdx, [rbp - 0xb9]
	mov	rsp, rsp
	call	target_directory_operand
.label_59:
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + parents_option]]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	je	.label_66
	lea	rdi, [rdi]
	mov	rax, r14
	mov	r14, qword ptr [rax]
	mov	r15, qword ptr [rax + 8]
	cmp	byte ptr [r12 + 0x16], 0
	nop	
	je	.label_53
	mov	ebx, dword ptr [r12]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rsi, [rsi]
	je	.label_53
	mov	rdi, r14
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_53
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xb9]
	test	al, al
	lea	rsi, [rsi]
	jne	.label_53
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp - 0xa0]
	cmp	eax, 0x8000
	lea	rdi, [rdi]
	jne	.label_53
	mov	edi, 0xffffff9c
	mov	rbp, rbp
	mov	rsi, r15
	mov	edx, ebx
	call	find_backup_file_name
	mov	r15, rax
	movups	xmm0, xmmword ptr [r12 + 0x40]
	movups	xmmword ptr [word ptr [rip + label_47]],  xmm0
	movups	xmm0, xmmword ptr [r12]
	lea	rsi, [rsi]
	movups	xmm1, xmmword ptr [r12 + 0x10]
	movups	xmm2, xmmword ptr [r12 + 0x20]
	movups	xmm3, xmmword ptr [r12 + 0x30]
	mov	rbp, rbp
	movups	xmmword ptr [word ptr [rip + label_48]],  xmm3
	mov	rsp, rsp
	movups	xmmword ptr [word ptr [rip + label_49]],  xmm2
	movups	xmmword ptr [word ptr [rip + label_50]],  xmm1
	mov	rsp, rsp
	movups	xmmword ptr [word ptr [rip + do_copy.x_tmp]],  xmm0
	mov	r12d, OFFSET FLAT:do_copy.x_tmp
	mov	dword ptr [dword ptr [rip + do_copy.x_tmp]],  0
.label_53:
	lea	r8, [rbp - 0xc8]
	xor	edx, edx
	lea	rdi, [rdi]
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	copy
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd8], eax
	lea	rsi, [rsi]
	jmp	.label_56
.label_57:
	nop	
	test	rdx, rdx
	jne	.label_67
	cmp	ebx, 2
	lea	rdi, [rdi]
	jl	.label_59
	movsxd	r15, ebx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + r15*8 - 8]
	movzx	ecx, sil
	nop	
	lea	rsi, [rbp - 0xb8]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0xb9]
	call	target_directory_operand
	test	al, al
	je	.label_72
	dec	r15
	nop	
	mov	rdx, qword ptr [r14 + r15*8]
	lea	rdi, [rdi]
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_59
	dec	ebx
.label_67:
	mov	dword ptr [rbp - 0xe4], ebx
	cmp	ebx, 2
	jl	.label_74
	nop	
	mov	qword ptr [rbp - 0xf0], rdx
	mov	rbp, rbp
	mov	rdi, r12
	lea	rdi, [rdi]
	call	dest_info_init
	nop	
	mov	rdi, r12
	call	src_info_init
	mov	rsp, rsp
	jmp	.label_55
.label_74:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xf0], rdx
	mov	al, 1
	mov	dword ptr [rbp - 0xd8], eax
	test	ebx, ebx
	mov	rbp, rbp
	jle	.label_56
.label_55:
	mov	rbp, rbp
	mov	al, 1
	mov	dword ptr [rbp - 0xd8], eax
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_51
.label_75:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsp, rsp
	call	xstrdup
	lea	rdi, [rdi]
	jmp	.label_63
.label_51:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], 0
	mov	r15, qword ptr [r14 + r13*8]
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + remove_trailing_slashes]]
	lea	rsi, [rsi]
	and	eax, 1
	mov	rbp, rbp
	cmp	eax, 1
	jne	.label_65
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	strip_trailing_slashes
.label_65:
	mov	al,  byte ptr [byte ptr [rip + parents_option]]
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	je	.label_69
	mov	rbp, rbp
	call	strlen
	mov	rbx, rsp
	lea	rdx, [rax + 1]
	mov	rbp, rbp
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rbx, rax
	mov	rsp, rbx
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r15
	nop	
	mov	qword ptr [rbp - 0xe0], r15
	call	memcpy
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	strip_trailing_slashes
	nop	
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, rbx
	lea	rdx, [rbp - 0xd0]
	call	file_name_concat
	mov	rbp, rbp
	mov	r15, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xd0]
	sub	rsi, r15
	mov	rbp, rbp
	cmp	byte ptr [r12 + 0x2e], 0
	mov	edx, OFFSET FLAT:.str.105
	nop	
	jne	.label_52
	nop	
	xor	edx, edx
.label_52:
	nop	
	mov	rdi, r15
	lea	rcx, [rbp - 0xc8]
	lea	r8, [rbp - 0xb9]
	mov	r9, r12
	lea	rsi, [rsi]
	call	make_dir_parents_private
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_61
	mov	dword ptr [rbp - 0xd8], 0
	lea	rdi, [rdi]
	jmp	.label_64
	nop	
.label_69:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe0], r15
	mov	rsp, rsp
	call	last_component
	nop	
	mov	r15, rax
	mov	rdi, r15
	nop	
	call	strlen
	nop	
	mov	r12, rax
	mov	rsp, rsp
	mov	r14, rsp
	lea	rdx, [r12 + 1]
	add	r12, 0x10
	and	r12, 0xfffffffffffffff0
	mov	rbx, r14
	sub	rbx, r12
	mov	rsp, rbx
	nop	
	neg	r12
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	strip_trailing_slashes
	movzx	eax, byte ptr [r14 + r12]
	cmp	eax, 0x2e
	lea	rdi, [rdi]
	jne	.label_73
	mov	rsp, rsp
	movzx	eax, byte ptr [rbx + 1]
	mov	rbp, rbp
	cmp	eax, 0x2e
	jne	.label_73
	nop	
	cmp	byte ptr [rbx + 2], 0
	je	.label_75
	nop	word ptr cs:[rax + rax]
.label_73:
	nop	
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	file_name_concat
.label_63:
	mov	r15, rax
	mov	rsp, rsp
	mov	r12, qword ptr [rbp - 0xf8]
	mov	r14, qword ptr [rbp - 0x100]
.label_61:
	movzx	edx, byte ptr [rbp - 0xb9]
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, r15
	mov	rcx, r12
	lea	r8, [rbp - 0xd1]
	call	copy
	mov	bl, al
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	and	bl, al
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + parents_option]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	jne	.label_62
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xd0]
	sub	rsi, r15
	mov	rdx, qword ptr [rbp - 0xc8]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rcx, r12
	mov	rsp, rsp
	call	re_protect
	and	bl, al
.label_62:
	mov	al, bl
	mov	dword ptr [rbp - 0xd8], eax
.label_64:
	movzx	eax,  byte ptr [byte ptr [rip + parents_option]]
	and	eax, 1
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_70
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_70
	nop	word ptr [rax + rax]
.label_76:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rbx, qword ptr [rdi + 0xa0]
	mov	qword ptr [rbp - 0xc8], rbx
	call	free
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_76
.label_70:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	inc	r13
	mov	eax, dword ptr [rbp - 0xe4]
	cmp	r13d, eax
	jne	.label_51
.label_56:
	mov	eax, dword ptr [rbp - 0xd8]
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_72:
	mov	rsp, rsp
	cmp	ebx, 3
	lea	rsi, [rsi]
	jl	.label_59
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.28
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, r14
	mov	r14, rax
	mov	rsi, qword ptr [rcx + r15*8 - 8]
	lea	rsi, [rsi]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rsp, rsp
	call	error
.label_54:
	xor	edi, edi
	test	ebx, ebx
	jg	.label_68
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.101
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	nop	
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_66:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.107
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	call	error
	mov	edi, 1
	lea	rdi, [rdi]
	call	usage
.label_58:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.103
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.104
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r14 + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rsp, rsp
	mov	edi, 1
	mov	rbp, rbp
	call	usage
.label_68:
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.102
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	rsi, qword ptr [r14]
	lea	rsi, [rsi]
	mov	edi, 4
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rdx, rbx
	nop	
	call	error
	mov	edi, 1
	nop	
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ef0

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r12, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	call	stat
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_79
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	cmp	r14d, 2
	nop	
	je	.label_77
	nop	
	test	r14d, r14d
	jne	.label_80
.label_79:
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0x4000
	sete	al
	jmp	.label_82
.label_77:
	mov	byte ptr [r12], 1
	jmp	.label_78
.label_80:
	lea	rsi, [rsi]
	test	r15b, r15b
	je	.label_81
	mov	dword ptr [rbp + 0x18], 0
.label_78:
	xor	eax, eax
.label_82:
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_81:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x403fb0

	.globl make_dir_parents_private
	.type make_dir_parents_private, @function
make_dir_parents_private:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x148
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x150], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x160], r8
	mov	r13, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x168], r13
	nop	
	mov	qword ptr [rbp - 0x170], rdx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	mov	rsp, rsp
	add	rax, 0x10
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffff0
	lea	rdi, [rdi]
	sub	r12, rax
	mov	rbp, rbp
	mov	rsp, r12
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r12
	nop	
	call	dir_len
	nop	
	mov	r15, rax
	lea	rax, [r15 + 0x10]
	and	rax, 0xfffffffffffffff0
	mov	rbx, rsp
	mov	rsp, rsp
	sub	rbx, rax
	mov	rsp, rbx
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, r15
	mov	rsp, rsp
	call	memcpy
	mov	byte ptr [r15 + rbx], 0
	lea	rsi, [rsi]
	mov	qword ptr [r13], 0
	nop	
	lea	rsi, [rbp - 0xb8]
	mov	rdi, rbx
	call	stat
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_103
	lea	rsi, [rsi]
	lea	rax, [r12 + r14]
	nop	
	mov	qword ptr [rbp - 0x158], rax
	mov	rbp, rbp
	lea	rdi, [r14 + r12 - 1]
	nop	dword ptr [rax]
.label_108:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + 1]
	nop	
	inc	rdi
	mov	rbp, rbp
	cmp	eax, 0x2f
	je	.label_108
	lea	rsi, [rsi]
	mov	esi, 0x2f
	call	strchr
	mov	r15, rax
	mov	r13b, 1
	test	r15, r15
	je	.label_91
	nop	
.label_102:
	mov	byte ptr [r15], 0
	mov	rdi, r12
	mov	rbp, rbp
	lea	rsi, [rbp - 0xb8]
	lea	rdi, [rdi]
	call	stat
	mov	r14d, eax
	test	r14d, r14d
	lea	rsi, [rsi]
	jne	.label_85
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x150]
	cmp	byte ptr [rax + 0x1d], 0
	jne	.label_85
	mov	rax, qword ptr [rbp - 0x150]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_85
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x150]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_84
	nop	word ptr [rax + rax]
.label_85:
	mov	rdi, qword ptr [rbp - 0x158]
	lea	rsi, [rbp - 0x148]
	mov	rsp, rsp
	call	stat
	test	eax, eax
	mov	rbp, rbp
	je	.label_96
	call	__errno_location
	mov	ebx, dword ptr [rax]
	test	ebx, ebx
	je	.label_98
	mov	rbp, rbp
	jmp	.label_100
.label_96:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	mov	ecx, 0xf000
	lea	rdi, [rdi]
	and	eax, ecx
	mov	ebx, 0x14
	mov	rsp, rsp
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	jne	.label_100
.label_98:
	mov	rsp, rsp
	mov	edi, 0xa8
	lea	rdi, [rdi]
	call	xmalloc
	mov	r13, rax
	mov	edx, 0x90
	mov	rdi, r13
	nop	
	lea	rsi, [rbp - 0x148]
	mov	rsp, rsp
	call	memcpy
	mov	rsp, rsp
	mov	rax, r15
	mov	rsp, rsp
	sub	rax, r12
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x98], rax
	mov	byte ptr [r13 + 0x90], 0
	mov	rcx, qword ptr [rbp - 0x168]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx]
	mov	qword ptr [r13 + 0xa0], rax
	mov	qword ptr [rcx], r13
	mov	rsp, rsp
	test	r14d, r14d
	nop	
	je	.label_110
	mov	edx, dword ptr [r13 + 0x18]
	jmp	.label_84
	nop	dword ptr [rax + rax]
.label_110:
	xor	edx, edx
.label_84:
	test	r14d, r14d
	setne	al
	mov	rsp, rsp
	movzx	ecx, al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	mov	rsi, r12
	nop	
	mov	r8, qword ptr [rbp - 0x150]
	call	set_process_security_ctx
	nop	
	test	al, al
	je	.label_92
	nop	
	test	r14d, r14d
	nop	
	je	.label_94
	mov	rax, qword ptr [rbp - 0x160]
	mov	rbp, rbp
	mov	byte ptr [rax], 1
	nop	
	mov	eax, dword ptr [r13 + 0x18]
	mov	r14d, 0x3f
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0x150]
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x1d], 0
	jne	.label_95
	lea	rsi, [rsi]
	mov	r14d, 0x12
	cmp	byte ptr [rbx + 0x1e], 0
	lea	rsi, [rsi]
	jne	.label_95
	xor	r14d, r14d
	nop	
.label_95:
	mov	rbp, rbp
	and	r14d, eax
	mov	rsp, rsp
	mov	ecx, 0x1ff
	cmp	byte ptr [rbx + 0x20], 0
	mov	rbp, rbp
	jne	.label_105
	mov	rbp, rbp
	mov	ecx, eax
.label_105:
	lea	rsi, [rsi]
	mov	esi, r14d
	xor	esi, 0xfff
	lea	rsi, [rsi]
	and	esi, ecx
	mov	rdi, r12
	call	mkdir
	test	eax, eax
	jne	.label_111
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	je	.label_113
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x158]
	mov	rcx, r12
	call	__printf_chk
.label_113:
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xb8]
	mov	rbp, rbp
	call	__lstat
	test	eax, eax
	jne	.label_88
	nop	
	cmp	byte ptr [rbx + 0x1e], 0
	jne	.label_89
	mov	eax, dword ptr [rbp - 0xa0]
	not	eax
	lea	rsi, [rsi]
	test	r14d, eax
	je	.label_90
	mov	rsp, rsp
	call	cached_umask
	not	eax
	and	r14d, eax
.label_90:
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	ecx, eax
	not	ecx
	test	r14d, ecx
	mov	rbp, rbp
	jne	.label_93
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 0x1c0
	cmp	ecx, 0x1c0
	je	.label_89
.label_93:
	nop	
	or	eax, r14d
	nop	
	mov	dword ptr [r13 + 0x18], eax
	mov	byte ptr [r13 + 0x90], 1
	nop	dword ptr [rax + rax]
.label_89:
	mov	esi, dword ptr [rbp - 0xa0]
	mov	eax, esi
	lea	rsi, [rsi]
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	je	.label_83
	mov	rsp, rsp
	or	esi, 0x1c0
	mov	rdi, r12
	call	chmod
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_107
.label_83:
	mov	rax, qword ptr [rbp - 0x160]
	lea	rsi, [rsi]
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	jne	.label_87
	lea	rsi, [rsi]
	jmp	.label_112
	nop	
.label_94:
	mov	eax, dword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	ecx, 0xf000
	lea	rsi, [rsi]
	and	eax, ecx
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	jne	.label_114
	mov	rax, qword ptr [rbp - 0x160]
	nop	
	mov	byte ptr [rax], 0
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x150]
.label_112:
	nop	
	cmp	byte ptr [rbx + 0x21], 0
	jne	.label_86
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x25], 0
	lea	rsi, [rsi]
	je	.label_87
.label_86:
	mov	rsp, rsp
	movzx	esi, byte ptr [rbx + 0x25]
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, rbx
	nop	
	call	set_file_security_ctx
	lea	rsi, [rsi]
	test	al, al
	lea	rsi, [rsi]
	jne	.label_87
	cmp	byte ptr [rbx + 0x26], 0
	jne	.label_101
.label_87:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x150], rbx
	mov	byte ptr [r15], 0x2f
	nop	word ptr cs:[rax + rax]
.label_97:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15 + 1]
	inc	r15
	mov	rbp, rbp
	cmp	eax, 0x2f
	je	.label_97
	mov	esi, 0x2f
	mov	rdi, r15
	call	strchr
	mov	r15, rax
	lea	rsi, [rsi]
	test	r15, r15
	jne	.label_102
	lea	rsi, [rsi]
	jmp	.label_104
.label_103:
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	jne	.label_106
	mov	rax, qword ptr [rbp - 0x160]
	mov	byte ptr [rax], 0
.label_104:
	mov	r13b, 1
	nop	
	jmp	.label_91
.label_106:
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.111
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r14, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_115
.label_100:
	xor	r13d, r13d
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.108
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x158]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, ebx
.label_115:
	mov	rdx, r14
	call	error
	jmp	.label_91
.label_92:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	jmp	.label_91
.label_111:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	xor	r13d, r13d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	jmp	.label_99
.label_88:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.108
	lea	rdi, [rdi]
	jmp	.label_99
.label_114:
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.111
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	jmp	.label_109
.label_107:
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
.label_99:
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_109:
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
.label_91:
	mov	al, r13b
	lea	rsp, [rbp - 0x28]
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_101:
	xor	r13d, r13d
	jmp	.label_91
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404640

	.globl re_protect
	.type re_protect, @function
re_protect:
	nop	
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x28
	mov	r15, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	r14, rdi
	lea	rdi, [rdi]
	call	strlen
	mov	r12, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	nop	
	and	rax, 0xfffffffffffffff0
	lea	rsi, [rsi]
	sub	r12, rax
	mov	rsp, r12
	nop	
	mov	rdi, r12
	mov	rsi, r14
	call	memcpy
	mov	al, 1
	nop	
	test	rbx, rbx
	je	.label_122
	add	r13, r12
	lea	rdi, [rdi]
	lea	r14, [rbp - 0x50]
	nop	
.label_126:
	nop	
	mov	rax, qword ptr [rbx + 0x98]
	lea	rsi, [rsi]
	mov	byte ptr [r12 + rax], 0
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x1f], 0
	nop	
	je	.label_124
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	get_stat_atime
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdi, rbx
	mov	rsp, rsp
	call	get_stat_mtime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, r12
	mov	rsi, r14
	call	utimens
	test	eax, eax
	jne	.label_117
.label_124:
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_119
	mov	esi, dword ptr [rbx + 0x1c]
	mov	rbp, rbp
	mov	edx, dword ptr [rbx + 0x20]
	mov	rsp, rsp
	mov	rdi, r12
	nop	
	call	lchown
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_119
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	chown_failure_ok
	test	al, al
	je	.label_116
	mov	rsp, rsp
	mov	edx, dword ptr [rbx + 0x20]
	mov	esi, 0xffffffff
	lea	rdi, [rdi]
	mov	rdi, r12
	call	lchown
.label_119:
	cmp	byte ptr [r15 + 0x1e], 0
	mov	rsp, rsp
	je	.label_123
	nop	
	mov	r8d, dword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rdx, r12
	nop	
	call	copy_acl
	test	eax, eax
	nop	
	je	.label_120
	nop	
	jmp	.label_121
	nop	word ptr cs:[rax + rax]
.label_123:
	cmp	byte ptr [rbx + 0x90], 0
	mov	rbp, rbp
	je	.label_120
	nop	
	mov	esi, dword ptr [rbx + 0x18]
	mov	rdi, r12
	mov	rsp, rsp
	call	chmod
	test	eax, eax
	jne	.label_125
.label_120:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x98]
	mov	byte ptr [r12 + rax], 0x2f
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx + 0xa0]
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_126
	nop	
	mov	al, 1
	jmp	.label_122
.label_117:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
	jmp	.label_118
.label_121:
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_122
.label_116:
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.46
	jmp	.label_118
.label_125:
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.114
.label_118:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r12
	nop	
	call	quotearg_style
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, rbx
	call	error
	xor	eax, eax
.label_122:
	mov	rbp, rbp
	lea	rsp, [rbp - 0x28]
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404890

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	mov	rbx, r8
	mov	r15, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x25], 0
	lea	rdi, [rdi]
	je	.label_129
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_130
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x26], 0
	lea	rsi, [rsi]
	je	.label_127
.label_130:
	mov	rbp, rbp
	lea	rsi, [rsp]
	mov	rdi, r14
	mov	rbp, rbp
	call	lgetfilecon
.label_132:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r15d
	mov	rdx, rbp
	nop	
	call	error
.label_131:
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_128
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_133
.label_129:
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_128
	lea	rdi, [rdi]
	xor	cl, 1
	jne	.label_128
	lea	rsi, [rsi]
	call	defaultcon
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	nop	
	mov	edi, ebx
	mov	rsp, rsp
	call	ignorable_ctx_err
	lea	rsi, [rsi]
	test	al, al
	nop	
	jne	.label_128
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r15
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_128:
	mov	al, 1
.label_133:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_127:
	mov	bpl, byte ptr [rbx + 0x29]
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	mov	rsp, rsp
	mov	rdi, r14
	call	lgetfilecon
	nop	
	cmp	bpl, 0
	jne	.label_131
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	call	errno_unsupported
	mov	rbp, rbp
	test	al, al
	jne	.label_131
	nop	
	jmp	.label_132
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a20

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	cmp	edi, 0x5f
	sete	cl
	nop	
	cmp	edi, 0x3d
	lea	rsi, [rsi]
	sete	al
	lea	rsi, [rsi]
	or	al, cl
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a40

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	lea	rdi, [rdi]
	push	rax
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
	pop	rax
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a60

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	cmp	edi, 0x5f
	lea	rsi, [rsi]
	sete	cl
	cmp	edi, 0x3d
	lea	rsi, [rsi]
	sete	al
	lea	rsi, [rsi]
	or	al, cl
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a80

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	mov	rsp, rsp
	push	rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	lea	rsi, [rsi]
	je	.label_134
	mov	rsp, rsp
	cmp	byte ptr [rcx + 0x26], 0
	mov	rsp, rsp
	je	.label_136
.label_134:
	call	restorecon
.label_137:
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	error
.label_135:
	mov	rsp, rsp
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_136:
	mov	bl, byte ptr [rcx + 0x29]
	call	restorecon
	cmp	bl, 0
	mov	rsp, rsp
	jne	.label_135
	lea	rdi, [rdi]
	call	__errno_location
	mov	edi, dword ptr [rax]
	nop	
	call	errno_unsupported
	mov	rsp, rsp
	test	al, al
	jne	.label_135
	lea	rsi, [rsi]
	jmp	.label_137
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b40

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x5f
	pop	rax
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b60

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	lea	rsi, [rsi]
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	edi, 0x3d
	mov	rbp, rbp
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:triple_hash
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:triple_compare
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	nop	
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ba0

	.globl src_info_init
	.type src_info_init, @function
src_info_init:
	nop	
	push	rbx
	nop	
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	mov	rsp, rsp
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404bd0

	.globl copy
	.type copy, @function
copy:
	lea	rdi, [rdi]
	sub	rsp, 0x28
	nop	
	mov	rax, rcx
	nop	
	mov	qword ptr [word ptr [rip + top_level_src_name]],  rdi
	mov	qword ptr [word ptr [rip + top_level_dst_name]],  rsi
	mov	byte ptr [rsp + 0x27], 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], r9
	nop	
	mov	qword ptr [rsp + 0x10], r8
	lea	rcx, [rsp + 0x27]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], 1
	movzx	edx, dl
	nop	
	xor	ecx, ecx
	xor	r8d, r8d
	mov	r9, rax
	call	copy_internal
	add	rsp, 0x28
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c30
	.globl valid_options
	.type valid_options, @function
valid_options:

	lea	rdi, [rdi]
	push	rax
	test	rdi, rdi
	je	.label_141
	cmp	dword ptr [rdi], 4
	jae	.label_144
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdi + 0xc]
	lea	rdi, [rdi]
	dec	eax
	cmp	eax, 3
	jae	.label_142
	cmp	dword ptr [rdi + 0x38], 3
	jae	.label_139
	cmp	byte ptr [rdi + 0x17], 0
	je	.label_143
	cmp	byte ptr [rdi + 0x2c], 0
	jne	.label_145
.label_143:
	nop	
	cmp	dword ptr [rdi + 0x38], 2
	lea	rdi, [rdi]
	jne	.label_138
	nop	
	cmp	dword ptr [rdi + 0xc], 2
	mov	rsp, rsp
	jne	.label_140
.label_138:
	nop	
	pop	rax
	ret	
.label_141:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.6_0
	mov	esi, OFFSET FLAT:.str.5_0
	mov	rbp, rbp
	mov	edx, 0xb86
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	mov	rbp, rbp
	call	__assert_fail
.label_144:
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.7_0
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb87
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_142:
	mov	edi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.5_0
	nop	
	mov	edx, 0xb88
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	mov	rsp, rsp
	call	__assert_fail
.label_139:
	mov	edi, OFFSET FLAT:.str.9_0
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb89
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	nop	
	call	__assert_fail
.label_145:
	mov	edi, OFFSET FLAT:.str.10_0
	nop	
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb8a
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	call	__assert_fail
.label_140:
	mov	edi, OFFSET FLAT:.str.11_0
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 0xb8d
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.valid_options
	nop	
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d50

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x2a8
	mov	rbp, rbp
	mov	r15, r9
	mov	rbx, r8
	mov	qword ptr [rbp - 0x288], rcx
	mov	r12, rsi
	nop	
	mov	r14, rdi
	mov	rcx, qword ptr [rbp + 0x28]
	nop	
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], dl
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	r13d, dword ptr [r15 + 0x34]
	cmp	byte ptr [r15 + 0x18], 0
	lea	rsi, [rsi]
	je	.label_218
	mov	rbp, rbp
	test	r13d, r13d
	jns	.label_238
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsp, rsp
	mov	r8d, 1
	mov	rsi, r14
	mov	r13, rcx
	mov	rcx, r12
	call	renameatu
	nop	
	mov	rcx, r13
	nop	
	xor	r13d, r13d
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_238
	mov	r13, rcx
	call	__errno_location
	mov	rcx, r13
	nop	
	mov	r13d, dword ptr [rax]
.label_238:
	nop	
	test	r13d, r13d
	mov	rbp, rbp
	sete	al
	mov	rsp, rsp
	sete	byte ptr [rbp - 0x29]
	nop	
	test	rcx, rcx
	je	.label_218
	mov	rsp, rsp
	mov	byte ptr [rcx], al
.label_218:
	lea	rsi, [rsi]
	test	r13d, r13d
	lea	rsi, [rsi]
	je	.label_260
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x280], rbx
	cmp	r13d, 0x11
	mov	rsp, rsp
	jne	.label_263
	mov	rsp, rsp
	cmp	dword ptr [r15 + 8], 2
	nop	
	je	.label_202
	jmp	.label_263
.label_260:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x280], rbx
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_202
.label_263:
	mov	rsp, rsp
	test	r13d, r13d
	mov	rbx, r14
	cmove	rbx, r12
	cmp	dword ptr [r15 + 4], 2
	jne	.label_273
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xc0]
	mov	rdi, rbx
	call	__lstat
	jmp	.label_294
.label_273:
	lea	rsi, [rbp - 0xc0]
	mov	rdi, rbx
	call	stat
.label_294:
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_281
	call	__errno_location
	lea	rdi, [rdi]
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.12_0
.label_259:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rbp, rbp
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	quotearg_style
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_282:
	mov	rsp, rsp
	mov	rdx, r15
	nop	
	call	error
.label_157:
	lea	rsi, [rsi]
	mov	al, r12b
	nop	
	lea	rsp, [rbp - 0x28]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_281:
	mov	ebx, dword ptr [rbp - 0xa8]
	mov	eax, ebx
	nop	
	and	eax, 0xf000
	mov	rbp, rbp
	cmp	eax, 0x4000
	mov	rbp, rbp
	jne	.label_202
	cmp	byte ptr [r15 + 0x2a], 0
	je	.label_301
.label_202:
	mov	al, byte ptr [rbp + 0x10]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_296
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x48]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_296
	mov	rsp, rsp
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	je	.label_310
	mov	rbp, rbp
	cmp	dword ptr [r15], 0
	lea	rsi, [rsi]
	jne	.label_310
	lea	rdx, [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rsi, r14
	call	seen_file
	test	al, al
	lea	rdi, [rdi]
	je	.label_310
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15_0
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	error
	mov	r12b, 1
	jmp	.label_157
.label_310:
	nop	
	mov	rdi, qword ptr [r15 + 0x48]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0xc0]
	mov	rbp, rbp
	mov	rsi, r14
	call	record_file
	mov	al, byte ptr [rbp + 0x10]
.label_296:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x278], r14
	movzx	esi, al
	lea	rdi, [rdi]
	mov	rdi, r15
	call	should_dereference
	mov	byte ptr [rbp - 0x29c], al
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_147
	mov	rbp, rbp
	cmp	r13d, 0x11
	jne	.label_159
	nop	
	cmp	dword ptr [r15 + 8], 2
	jne	.label_159
	xor	r14d, r14d
	jmp	.label_162
.label_159:
	mov	eax, ebx
	nop	
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_164
	lea	rsi, [rsi]
	mov	r14b, 1
	nop	
	cmp	byte ptr [r15 + 0x14], 0
	je	.label_167
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	je	.label_167
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	je	.label_167
.label_164:
	mov	r14b, 1
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_167
	mov	rbp, rbp
	cmp	byte ptr [r15 + 0x2c], 0
	lea	rdi, [rdi]
	jne	.label_167
	mov	rbp, rbp
	cmp	byte ptr [r15 + 0x17], 0
	mov	rbp, rbp
	jne	.label_167
	lea	rsi, [rsi]
	cmp	dword ptr [r15], 0
	jne	.label_167
	cmp	byte ptr [r15 + 0x15], 0
	setne	r14b
.label_167:
	movzx	ecx, r14b
	shl	ecx, 8
	nop	
	lea	rdx, [rbp - 0x150]
	mov	edi, 0xffffff9c
	nop	
	mov	rsi, r12
	mov	rsp, rsp
	call	fstatat
	nop	
	test	eax, eax
	je	.label_162
	mov	r14d, ebx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x28
	lea	rdi, [rdi]
	jne	.label_187
	nop	
	cmp	byte ptr [r15 + 0x16], 0
	mov	ebx, r14d
	nop	
	jne	.label_209
	mov	r14d, ebx
	mov	ebx, dword ptr [rax]
.label_187:
	lea	rsi, [rsi]
	cmp	ebx, 2
	jne	.label_194
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], 1
	lea	rsi, [rsi]
	mov	ebx, r14d
.label_209:
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	r13d, 0x11
	mov	eax, 0
	jne	.label_147
.label_162:
	mov	byte ptr [rbp - 0x1e0], 0
	nop	
	cmp	dword ptr [r15 + 8], 2
	mov	rsp, rsp
	je	.label_205
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0xc0]
	lea	rcx, [rbp - 0x150]
	nop	
	lea	r9, [rbp - 0x1e0]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rdx, r12
	mov	r8, r15
	call	same_file_ok
	test	al, al
	mov	rsp, rsp
	je	.label_219
.label_205:
	mov	dword ptr [rbp - 0x28c], ebx
	and	ebx, 0xf000
	mov	rbp, rbp
	cmp	ebx, 0x4000
	mov	rbp, rbp
	je	.label_206
	mov	al, byte ptr [r15 + 0x2d]
	nop	
	test	al, al
	lea	rsi, [rsi]
	je	.label_206
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_234
	cmp	byte ptr [r15 + 0x18], 0
	nop	
	je	.label_321
	mov	rax, qword ptr [rbp - 0x150]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0xc0]
	sete	al
	jmp	.label_229
.label_301:
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x19], 0
	je	.label_248
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.14_0
	jmp	.label_239
.label_219:
	mov	rbx, r12
	nop	
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
.label_216:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x278]
	call	quotearg_n_style
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, 4
	nop	
	mov	rdx, rbx
.label_329:
	nop	
	call	quotearg_n_style
.label_242:
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdx, r14
	mov	rcx, r15
	nop	
	mov	r8, rbx
	call	error
	lea	rdi, [rdi]
	jmp	.label_157
.label_194:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.12_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r12
	xor	r12d, r12d
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rbp, rbp
	jmp	.label_282
.label_234:
	xor	eax, eax
	jmp	.label_287
.label_248:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
.label_239:
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	r12d, r12d
.label_328:
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
.label_158:
	mov	rbp, rbp
	mov	rdx, rbx
	call	error
	nop	
	jmp	.label_157
.label_321:
	xor	eax, eax
.label_229:
	xor	al, 1
.label_287:
	movzx	ecx, al
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x150]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0xc0]
	mov	rdi, r12
	call	utimecmp
	test	eax, eax
	js	.label_206
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_300
	mov	byte ptr [rax], 1
.label_300:
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rdi, r12
	call	remember_copied
	test	rax, rax
	je	.label_309
	mov	rbp, rbp
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x29c]
	mov	rsp, rsp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	mov	rbx, rax
	mov	rsi, r12
	lea	rsi, [rsi]
	call	create_hard_link
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_316
.label_309:
	mov	r12b, 1
	jmp	.label_157
.label_206:
	mov	rbp, rbp
	cmp	byte ptr [r15 + 0x18], 0
	mov	rsp, rsp
	je	.label_318
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x150]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	mov	r13, r12
	mov	rsp, rsp
	call	abandon_move
	test	al, al
	je	.label_154
	lea	rsi, [rsi]
	mov	r12b, 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_157
	nop	
	mov	byte ptr [rax], 1
	jmp	.label_157
.label_318:
	lea	rsi, [rsi]
	mov	r13, r12
	cmp	ebx, 0x4000
	mov	rbp, rbp
	je	.label_154
	lea	rdi, [rdi]
	mov	eax, dword ptr [r15 + 8]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_157
	cmp	eax, 3
	mov	rbp, rbp
	jne	.label_154
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x150]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r13
	call	overwrite_ok
	nop	
	test	al, al
	je	.label_157
	mov	al, byte ptr [rbp - 0x1e0]
	mov	rbp, rbp
	test	al, al
	lea	rdi, [rdi]
	je	.label_165
	lea	rdi, [rdi]
	jmp	.label_157
.label_154:
	lea	rdi, [rdi]
	mov	r12b, 1
	cmp	byte ptr [rbp - 0x1e0], 0
	nop	
	jne	.label_157
.label_165:
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0x4000
	lea	rsi, [rsi]
	je	.label_156
	cmp	ebx, 0x4000
	lea	rsi, [rsi]
	jne	.label_172
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x18], 0
	nop	
	je	.label_175
	mov	rsp, rsp
	cmp	dword ptr [r15], 0
	lea	rdi, [rdi]
	je	.label_175
.label_172:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_156
	nop	
	cmp	dword ptr [r15], 3
	nop	
	je	.label_156
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x40]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x150]
	nop	
	mov	rsi, r13
	nop	
	call	seen_file
	lea	rsi, [rsi]
	test	al, al
	je	.label_156
	mov	rsp, rsp
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_1
	jmp	.label_191
.label_156:
	mov	rsp, rsp
	cmp	ebx, 0x4000
	mov	rsp, rsp
	je	.label_195
	lea	rsi, [rsi]
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	nop	
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	jne	.label_195
	nop	
	cmp	byte ptr [r15 + 0x18], 0
	nop	
	je	.label_203
	mov	rsp, rsp
	cmp	dword ptr [r15], 0
	je	.label_203
.label_195:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_211
	mov	eax, 0xf000
	nop	
	mov	ecx, dword ptr [rbp - 0xa8]
	nop	
	and	ecx, eax
	nop	
	cmp	ecx, 0x4000
	jne	.label_211
	and	eax, dword ptr [rbp - 0x138]
	lea	rsi, [rsi]
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	je	.label_211
	cmp	dword ptr [r15], 0
	je	.label_222
.label_211:
	mov	rbp, rbp
	cmp	dword ptr [r15], 0
	mov	rbp, rbp
	je	.label_225
	mov	rdi, qword ptr [rbp - 0x278]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	dot_or_dotdot
	test	al, al
	nop	
	jne	.label_225
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x18], 0
	nop	
	jne	.label_235
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rbp - 0x138]
	mov	rbp, rbp
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	jne	.label_235
.label_225:
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp - 0x138]
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x298], rcx
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	mov	r12, r13
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp - 0x28c]
	mov	rsp, rsp
	je	.label_246
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 0x298], rax
	mov	rbp, rbp
	cmp	byte ptr [r15 + 0x18], 0
	mov	rsp, rsp
	jne	.label_246
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_262
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_265
	cmp	qword ptr [rbp - 0x140], 1
	mov	rsp, rsp
	ja	.label_262
.label_265:
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x298], rax
	cmp	dword ptr [r15 + 4], 2
	mov	rbp, rbp
	jne	.label_246
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rbp - 0xa8]
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x298], rcx
	cmp	eax, 0x8000
	je	.label_246
.label_262:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	unlink
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_280
	call	__errno_location
	mov	r13d, dword ptr [rax]
	mov	rbp, rbp
	cmp	r13d, 2
	jne	.label_317
.label_280:
	mov	byte ptr [rbp - 0x29], 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	cmp	byte ptr [r15 + 0x2e], 0
	nop	
	je	.label_246
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x298], rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	r13d, ebx
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r12
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rsi, rbx
	mov	ebx, r13d
	mov	rdx, rcx
	mov	rbp, rbp
	call	__printf_chk
	lea	rdi, [rdi]
	jmp	.label_246
.label_316:
	mov	qword ptr [rbp - 0x2a8], r12
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x298], rax
	jmp	.label_174
.label_235:
	cmp	dword ptr [r15], 3
	nop	
	je	.label_306
	lea	rsi, [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rdx, r13
	call	source_is_dst_backup
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	je	.label_306
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_177
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.21_0
	lea	rsi, [rsi]
	jmp	.label_315
.label_175:
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.17_1
.label_191:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	jmp	.label_320
.label_203:
	xor	r12d, r12d
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r13
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	jmp	.label_328
.label_306:
	mov	rsp, rsp
	mov	edx, dword ptr [r15]
	mov	edi, 0xffffff9c
	mov	rbp, rbp
	mov	rsi, r13
	call	backup_file_rename
	mov	rbx, rax
	test	rbx, rbx
	nop	
	je	.label_149
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	strlen
	mov	rsp, rsp
	mov	rdi, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	qword ptr [rbp - 0x298], rdi
	mov	rsp, rdi
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	jmp	.label_168
.label_149:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x298], rax
	cmp	ebx, 2
	mov	rbp, rbp
	jne	.label_267
.label_168:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x29], 1
	mov	r12, r13
	mov	ebx, dword ptr [rbp - 0x28c]
.label_246:
	mov	r13d, 0x11
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x298]
.label_147:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x298], rax
	cmp	byte ptr [rbp + 0x10], 0
	lea	rsi, [rsi]
	je	.label_184
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x40], 0
	lea	rsi, [rsi]
	je	.label_184
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_184
	cmp	dword ptr [r15], 0
	mov	rbp, rbp
	jne	.label_184
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28c], ebx
	test	r14b, r14b
	jne	.label_201
	mov	rsp, rsp
	lea	rbx, [rbp - 0x1e0]
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	call	__lstat
	nop	
	test	eax, eax
	jne	.label_198
	lea	rdi, [rdi]
	jmp	.label_199
.label_201:
	mov	rsp, rsp
	lea	rbx, [rbp - 0x150]
.label_199:
	mov	eax, 0xf000
	lea	rsi, [rsi]
	and	eax, dword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	cmp	eax, 0xa000
	jne	.label_198
	mov	rdi, qword ptr [r15 + 0x40]
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rsp, rsp
	call	seen_file
	nop	
	test	al, al
	lea	rsi, [rsi]
	je	.label_198
	mov	rbx, r12
	lea	rsi, [rsi]
	xor	r12d, r12d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26_0
	lea	rdi, [rdi]
	jmp	.label_216
.label_198:
	mov	ebx, dword ptr [rbp - 0x28c]
.label_184:
	nop	
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_223
	mov	eax, ebx
	lea	rdi, [rdi]
	and	eax, 0xf000
	cmp	eax, 0x4000
	nop	
	je	.label_223
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	lea	rsi, [rsi]
	jne	.label_223
	mov	rdi, qword ptr [rbp - 0x278]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x298]
	call	emit_verbose
.label_223:
	mov	dword ptr [rbp - 0x28c], ebx
	xor	eax, eax
	mov	rsp, rsp
	test	r13d, r13d
	je	.label_215
	mov	rbp, rbp
	mov	ebx, dword ptr [rbp - 0x28c]
	and	ebx, 0xf000
	mov	rbp, rbp
	cmp	ebx, 0x4000
	nop	
	jne	.label_243
	mov	al, byte ptr [r15 + 0x2a]
	lea	rsi, [rsi]
	test	al, al
	je	.label_243
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0xb8]
	nop	
	cmp	byte ptr [rbp + 0x10], 0
	lea	rdi, [rdi]
	je	.label_255
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	mov	rdx, rax
	jmp	.label_258
.label_243:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_261
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 1
	mov	rbp, rbp
	jne	.label_261
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	call	src_to_dest_lookup
	lea	rsi, [rsi]
	jmp	.label_268
.label_261:
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_215
	mov	rsp, rsp
	xor	eax, eax
	cmp	byte ptr [r15 + 0x17], 0
	lea	rdi, [rdi]
	jne	.label_215
	nop	
	cmp	qword ptr [rbp - 0xb0], 1
	lea	rdi, [rdi]
	ja	.label_276
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 0x10], 0
	nop	
	je	.label_278
	mov	rsp, rsp
	cmp	dword ptr [r15 + 4], 3
	je	.label_276
.label_278:
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	dword ptr [r15 + 4], 4
	lea	rsi, [rsi]
	jne	.label_215
.label_276:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rdi, r12
.label_258:
	nop	
	call	remember_copied
	lea	rsi, [rsi]
	jmp	.label_268
.label_255:
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	mov	rsi, rax
	call	src_to_dest_lookup
.label_268:
	lea	rsi, [rsi]
	mov	r14, rax
	xor	eax, eax
	lea	rdi, [rdi]
	test	r14, r14
	nop	
	je	.label_215
	cmp	ebx, 0x4000
	jne	.label_228
	nop	
	mov	rdi, qword ptr [rbp - 0x278]
	lea	rdi, [rdi]
	mov	rsi, r14
	nop	
	call	same_name
	mov	rsp, rsp
	test	al, al
	je	.label_298
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2a8], r12
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	r12, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	nop	
	mov	esi, 4
	call	quotearg_n_style
	mov	rsp, rsp
	mov	r13, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	rsp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	mov	esi, 4
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	rbx, rax
	nop	
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rsp, rsp
	mov	rcx, r13
	mov	rsp, rsp
	mov	r8, rbx
	call	error
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	rcx, r14
	jmp	.label_174
.label_228:
	mov	rsp, rsp
	movzx	ecx, byte ptr [r15 + 0x2e]
	lea	rsi, [rsi]
	movzx	r8d, byte ptr [rbp - 0x29c]
	mov	edx, 1
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x2a8], r12
	call	create_hard_link
	nop	
	mov	r12b, 1
	lea	rdi, [rdi]
	test	al, al
	mov	rcx, r14
	nop	
	je	.label_174
	mov	rsp, rsp
	jmp	.label_157
.label_298:
	nop	
	mov	rdi, r12
	nop	
	mov	rsi, r14
	call	same_name
	lea	rsi, [rsi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_146
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.28_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + top_level_src_name]]
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rsi, [rsi]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	r12b, 1
	mov	rcx, qword ptr [rbp + 0x28]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_157
	mov	rsp, rsp
	mov	al, byte ptr [r15 + 0x18]
	nop	
	test	al, al
	je	.label_157
	mov	byte ptr [rcx], 1
	lea	rsi, [rsi]
	jmp	.label_157
.label_146:
	lea	rsi, [rsi]
	mov	ecx, dword ptr [r15 + 4]
	mov	rsp, rsp
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	lea	rdi, [rdi]
	je	.label_303
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x2a8], r12
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp + 0x10]
	nop	
	and	al, cl
	jne	.label_180
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29_0
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	r12, rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x2a8]
	nop	
	call	quotearg_n_style
	mov	r13, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, 4
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rbp, rbp
	call	quotearg_n_style
	mov	rsp, rsp
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	rcx, r13
	nop	
	mov	r8, rbx
	mov	rbp, rbp
	call	error
	mov	rsp, rsp
	mov	rcx, r14
	jmp	.label_174
.label_303:
	mov	rsp, rsp
	mov	rax, r14
	lea	rsi, [rsi]
	jmp	.label_215
.label_180:
	mov	rax, r14
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbp - 0x2a8]
.label_215:
	cmp	byte ptr [r15 + 0x18], 0
	lea	rsi, [rsi]
	je	.label_220
	mov	rsp, rsp
	cmp	r13d, 0x11
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x278]
	mov	rbp, rbp
	jne	.label_224
	mov	rsp, rsp
	mov	r14, rax
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rdi, [rdi]
	call	rename
	test	eax, eax
	mov	rsp, rsp
	je	.label_236
	call	__errno_location
	mov	r13d, dword ptr [rax]
	nop	
	mov	rax, r14
.label_224:
	lea	rdi, [rdi]
	cmp	r13d, 0x16
	mov	rbp, rbp
	je	.label_240
	cmp	r13d, 0x12
	nop	
	je	.label_245
	test	r13d, r13d
	jne	.label_249
.label_236:
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x2e], 0
	nop	
	je	.label_251
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x298]
	call	emit_verbose
.label_251:
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x21], 0
	lea	rsi, [rsi]
	je	.label_264
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rbp, rbp
	mov	rdi, r12
	mov	rcx, r15
	mov	rbp, rbp
	call	set_file_security_ctx
.label_264:
	mov	rsp, rsp
	mov	rsi, r12
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_271
	mov	rsp, rsp
	mov	byte ptr [rax], 1
.label_271:
	mov	rbp, rbp
	mov	r12b, 1
	cmp	byte ptr [rbp + 0x10], 0
	mov	rsp, rsp
	je	.label_157
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_157
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0xc0]
	call	record_file
	jmp	.label_157
.label_245:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x2b0], rax
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rbp - 0x28c]
	and	ebx, 0xf000
	mov	rsp, rsp
	mov	rdi, r12
	mov	r14, r12
	cmp	ebx, 0x4000
	nop	
	jne	.label_284
	mov	rbp, rbp
	call	rmdir
	nop	
	jmp	.label_290
.label_240:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31_0
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rbp, rbp
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rcx, r15
	lea	rdi, [rdi]
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	rsp, rsp
	mov	r12b, 1
	lea	rdi, [rdi]
	jmp	.label_157
.label_249:
	mov	r14, r12
	xor	r12d, r12d
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.32_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdx, rbx
	mov	qword ptr [rbp - 0x280], rax
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, 4
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	r15, rax
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	lea	rsi, [rsi]
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x280]
	mov	rcx, r15
	mov	rbp, rbp
	mov	r8, rbx
	jmp	.label_217
.label_284:
	call	unlink
.label_290:
	mov	rsp, rsp
	test	eax, eax
	je	.label_325
	call	__errno_location
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rax]
	mov	rsp, rsp
	cmp	r13d, 2
	lea	rsi, [rsi]
	jne	.label_327
.label_325:
	mov	rbp, rbp
	cmp	ebx, 0x4000
	mov	r12, r14
	mov	rsp, rsp
	je	.label_150
	mov	al, byte ptr [r15 + 0x2e]
	test	al, al
	je	.label_150
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.34_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x298]
	mov	rsp, rsp
	call	emit_verbose
.label_150:
	mov	byte ptr [rbp - 0x29], 1
	mov	rax, qword ptr [rbp - 0x2b0]
.label_220:
	cmp	byte ptr [r15 + 0x2b], 0
	mov	rbp, rbp
	mov	ebx, dword ptr [rbp - 0x28c]
	nop	
	mov	r14d, ebx
	je	.label_170
	mov	r14d, dword ptr [r15 + 0x10]
.label_170:
	mov	qword ptr [rbp - 0x2b0], rax
	lea	rdi, [rdi]
	mov	r13d, 0x3f
	cmp	byte ptr [r15 + 0x1d], 0
	jne	.label_171
	mov	eax, ebx
	and	eax, 0xf000
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	lea	rdi, [rdi]
	mov	r13d, 0x12
	cmovne	r13d, ecx
.label_171:
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x278]
	mov	rsp, rsp
	mov	rsi, r12
	mov	r8, r15
	mov	rbp, rbp
	call	set_process_security_ctx
	test	al, al
	lea	rsi, [rsi]
	je	.label_188
	nop	
	mov	qword ptr [rbp - 0x2a8], r12
	mov	rsp, rsp
	and	r13d, r14d
	lea	rdi, [rdi]
	mov	r12d, ebx
	and	r12d, 0xf000
	lea	rsi, [rsi]
	cmp	r12d, 0x4000
	jne	.label_192
	mov	rsp, rsp
	lea	rdi, [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	mov	rsi, rbx
	call	is_ancestor
	test	al, al
	lea	rsi, [rsi]
	je	.label_208
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35_0
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x278]
.label_250:
	call	quotearg_style
.label_244:
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_221
.label_188:
	nop	
	xor	r12d, r12d
	nop	
	jmp	.label_157
.label_192:
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_230
	mov	r14, qword ptr [rbp - 0x278]
	movzx	eax, byte ptr [r14]
	nop	
	cmp	eax, 0x2f
	lea	rsi, [rsi]
	je	.label_232
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x2a8]
	lea	rsi, [rsi]
	call	dir_name
	lea	rsi, [rsi]
	mov	rbx, rax
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2e
	jne	.label_241
	mov	rbp, rbp
	cmp	byte ptr [rbx + 1], 0
	mov	rbp, rbp
	je	.label_247
.label_241:
	mov	rsp, rsp
	lea	rsi, [rbp - 0x1e0]
	mov	edi, OFFSET FLAT:.str.2_1
	call	stat
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_247
	lea	rsi, [rbp - 0x270]
	mov	rdi, rbx
	call	stat
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_257
.label_247:
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	free
.label_232:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2b4], r12d
	nop	
	mov	r12d, r13d
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [r15 + 0x16]
	lea	rdi, [rdi]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r14
	mov	rbx, qword ptr [rbp - 0x2a8]
	mov	rdx, rbx
	call	force_symlinkat
	nop	
	mov	r13d, eax
	test	r13d, r13d
	jle	.label_269
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.41_0
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x278], rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x278]
	mov	rcx, r12
	lea	rsi, [rsi]
	call	error
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_174
.label_208:
	mov	dword ptr [rbp - 0x2b4], r12d
	mov	rax, rsp
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	r12, [rax - 0x20]
	mov	rsp, r12
	mov	rbp, rbp
	mov	qword ptr [rax - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0xb8]
	mov	qword ptr [rax - 0x18], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	qword ptr [rax - 0x10], rcx
	nop	
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_270
	lea	rsi, [rsi]
	mov	eax, 0xf000
	mov	rsp, rsp
	and	eax, dword ptr [rbp - 0x138]
	mov	rsp, rsp
	cmp	eax, 0x4000
	mov	rsp, rsp
	jne	.label_270
	cmp	byte ptr [r15 + 0x21], 0
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0x278]
	lea	rsi, [rsi]
	jne	.label_295
	nop	
	cmp	byte ptr [r15 + 0x25], 0
	lea	rsi, [rsi]
	je	.label_314
.label_295:
	mov	rsp, rsp
	movzx	esi, byte ptr [r15 + 0x25]
	xor	r13d, r13d
	xor	edx, edx
	nop	
	mov	rdi, qword ptr [rbp - 0x2a8]
	mov	rcx, r15
	lea	rsi, [rsi]
	call	set_file_security_ctx
	cmp	byte ptr [r15 + 0x26], 0
	je	.label_313
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_174
.label_270:
	and	r14d, 0xfff
	mov	esi, r13d
	not	esi
	nop	
	and	esi, r14d
	mov	ebx, r13d
	mov	r13, qword ptr [rbp - 0x2a8]
	mov	rdi, r13
	call	mkdir
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	je	.label_319
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36_0
	lea	rsi, [rsi]
	jmp	.label_324
.label_230:
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_293
	nop	
	mov	bl, 1
	cmp	byte ptr [r15 + 0x16], 0
	mov	al, 1
	lea	rsi, [rsi]
	jne	.label_326
	cmp	dword ptr [r15 + 8], 3
	mov	rsp, rsp
	sete	al
.label_326:
	movzx	edx, al
	mov	rbp, rbp
	movzx	r8d, byte ptr [rbp - 0x29c]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x278]
	nop	
	mov	rsi, qword ptr [rbp - 0x2a8]
	lea	rsi, [rsi]
	call	create_hard_link
	nop	
	test	al, al
	je	.label_186
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	jmp	.label_161
.label_327:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x278]
	call	quotearg_n_style
	mov	r15, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 4
	mov	rbp, rbp
	mov	rdx, r14
	call	quotearg_n_style
	mov	rbp, rbp
	mov	r8, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	rcx, r15
.label_217:
	nop	
	call	error
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb8]
	nop	
	call	forget_created
	jmp	.label_157
.label_269:
	mov	qword ptr [rbp - 0x278], r14
	lea	rsi, [rsi]
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	bl, 1
.label_155:
	mov	rbp, rbp
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x29c], eax
	mov	rbp, rbp
	mov	al, byte ptr [rbp + 0x10]
	mov	r13d, r12d
	mov	r12d, dword ptr [rbp - 0x2b4]
	lea	rdi, [rdi]
	jmp	.label_190
.label_319:
	mov	rsp, rsp
	mov	r14d, ebx
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x150]
	nop	
	mov	rdi, r13
	call	__lstat
	nop	
	test	eax, eax
	je	.label_204
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.12_0
.label_324:
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r13
.label_181:
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_221:
	mov	rdx, rbx
.label_286:
	lea	rdi, [rdi]
	call	error
	nop	
	mov	rcx, qword ptr [rbp - 0x2b0]
.label_174:
	mov	rbp, rbp
	cmp	byte ptr [r15 + 0x25], 0
	jne	.label_231
	mov	rsp, rsp
	test	rcx, rcx
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbp - 0x2a8]
	mov	rax, qword ptr [rbp - 0x298]
	mov	rbp, rbp
	jne	.label_233
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0xb8]
	mov	r14, rax
	nop	
	call	forget_created
	mov	rax, r14
.label_233:
	test	rax, rax
	nop	
	je	.label_291
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	
	mov	r14, rax
	mov	rsp, rsp
	call	rename
	test	eax, eax
	je	.label_256
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.50
	mov	rsp, rsp
	jmp	.label_259
.label_291:
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_157
.label_256:
	mov	r12, r14
	cmp	byte ptr [r15 + 0x2e], 0
	nop	
	je	.label_185
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.51
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsp, rsp
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	xor	r12d, r12d
	mov	rsp, rsp
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, r15
	call	__printf_chk
	jmp	.label_157
.label_185:
	xor	r12d, r12d
	jmp	.label_157
.label_293:
	cmp	r12d, 0x8000
	je	.label_285
	cmp	r12d, 0xa000
	je	.label_288
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	mov	rsp, rsp
	je	.label_288
.label_285:
	lea	rdi, [rdi]
	and	r14d, 0x1ff
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rax, [rbp - 0xc0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	lea	r9, [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x278]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	rdx, r15
	mov	rsp, rsp
	mov	ecx, r14d
	mov	r8d, r13d
	nop	
	call	copy_reg
	add	rsp, 0x10
	test	al, al
	lea	rsi, [rsi]
	je	.label_299
	mov	dl, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	lea	rsi, [rsi]
	mov	bl, 1
.label_161:
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x29c], eax
	mov	rsp, rsp
	mov	al, byte ptr [rbp + 0x10]
	jmp	.label_190
.label_186:
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_174
.label_204:
	mov	ebx, dword ptr [rbp - 0x138]
	mov	eax, ebx
	lea	rsi, [rsi]
	and	eax, 0x1c0
	lea	rsi, [rsi]
	cmp	eax, 0x1c0
	jne	.label_308
	xor	eax, eax
	mov	qword ptr [rbp - 0x2c0], rax
	lea	rdi, [rdi]
	mov	r13d, r14d
	jmp	.label_151
.label_299:
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_174
.label_257:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2b4], r12d
	mov	rbp, rbp
	mov	r12d, r13d
	mov	rax, qword ptr [rbp - 0x1d8]
	cmp	rax, qword ptr [rbp - 0x268]
	nop	
	jne	.label_210
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e0]
	nop	
	mov	qword ptr [rbp - 0x280], rax
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbp - 0x270]
	mov	rdi, rbx
	call	free
	nop	
	cmp	qword ptr [rbp - 0x280], r13
	mov	r13d, r12d
	mov	r12d, dword ptr [rbp - 0x2b4]
	lea	rsi, [rsi]
	jne	.label_193
	jmp	.label_232
.label_288:
	cmp	r12d, 0x5fff
	mov	rsp, rsp
	jle	.label_330
	cmp	r12d, 0x6000
	lea	rsi, [rsi]
	mov	r14, qword ptr [rbp - 0x278]
	mov	rsp, rsp
	je	.label_148
	mov	rbp, rbp
	cmp	r12d, 0xa000
	je	.label_277
	cmp	r12d, 0xc000
	mov	rbp, rbp
	je	.label_148
	mov	rsp, rsp
	jmp	.label_266
.label_313:
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 0x2c0], rax
	mov	rsp, rsp
	jmp	.label_311
.label_308:
	mov	esi, ebx
	nop	
	or	esi, 0x1c0
	mov	rdi, qword ptr [rbp - 0x2a8]
	lea	rsi, [rsi]
	call	chmod
	mov	rsp, rsp
	mov	cl, 1
	mov	qword ptr [rbp - 0x2c0], rcx
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	mov	r13d, r14d
	je	.label_151
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str_1
.label_207:
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x2a8]
	jmp	.label_181
.label_151:
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_212
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x148]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x2a8]
	call	remember_copied
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_212:
	cmp	byte ptr [r15 + 0x2e], 0
	mov	rbp, rbp
	je	.label_304
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_197
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsp, rsp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x2a8]
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	mov	rsp, rsp
	call	__printf_chk
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x278]
	jmp	.label_196
.label_222:
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x278]
	nop	
	call	quotearg_n_style_colon
	mov	r15, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	jmp	.label_242
.label_210:
	mov	rbp, rbp
	mov	rdi, rbx
	call	free
.label_193:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.40
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x2a8]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	jmp	.label_244
.label_304:
	mov	r14, qword ptr [rbp - 0x278]
	mov	rsp, rsp
	jmp	.label_196
.label_330:
	mov	rsp, rsp
	cmp	r12d, 0x1000
	je	.label_178
	nop	
	cmp	r12d, 0x2000
	mov	r14, qword ptr [rbp - 0x278]
	nop	
	mov	ebx, dword ptr [rbp - 0x28c]
	jne	.label_266
.label_148:
	mov	dword ptr [rbp - 0x2b4], r12d
	nop	
	mov	esi, r13d
	lea	rdi, [rdi]
	not	esi
	nop	
	and	esi, ebx
	mov	rdx, qword ptr [rbp - 0x98]
	mov	r12d, r13d
	mov	r13d, ebx
	mov	rbx, qword ptr [rbp - 0x2a8]
	mov	rdi, rbx
	call	__mknod
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_274
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43_0
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	r12, rax
	mov	edi, 4
	mov	rsi, rbx
	mov	rsp, rsp
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, r14d
	mov	rdx, r12
	mov	rsp, rsp
	jmp	.label_286
.label_314:
	xor	eax, eax
	mov	qword ptr [rbp - 0x2c0], rax
	lea	rdi, [rdi]
	xor	r13d, r13d
.label_311:
	lea	rdi, [rdi]
	jmp	.label_196
.label_267:
	xor	r12d, r12d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23_0
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	jmp	.label_275
.label_317:
	mov	rsp, rsp
	mov	rbx, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r14, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, rbx
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r13d
.label_275:
	mov	rsp, rsp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_157
.label_197:
	xor	edx, edx
	lea	rdi, [rdi]
	mov	r14, qword ptr [rbp - 0x278]
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	emit_verbose
.label_196:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x29c], ebx
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x288], 0
	je	.label_227
	mov	rbp, rbp
	mov	al, byte ptr [r15 + 0x1c]
	test	al, al
	je	.label_227
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x288]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	jne	.label_322
.label_227:
	mov	rsp, rsp
	movzx	edx, byte ptr [rbp - 0x29]
	lea	rsi, [rsi]
	sub	rsp, 0x10
	nop	
	mov	rax, qword ptr [rbp + 0x20]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rbp + 0x18]
	mov	qword ptr [rsp], rax
	lea	rcx, [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x278], r14
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	rsp, rsp
	mov	r8, r12
	lea	rsi, [rsi]
	mov	r9, r15
	nop	
	call	copy_dir
	add	rsp, 0x10
	nop	
	mov	bl, al
	jmp	.label_160
.label_322:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x278], r14
	lea	rdi, [rdi]
	mov	bl, 1
.label_160:
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp + 0x10]
	mov	r12d, dword ptr [rbp - 0x2b4]
	mov	r14, qword ptr [rbp - 0x2c0]
.label_190:
	lea	rsi, [rsi]
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_166
	mov	rsp, rsp
	cmp	r12d, 0x4000
	je	.label_166
	nop	
	mov	cl, al
	mov	al, byte ptr [r15 + 0x14]
	nop	
	test	al, al
	mov	al, cl
	lea	rdi, [rdi]
	jne	.label_166
	cmp	byte ptr [r15 + 0x21], 0
	jne	.label_173
	nop	
	cmp	byte ptr [r15 + 0x25], 0
	mov	rbp, rbp
	je	.label_166
.label_173:
	movzx	esi, byte ptr [r15 + 0x25]
	mov	dword ptr [rbp - 0x288], edx
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x2a8]
	mov	rcx, r15
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x2c0], r14
	nop	
	mov	r14b, bl
	lea	rsi, [rsi]
	mov	ebx, r13d
	mov	r13b, al
	lea	rsi, [rsi]
	call	set_file_security_ctx
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x288]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x2b0]
	mov	rbp, rbp
	mov	al, r13b
	mov	r13d, ebx
	mov	bl, r14b
	mov	r14, qword ptr [rbp - 0x2c0]
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x26], 0
	mov	rsp, rsp
	jne	.label_174
.label_166:
	nop	
	test	al, al
	lea	rsi, [rsi]
	je	.label_200
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	nop	
	je	.label_200
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x288], bl
	mov	rbp, rbp
	mov	rbx, r14
	mov	r14d, edx
	lea	rsi, [rbp - 0x1e0]
	mov	rdi, qword ptr [rbp - 0x2a8]
	mov	rbp, rbp
	call	__lstat
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_214
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x1e0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	rbp, rbp
	call	record_file
.label_214:
	mov	rbp, rbp
	mov	edx, r14d
	mov	r14, rbx
	mov	bl, byte ptr [rbp - 0x288]
.label_200:
	nop	
	cmp	r12d, 0x4000
	mov	rsp, rsp
	je	.label_226
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0x17]
	test	al, al
	jne	.label_153
.label_226:
	test	dl, dl
	nop	
	jne	.label_153
	mov	byte ptr [rbp - 0x288], bl
	cmp	byte ptr [r15 + 0x1f], 0
	lea	rdi, [rdi]
	je	.label_189
	lea	rdi, [rdi]
	lea	rbx, [rbp - 0xc0]
	mov	rdi, rbx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x1e0], rax
	mov	qword ptr [rbp - 0x1d8], rdx
	mov	rdi, rbx
	nop	
	call	get_stat_mtime
	nop	
	mov	qword ptr [rbp - 0x1d0], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1c8], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x280]
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x2a8]
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x1e0]
	mov	rsp, rsp
	je	.label_252
	mov	rbp, rbp
	call	utimens_symlink
	lea	rsi, [rsi]
	jmp	.label_279
.label_252:
	call	utimens
.label_279:
	nop	
	test	eax, eax
	nop	
	je	.label_189
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x2a8]
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	mov	rsp, rsp
	je	.label_189
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_157
.label_189:
	mov	rax, qword ptr [rbp - 0x280]
	test	al, al
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x2a8]
	nop	
	je	.label_283
	lea	rdi, [rdi]
	cmp	byte ptr [rbp - 0x288], 0
	setne	r12b
	jmp	.label_157
.label_283:
	mov	r12, r14
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_289
	cmp	byte ptr [rbp - 0x29], 0
	mov	r14, qword ptr [rbp - 0x278]
	mov	rbp, rbp
	jne	.label_253
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rsp, rsp
	cmp	eax, dword ptr [rbp - 0x134]
	mov	rsp, rsp
	jne	.label_253
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xa0]
	nop	
	cmp	eax, dword ptr [rbp - 0x130]
	je	.label_307
.label_253:
	lea	rsi, [rsi]
	movzx	r8d, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xc0]
	mov	rbp, rbp
	lea	r9, [rbp - 0x150]
	mov	rsp, rsp
	mov	edx, 0xffffffff
	nop	
	mov	rdi, r15
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	call	set_owner
	cmp	eax, -1
	lea	rsi, [rsi]
	je	.label_305
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_307
	mov	rbp, rbp
	and	dword ptr [rbp - 0x28c], 0xfffff1ff
	jmp	.label_307
.label_289:
	nop	
	mov	r14, qword ptr [rbp - 0x278]
.label_307:
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_179
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_312
.label_179:
	lea	rdi, [rdi]
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	ecx, 0xffffffff
	mov	rdi, r14
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x28c]
	call	copy_acl
	mov	rbp, rbp
	test	eax, eax
	mov	bl, byte ptr [rbp - 0x288]
	lea	rsi, [rsi]
	je	.label_153
	nop	
	cmp	byte ptr [r15 + 0x24], 0
	mov	rbp, rbp
	je	.label_153
	nop	
	xor	r12d, r12d
	nop	
	jmp	.label_157
.label_177:
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.22_0
.label_315:
	mov	edx, 5
	call	dcgettext
	nop	
	mov	r14, rax
	xor	r12d, r12d
.label_320:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	r15, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x278]
	lea	rsi, [rsi]
	jmp	.label_329
.label_305:
	xor	r12d, r12d
	lea	rdi, [rdi]
	jmp	.label_157
.label_274:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28c], r13d
	mov	qword ptr [rbp - 0x278], r14
	mov	bl, 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	mov	rbp, rbp
	xor	edx, edx
	jmp	.label_155
.label_277:
	mov	dword ptr [rbp - 0x288], r13d
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	areadlink_with_size
	nop	
	mov	r13, rax
	test	r13, r13
	je	.label_169
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x2a8]
	call	force_symlinkat
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jle	.label_176
	cmp	byte ptr [r15 + 0x2d], 0
	je	.label_183
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	jne	.label_183
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x138]
	cmp	eax, 0xa000
	jne	.label_183
	mov	rbx, qword ptr [rbp - 0x120]
	mov	rsp, rsp
	mov	rdi, r13
	call	strlen
	cmp	rbx, rax
	jne	.label_183
	mov	rdi, qword ptr [rbp - 0x2a8]
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	areadlink_with_size
	lea	rdi, [rdi]
	mov	rbx, rax
	test	rbx, rbx
	je	.label_183
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r13
	call	strcmp
	mov	dword ptr [rbp - 0x280], eax
	mov	rdi, rbx
	call	free
	cmp	dword ptr [rbp - 0x280], 0
	je	.label_176
.label_183:
	mov	rdi, r13
	nop	
	call	free
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45_0
	lea	rdi, [rdi]
	jmp	.label_207
.label_178:
	mov	ebx, r13d
	mov	rbp, rbp
	not	ebx
	and	ebx, dword ptr [rbp - 0x28c]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x2a8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	esi, ebx
	mov	rsp, rsp
	call	__mknod
	test	eax, eax
	je	.label_182
	and	ebx, 0xffffefff
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, ebx
	mov	rbp, rbp
	call	mkfifo
	test	eax, eax
	je	.label_152
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.42_0
	mov	rbp, rbp
	jmp	.label_207
.label_266:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.47
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	lea	rsi, [rsi]
	mov	rsi, r14
	jmp	.label_250
.label_312:
	cmp	byte ptr [r15 + 0x2b], 0
	lea	rsi, [rsi]
	je	.label_254
	mov	edx, dword ptr [r15 + 0x10]
	nop	
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	set_acl
	mov	rsp, rsp
	test	eax, eax
	mov	bl, byte ptr [rbp - 0x288]
	je	.label_153
	nop	
	xor	r12d, r12d
	mov	rbp, rbp
	jmp	.label_157
.label_169:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44_0
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x278]
	jmp	.label_181
.label_254:
	mov	r14, rbx
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x20], 0
	je	.label_272
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	je	.label_272
	mov	eax, dword ptr [rbp - 0x28c]
	and	eax, 0x7000
	mov	rsp, rsp
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	mov	rbp, rbp
	call	cached_umask
	not	eax
	and	ebx, eax
	mov	rsp, rsp
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, ebx
	mov	rbp, rbp
	call	set_acl
	test	eax, eax
	mov	bl, byte ptr [rbp - 0x288]
	je	.label_153
	mov	rbp, rbp
	xor	r12d, r12d
	jmp	.label_157
.label_176:
	mov	rdi, r13
	call	free
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x25], 0
	lea	rdi, [rdi]
	jne	.label_292
	nop	
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_237
	nop	
	mov	esi, dword ptr [rbp - 0xa4]
	mov	edx, dword ptr [rbp - 0xa0]
	mov	rdi, qword ptr [rbp - 0x2a8]
	mov	rsp, rsp
	call	lchown
	test	eax, eax
	je	.label_237
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	chown_failure_ok
	nop	
	test	al, al
	je	.label_302
.label_237:
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x280], rax
	xor	edx, edx
	mov	bl, 1
	nop	
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x29c], eax
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp + 0x10]
	lea	rdi, [rdi]
	mov	r13d, dword ptr [rbp - 0x288]
	jmp	.label_190
.label_152:
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x280], rax
.label_182:
	xor	edx, edx
	xor	r14d, r14d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x29c], eax
	mov	rsp, rsp
	mov	al, byte ptr [rbp + 0x10]
	nop	
	mov	bl, 1
	lea	rdi, [rdi]
	jmp	.label_190
.label_272:
	nop	
	test	r13d, r13d
	mov	rsp, rsp
	je	.label_213
	call	cached_umask
	lea	rdi, [rdi]
	not	eax
	and	r13d, eax
	test	r12b, r12b
	jne	.label_163
	lea	rsi, [rsi]
	test	r13d, r13d
	je	.label_163
	lea	rdi, [rdi]
	cmp	byte ptr [rbp - 0x29], 0
	je	.label_323
	lea	rsi, [rbp - 0x150]
	nop	
	mov	rdi, r14
	nop	
	call	__lstat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_323
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_0
	nop	
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	lea	rdi, [rdi]
	jmp	.label_158
.label_213:
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_163
.label_302:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x2a8]
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_297
	mov	rcx, qword ptr [rbp - 0x2b0]
	jmp	.label_174
.label_323:
	mov	eax, dword ptr [rbp - 0x138]
	mov	dword ptr [rbp - 0x29c], eax
	not	eax
	mov	rsp, rsp
	test	r13d, eax
	je	.label_163
	mov	rbp, rbp
	mov	r12b, 1
.label_163:
	lea	rsi, [rsi]
	test	r12b, 1
	lea	rsi, [rsi]
	mov	bl, byte ptr [rbp - 0x288]
	je	.label_153
	mov	esi, dword ptr [rbp - 0x29c]
	mov	rsp, rsp
	or	esi, r13d
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	call	chmod
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_153
	lea	rdi, [rdi]
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x278], eax
	xor	r12d, r12d
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r13b, bl
	nop	
	mov	rbx, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x278]
	mov	rdx, rbx
	mov	rbp, rbp
	mov	bl, r13b
	lea	rsi, [rsi]
	call	error
	nop	
	cmp	byte ptr [r15 + 0x24], 0
	lea	rsi, [rsi]
	jne	.label_157
.label_153:
	nop	
	test	bl, bl
	setne	r12b
	lea	rdi, [rdi]
	jmp	.label_157
.label_297:
	mov	al, 1
	mov	qword ptr [rbp - 0x280], rax
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	bl, 1
	mov	dword ptr [rbp - 0x29c], eax
	mov	al, byte ptr [rbp + 0x10]
	mov	r13d, dword ptr [rbp - 0x288]
	xor	r14d, r14d
	lea	rdi, [rdi]
	jmp	.label_190
.label_231:
	mov	rbp, rbp
	call	restore_default_fscreatecon_or_die
.label_292:
	call	restore_default_fscreatecon_or_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075b0

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x40], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx], xmm0
	mov	rbp, rbp
	call	geteuid
	test	eax, eax
	nop	
	sete	byte ptr [rbx + 0x1b]
	lea	rdi, [rdi]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407600

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_332
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_331
.label_332:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	pop	rbx
	ret	
.label_331:
	xor	eax, eax
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407640

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + cached_umask.mask]],  -1
	jne	.label_333
	mov	rbp, rbp
	push	rax
	nop	
	xor	edi, edi
	call	umask
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	rbp, rbp
	mov	edi, eax
	mov	rbp, rbp
	call	umask
	add	rsp, 8
.label_333:
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407680

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rdi + 4]
	mov	al, 1
	mov	rsp, rsp
	cmp	ecx, 4
	lea	rdi, [rdi]
	je	.label_334
	cmp	ecx, 3
	sete	al
	nop	
	and	al, sil
.label_334:
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076b0

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x138
	mov	r14, r9
	mov	rsp, rsp
	mov	r15, r8
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_349
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	byte ptr [r14], 0
	jne	.label_358
	mov	r13b, 1
	nop	
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_360
	mov	rsp, rsp
	mov	byte ptr [r14], 1
	lea	rsi, [rsi]
	mov	r12b, 1
	jmp	.label_335
.label_349:
	lea	rdi, [rdi]
	mov	byte ptr [r14], 0
.label_358:
	nop	
	xor	r13d, r13d
.label_360:
	lea	rsi, [rsi]
	cmp	dword ptr [r15 + 4], 2
	nop	
	jne	.label_359
	lea	rdi, [rdi]
	mov	eax, 0xf000
	nop	
	mov	ecx, dword ptr [rbp + 0x18]
	and	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	lea	rdi, [rdi]
	jne	.label_348
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	mov	rsi, rbp
	jne	.label_338
	mov	rsp, rsp
	mov	rsi, rdx
	call	same_name
	test	al, al
	lea	rdi, [rdi]
	jne	.label_337
	mov	rsp, rsp
	mov	r12b, 1
	lea	rsi, [rsi]
	cmp	dword ptr [r15], 0
	jne	.label_335
	test	r13b, r13b
	je	.label_337
	lea	rsi, [rsi]
	mov	byte ptr [r14], 1
	jmp	.label_339
.label_359:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r14
	mov	r14, rdi
	mov	r12b, 1
	mov	rsp, rsp
	test	r13b, r13b
	mov	rbp, rbp
	je	.label_335
	lea	rsi, [rsi]
	lea	rbx, [rsp + 0xa8]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	r13, rdx
	lea	rdi, [rdi]
	call	__lstat
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_335
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r13
	lea	rax, [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r13, r14
	mov	rbp, rbp
	mov	r14, rax
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	__lstat
	mov	rbp, rbp
	test	eax, eax
	jne	.label_335
	mov	rsp, rsp
	mov	rsi, r14
	mov	rcx, r13
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_343
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	cmp	rax, qword ptr [rsp + 0xa8]
	sete	r13b
	jmp	.label_351
.label_348:
	mov	rsi, rbp
.label_338:
	cmp	dword ptr [r15], 0
	lea	rsi, [rsi]
	je	.label_354
	mov	rbp, rbp
	test	r13b, r13b
	je	.label_356
	mov	rsi, rdx
	nop	
	call	same_name
	lea	rdi, [rdi]
	mov	r12b, al
	xor	r12b, 1
	jmp	.label_335
.label_354:
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x18], 0
	mov	rbp, rbp
	jne	.label_336
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x15], 0
	je	.label_340
.label_336:
	mov	rsp, rsp
	mov	eax, 0xf000
	mov	rsp, rsp
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	lea	rdi, [rdi]
	cmp	eax, 0xa000
	je	.label_335
	test	r13b, r13b
	lea	rdi, [rdi]
	je	.label_340
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_340
	mov	r13, rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rsi
	mov	rsi, rdx
	mov	r12, rdx
	call	same_name
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rbp, rbp
	mov	rdx, r12
	test	al, al
	je	.label_339
.label_340:
	mov	eax, 0xf000
	mov	rbp, rbp
	mov	ecx, dword ptr [rsi + 0x18]
	mov	rbp, rbp
	and	ecx, eax
	cmp	ecx, 0xa000
	je	.label_341
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_341
	mov	rax, qword ptr [rsi + 8]
	mov	r12b, 1
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_335
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [rbx]
	jne	.label_335
	cmp	byte ptr [r15 + 0x17], 0
	lea	rdi, [rdi]
	je	.label_341
	lea	rsi, [rsi]
	mov	byte ptr [r14], 1
	jmp	.label_335
.label_356:
	cmp	byte ptr [r15 + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_355
	mov	rbp, rbp
	cmp	dword ptr [r15 + 4], 2
	mov	rsp, rsp
	je	.label_355
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_355
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_347
.label_355:
	lea	rdi, [rdi]
	mov	r12b, 1
	jmp	.label_335
.label_337:
	xor	al, 1
	lea	rdi, [rdi]
	mov	r12b, al
	jmp	.label_335
.label_341:
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_345
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	mov	rsp, rsp
	cmp	eax, 0xa000
	jne	.label_345
	nop	
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_345
	lea	rdi, [rdi]
	mov	rbp, rdi
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rsi, [rsi]
	call	canonicalize_file_name
	mov	rsi, r13
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rdx, r12
	mov	rbp, rax
	nop	
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_345
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, rdx
	call	same_name
	mov	rbp, rbp
	mov	r12b, al
	xor	r12b, 1
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	call	free
	lea	rsi, [rsi]
	jmp	.label_335
.label_345:
	mov	rbp, rbp
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_346
	mov	rsp, rsp
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rbx + 0x18]
	mov	rbp, rbp
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_335
.label_346:
	nop	
	cmp	dword ptr [r15 + 4], 2
	jne	.label_353
	nop	
	mov	rbp, rdx
	mov	eax, 0xf000
	mov	rbp, rbp
	and	eax, dword ptr [rsi + 0x18]
	mov	rsp, rsp
	cmp	eax, 0xa000
	nop	
	jne	.label_357
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x18]
	lea	rsi, [rsi]
	call	stat
	lea	rdi, [rdi]
	mov	r12b, 1
	lea	rsi, [rsi]
	test	eax, eax
	mov	rdi, rbp
	jne	.label_335
	jmp	.label_342
.label_339:
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x18], 0
	sete	r12b
	lea	rsi, [rsi]
	jmp	.label_335
.label_353:
	xor	r12d, r12d
	jmp	.label_335
.label_343:
	xor	r13d, r13d
.label_351:
	mov	rdx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdi, rcx
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x10]
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x30]
	and	ecx, eax
	lea	rdi, [rdi]
	cmp	ecx, 0xa000
	nop	
	jne	.label_338
	and	eax, dword ptr [rsp + 0xc0]
	cmp	eax, 0xa000
	jne	.label_338
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_335
	jmp	.label_338
.label_357:
	lea	rdi, [rsp + 0x18]
	nop	
	mov	edx, 0x90
	lea	rdi, [rdi]
	call	memcpy
	mov	rdi, rbp
.label_342:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_344
	lea	rsi, [rsp + 0xa8]
	call	stat
	mov	r12b, 1
	nop	
	test	eax, eax
	jne	.label_335
	jmp	.label_352
.label_344:
	lea	rdi, [rsp + 0xa8]
	mov	edx, 0x90
	mov	rsi, rbx
	nop	
	call	memcpy
.label_352:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12b, 1
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_335
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0xa8]
	jne	.label_335
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_350
	mov	rbp, rbp
	mov	eax, 0xf000
	mov	rbp, rbp
	and	eax, dword ptr [rbx + 0x18]
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	setne	byte ptr [r14]
	jmp	.label_335
.label_347:
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rdi, [rdi]
	jmp	.label_335
.label_350:
	xor	r12d, r12d
.label_335:
	mov	al, r12b
	add	rsp, 0x138
	mov	rsp, rsp
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407be0

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	r12d, ecx
	lea	rdi, [rdi]
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	rsp, rsp
	mov	dword ptr [rsp], 0xffffffff
	lea	rsi, [rsi]
	movzx	r9d, dl
	lea	rsi, [rsi]
	mov	edi, 0xffffff9c
	mov	rsp, rsp
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	lea	rsi, [rsi]
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	mov	rsp, rsp
	jle	.label_361
	nop	
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	mov	rbp, rbp
	mov	r15, rax
	mov	edi, 1
	mov	rbp, rbp
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	mov	rsp, rsp
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, r15
	mov	r8, rbx
	nop	
	call	error
	jmp	.label_362
.label_361:
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	mov	r14b, 1
	jns	.label_362
	mov	rsp, rsp
	xor	r12b, 1
	lea	rsi, [rsi]
	jne	.label_362
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, r15
	mov	rbp, rbp
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	call	__printf_chk
.label_362:
	mov	rsp, rsp
	mov	al, r14b
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407d40

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14, rdx
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x18], 0
	je	.label_363
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbx + 8]
	mov	al, 1
	mov	rbp, rbp
	cmp	ecx, 2
	je	.label_365
	mov	rsp, rsp
	cmp	ecx, 3
	mov	rsp, rsp
	je	.label_364
	mov	rsp, rsp
	cmp	ecx, 4
	jne	.label_366
	cmp	byte ptr [rbx + 0x2f], 0
	je	.label_367
	lea	rdi, [rdi]
	mov	esi, dword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	writable_destination
	test	al, al
	lea	rsi, [rsi]
	je	.label_364
	xor	eax, eax
	jmp	.label_365
.label_364:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rsi, [rsi]
	call	overwrite_ok
	lea	rdi, [rdi]
	xor	al, 1
	jmp	.label_365
.label_366:
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_365
.label_367:
	lea	rdi, [rdi]
	xor	eax, eax
.label_365:
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
.label_363:
	mov	edi, OFFSET FLAT:.str.53_0
	nop	
	mov	esi, OFFSET FLAT:.str.5_0
	lea	rdi, [rdi]
	mov	edx, 0x6d2
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.abandon_move
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e10

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r13, rdx
	mov	r14, rsi
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	mov	esi, dword ptr [r13 + 0x18]
	mov	rdi, r14
	call	writable_destination
	nop	
	test	al, al
	je	.label_369
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.56_0
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	r12, rax
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + program_name]]
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, r14
	nop	
	call	quotearg_style
	mov	rbp, rax
	mov	rbp, rbp
	mov	esi, 1
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rbp, rbp
	mov	rdx, r12
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	mov	r8, rbp
	nop	
	call	__fprintf_chk
	mov	rsp, rsp
	jmp	.label_368
.label_369:
	mov	rsp, rsp
	mov	edi, dword ptr [r13 + 0x18]
	nop	
	lea	rsi, [rsp + 0xc]
	call	strmode
	nop	
	mov	byte ptr [rsp + 0x16], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	cmp	byte ptr [rbx + 0x18], 0
	jne	.label_371
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x15], 0
	nop	
	jne	.label_371
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x16], 0
	je	.label_370
.label_371:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
.label_372:
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	r12, rax
	mov	rbp,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, r14
	call	quotearg_style
	mov	rsp, rsp
	mov	rbx, rax
	mov	r9d, dword ptr [r13 + 0x18]
	lea	rsi, [rsi]
	and	r9d, 0xfff
	mov	rbp, rbp
	lea	rax, [rsp + 0xd]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	rcx, rbp
	nop	
	mov	r8, rbx
	call	__fprintf_chk
.label_368:
	lea	rdi, [rdi]
	call	yesno
	nop	
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_370:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.55_0
	lea	rsi, [rsi]
	jmp	.label_372
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407fa0

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_373
	movzx	ecx, byte ptr [rdi + 1]
	lea	rsi, [rsi]
	mov	eax, 2
	lea	rdi, [rdi]
	cmp	ecx, 0x2e
	je	.label_374
	mov	eax, 1
.label_374:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdi + rax]
	test	al, al
	lea	rsi, [rsi]
	sete	cl
	cmp	eax, 0x2f
	sete	al
	or	al, cl
	ret	
.label_373:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407fe0

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	sub	rsp, 0xa8
	nop	
	mov	rbp, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rbp
	nop	
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	last_component
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	call	strlen
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	r13,  qword ptr [word ptr [rip + simple_backup_suffix]]
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	r12, rax
	lea	rax, [r12 + rbp]
	lea	rdi, [rdi]
	cmp	r15, rax
	jne	.label_377
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbp
	nop	
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_378
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_375
.label_377:
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_375
.label_378:
	lea	rsi, [rsi]
	add	rbx, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, r13
	mov	rsp, rsp
	call	strcmp
	test	eax, eax
	je	.label_379
	xor	eax, eax
	jmp	.label_375
.label_379:
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	rdi, r14
	call	strlen
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	lea	rdi, [r12 + rbx + 1]
	call	xmalloc
	mov	rbp, rax
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, rbx
	call	__mempcpy_chk
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strcpy
	lea	rsi, [rsp + 0x18]
	mov	rsp, rsp
	mov	rdi, rbp
	nop	
	call	stat
	mov	ebx, eax
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	test	ebx, ebx
	mov	rsp, rsp
	je	.label_380
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_375
.label_380:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_376
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	sete	al
	lea	rsi, [rsi]
	jmp	.label_375
.label_376:
	lea	rdi, [rdi]
	xor	eax, eax
.label_375:
	lea	rdi, [rdi]
	add	rsp, 0xa8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081b0

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	mov	rsp, rsp
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 4
	mov	rdx, rax
	mov	rsp, rsp
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	mov	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.57_0
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rsi, [rsi]
	call	__printf_chk
	mov	rsp, rsp
	test	r14, r14
	je	.label_381
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	nop	
	mov	rsi, r14
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	nop	
	mov	rdx, rcx
	nop	
	call	__printf_chk
.label_381:
	mov	edi, 0xa
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	lea	rdi, [rdi]
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408280

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	test	rsi, rsi
	je	.label_382
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	nop	dword ptr [rax]
.label_385:
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + 8], rcx
	mov	rbp, rbp
	jne	.label_383
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	mov	al, 1
	cmp	rdx, qword ptr [rdi]
	mov	rbp, rbp
	je	.label_384
.label_383:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	test	rsi, rsi
	lea	rsi, [rsi]
	jne	.label_385
.label_382:
	nop	
	xor	eax, eax
.label_384:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082d0

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0xb8
	lea	rdi, [rdi]
	mov	rbp, r9
	mov	qword ptr [rsp + 0x50], r8
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rcx
	mov	rsp, rsp
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x38], rbx
	mov	rbp, rbp
	movups	xmm0, xmmword ptr [rbp + 0x40]
	nop	
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rbp]
	lea	rdi, [rdi]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	mov	rbp, rbp
	movups	xmm2, xmmword ptr [rbp + 0x20]
	movups	xmm3, xmmword ptr [rbp + 0x30]
	movaps	xmmword ptr [rsp + 0x90], xmm3
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm2
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x70], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	esi, 2
	call	savedir
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_390
	cmp	dword ptr [rbp + 4], 3
	jne	.label_391
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x64], 2
.label_391:
	mov	r14b, 1
	xor	ebp, ebp
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_388
	movzx	ecx, r13b
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x34], ecx
	lea	rdi, [rdi]
	mov	r13, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	nop	word ptr [rax + rax]
.label_386:
	mov	byte ptr [rsp + 0x5d], r14b
	xor	edx, edx
	nop	
	mov	rdi, rbx
	mov	rsi, r13
	call	file_name_concat
	lea	rdi, [rdi]
	mov	r15, rax
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r13
	nop	
	call	file_name_concat
	nop	
	mov	r12, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	al, byte ptr [rax]
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x5e], al
	mov	rbp, rbp
	lea	rax, [rsp + 0x5f]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0x5e]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp], 0
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x50]
	nop	
	lea	r9, [rsp + 0x60]
	lea	rdi, [rdi]
	call	copy_internal
	lea	rsi, [rsi]
	mov	r14b, al
	lea	rsi, [rsi]
	and	r14b, byte ptr [rsp + 0x5d]
	lea	rdi, [rdi]
	mov	bl, byte ptr [rsp + 0x5f]
	mov	rax, qword ptr [rsp + 0xf8]
	or	byte ptr [rax], bl
	mov	rdi, r12
	call	free
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	test	bl, bl
	mov	rsp, rsp
	jne	.label_387
	mov	rsp, rsp
	or	bpl, byte ptr [rsp + 0x5e]
	mov	rdi, r13
	call	strlen
	cmp	byte ptr [rax + r13 + 1], 0
	mov	rsp, rsp
	lea	r13, [rax + r13 + 1]
	mov	rbx, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	jne	.label_386
	mov	rbp, rbp
	jmp	.label_387
.label_390:
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	r14d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r15, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, rbx
	call	quotearg_style
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, r15
	lea	rsi, [rsi]
	call	error
	lea	rdi, [rdi]
	jmp	.label_389
.label_388:
	nop	
	mov	qword ptr [rsp + 0x28], rax
.label_387:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax], bpl
	mov	rsp, rsp
	test	r14b, r14b
	setne	bpl
.label_389:
	lea	rsi, [rsi]
	mov	al, bpl
	add	rsp, 0xb8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408580

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x2a8
	lea	rsi, [rsi]
	mov	rbx, r9
	mov	r12d, r8d
	mov	r13d, ecx
	mov	qword ptr [rsp + 0xd8], rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	r14, qword ptr [rsp + 0x2e0]
	mov	eax, dword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xcc], eax
	mov	al, byte ptr [rdx + 0x23]
	mov	byte ptr [rsp + 0xd0], al
	mov	esi, 0x20000
	cmp	dword ptr [rdx + 4], 2
	je	.label_436
	xor	esi, esi
.label_436:
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r15
	call	open_safer
	mov	rbp, rbp
	test	eax, eax
	nop	
	js	.label_445
	mov	qword ptr [rsp + 0xe0], r15
	nop	
	lea	rsi, [rsp + 0x188]
	mov	edi, eax
	mov	r15d, eax
	call	__fstat
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_395
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rbp, rbp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_430
.label_445:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60_0
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, ebx
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
	jmp	.label_429
.label_395:
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [rsp + 0x190]
	jne	.label_418
	mov	rax, qword ptr [r14]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0x188]
	jne	.label_418
	cmp	byte ptr [rbx], 0
	mov	rsp, rsp
	je	.label_421
	nop	
	mov	qword ptr [rsp + 0xb0], rbx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xa4], r13d
	mov	qword ptr [rsp + 0xc0], rbp
.label_393:
	mov	rbp, rbp
	mov	ebx, r12d
	lea	rdi, [rdi]
	mov	edx, ebx
	lea	rdi, [rdi]
	not	edx
	and	edx, dword ptr [rsp + 0xa4]
	mov	dword ptr [rsp + 0xbc], edx
	nop	
	mov	esi, 0xc1
	xor	eax, eax
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	call	open_safer
	lea	rdi, [rdi]
	mov	r13d, eax
	call	__errno_location
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, dword ptr [rax]
	mov	rsp, rsp
	test	r13d, r13d
	mov	rsp, rsp
	jns	.label_432
	cmp	r12d, 0x11
	lea	rdi, [rdi]
	jne	.label_432
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_432
	nop	
	lea	rsi, [rsp + 0xf0]
	nop	
	mov	rdi, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	call	__lstat
	mov	rsp, rsp
	test	eax, eax
	jne	.label_432
	nop	
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rsp + 0x108]
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_432
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x30], 0
	je	.label_442
	mov	esi, 0x41
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0xbc]
	mov	rsp, rsp
	call	open_safer
	mov	r13d, eax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xa8]
	mov	r12d, dword ptr [rax]
.label_432:
	cmp	r12d, 0x15
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xc0]
	jne	.label_397
	test	r13d, r13d
	lea	rdi, [rdi]
	jns	.label_397
	cmp	byte ptr [rbp], 0
	je	.label_397
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	movzx	ecx, byte ptr [rax + rbp - 1]
	mov	eax, 0x14
	cmp	ecx, 0x2f
	lea	rdi, [rdi]
	je	.label_447
	mov	eax, r12d
.label_447:
	mov	dword ptr [rsp + 0xa8], eax
	nop	
	jmp	.label_406
.label_418:
	lea	rsi, [rsi]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xe0]
.label_440:
	call	quotearg_style
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_413:
	lea	rsi, [rsi]
	mov	rdx, rbx
.label_430:
	mov	rbp, rbp
	call	error
	nop	
	xor	r14d, r14d
.label_405:
	mov	edi, r15d
	call	close
	test	eax, eax
	mov	rbp, rbp
	jns	.label_419
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rbp, rax
	nop	
	mov	edi, 4
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xe0]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rbp
	call	error
.label_419:
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	and	r13b, 1
.label_429:
	lea	rsi, [rsi]
	and	r13b, 1
	mov	rbp, rbp
	mov	al, r13b
	add	rsp, 0x2a8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_397:
	mov	dword ptr [rsp + 0xa8], r12d
.label_406:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x98], ebx
.label_441:
	lea	rdi, [rdi]
	test	r13d, r13d
	js	.label_434
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x218]
	lea	rsi, [rsi]
	mov	edi, r13d
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xbc], r13d
	call	__fstat
	test	eax, eax
	nop	
	je	.label_439
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	nop	
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	mov	rdx, rbp
	nop	
	call	error
	xor	r14d, r14d
	jmp	.label_403
.label_421:
	mov	qword ptr [rsp + 0xb0], rbx
	mov	esi, 0x201
	mov	rbx, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rbx + 0x23], 0
	nop	
	jne	.label_443
	nop	
	mov	esi, 1
.label_443:
	nop	
	xor	eax, eax
	mov	rdi, rbp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rdi, [rdi]
	call	open_safer
	nop	
	mov	ebp, eax
	call	__errno_location
	mov	qword ptr [rsp + 0x98], rax
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xa8], eax
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x21], 0
	je	.label_399
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xa4], r13d
	test	ebp, ebp
	mov	dword ptr [rsp + 0xbc], ebp
	lea	rsi, [rsi]
	jns	.label_402
	nop	
	jmp	.label_407
.label_434:
	mov	ebp, dword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	cmp	ebp, 2
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb0]
	jne	.label_409
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_409
	nop	
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	cmp	byte ptr [rdx + 0x18], 0
	mov	rbp, rbp
	je	.label_412
.label_409:
	xor	r13d, r13d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	nop	
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	mov	rsp, rsp
	jmp	.label_413
.label_439:
	lea	rdi, [rdi]
	mov	r13b, 1
	lea	rdi, [rdi]
	xor	r14d, r14d
	cmp	byte ptr [rsp + 0xd0], 0
	mov	rbp, rbp
	je	.label_431
	mov	rax, qword ptr [rsp + 0xd8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x38], 0
	lea	rdi, [rdi]
	je	.label_426
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rsp, rsp
	mov	esi, r15d
	call	clone_file
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_431
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	dword ptr [rax + 0x38], 2
	lea	rdi, [rdi]
	jne	.label_426
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rax]
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r14, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 4
	nop	
	mov	rdx, qword ptr [rsp + 0xc0]
	nop	
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0xe0]
	call	quotearg_n_style
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	xor	edi, edi
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r12d
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, rbp
	nop	
	call	error
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_403
.label_399:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xa4], r13d
	test	ebp, ebp
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xbc], ebp
	js	.label_392
	mov	al, byte ptr [rbx + 0x25]
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_392
.label_402:
	movzx	esi, byte ptr [rbx + 0x25]
	xor	r14d, r14d
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	rcx, rbx
	call	set_file_security_ctx
	xor	r13d, r13d
	nop	
	cmp	byte ptr [rbx + 0x26], 0
	nop	
	jne	.label_403
.label_392:
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0xbc], 0
	nop	
	jns	.label_400
.label_407:
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x16], 0
	mov	rsp, rsp
	je	.label_400
	nop	
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	unlink
	test	eax, eax
	je	.label_408
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x98]
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r14d
	mov	rsp, rsp
	jmp	.label_413
.label_426:
	call	getpagesize
	cdqe	
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsp + 0x218]
	lea	rdi, [rdi]
	mov	ecx, 0x12
	mov	rdi, rsp
	mov	rsp, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	lea	rsi, [rsi]
	call	io_blksize
	mov	r13, rax
	mov	rax, qword ptr [rsp + 0x250]
	nop	
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	ebx, 0x200
	cmovb	rbx, rax
	lea	rsi, [rsi]
	test	rax, rax
	cmovle	rbx, rcx
	mov	rbp, rbp
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, 2
	mov	edi, r15d
	call	fdadvise
	nop	
	lea	rdi, [rsp + 0x188]
	call	is_probably_sparse
	mov	dl, al
	mov	rbp, rbp
	mov	r14d, 0xf000
	nop	
	mov	eax, dword ptr [rsp + 0x230]
	and	eax, r14d
	cmp	eax, 0x8000
	mov	rbp, rbp
	jne	.label_394
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0xc]
	nop	
	cmp	ecx, 2
	sete	al
	cmp	ecx, 3
	mov	rsp, rsp
	mov	r12b, 1
	je	.label_435
	mov	rbp, rbp
	and	al, dl
	mov	rsp, rsp
	jne	.label_414
.label_394:
	mov	byte ptr [rsp + 0xa8], dl
	movabs	rbp, 0x7fffffffffffffff
	lea	rdi, [rdi]
	sub	rbp, qword ptr [rsp + 0xd0]
	nop	
	lea	rsi, [rsp + 0x188]
	nop	
	mov	ecx, 0x12
	mov	rdi, rsp
	mov	rbp, rbp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	mov	rsp, rsp
	call	io_blksize
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, r13
	mov	rdx, rbp
	call	buffer_lcm
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	and	r14d, dword ptr [rsp + 0x1a0]
	cmp	r14d, 0x8000
	jne	.label_446
	mov	rax, qword ptr [rsp + 0x1b8]
	lea	rsi, [rsi]
	cmp	rax, r13
	lea	rax, [rax + 1]
	cmovb	r13, rax
.label_446:
	lea	rsi, [rcx + r13 - 1]
	mov	rsp, rsp
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rsi
	lea	rsi, [rsi]
	div	rcx
	mov	rbp, rbp
	mov	r13, rsi
	sub	r13, rdx
	cmp	rbp, r13
	cmovb	r13, rcx
	mov	rsp, rsp
	cmp	rsi, rdx
	mov	rbp, rbp
	cmove	r13, rcx
	xor	r12d, r12d
.label_415:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xd0]
	lea	rdi, [r13 + rbp]
	call	xmalloc
	mov	r14, rax
	mov	rdi, r14
	mov	rsi, rbp
	nop	
	call	ptr_align
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xa8], 0
	je	.label_424
	mov	rbp, rbp
	mov	eax, 1
	mov	r9, qword ptr [rsp + 0x1b8]
	test	r12b, r12b
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	je	.label_438
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax + 0xc]
.label_438:
	lea	rcx, [rsp + 0xf0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rdx
	nop	
	mov	dword ptr [rsp], eax
	mov	edi, r15d
	mov	rsp, rsp
	mov	esi, dword ptr [rsp + 0xbc]
	mov	rdx, rbp
	mov	rcx, r13
	mov	rbp, rbp
	mov	r8, rbx
	mov	rbp, rbp
	call	extent_copy
	nop	
	test	al, al
	je	.label_425
	mov	rsp, rsp
	mov	r13b, 1
	mov	ecx, 5
	lea	rsi, [rsi]
	jmp	.label_420
.label_408:
	cmp	byte ptr [rbx + 0x2e], 0
	je	.label_428
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.25_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r13, rax
	nop	
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	nop	
	call	quotearg_style
	mov	rcx, rax
	nop	
	mov	edi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, rcx
	call	__printf_chk
.label_428:
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 1
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x21], 0
	lea	rdi, [rdi]
	je	.label_423
	mov	rbp, rbp
	mov	ecx, 1
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r8, rbx
	call	set_process_security_ctx
	mov	rsp, rsp
	xor	r13d, r13d
	test	al, al
	mov	r14d, 0
	je	.label_405
.label_400:
	nop	
	mov	dword ptr [rsp + 0x98], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	nop	
	mov	r13d, dword ptr [rsp + 0xbc]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x2e0]
	jne	.label_393
	jmp	.label_441
.label_412:
	mov	rbp, rbp
	mov	byte ptr [rax], 1
	lea	rdi, [rdi]
	mov	r12d, dword ptr [rsp + 0x98]
	mov	rbp, rbp
	jmp	.label_393
.label_425:
	cmp	byte ptr [rsp + 0xf0], 0
	lea	rsi, [rsi]
	je	.label_398
.label_424:
	xor	eax, eax
	test	r12b, r12b
	cmove	rbx, rax
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	dword ptr [rax + 0xc], 3
	lea	rsi, [rsi]
	sete	al
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0xef]
	nop	
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rsp + 0xf0]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rcx
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	qword ptr [rsp], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], -1
	movzx	r9d, al
	mov	edi, r15d
	mov	esi, dword ptr [rsp + 0xbc]
	nop	
	mov	rdx, rbp
	mov	rcx, r13
	mov	r8, rbx
	lea	rdi, [rdi]
	call	sparse_copy
	mov	ecx, 3
	mov	rsp, rsp
	test	al, al
	je	.label_404
	mov	rsp, rsp
	mov	r13b, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xef], 0
	je	.label_401
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0xbc]
	call	ftruncate
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	mov	ecx, 0
	lea	rsi, [rsi]
	jns	.label_420
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	r13d, r13d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, r14
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	mov	r14, rbp
	lea	rsi, [rsi]
	call	error
	mov	ecx, 3
	nop	
	jmp	.label_420
.label_404:
	xor	r13d, r13d
	jmp	.label_420
.label_423:
	mov	rbp, rbp
	mov	r14, qword ptr [rsp + 0x2e0]
	jmp	.label_393
.label_442:
	mov	rsp, rsp
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	jmp	.label_440
.label_435:
	mov	byte ptr [rsp + 0xa8], dl
	jmp	.label_415
.label_414:
	mov	byte ptr [rsp + 0xa8], dl
	jmp	.label_415
.label_401:
	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	.label_420
.label_398:
	lea	rsi, [rsi]
	mov	ecx, 3
	xor	r13d, r13d
.label_420:
	cmp	ecx, 5
	je	.label_431
	cmp	ecx, 3
	je	.label_403
	test	ecx, ecx
	jne	.label_429
.label_431:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x1f], 0
	mov	rbp, rbp
	je	.label_410
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x2e0]
	mov	rsp, rsp
	mov	rdi, rbp
	call	get_stat_atime
	mov	qword ptr [rsp + 0xf0], rax
	nop	
	mov	qword ptr [rsp + 0xf8], rdx
	mov	rbp, rbp
	mov	rdi, rbp
	call	get_stat_mtime
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x100], rax
	mov	qword ptr [rsp + 0x108], rdx
	nop	
	lea	rdx, [rsp + 0xf0]
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	rsi, rbp
	call	fdutimens
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_410
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, r14
	mov	r14, rax
	mov	rsp, rsp
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, r12d
	mov	rdx, r14
	mov	r14, rbx
	call	error
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x24], 0
	mov	rsp, rsp
	je	.label_410
	xor	r13d, r13d
	nop	
	jmp	.label_403
.label_410:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x1d], 0
	nop	
	mov	rcx, qword ptr [rsp + 0x2e0]
	mov	rsp, rsp
	je	.label_422
	nop	
	mov	eax, dword ptr [rcx + 0x1c]
	nop	
	cmp	eax, dword ptr [rsp + 0x234]
	jne	.label_427
	mov	rsp, rsp
	mov	eax, dword ptr [rcx + 0x20]
	cmp	eax, dword ptr [rsp + 0x238]
	je	.label_422
.label_427:
	nop	
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	movzx	r8d, byte ptr [rax]
	lea	r9, [rsp + 0x218]
	mov	rdi, qword ptr [rsp + 0xd8]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	edx, dword ptr [rsp + 0xbc]
	mov	rsp, rsp
	call	set_owner
	nop	
	cmp	eax, -1
	nop	
	je	.label_433
	test	eax, eax
	jne	.label_422
	mov	rsp, rsp
	and	dword ptr [rsp + 0xcc], 0xfffff1ff
.label_422:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x27], 0
	je	.label_437
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x230], 0
	nop	
	js	.label_437
	mov	rsp, rsp
	call	geteuid
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_437
	nop	
	mov	edx, 0x180
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0xbc]
	mov	rsi, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	call	fchmod_or_lchmod
	test	eax, eax
	jne	.label_437
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x98]
	not	edx
	lea	rdi, [rdi]
	and	edx, dword ptr [rsp + 0xa4]
	mov	edi, dword ptr [rsp + 0xbc]
	nop	
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	call	fchmod_or_lchmod
.label_437:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_444
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x18], 0
	je	.label_396
.label_444:
	mov	rsp, rsp
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	esi, r15d
	mov	rdx, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0xbc]
	mov	rsp, rsp
	mov	r8d, dword ptr [rsp + 0xcc]
	call	copy_acl
	test	eax, eax
	mov	rsp, rsp
	je	.label_403
	nop	
	cmp	byte ptr [rbx + 0x24], 0
	lea	rdi, [rdi]
	je	.label_403
	xor	r13d, r13d
	jmp	.label_403
.label_433:
	xor	r13d, r13d
	jmp	.label_403
.label_396:
	cmp	byte ptr [rax + 0x2b], 0
	je	.label_411
	nop	
	mov	edx, dword ptr [rax + 0x10]
	nop	
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	mov	esi, dword ptr [rsp + 0xbc]
	nop	
	call	set_acl
	test	eax, eax
	mov	rbp, rbp
	je	.label_403
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rdi, [rdi]
	jmp	.label_403
.label_411:
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x20], 0
	mov	rbp, rax
	mov	rbp, rbp
	je	.label_417
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	byte ptr [rax], 0
	nop	
	je	.label_417
	call	cached_umask
	not	eax
	nop	
	and	eax, 0x1b6
	mov	rdi, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	mov	esi, dword ptr [rsp + 0xbc]
	lea	rsi, [rsi]
	mov	edx, eax
	call	set_acl
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_403
	mov	rsp, rsp
	xor	r13d, r13d
	lea	rsi, [rsi]
	jmp	.label_403
.label_417:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x98], 0
	mov	rbp, rbp
	je	.label_403
	call	cached_umask
	lea	rdi, [rdi]
	not	eax
	lea	rsi, [rsi]
	test	dword ptr [rsp + 0x98], eax
	je	.label_403
	nop	
	mov	r12, r14
	mov	edi, dword ptr [rsp + 0xbc]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	edx, dword ptr [rsp + 0xa4]
	call	fchmod_or_lchmod
	test	eax, eax
	mov	rbp, rbp
	je	.label_416
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, r14
	call	error
	cmp	byte ptr [rbp + 0x24], 0
	mov	rsp, rsp
	je	.label_416
	lea	rdi, [rdi]
	xor	r13d, r13d
.label_416:
	mov	rsp, rsp
	mov	r14, r12
.label_403:
	mov	edi, dword ptr [rsp + 0xbc]
	lea	rsi, [rsi]
	call	close
	lea	rdi, [rdi]
	test	eax, eax
	jns	.label_405
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbp, r14
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	esi, r14d
	mov	rsp, rsp
	mov	r14, rbp
	mov	rdx, rbx
	call	error
	jmp	.label_405
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409670

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbx
	xor	edi, edi
	mov	rsp, rsp
	call	setfscreatecon
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.75
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rcx
	nop	
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096c0

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	mov	rsp, rsp
	push	rbx
	call	lutimens
	lea	rsi, [rsi]
	mov	ebx, eax
	mov	rbp, rbp
	test	ebx, ebx
	je	.label_448
	call	__errno_location
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	cmp	dword ptr [rcx], 0x26
	mov	rbp, rbp
	je	.label_449
	mov	eax, ebx
.label_449:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_448:
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409700

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebx, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	lea	rsi, [rsi]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_450
	cmp	byte ptr [r15 + 0x1e], 0
	mov	rsp, rsp
	je	.label_459
	mov	edx, dword ptr [r9 + 0x18]
	add	rcx, 0x18
	jmp	.label_452
.label_459:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_453
	nop	
	cmp	byte ptr [r15 + 0x2b], 0
	lea	rsi, [rsi]
	je	.label_450
.label_453:
	mov	edx, dword ptr [r9 + 0x18]
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_456
	mov	rsp, rsp
	cmp	byte ptr [r15 + 0x18], 0
	lea	rsi, [rsi]
	je	.label_458
.label_456:
	mov	rsp, rsp
	add	rcx, 0x18
.label_452:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	mov	rsp, rsp
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	nop	
	and	ecx, edx
	test	cx, 0xfff
	nop	
	je	.label_450
	mov	rbp, rbp
	and	edx, eax
	mov	rsp, rsp
	and	edx, 0x1c0
	mov	rsp, rsp
	mov	rdi, r14
	mov	esi, ebx
	lea	rdi, [rdi]
	call	qset_acl
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_450
	mov	rdi, r15
	call	owner_failure_ok
	mov	rbp, rbp
	test	al, al
	lea	rdi, [rdi]
	jne	.label_462
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r14
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	xor	eax, eax
	nop	
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rbp
	call	error
.label_462:
	movzx	eax, byte ptr [r15 + 0x24]
	nop	
	neg	eax
	nop	
	jmp	.label_454
.label_450:
	cmp	ebx, -1
	je	.label_461
	mov	edi, ebx
	lea	rdi, [rdi]
	mov	esi, ebp
	lea	rdi, [rdi]
	mov	edx, r12d
	mov	rsp, rsp
	call	fchown
	nop	
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, ecx
	lea	rsi, [rsi]
	je	.label_454
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	cmp	eax, 0x16
	mov	rbp, rbp
	je	.label_460
	cmp	eax, 1
	jne	.label_451
.label_460:
	mov	rsp, rsp
	mov	r13d, dword ptr [rbp]
	mov	rsp, rsp
	mov	esi, 0xffffffff
	mov	edi, ebx
	mov	edx, r12d
	call	fchown
	mov	rsp, rsp
	mov	dword ptr [rbp], r13d
	jmp	.label_451
.label_461:
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, ebp
	mov	rbp, rbp
	mov	edx, r12d
	call	lchown
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 1
	test	ecx, ecx
	je	.label_454
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	cmp	eax, 0x16
	je	.label_455
	cmp	eax, 1
	jne	.label_451
.label_455:
	nop	
	mov	ebp, dword ptr [rbx]
	mov	rsp, rsp
	mov	esi, 0xffffffff
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
	mov	dword ptr [rbx], ebp
.label_451:
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	jne	.label_457
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	nop	
	call	error
	mov	eax, 0xffffffff
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_454
.label_457:
	lea	rdi, [rdi]
	xor	eax, eax
.label_454:
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_458:
	mov	rsp, rsp
	lea	rcx, [r15 + 0x10]
	jmp	.label_452
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099a0

	.globl writable_destination
	.type writable_destination, @function
writable_destination:
	lea	rdi, [rdi]
	push	r14
	nop	
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rsi, [rsi]
	and	esi, 0xf000
	mov	rbp, rbp
	mov	bl, 1
	cmp	esi, 0xa000
	mov	rsp, rsp
	je	.label_463
	call	can_write_any_file
	lea	rsi, [rsi]
	test	al, al
	jne	.label_463
	mov	rsp, rsp
	mov	esi, 2
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	euidaccess
	mov	rsp, rsp
	test	eax, eax
	sete	bl
.label_463:
	mov	rsp, rsp
	mov	al, bl
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a10

	.globl clone_file
	.type clone_file, @function
clone_file:
	nop	
	mov	ecx, esi
	lea	rdi, [rdi]
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edx, ecx
	lea	rsi, [rsi]
	jmp	ioctl
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a30

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	nop	
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	lea	rdi, [rdi]
	setle	al
	lea	rsi, [rsi]
	movabs	rdx, 0x2000000000000000
	cmp	rcx, rdx
	seta	dl
	cmp	rcx, 0x20000
	lea	rdi, [rdi]
	jl	.label_464
	nop	
	or	al, dl
	mov	rbp, rbp
	jne	.label_464
	movabs	rax, 0x2000000000000001
	mov	rbp, rbp
	cmp	rcx, rax
	lea	rdi, [rdi]
	mov	edx, 0x200
	lea	rsi, [rsi]
	mov	eax, 0x200
	lea	rdi, [rdi]
	cmovb	rax, rcx
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	cmovle	rax, rdx
	lea	rdi, [rdi]
	ret	
.label_464:
	mov	eax, 0x20000
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ab0

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	nop	
	cmp	eax, 0x8000
	jne	.label_465
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x30]
	mov	rcx, rax
	mov	rsp, rsp
	sar	rcx, 0x3f
	shr	rcx, 0x37
	add	rcx, rax
	mov	rsp, rsp
	sar	rcx, 9
	mov	rsp, rsp
	cmp	qword ptr [rdi + 0x40], rcx
	lea	rdi, [rdi]
	setl	al
	lea	rsi, [rsi]
	ret	
.label_465:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b00

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rcx
	lea	rdi, [rdi]
	div	rsi
	sub	rcx, rdx
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409b20

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x98
	lea	rsi, [rsi]
	mov	r14, r9
	mov	rbp, r8
	mov	qword ptr [rsp + 0x40], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rdx
	nop	
	mov	dword ptr [rsp + 0x54], esi
	nop	
	mov	dword ptr [rsp + 0x58], edi
	mov	rbx, qword ptr [rsp + 0xe8]
	lea	r15, [rsp + 0x68]
	mov	rsi, r15
	call	extent_scan_init
	mov	byte ptr [rbx], 0
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	
	cmp	dword ptr [rsp + 0xd0], 3
	cmovne	rbp, rbx
	mov	qword ptr [rsp + 0x48], rbp
	lea	rsi, [rsi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x50], eax
	xor	ebp, ebp
	xor	r13d, r13d
.label_483:
	mov	rsp, rsp
	mov	rdi, r15
	call	extent_scan_read
	test	al, al
	lea	rdi, [rdi]
	je	.label_475
	mov	r12d, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x80], 0
	mov	rbp, rbp
	mov	ecx, 0
	mov	rsi, r14
	je	.label_477
	nop	word ptr [rax + rax]
.label_490:
	mov	rax, qword ptr [rsp + 0x90]
	mov	rbp, rbp
	lea	rcx, [rcx + rcx*2]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	r15, qword ptr [rax + rcx*8 + 8]
	lea	rsi, [rsi]
	lea	rax, [r15 + r14]
	mov	rbp, rbp
	cmp	rax, rsi
	jle	.label_486
	cmp	r14, rsi
	mov	rsp, rsp
	cmovg	r14, rsi
	mov	r15, rsi
	lea	rdi, [rdi]
	sub	r15, r14
.label_486:
	mov	rsp, rsp
	mov	rbp, r14
	sub	rbp, r13
	mov	rsp, rsp
	sub	rbp, rbx
	lea	rsi, [rsi]
	jne	.label_480
	mov	rbx, rsi
	jmp	.label_476
	nop	dword ptr [rax]
.label_480:
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rbp
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rsi, r14
	nop	
	call	lseek
	test	rax, rax
	mov	rbp, rbp
	js	.label_484
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_488
	mov	edi, dword ptr [rsp + 0x54]
	nop	
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	write_zeros
	lea	rdi, [rdi]
	test	al, al
	je	.label_466
.label_476:
	mov	rsp, rsp
	xor	ebp, ebp
	jmp	.label_469
	nop	dword ptr [rax + rax]
.label_488:
	lea	rsi, [rsi]
	cmp	eax, 3
	sete	al
	lea	rdi, [rdi]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x54]
	nop	
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rsp, rsp
	call	create_hole
	lea	rdi, [rdi]
	mov	bpl, 1
	test	al, al
	je	.label_479
.label_469:
	lea	rax, [rsp + 0x5f]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [rsp + 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r15
	nop	
	mov	rax, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rax, qword ptr [rsp + 0xd8]
	mov	qword ptr [rsp], rax
	mov	r9d, 1
	mov	edi, dword ptr [rsp + 0x58]
	mov	esi, dword ptr [rsp + 0x54]
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	nop	
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r8, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	call	sparse_copy
	test	al, al
	je	.label_479
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x50], ebp
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	lea	rbp, [rdx + r14]
	lea	rsi, [rsi]
	mov	al, byte ptr [rsp + 0x5f]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rsp, rsp
	cmp	rbp, rsi
	je	.label_481
	mov	rsp, rsp
	mov	ecx, r12d
	lea	rdi, [rdi]
	inc	r12d
	cmp	rcx, qword ptr [rsp + 0x80]
	mov	rbp, rbp
	mov	r13, r14
	mov	rbx, r15
	jb	.label_490
	test	rdx, rdx
	je	.label_470
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x50], eax
	jmp	.label_470
.label_481:
	mov	rbp, rbp
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_471
	mov	dword ptr [rsp + 0x50], eax
.label_471:
	mov	byte ptr [rsp + 0x89], 1
.label_470:
	mov	r13, r14
	mov	rbx, r15
.label_477:
	mov	rbp, rbp
	mov	r14, rsi
	lea	r15, [rsp + 0x68]
	mov	rdi, r15
	call	extent_scan_free
	nop	
	cmp	byte ptr [rsp + 0x89], 0
	lea	rdi, [rdi]
	je	.label_483
	jmp	.label_487
.label_484:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xd8]
	call	quotearg_style
	mov	rsp, rsp
	jmp	.label_473
.label_466:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
.label_473:
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	nop	
	mov	rdx, rbp
	call	error
.label_479:
	lea	rdi, [rsp + 0x68]
	call	extent_scan_free
	nop	
	xor	r14d, r14d
.label_468:
	lea	rdi, [rdi]
	mov	al, r14b
	mov	rsp, rsp
	add	rsp, 0x98
	pop	rbx
	nop	
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_475:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0x89], 0
	mov	rbp, rbp
	je	.label_478
.label_487:
	lea	rdi, [rdi]
	mov	rcx, r14
	lea	rsi, [rsi]
	cmp	rbp, rcx
	mov	rbp, rbp
	jl	.label_482
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x50]
	and	al, 1
	lea	rsi, [rsi]
	je	.label_485
.label_482:
	mov	eax, dword ptr [rsp + 0xd0]
	cmp	eax, 1
	jne	.label_489
	nop	
	sub	rcx, rbp
	mov	edi, dword ptr [rsp + 0x54]
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	call	write_zeros
	mov	rsp, rsp
	mov	r14b, 1
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	jne	.label_468
	lea	rdi, [rdi]
	jmp	.label_472
.label_478:
	nop	
	cmp	byte ptr [rsp + 0x88], 0
	lea	rdi, [rdi]
	je	.label_474
	mov	rax, qword ptr [rsp + 0xe8]
	mov	byte ptr [rax], 1
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_468
.label_489:
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, rcx
	mov	rbx, rcx
	nop	
	call	ftruncate
	lea	rsi, [rsi]
	mov	rcx, rbx
	test	eax, eax
	mov	rbp, rbp
	je	.label_485
.label_472:
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.66
	nop	
	jmp	.label_491
.label_485:
	mov	rsp, rsp
	cmp	dword ptr [rsp + 0xd0], 3
	mov	r14b, 1
	lea	rsi, [rsi]
	jne	.label_468
	lea	rdi, [rdi]
	cmp	rbp, rcx
	lea	rsi, [rsi]
	jge	.label_468
	sub	rcx, rbp
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x54]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, rcx
	call	punch_hole
	test	eax, eax
	jns	.label_468
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
.label_491:
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xe0]
	call	quotearg_style
	lea	rsi, [rsi]
	jmp	.label_467
.label_474:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	nop	
	xor	r14d, r14d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xd8]
	nop	
	call	quotearg_n_style_colon
.label_467:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
	jmp	.label_468
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a070

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	dword ptr [rsp + 0x24], r9d
	mov	r15, r8
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x10], rcx
	nop	
	mov	r14, rdx
	mov	qword ptr [rsp + 0x50], r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x34], esi
	lea	rsi, [rsi]
	mov	r13d, edi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x4c], r13d
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb0]
	nop	
	mov	byte ptr [rax], 0
	mov	qword ptr [rdx], 0
	lea	rdi, [rdi]
	test	r15, r15
	nop	
	mov	rax, rcx
	lea	rsi, [rsi]
	cmovne	rax, r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_510
.label_506:
	mov	qword ptr [rsp + 0x40], rdi
	mov	qword ptr [rsp + 0x58], rsi
	mov	rax, qword ptr [rsp + 0xc0]
	mov	byte ptr [rax], r8b
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x60]
	nop	word ptr cs:[rax + rax]
.label_510:
	mov	qword ptr [rsp + 0x60], rsi
	lea	rsi, [rsi]
	cmp	rsi, rcx
	mov	rbp, rbp
	mov	r12, rcx
	cmovb	r12, rsi
	nop	word ptr cs:[rax + rax]
.label_494:
	test	rsi, rsi
	je	.label_500
	mov	rbp, rbp
	mov	edi, r13d
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r12
	call	read
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	jns	.label_512
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	je	.label_494
	jmp	.label_497
	nop	word ptr cs:[rax + rax]
.label_512:
	mov	rsp, rsp
	je	.label_500
	lea	rdi, [rdi]
	sub	qword ptr [rsp + 0x60], rbx
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	nop	
	add	qword ptr [rax], rbx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x58]
	nop	
	mov	r8b, sil
	lea	rsi, [rsi]
	and	r8b, 1
	mov	qword ptr [rsp + 0x38], r14
	mov	rbp, r14
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x40]
	nop	dword ptr [rax + rax]
.label_502:
	mov	r9b, r8b
	cmp	r12, rbx
	lea	rsi, [rsi]
	cmovae	r12, rbx
	test	r15, r15
	mov	rbp, rbp
	je	.label_492
	nop	
	test	r12, r12
	mov	rbp, rbp
	je	.label_492
	mov	rsp, rsp
	mov	r14, rdi
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	r13b, r9b
	nop	
	call	is_nul
	lea	rsi, [rsi]
	mov	r9b, r13b
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	sil, al
.label_492:
	mov	r8b, sil
	mov	rbp, rbp
	and	r8b, 1
	movzx	eax, r9b
	lea	rsi, [rsi]
	movzx	ecx, r8b
	cmp	ecx, eax
	mov	rsp, rsp
	setne	al
	test	rdi, rdi
	setne	r13b
	nop	
	cmp	rbx, r12
	sete	dl
	test	cl, cl
	sete	cl
	and	cl, dl
	test	r12, r12
	mov	rsp, rsp
	sete	r14b
	lea	rsi, [rsi]
	or	r14b, cl
	and	r13b, al
	lea	rsi, [rsi]
	jne	.label_496
	test	r14b, r14b
	mov	rbp, rbp
	jne	.label_496
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	sub	rax, r12
	cmp	rdi, rax
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x50]
	mov	r13d, dword ptr [rsp + 0x4c]
	lea	rdi, [rdi]
	ja	.label_498
	lea	rsi, [rsi]
	add	rdi, r12
	nop	
	jmp	.label_503
	nop	word ptr cs:[rax + rax]
.label_496:
	mov	byte ptr [rsp + 0x40], r8b
	mov	qword ptr [rsp + 0x58], rsi
	mov	rbp, rbp
	test	r13b, 1
	mov	r15, r12
	mov	eax, 0
	cmovne	r15, rax
	add	r15, rdi
	mov	rbp, rbp
	test	r9b, r9b
	mov	rbp, rbp
	je	.label_509
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x24]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rcx, r15
	nop	
	call	create_hole
	test	al, al
	lea	rdi, [rdi]
	jne	.label_499
	jmp	.label_501
.label_509:
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	rsp, rsp
	call	full_write
	mov	rsp, rsp
	cmp	rax, r15
	lea	rsi, [rsi]
	jne	.label_504
.label_499:
	test	r14b, r14b
	nop	
	mov	rsi, qword ptr [rsp + 0x58]
	mov	r8b, byte ptr [rsp + 0x40]
	je	.label_508
	mov	rsp, rsp
	test	r12, r12
	nop	
	cmove	rbx, r12
	nop	
	and	r13b, 1
	mov	rax, r12
	mov	ecx, 0
	mov	rbp, rbp
	cmovne	rax, rcx
	test	r13b, r13b
	cmove	r12, rcx
	mov	rdi, r12
	mov	rbp, rbp
	mov	r12, rax
	lea	rsi, [rsi]
	jmp	.label_511
	nop	dword ptr [rax]
.label_508:
	mov	rbp, rbp
	mov	rdi, r12
.label_511:
	nop	
	mov	qword ptr [rsp + 0x38], rbp
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x28]
	mov	r14, qword ptr [rsp + 0x50]
	mov	r13d, dword ptr [rsp + 0x4c]
.label_503:
	add	rbp, r12
	sub	rbx, r12
	jne	.label_502
	lea	rsi, [rsi]
	jmp	.label_506
.label_500:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	test	al, 1
	mov	rsp, rsp
	je	.label_507
	mov	eax, dword ptr [rsp + 0x24]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	create_hole
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_493
.label_507:
	mov	rbp, rbp
	mov	r14b, 1
	jmp	.label_495
.label_497:
	xor	r14d, r14d
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.72
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebp
	lea	rdi, [rdi]
	jmp	.label_505
.label_493:
	nop	
	xor	r14d, r14d
	jmp	.label_495
.label_498:
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.74
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa0]
	call	quotearg_style
	nop	
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
.label_505:
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	error
.label_495:
	lea	rsi, [rsi]
	mov	al, r14b
	add	rsp, 0x68
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_501:
	nop	
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_495
.label_504:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xa8]
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rbp, rbp
	jmp	.label_495
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a540

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	mov	rsp, rsp
	test	edi, edi
	js	.label_513
	mov	esi, edx
	lea	rdi, [rdi]
	jmp	fchmod
.label_513:
	mov	rbp, rbp
	mov	rdi, rsi
	lea	rdi, [rdi]
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a570

	.globl extent_scan_free
	.type extent_scan_free, @function
extent_scan_free:
	push	rbx
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	qword ptr [rbx + 0x18], 0
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5a0

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rcx
	nop	
	mov	r12d, edx
	mov	r14, rsi
	mov	rsp, rsp
	mov	ebp, edi
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	call	lseek
	test	rax, rax
	js	.label_515
	mov	r15b, 1
	mov	rbp, rbp
	test	r12b, r12b
	mov	rbp, rbp
	je	.label_514
	sub	rax, rbx
	mov	edi, ebp
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rbp, rbp
	call	punch_hole
	mov	rsp, rsp
	test	eax, eax
	nop	
	jns	.label_514
	call	__errno_location
	nop	
	mov	ebx, dword ptr [rax]
	nop	
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.71
	nop	
	jmp	.label_516
.label_515:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	r15d, r15d
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.69
.label_516:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_514:
	mov	rbp, rbp
	mov	al, r15b
	pop	rbx
	pop	r12
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a690

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r14d, edi
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_517
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	rbp, rbp
	mov	esi, 1
	mov	rsp, rsp
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	nop	
	test	rax, rax
	jne	.label_517
	nop	
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
	nop	word ptr cs:[rax + rax]
.label_517:
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_518
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	eax, 0x400
	mov	ebp, 0x20000
	cmovne	rbp, rax
	mov	rsp, rsp
	cmp	rbp, rbx
	mov	rsp, rsp
	cmovae	rbp, rbx
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, r14d
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	call	full_write
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rcx, rbp
	mov	rsp, rsp
	mov	edx, 0
	mov	rsp, rsp
	cmove	rdx, rbp
	sub	rbx, rdx
	lea	rsi, [rsi]
	cmp	rcx, rbp
	lea	rdi, [rdi]
	je	.label_517
.label_518:
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a790

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	nop	
	mov	esi, 3
	nop	
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	call	fallocate
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_519
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rbp, rbp
	call	is_ENOTSUP
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	ebp, 0x26
	cmove	ebx, ecx
	test	al, al
	lea	rdi, [rdi]
	cmovne	ebx, ecx
.label_519:
	lea	rsi, [rsi]
	mov	eax, ebx
	lea	rdi, [rdi]
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a800

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	mov	rbp, rbp
	cmp	edi, 0x5f
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a810

	.globl is_nul
	.type is_nul, @function
is_nul:
	lea	rdi, [rdi]
	mov	rcx, rsi
	nop	
	mov	al, 1
	nop	
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_520
	dec	rcx
	mov	rsi, rdi
	nop	dword ptr [rax + rax]
.label_522:
	cmp	byte ptr [rsi], 0
	mov	rbp, rbp
	jne	.label_521
	test	rcx, rcx
	je	.label_520
	nop	
	inc	rsi
	mov	dl, cl
	dec	rcx
	nop	
	test	dl, 0xf
	jne	.label_522
	mov	rbp, rbp
	push	rax
	inc	rcx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	sete	al
	lea	rsi, [rsi]
	add	rsp, 8
.label_520:
	nop	
	ret	
.label_521:
	lea	rsi, [rsi]
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a880

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	call	__errno_location
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	nop	
	cmp	eax, 0x16
	je	.label_523
	cmp	eax, 1
	jne	.label_524
.label_523:
	cmp	byte ptr [rbx + 0x1b], 0
	mov	rsp, rsp
	sete	al
	pop	rbx
	lea	rdi, [rdi]
	ret	
.label_524:
	xor	eax, eax
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a8b0

	.globl forget_created
	.type forget_created, @function
forget_created:
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rsi
	nop	
	mov	qword ptr [rsp + 0x10], 0
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_525
	mov	rbp, rbp
	mov	rdi, rax
	call	src_to_dest_free
.label_525:
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a900

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a930

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	mov	rbp, rbp
	call	hash_lookup
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	eax, eax
	test	rcx, rcx
	nop	
	je	.label_526
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0x10]
.label_526:
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a980

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	lea	rsi, [rsi]
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	call	xstrdup
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], r14
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	mov	rbp, rbp
	mov	rsi, rbx
	call	hash_insert
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_528
	xor	eax, eax
	cmp	r14, rbx
	je	.label_527
	mov	rdi, rbx
	mov	rsp, rsp
	call	src_to_dest_free
	mov	rax, qword ptr [r14 + 0x10]
.label_527:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
.label_528:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40aa20

	.globl hash_init
	.type hash_init, @function
hash_init:
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	edi, 0x67
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:src_to_dest_hash
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	nop	
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + src_to_dest]],  rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_529
	mov	rsp, rsp
	pop	rax
	lea	rsi, [rsi]
	ret	
.label_529:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa70

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40aa80

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsi]
	lea	rdi, [rdi]
	jne	.label_530
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	ret	
.label_530:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aab0
	.globl forget_all
	.type forget_all, @function
forget_all:

	nop
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40aac0

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	rbp, rbp
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	lea	rdi, [rdi]
	mov	dword ptr [rsi + 0x10], 1
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aaf0

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x1008
	mov	r12, rdi
	mov	r14, qword ptr [r12 + 0x28]
	movabs	r15, 0x7fffffffffffffff
	xor	r13d, r13d
.label_541:
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 0x1000
	nop	
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	memset
	nop	
	mov	rax, qword ptr [r12 + 8]
	nop	
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r12 + 0x10]
	mov	dword ptr [rsp + 0x18], ecx
	mov	dword ptr [rsp + 0x20], 0x48
	not	rax
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	edi, dword ptr [r12]
	mov	esi, 0xc020660b
	xor	eax, eax
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	ioctl
	test	eax, eax
	js	.label_531
	mov	eax, dword ptr [rsp + 0x1c]
	test	rax, rax
	je	.label_532
	mov	rsi, qword ptr [r12 + 0x18]
	lea	rdi, [rdi]
	mov	rcx, rax
	not	rcx
	cmp	rsi, rcx
	ja	.label_539
	lea	rdi, [rdi]
	add	rsi, rax
	mov	qword ptr [r12 + 0x18], rsi
	nop	
	mov	rdi, qword ptr [r12 + 0x28]
	sub	r14, rdi
	lea	rdi, [rdi]
	mov	edx, 0x18
	call	xnrealloc
	mov	qword ptr [r12 + 0x28], rax
	add	r14, rax
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_536
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r8d, dword ptr [rsp + 0x1c]
	nop	word ptr [rax + rax]
.label_537:
	nop	
	mov	ecx, eax
	imul	rdi, rcx, 0x38
	mov	rbx, qword ptr [rsp + rdi + 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + rdi + 0x38]
	mov	rdx, r15
	sub	rdx, rcx
	cmp	rbx, rdx
	ja	.label_543
	nop	
	lea	rsi, [rsp + rdi + 0x28]
	mov	rsp, rsp
	lea	r9, [rsp + rdi + 0x38]
	lea	rsi, [rsi]
	test	r13d, r13d
	je	.label_545
	mov	ebp, dword ptr [rsp + rdi + 0x50]
	and	ebp, 0xfffffffe
	cmp	dword ptr [r14 + 0x10], ebp
	lea	rsi, [rsi]
	jne	.label_542
	mov	rbp, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r14]
	lea	rsi, [rsi]
	add	rdx, rbp
	cmp	rdx, rbx
	mov	rsp, rsp
	jne	.label_542
	lea	rdx, [rsp + rdi + 0x50]
	lea	rsi, [rsi]
	add	rbp, rcx
	mov	qword ptr [r14 + 8], rbp
	mov	ecx, dword ptr [rdx]
	mov	rsp, rsp
	mov	dword ptr [r14 + 0x10], ecx
	lea	rsi, [rsi]
	jmp	.label_548
	nop	word ptr cs:[rax + rax]
.label_542:
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 8]
	add	rcx, qword ptr [r14]
	cmp	rcx, qword ptr [rsi]
	mov	rbp, rbp
	jbe	.label_535
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	add	rcx, qword ptr [r14]
	mov	rbp, rbp
	jmp	.label_538
	nop	word ptr cs:[rax + rax]
.label_545:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12 + 8]
	nop	
	cmp	rcx, qword ptr [rsi]
	mov	rsp, rsp
	jbe	.label_535
	mov	rbp, rbp
	mov	rcx, qword ptr [r12 + 8]
.label_538:
	mov	rdi, rcx
	lea	rsi, [rsi]
	sub	rdi, qword ptr [rsi]
	lea	rdi, [rdi]
	cmp	rdi, qword ptr [r9]
	nop	
	jb	.label_547
	mov	qword ptr [rsi], rcx
	sub	qword ptr [r9], rdi
	dec	eax
	mov	rsp, rsp
	jmp	.label_548
	nop	dword ptr [rax]
.label_535:
	mov	rsp, rsp
	mov	rcx, qword ptr [r12 + 0x28]
	lea	rdi, [rdi]
	mov	edx, r13d
	lea	rdx, [rdx + rdx*2]
	lea	rdi, [rdi]
	lea	r14, [rcx + rdx*8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rdx*8], rsi
	mov	rsi, qword ptr [r9]
	mov	qword ptr [rcx + rdx*8 + 8], rsi
	mov	esi, dword ptr [rsp + rdi + 0x50]
	nop	
	mov	dword ptr [rcx + rdx*8 + 0x10], esi
	lea	rsi, [rsi]
	inc	r13d
.label_548:
	nop	
	inc	eax
	cmp	eax, r8d
	jb	.label_537
.label_536:
	nop	
	test	byte ptr [r14 + 0x10], 1
	je	.label_546
	lea	rsi, [rsi]
	mov	byte ptr [r12 + 0x21], 1
.label_546:
	mov	rsp, rsp
	cmp	r13d, 0x49
	jb	.label_534
	cmp	byte ptr [r12 + 0x21], 0
	jne	.label_534
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x28]
	dec	r13d
	lea	rdi, [rdi]
	lea	rcx, [r13 + r13*2]
	nop	
	lea	r14, [rax + rcx*8 - 0x18]
	nop	word ptr cs:[rax + rax]
.label_534:
	mov	eax, r13d
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x18], rax
	cmp	byte ptr [r12 + 0x21], 0
	jne	.label_544
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 8]
	add	rax, qword ptr [r14]
	mov	qword ptr [r12 + 8], rax
	mov	al, 1
	cmp	r13d, 0x48
	jb	.label_541
	jmp	.label_533
.label_547:
	cmp	qword ptr [r12 + 8], 0
	je	.label_540
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	.label_533
.label_531:
	cmp	qword ptr [r12 + 8], 0
	nop	
	je	.label_540
	mov	rbp, rbp
	xor	eax, eax
	jmp	.label_533
.label_540:
	mov	byte ptr [r12 + 0x20], 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_533
.label_532:
	mov	byte ptr [r12 + 0x21], 1
	cmp	qword ptr [r12 + 8], 0
	mov	rbp, rbp
	setne	al
	lea	rsi, [rsi]
	jmp	.label_533
.label_544:
	mov	al, 1
.label_533:
	add	rsp, 0x1008
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_543:
	mov	edi, OFFSET FLAT:.str.2_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
.label_539:
	mov	edi, OFFSET FLAT:.str_2
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 0x7e
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.extent_scan_read
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae50

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x128
	nop	
	mov	ebx, r9d
	mov	r12d, r8d
	mov	qword ptr [rsp], rcx
	mov	rbp, rbp
	mov	r13d, edx
	mov	r14, rsi
	mov	r15d, edi
	nop	
	mov	ebp, dword ptr [rsp + 0x160]
	test	ebp, ebp
	lea	rdi, [rdi]
	jns	.label_551
	mov	edi, r15d
	lea	rdi, [rdi]
	mov	rsi, r14
	nop	
	mov	edx, r13d
	mov	rcx, qword ptr [rsp]
	mov	r8d, r12d
	call	linkat
	lea	rsi, [rsi]
	xor	ebp, ebp
	mov	rsp, rsp
	test	eax, eax
	je	.label_550
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
.label_551:
	cmp	ebp, 0x11
	nop	
	jne	.label_550
	lea	rdi, [rdi]
	xor	bl, 1
	jne	.label_550
	mov	rsp, rsp
	lea	rbp, [rsp + 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp]
	nop	
	mov	rsi, rbp
	nop	
	call	samedir_template
	mov	rbx, rax
	test	rbx, rbx
	nop	
	je	.label_553
	mov	dword ptr [rsp + 8], r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], r13d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x1c], r12d
	lea	rdx, [rsp + 8]
	lea	rsi, [rsi]
	xor	esi, esi
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:try_link
	nop	
	mov	r8d, 6
	nop	
	mov	rdi, rbx
	mov	rsp, rsp
	call	try_tempname_len
	mov	rbp, rbp
	mov	r15, rbp
	test	eax, eax
	je	.label_554
	lea	rdi, [rdi]
	call	__errno_location
	nop	
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_552
.label_553:
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	jmp	.label_550
.label_554:
	mov	rsp, rsp
	mov	edi, r13d
	mov	rsi, rbx
	lea	rdi, [rdi]
	mov	edx, r13d
	mov	rcx, qword ptr [rsp]
	lea	rdi, [rdi]
	call	renameat
	mov	rsp, rsp
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_549
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_549:
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbx
	call	unlinkat
.label_552:
	cmp	rbx, r15
	je	.label_550
	mov	rdi, rbx
	call	free
.label_550:
	mov	eax, ebp
	lea	rdi, [rdi]
	add	rsp, 0x128
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40afe0

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	mov	r14, rsi
	nop	
	mov	r15, rdi
	call	last_component
	lea	rdi, [rdi]
	mov	rbx, rax
	sub	rbx, r15
	lea	rsi, [rsi]
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jb	.label_555
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	mov	r14, rax
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	test	r14, r14
	je	.label_556
.label_555:
	mov	rbp, rbp
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r15
	nop	
	mov	rdx, rbx
	nop	
	call	__mempcpy_chk
	lea	rdi, [rdi]
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	mov	rax, r14
.label_556:
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b070

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + 8]
	mov	edx, dword ptr [rsi + 0x10]
	mov	rsp, rsp
	mov	r8d, dword ptr [rsi + 0x14]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b0a0

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x118
	mov	rsp, rsp
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	r15d, esi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rbp, rbp
	test	ebp, ebp
	lea	rdi, [rdi]
	jns	.label_561
	mov	rdi, r14
	mov	rsp, rsp
	mov	esi, r15d
	mov	rdx, r13
	mov	rbp, rbp
	call	symlinkat
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_558
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
.label_561:
	mov	rbp, rbp
	cmp	ebp, 0x11
	lea	rsi, [rsi]
	jne	.label_558
	xor	bl, 1
	jne	.label_558
	lea	rbx, [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	call	samedir_template
	mov	r12, rax
	test	r12, r12
	je	.label_559
	mov	rbp, rbp
	mov	qword ptr [rsp], r14
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 8], r15d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	mov	rbp, rbp
	call	try_tempname_len
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_557
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	jmp	.label_560
.label_559:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_558
.label_557:
	mov	edi, r15d
	mov	rsi, r12
	mov	rsp, rsp
	mov	edx, r15d
	mov	rcx, r13
	mov	rbp, rbp
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	mov	rbp, rbp
	je	.label_560
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, r15d
	mov	rbp, rbp
	mov	rsi, r12
	mov	rsp, rsp
	call	unlinkat
.label_560:
	cmp	r12, rbx
	je	.label_558
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
.label_558:
	lea	rsi, [rsi]
	mov	eax, ebp
	add	rsp, 0x118
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b200

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsi]
	mov	rsp, rsp
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b220

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	nop	
	cmp	ebp, -1
	je	.label_563
	mov	rbp, rbp
	cmp	ebp, -2
	jne	.label_562
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, r14d
	nop	
	jmp	.label_564
.label_563:
	call	__errno_location
	lea	rdi, [rdi]
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	nop	
	mov	rdx, rbx
.label_564:
	call	error
.label_562:
	nop	
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b2d0

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	r14, rdi
	lea	rdi, [rdi]
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	mov	rbp, rbp
	je	.label_565
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	call	quote
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r15d
	nop	
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	error
.label_565:
	lea	rsi, [rsi]
	mov	eax, ebx
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b360

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	mov	rbp, rbp
	cmovb	r12, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	malloc
	mov	rbx, rax
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_571
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	movabs	r15, 0x7fffffffffffffff
	nop	word ptr cs:[rax + rax]
.label_572:
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	call	readlink
	mov	r13, rax
	nop	
	test	r13, r13
	mov	rbp, rbp
	jns	.label_574
	call	__errno_location
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	mov	rsp, rsp
	jne	.label_567
.label_574:
	mov	rsp, rsp
	cmp	r13, r12
	nop	
	jb	.label_570
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, r12
	mov	rsp, rsp
	shr	rax, 0x3e
	mov	rbp, rbp
	jne	.label_573
	add	r12, r12
	nop	
	jmp	.label_566
	nop	dword ptr [rax + rax]
.label_573:
	cmp	r12, r15
	mov	rsp, rsp
	mov	r12, r15
	jae	.label_568
.label_566:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	malloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_572
	mov	rsp, rsp
	jmp	.label_571
.label_570:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_571
.label_568:
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	jmp	.label_569
.label_567:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	free
	mov	dword ptr [rbp], r14d
.label_569:
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_571:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b4e0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	16
	#Procedure 0x40b4f0

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
	je	.label_577
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
.label_580:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_575
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_579
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_576
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_578
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
	je	.label_575
.label_578:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_575
.label_576:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_575:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_580
	lea	rsi, [rsi]
	jmp	.label_581
.label_577:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_581:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_579:
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
	.align	16
	#Procedure 0x40b670

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
	je	.label_582
	mov	esi, OFFSET FLAT:.str.1_3
	nop	
	jmp	.label_583
.label_582:
	nop	
	mov	esi, OFFSET FLAT:.str_4
.label_583:
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
	.align	16
	#Procedure 0x40b710

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
	mov	esi, OFFSET FLAT:.str.2_3
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
	je	.label_586
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_585:
	test	rbp, rbp
	je	.label_584
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_588
.label_584:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_587
	nop	
.label_588:
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
.label_587:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	mov	rsp, rsp
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_585
.label_586:
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
	.align	16
	#Procedure 0x40b860

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
	jns	.label_589
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
.label_589:
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
	.align	16
	#Procedure 0x40b900
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
	je	.label_590
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_591:
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
	je	.label_590
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_591
.label_590:
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
	.align	16
	#Procedure 0x40b990

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	jne	.label_592
	mov	edi, OFFSET FLAT:.str_5
	call	getenv
	nop	
	mov	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_593
.label_592:
	mov	eax, OFFSET FLAT:.str.1_4
	cmp	byte ptr [rbx], 0
	je	.label_593
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	last_component
	nop	
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:.str.1_4
	nop	
	cmove	rax, rbx
.label_593:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b9f0

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x34], ecx
	mov	ebx, edx
	mov	r13, rsi
	mov	dword ptr [rsp + 0x1c], edi
	mov	rdi, r13
	mov	rsp, rsp
	call	last_component
	mov	rbp, rax
	sub	rbp, r13
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	mov	rbp, rbp
	add	r12, rbp
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + simple_backup_suffix]],  0
	nop	
	jne	.label_602
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	call	set_simple_backup_suffix
.label_602:
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	call	strlen
	lea	rsi, [rsi]
	inc	rax
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	cmp	rax, 9
	lea	rdi, [rdi]
	mov	ecx, 9
	lea	rdi, [rdi]
	cmovae	rcx, rax
	lea	rdi, [r12 + rcx + 1]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdi
	nop	
	call	malloc
	mov	rbp, rbp
	mov	rcx, rax
	mov	qword ptr [rsp + 0x50], rcx
	xor	eax, eax
	test	rcx, rcx
	je	.label_597
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x48], 0
	mov	dword ptr [rsp + 0x44], 0xffffffff
	nop	
	mov	qword ptr [rsp + 0x38], 0
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x28], rax
	nop	word ptr cs:[rax + rax]
.label_601:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	nop	
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	nop	
	cmp	ebx, 1
	nop	
	jne	.label_605
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	memcpy
	mov	ebx, 1
	jmp	.label_600
	nop	dword ptr [rax]
.label_605:
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x44]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x1c]
	nop	
	lea	rsi, [rsp + 0x50]
	nop	
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rcx, r12
	nop	
	mov	r8, rbp
	lea	rdi, [rdi]
	lea	r9, [rsp + 0x48]
	mov	rbp, rbp
	call	numbered_backup
	mov	rbp, rbp
	cmp	eax, 1
	lea	rsi, [rsi]
	je	.label_596
	lea	rsi, [rsi]
	cmp	eax, 2
	je	.label_604
	cmp	eax, 3
	mov	rbp, rbp
	jne	.label_600
	lea	rsi, [rsi]
	jmp	.label_594
.label_604:
	cmp	ebx, 2
	jne	.label_596
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	add	rdi, r12
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x20]
	nop	
	call	memcpy
	mov	rbp, rbp
	mov	ebx, 1
.label_596:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rsp + 0x44]
	lea	rsi, [rsi]
	mov	rsi, r12
	lea	rdi, [rdi]
	lea	rcx, [rsp + 0x38]
	call	check_extension
.label_600:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x34]
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_599
	cmp	dword ptr [rsp + 0x44], 0
	lea	rdi, [rdi]
	jns	.label_603
	nop	
	mov	dword ptr [rsp + 0x44], 0xffffff9c
	xor	ebp, ebp
.label_603:
	cmp	ebx, 1
	setne	al
	movzx	r8d, al
	mov	edx, dword ptr [rsp + 0x44]
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rbp, rbp
	add	rcx, rbp
	lea	rdi, [rdi]
	mov	edi, 0xffffff9c
	nop	
	mov	rsi, r13
	call	renameatu
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_599
	call	__errno_location
	mov	r15, rax
	lea	rsi, [rsi]
	mov	r14d, dword ptr [r15]
	lea	rdi, [rdi]
	cmp	r14d, 0x11
	lea	rsi, [rsi]
	je	.label_601
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_598
	mov	rbp, rbp
	call	closedir
.label_598:
	nop	
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	dword ptr [r15], r14d
	xor	eax, eax
	nop	
	jmp	.label_597
.label_599:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	je	.label_595
	call	closedir
.label_595:
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	jmp	.label_597
.label_594:
	mov	rdi, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
.label_597:
	add	rsp, 0x58
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bcf0

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	nop	
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x58
	lea	rdi, [rdi]
	mov	r15, r9
	mov	qword ptr [rsp + 0x48], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x28], rsi
	mov	ebx, edi
	nop	
	mov	r12, qword ptr [r15]
	mov	r14, qword ptr [rsi]
	lea	rbp, [r14 + r8]
	mov	rsp, rsp
	mov	rdi, rbp
	call	base_len
	mov	r13, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], r13
	lea	rdi, [rdi]
	test	r12, r12
	je	.label_614
	mov	rdi, r12
	call	rewinddir
	nop	
	jmp	.label_618
.label_614:
	mov	qword ptr [rsp + 0x38], r13
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rsp, rsp
	mov	r13w, word ptr [rbp]
	mov	word ptr [rbp], 0x2e
	xor	edx, edx
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	rsi, r14
	lea	rdi, [rdi]
	call	opendirat
	mov	r12, rax
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_606
	lea	rdi, [rdi]
	mov	word ptr [rbp], r13w
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	byte ptr [rbp + r13 + 4], 0
	mov	rsp, rsp
	mov	dword ptr [rbp + r13], 0x7e317e2e
	mov	rsp, rsp
	mov	qword ptr [r15], r12
.label_618:
	nop	
	mov	rdi, r12
	call	readdir
	nop	
	mov	rbp, rax
	test	rbp, rbp
	je	.label_616
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	lea	rax, [r13 + 2]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax + 4]
	mov	qword ptr [rsp], rax
	nop	
	lea	rax, [r13 + 0x17]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 8], rax
	jmp	.label_608
.label_625:
	lea	rdi, [rdi]
	mov	r13d, 1
.label_622:
	movzx	eax, al
	cmp	eax, 0x7e
	mov	rbp, rbp
	jne	.label_612
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbp, [rbp + rax + 0x15]
	cmp	byte ptr [r13 + rbp + 1], 0
	jne	.label_612
	cmp	qword ptr [rsp + 8], r13
	jb	.label_617
	jne	.label_612
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbp
	lea	rdi, [rdi]
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	jle	.label_617
.label_612:
	mov	rsp, rsp
	mov	r15, r14
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x38]
	nop	
	jmp	.label_619
.label_617:
	lea	rsi, [rsi]
	movzx	ebx, bl
	lea	rcx, [rbx + r13]
	mov	qword ptr [rsp + 8], rcx
	mov	rax, qword ptr [rsp]
	lea	rdx, [rax + rcx]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, rdx
	jae	.label_607
	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rdi, [rdi]
	shr	rax, 0x3e
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	shl	rdx, cl
	nop	
	mov	qword ptr [rsp + 0x18], rdx
	mov	rdi, r14
	mov	rsi, rdx
	nop	
	call	realloc
	lea	rdi, [rdi]
	mov	r15, rax
	mov	rsp, rsp
	test	r15, r15
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jne	.label_623
	lea	rdi, [rdi]
	jmp	.label_624
.label_607:
	mov	r15, r14
.label_623:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [r15 + rcx]
	mov	rbp, rbp
	mov	byte ptr [r15 + rcx], 0x2e
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdx
	lea	rdi, [rdi]
	lea	rbx, [rax + rdx]
	lea	rsi, [rsi]
	mov	word ptr [r15 + rcx + 1], 0x307e
	mov	rbp, rbp
	lea	rdi, [rdx + rax + 2]
	nop	
	lea	rdx, [r13 + 2]
	mov	rsi, rbp
	lea	rsi, [rsi]
	call	memcpy
	mov	rbp, rbp
	lea	rax, [r13 + rbx + 1]
	nop	
	movzx	ecx, byte ptr [r13 + rbx + 1]
	lea	rdi, [rdi]
	jmp	.label_610
	nop	dword ptr [rax]
.label_621:
	mov	rsp, rsp
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	nop	
	dec	rax
.label_610:
	mov	rbp, rbp
	cmp	ecx, 0x39
	lea	rdi, [rdi]
	je	.label_621
	inc	cl
	mov	byte ptr [rax], cl
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_619
	nop	word ptr [rax + rax]
.label_608:
	nop	
	lea	rbx, [rbp + 0x13]
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	strlen
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x50]
	jb	.label_611
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [r14 + rax]
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_611
	mov	rbp, rbp
	mov	al, byte ptr [rbp + r13 + 0x15]
	mov	rbp, rbp
	mov	cl, al
	nop	
	add	cl, 0xcf
	lea	rdi, [rdi]
	movzx	ecx, cl
	nop	
	cmp	ecx, 8
	mov	rsp, rsp
	ja	.label_611
	lea	rcx, [rbp + r13 + 0x13]
	movzx	eax, al
	cmp	eax, 0x39
	nop	
	sete	bl
	movsx	eax, byte ptr [rcx + 3]
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	add	ecx, -0x30
	nop	
	cmp	ecx, 9
	ja	.label_625
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	lea	rcx, [rbp + rcx]
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_615:
	movzx	eax, al
	mov	rsp, rsp
	cmp	eax, 0x39
	lea	rdi, [rdi]
	sete	al
	and	bl, al
	mov	rbp, rbp
	movsx	eax, byte ptr [rcx + r13]
	nop	
	mov	edx, eax
	nop	
	add	edx, -0x30
	lea	rdi, [rdi]
	inc	r13
	lea	rsi, [rsi]
	cmp	edx, 0xa
	nop	
	jb	.label_615
	inc	r13
	mov	rsp, rsp
	jmp	.label_622
	nop	word ptr [rax + rax]
.label_611:
	lea	rdi, [rdi]
	mov	r15, r14
.label_619:
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	readdir
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	mov	r14, r15
	jne	.label_608
	jmp	.label_613
.label_616:
	mov	eax, 2
	mov	qword ptr [rsp + 0x30], rax
	mov	r15, r14
.label_613:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rax], r15
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
.label_609:
	mov	eax, ecx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_606:
	nop	
	call	__errno_location
	mov	ecx, 3
	cmp	dword ptr [rax], 0xc
	nop	
	je	.label_620
	mov	ecx, 2
.label_620:
	nop	
	mov	word ptr [rbp], r13w
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax + 4], 0
	nop	
	mov	dword ptr [rbp + rax], 0x7e317e2e
	jmp	.label_609
.label_624:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rax], r14
	lea	rsi, [rsi]
	mov	ecx, 3
	jmp	.label_609
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c130

	.globl check_extension
	.type check_extension, @function
check_extension:
	lea	rsi, [rsi]
	push	rbp
	nop	
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r12, rcx
	nop	
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	call	last_component
	mov	r14, rax
	nop	
	mov	rdi, r14
	lea	rdi, [rdi]
	call	base_len
	mov	rbp, rbp
	mov	r13, rax
	mov	eax, 0xff
	cmp	r13, 0xf
	jb	.label_627
	mov	rsp, rsp
	cmp	qword ptr [r12], 0
	jne	.label_630
	test	ebp, ebp
	mov	rsp, rsp
	js	.label_629
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	nop	
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rsi, [rsi]
	mov	edi, ebp
	call	fpathconf
	mov	rcx, qword ptr [rsp]
	nop	
	cmp	dword ptr [rcx], 1
	sbb	rax, 0
	mov	rsp, rsp
	jmp	.label_628
.label_629:
	mov	ax, word ptr [r14]
	mov	word ptr [rsp], ax
	mov	word ptr [r14], 0x2e
	mov	rsp, rsp
	call	__errno_location
	mov	rsp, rsp
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	esi, 3
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	pathconf
	cmp	dword ptr [rbp], 1
	mov	rbp, rbp
	sbb	rax, 0
	lea	rdi, [rdi]
	mov	cx, word ptr [rsp]
	mov	rsp, rsp
	mov	word ptr [r14], cx
.label_628:
	cmp	rax, -1
	lea	rdi, [rdi]
	mov	ecx, 0xe
	mov	rbp, rbp
	mov	rdx, -1
	cmovl	rdx, rcx
	mov	rbp, rbp
	test	rax, rax
	cmovns	rdx, rax
	nop	
	mov	qword ptr [r12], rdx
.label_630:
	mov	rax, qword ptr [r12]
.label_627:
	lea	rdi, [rdi]
	cmp	rax, r13
	jae	.label_626
	mov	rbp, rbp
	add	rbx, r15
	lea	rsi, [rsi]
	sub	rbx, r14
	cmp	rax, rbx
	lea	rax, [rax - 1]
	lea	rdi, [rdi]
	cmova	rax, rbx
	mov	rsp, rsp
	mov	word ptr [r14 + rax], 0x7e
.label_626:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c290

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	nop	
	mov	ecx, 1
	jmp	backupfile_internal
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c2a0

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	mov	rsp, rsp
	push	rax
	xor	ecx, ecx
	lea	rdi, [rdi]
	call	backupfile_internal
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_631
	pop	rcx
	nop	
	ret	
.label_631:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c2c0

	.globl get_version
	.type get_version, @function
get_version:
	mov	rbp, rbp
	mov	eax, 2
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_632
	cmp	byte ptr [rsi], 0
	je	.label_632
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsp, rsp
	call	__xargmatch_internal
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_632:
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c310

	.globl xget_version
	.type xget_version, @function
xget_version:
	test	rsi, rsi
	lea	rdi, [rdi]
	je	.label_633
	lea	rsi, [rsi]
	cmp	byte ptr [rsi], 0
	je	.label_633
	lea	rdi, [rdi]
	jmp	get_version
.label_633:
	mov	rbp, rbp
	push	rax
	mov	edi, OFFSET FLAT:.str.1_5
	nop	
	call	getenv
	mov	edi, OFFSET FLAT:.str_6
	mov	rsi, rax
	pop	rax
	jmp	get_version
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c340

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_634
	test	rsi, rsi
	je	.label_636
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_635:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_635
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_636
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	je	.label_637
	jmp	.label_636
.label_634:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_636:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_637:
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c3b0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	nop
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c3c0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	mov	rsp, rsp
	push	r14
	nop	
	push	rbx
	nop	
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	mov	rbp, rbp
	je	.label_640
	xor	esi, esi
	mov	rbp, rbp
	mov	edx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fseeko
	lea	rsi, [rsi]
	test	eax, eax
	nop	
	jne	.label_640
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	setne	bpl
.label_640:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	nop	
	jne	.label_638
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_638
	pop	rbx
	pop	r14
	pop	rbp
	mov	rsp, rsp
	jmp	close_stdout
.label_638:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_7
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	lea	rsi, [rsi]
	jne	.label_639
	xor	edi, edi
	nop	
	mov	edx, OFFSET FLAT:.str_3
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_641
.label_639:
	nop	
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.1_6
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
.label_641:
	call	close_stdout
	nop	
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c4d0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c4e0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c4f0

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
	je	.label_643
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_642
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_642
.label_643:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_645
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_642:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_8
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_644
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
.label_645:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_644:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_6
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
	#Procedure 0x40c5f0

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	call	mdir_name
	mov	rbp, rbp
	test	rax, rax
	je	.label_646
	pop	rcx
	ret	
.label_646:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c610

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
.label_648:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_647
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_648
.label_647:
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
	#Procedure 0x40c680

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
	je	.label_650
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_649
	mov	rsp, rsp
	mov	byte ptr [r14 + rbx], 0x2e
	nop	
	mov	ebx, 1
.label_649:
	nop	
	mov	byte ptr [r14 + rbx], 0
	mov	rsp, rsp
	mov	rax, r14
.label_650:
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
	#Procedure 0x40c710

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_651:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_651
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_653
	nop	word ptr [rax + rax]
.label_655:
	inc	rax
	mov	rbp, rbp
	mov	cl, dl
.label_653:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	mov	rsp, rsp
	je	.label_655
	test	sil, sil
	mov	rsp, rsp
	je	.label_652
	mov	rbp, rbp
	mov	dl, cl
	and	dl, 1
	mov	rsp, rsp
	je	.label_654
	xor	ecx, ecx
.label_654:
	test	dl, dl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_655
.label_652:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c790

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_657:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_656
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_657
.label_656:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c7d0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_658
	mov	rbx, rax
.label_658:
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	al, cl
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c800

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c810
	.globl fadvise
	.type fadvise, @function
fadvise:

	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_659
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
.label_659:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c840

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_660
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
.label_660:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_661
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
	ja	.label_663
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_662
.label_663:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_662:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_661:
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
	.align	16
	#Procedure 0x40c960

	.globl record_file
	.type record_file, @function
record_file:
	nop	
	push	r15
	nop	
	push	r14
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	nop	
	je	.label_664
	mov	edi, 0x18
	call	xmalloc
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	lea	rsi, [rsi]
	mov	qword ptr [rbx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	mov	rsp, rsp
	je	.label_665
	cmp	rax, rbx
	je	.label_664
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	jmp	triple_free
.label_664:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	nop	
	pop	r15
	mov	rsp, rsp
	ret	
.label_665:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca10

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_666
	lea	rsi, [rsi]
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	nop	
	mov	rax, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	nop	
	ret	
.label_666:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ca60

	.globl strmode
	.type strmode, @function
strmode:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rbp
	mov	ebx, edi
	lea	rdi, [rdi]
	call	ftypelet
	mov	rbp, rbp
	mov	byte ptr [r14], al
	mov	al, bh
	test	al, 1
	lea	rdi, [rdi]
	mov	sil, 0x72
	mov	rsp, rsp
	mov	cl, 0x72
	lea	rsi, [rsi]
	jne	.label_677
	mov	rbp, rbp
	mov	cl, 0x2d
.label_677:
	mov	byte ptr [r14 + 1], cl
	mov	cl, bl
	nop	
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [r14 + 2], cl
	mov	ecx, ebx
	mov	rbp, rbp
	and	ecx, 0x40
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rbp, rbp
	shr	edx, 1
	lea	rdi, [rdi]
	or	edx, 0x53
	test	ecx, ecx
	nop	
	mov	r8b, 0x78
	mov	cl, 0x78
	lea	rsi, [rsi]
	jne	.label_670
	mov	cl, 0x2d
.label_670:
	mov	rbp, rbp
	test	al, 8
	mov	rbp, rbp
	jne	.label_671
	mov	dl, cl
.label_671:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	rsp, rsp
	mov	cl, 0x72
	mov	rbp, rbp
	jne	.label_672
	nop	
	mov	cl, 0x2d
.label_672:
	mov	byte ptr [r14 + 4], cl
	lea	rsi, [rsi]
	test	bl, 0x10
	lea	rsi, [rsi]
	mov	dl, 0x77
	mov	cl, 0x77
	mov	rbp, rbp
	jne	.label_676
	mov	cl, 0x2d
.label_676:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	nop	
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	lea	rsi, [rsi]
	jne	.label_668
	mov	cl, 0x2d
.label_668:
	test	al, 4
	jne	.label_674
	mov	dil, cl
.label_674:
	mov	rbp, rbp
	mov	byte ptr [r14 + 6], dil
	lea	rsi, [rsi]
	test	bl, 4
	lea	rsi, [rsi]
	jne	.label_675
	mov	rbp, rbp
	mov	sil, 0x2d
.label_675:
	lea	rdi, [rdi]
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_667
	mov	dl, 0x2d
.label_667:
	mov	byte ptr [r14 + 8], dl
	mov	rsp, rsp
	and	ebx, 1
	lea	rdi, [rdi]
	jne	.label_669
	mov	r8b, 0x2d
.label_669:
	test	al, 2
	nop	
	je	.label_673
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8b, bl
.label_673:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb90

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xf000
	nop	
	cmp	edi, 0x5fff
	nop	
	jle	.label_683
	lea	rdi, [rdi]
	cmp	edi, 0x9fff
	jg	.label_678
	lea	rdi, [rdi]
	cmp	edi, 0x6000
	je	.label_682
	lea	rsi, [rsi]
	mov	al, 0x2d
	cmp	edi, 0x8000
	je	.label_685
	nop	
	jmp	.label_681
.label_683:
	cmp	edi, 0x1000
	lea	rsi, [rsi]
	je	.label_679
	mov	rbp, rbp
	cmp	edi, 0x2000
	nop	
	je	.label_680
	cmp	edi, 0x4000
	mov	rbp, rbp
	jne	.label_681
	mov	al, 0x64
	movsx	eax, al
	mov	rbp, rbp
	ret	
.label_678:
	nop	
	cmp	edi, 0xa000
	je	.label_684
	mov	rbp, rbp
	cmp	edi, 0xc000
	jne	.label_681
	mov	al, 0x73
	movsx	eax, al
	ret	
.label_682:
	lea	rdi, [rdi]
	mov	al, 0x62
	movsx	eax, al
	mov	rbp, rbp
	ret	
.label_679:
	nop	
	mov	al, 0x70
.label_685:
	mov	rsp, rsp
	movsx	eax, al
	ret	
.label_684:
	mov	rbp, rbp
	mov	al, 0x6c
	nop	
	movsx	eax, al
	lea	rsi, [rsi]
	ret	
.label_681:
	mov	al, 0x3f
	movsx	eax, al
	mov	rbp, rbp
	ret	
.label_680:
	lea	rdi, [rdi]
	mov	al, 0x63
	lea	rsi, [rsi]
	movsx	eax, al
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cc50
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	lea	rdi, [rdi]
	mov	edi, dword ptr [rdi + 0x18]
	nop	
	jmp	strmode
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cc60

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_686
	lea	rsi, [rsi]
	pop	rcx
	ret	
.label_686:
	mov	rsp, rsp
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cc80

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	base_len
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	sub	rbx, r13
	add	rbx, rbp
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_692
	movzx	ecx, byte ptr [rbx + r13 - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_694
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_688
.label_692:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_693
	jmp	.label_689
.label_694:
	nop	
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_690
.label_689:
	xor	r12d, r12d
	jmp	.label_693
.label_690:
	mov	r12b, 0x2f
.label_693:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
.label_688:
	test	r12b, r12b
	nop	
	setne	cl
	movzx	ebp, cl
	nop	
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	lea	rdi, [rdi]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_687
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	lea	rsi, [rsi]
	add	rbp, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_691
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
.label_691:
	nop	
	mov	rcx, -1
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	nop	
	mov	rax, r14
.label_687:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cdd0

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_695
	nop	word ptr [rax + rax]
.label_697:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_695
	test	rax, rax
	je	.label_696
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_697
	jmp	.label_695
.label_696:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_695:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ce30

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce40

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce50

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce60

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rdi + 8]
	nop	
	jae	.label_698
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_701:
	cmp	qword ptr [rcx], 0
	nop	
	mov	esi, 0
	mov	rdi, rcx
	mov	rbp, rbp
	je	.label_699
	nop	word ptr cs:[rax + rax]
.label_700:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	inc	rsi
	test	rdi, rdi
	jne	.label_700
	nop	
	cmp	rsi, rax
	mov	rsp, rsp
	cmova	rax, rsi
.label_699:
	mov	rbp, rbp
	add	rcx, 0x10
	nop	
	cmp	rcx, rdx
	jb	.label_701
.label_698:
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ced0
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
	jae	.label_702
	mov	r8, qword ptr [rdi + 8]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_704:
	lea	rdi, [rdi]
	cmp	qword ptr [rsi], 0
	mov	rbp, rbp
	mov	rax, rsi
	je	.label_703
	nop	
.label_705:
	lea	rdi, [rdi]
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_705
	inc	rdx
.label_703:
	mov	rsp, rsp
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_704
.label_702:
	mov	rbp, rbp
	cmp	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	jne	.label_707
	lea	rsi, [rsi]
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	mov	rsp, rsp
	je	.label_706
.label_707:
	mov	rbp, rbp
	xor	eax, eax
.label_706:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cf50
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
	mov	edx, OFFSET FLAT:.str_9
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
	mov	edx, OFFSET FLAT:.str.1_7
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_708]]
	punpckldq	xmm1, xmm2
	mov	rsp, rsp
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_709]]
	mov	rbp, rbp
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	lea	rsi, [rsi]
	addpd	xmm0, xmm1
	nop	
	mulsd	xmm0,  qword ptr [word ptr [rip + label_710]]
	movq	xmm1, r12
	mov	rbp, rbp
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_4
	mov	rsp, rsp
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	mov	rbp, rbp
	call	__fprintf_chk
	mov	rbp, rbp
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_2
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
	.align	16
	#Procedure 0x40d0a0

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
	je	.label_711
	test	rbx, rbx
	nop	
	je	.label_711
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_712:
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	cmp	rsi, r12
	je	.label_713
	lea	rsi, [rsi]
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_713
	mov	rbx, qword ptr [rbx + 8]
	nop	
	test	rbx, rbx
	jne	.label_712
	jmp	.label_711
.label_713:
	mov	r15, qword ptr [rbx]
.label_711:
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
	.align	16
	#Procedure 0x40d130

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
	jae	.label_714
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbx]
	lea	rsi, [rsi]
	pop	rbx
	nop	
	ret	
.label_714:
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d170
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	mov	rbp, rbp
	je	.label_715
	nop	
	mov	rcx, qword ptr [rdi]
	lea	rdi, [rdi]
	jmp	.label_717
	nop	word ptr cs:[rax + rax]
.label_718:
	mov	rbp, rbp
	add	rcx, 0x10
.label_717:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_716
	mov	rax, qword ptr [rcx]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_718
.label_715:
	ret	
.label_716:
	mov	rsp, rsp
	push	rax
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1c0
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
.label_721:
	cmp	qword ptr [rcx], rbx
	jne	.label_719
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	nop	
	test	rdx, rdx
	lea	rdi, [rdi]
	jne	.label_722
.label_719:
	nop	
	mov	rcx, qword ptr [rcx + 8]
	nop	
	test	rcx, rcx
	jne	.label_721
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	dword ptr [rax + rax]
.label_723:
	cmp	rax, rdx
	lea	rdi, [rdi]
	mov	ecx, 0
	jae	.label_720
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_723
	jmp	.label_720
.label_722:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx]
.label_720:
	mov	rax, rcx
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d250
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	nop
	mov	r8, qword ptr [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_724
	nop	dword ptr [rax + rax]
.label_727:
	mov	rbp, rbp
	add	r8, 0x10
.label_724:
	cmp	r8, qword ptr [rdi + 8]
	nop	
	jae	.label_726
	lea	rdi, [rdi]
	cmp	qword ptr [r8], 0
	lea	rsi, [rsi]
	je	.label_727
	test	r8, r8
	mov	r9, r8
	mov	rbp, rbp
	je	.label_727
	nop	word ptr cs:[rax + rax]
.label_725:
	mov	rbp, rbp
	cmp	rax, rdx
	mov	rsp, rsp
	jae	.label_726
	mov	rcx, qword ptr [r9]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	nop	
	inc	rax
	lea	rdi, [rdi]
	mov	r9, qword ptr [r9 + 8]
	mov	rsp, rsp
	test	r9, r9
	jne	.label_725
	nop	
	jmp	.label_727
.label_726:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d2c0
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
	jmp	.label_728
	nop	word ptr cs:[rax + rax]
.label_729:
	mov	rsp, rsp
	add	r13, 0x10
.label_728:
	lea	rsi, [rsi]
	cmp	r13, qword ptr [r12 + 8]
	nop	
	jae	.label_730
	lea	rsi, [rsi]
	cmp	qword ptr [r13], 0
	je	.label_729
	mov	rbp, rbp
	test	r13, r13
	mov	rbp, r13
	je	.label_729
	nop	word ptr [rax + rax]
.label_731:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	r15
	mov	rbp, rbp
	test	al, al
	je	.label_730
	mov	rsp, rsp
	inc	rbx
	mov	rsp, rsp
	mov	rbp, qword ptr [rbp + 8]
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_731
	jmp	.label_729
.label_730:
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
	.align	16
	#Procedure 0x40d370
	.globl hash_string
	.type hash_string, @function
hash_string:

	nop
	mov	al, byte ptr [rdi]
	nop	
	xor	edx, edx
	test	al, al
	je	.label_733
	inc	rdi
	nop	
	xor	edx, edx
.label_732:
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
	jne	.label_732
.label_733:
	mov	rax, rdx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d3b0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	nop
	mov	eax,  dword ptr [dword ptr [rip + label_734]]
	mov	dword ptr [rdi + 0x10], eax
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d3d0

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
	je	.label_735
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
	je	.label_736
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_736
	mov	esi, 0x10
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_736
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
	jmp	.label_735
.label_736:
	mov	rbp, rbp
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_735:
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
	.align	16
	#Procedure 0x40d510

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
	.align	16
	#Procedure 0x40d540

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
	.align	16
	#Procedure 0x40d550

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	mov	rsp, rsp
	je	.label_737
	lea	rsi, [rsi]
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_740]]
	nop	
	jbe	.label_738
	movss	xmm1,  dword ptr [dword ptr [rip + label_741]]
	ucomiss	xmm1, xmm0
	jbe	.label_738
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_739]]
	jbe	.label_738
	movss	xmm1, dword ptr [rcx]
	lea	rdi, [rdi]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_738
	mov	rsp, rsp
	addss	xmm1,  dword ptr [dword ptr [rip + label_740]]
	ucomiss	xmm0, xmm1
	jbe	.label_738
	mov	rsp, rsp
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_742]]
	ucomiss	xmm2, xmm0
	nop	
	jb	.label_738
	ucomiss	xmm0, xmm1
	ja	.label_737
.label_738:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_737:
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d5e0

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_743
	mov	eax, edi
	nop	
	and	eax, 1
	lea	rsi, [rsi]
	test	rdi, rdi
	js	.label_745
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdi
	mov	rbp, rbp
	jmp	.label_744
.label_745:
	lea	rsi, [rsi]
	shr	rdi, 1
	or	rax, rdi
	mov	rsp, rsp
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_744:
	divss	xmm0, dword ptr [rsi + 8]
	nop	
	movss	xmm1,  dword ptr [dword ptr [rip + label_746]]
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
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_747]]
	jae	.label_748
.label_743:
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
.label_748:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d690
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
	jmp	.label_751
	nop	dword ptr [rax]
.label_749:
	add	r14, 0x10
.label_751:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_752
	cmp	qword ptr [r14], 0
	lea	rdi, [rdi]
	je	.label_749
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
	je	.label_750
	nop	dword ptr [rax + rax]
.label_755:
	test	cl, 1
	nop	
	je	.label_754
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	rax
.label_754:
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
	jne	.label_755
.label_750:
	lea	rdi, [rdi]
	test	cl, cl
	je	.label_753
	mov	rdi, qword ptr [r14]
	call	rax
.label_753:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_749
.label_752:
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
	.align	16
	#Procedure 0x40d760

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
	je	.label_760
	lea	rdi, [rdi]
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	je	.label_760
	mov	r14, qword ptr [r15]
	lea	rsi, [rsi]
	jmp	.label_757
	nop	word ptr cs:[rax + rax]
.label_761:
	mov	rbp, rbp
	add	r14, 0x10
.label_757:
	mov	rsp, rsp
	cmp	r14, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	jae	.label_760
	cmp	qword ptr [r14], 0
	je	.label_761
	test	r14, r14
	mov	rbp, rbp
	mov	rbx, r14
	je	.label_761
	nop	word ptr cs:[rax + rax]
.label_758:
	mov	rdi, qword ptr [rbx]
	mov	rbp, rbp
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_758
	jmp	.label_761
.label_760:
	mov	r14, qword ptr [r15]
	jmp	.label_762
	nop	word ptr [rax + rax]
.label_763:
	mov	rbp, rbp
	add	r14, 0x10
.label_762:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_765
	mov	rdi, qword ptr [r14 + 8]
	mov	rsp, rsp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_763
	nop	dword ptr [rax]
.label_759:
	mov	rbp, rbp
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	lea	rdi, [rdi]
	mov	rdi, rbx
	jne	.label_759
	lea	rdi, [rdi]
	jmp	.label_763
.label_765:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_764
	nop	word ptr cs:[rax + rax]
.label_756:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rdi, rbx
	lea	rdi, [rdi]
	jne	.label_756
.label_764:
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
	.align	16
	#Procedure 0x40d880

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
	je	.label_768
	lea	rsi, [rsi]
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	je	.label_769
	lea	rdi, [rdi]
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	rsp, rsp
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_768
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
	je	.label_766
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
	jmp	.label_769
.label_766:
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
	je	.label_767
	lea	rsi, [rsp]
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	nop	
	call	transfer_entries
	test	al, al
	lea	rdi, [rdi]
	je	.label_767
	mov	rdi, qword ptr [rsp]
	call	free
.label_768:
	mov	rbp, rbp
	xor	r14d, r14d
.label_769:
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
.label_767:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da30

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
	jae	.label_771
	nop	
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_770:
	cmp	qword ptr [r15], 0
	nop	
	je	.label_775
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_778
	nop	word ptr [rax + rax]
.label_774:
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
	je	.label_773
	mov	rcx, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	nop	
	jmp	.label_776
	nop	word ptr [rax + rax]
.label_773:
	mov	rsp, rsp
	mov	qword ptr [rax], r13
	lea	rsi, [rsi]
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	free_entry
.label_776:
	nop	
	test	rbp, rbp
	mov	rbp, rbp
	mov	rbx, rbp
	jne	.label_774
.label_778:
	mov	r13, qword ptr [r15]
	nop	
	mov	qword ptr [r15 + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	nop	
	jne	.label_775
	mov	rdi, r14
	mov	rsi, r13
	mov	rsp, rsp
	call	safe_hasher
	mov	rbx, rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbx], 0
	mov	rsp, rsp
	je	.label_772
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	allocate_entry
	test	rax, rax
	je	.label_777
	mov	rbp, rbp
	mov	qword ptr [rax], r13
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_779
.label_772:
	mov	qword ptr [rbx], r13
	nop	
	inc	qword ptr [r14 + 0x18]
.label_779:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_775:
	nop	
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	mov	rbp, rbp
	jb	.label_770
	mov	al, 1
	jmp	.label_771
.label_777:
	nop	
	xor	eax, eax
.label_771:
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
	.align	16
	#Procedure 0x40dbb0

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
	je	.label_788
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
	je	.label_794
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_780
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	jmp	.label_780
.label_794:
	nop	
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	nop	
	js	.label_785
	cvtsi2ss	xmm0, rcx
	lea	rdi, [rdi]
	jmp	.label_784
.label_785:
	shr	rcx, 1
	lea	rdi, [rdi]
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_784:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	and	edx, 1
	test	rax, rax
	js	.label_782
	cvtsi2ss	xmm1, rax
	mov	rsp, rsp
	jmp	.label_787
.label_782:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	mov	rsp, rsp
	addss	xmm1, xmm1
.label_787:
	mulss	xmm1, dword ptr [rcx + 8]
	lea	rdi, [rdi]
	ucomiss	xmm0, xmm1
	jbe	.label_781
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
	js	.label_783
	lea	rdi, [rdi]
	cvtsi2ss	xmm2, rcx
	jmp	.label_792
.label_783:
	shr	rcx, 1
	lea	rsi, [rsi]
	or	rdx, rcx
	mov	rsp, rsp
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_792:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	nop	
	and	edx, 1
	mov	rbp, rbp
	test	rax, rax
	js	.label_789
	cvtsi2ss	xmm0, rax
	jmp	.label_790
.label_789:
	shr	rax, 1
	or	rdx, rax
	lea	rdi, [rdi]
	cvtsi2ss	xmm0, rdx
	mov	rsp, rsp
	addss	xmm0, xmm0
.label_790:
	movaps	xmm3, xmm1
	lea	rsi, [rsi]
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	mov	rbp, rbp
	jbe	.label_781
	mov	rbp, rbp
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_786
	mulss	xmm0, xmm1
.label_786:
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_747]]
	lea	rdi, [rdi]
	jae	.label_780
	lea	rdi, [rdi]
	movss	xmm1,  dword ptr [dword ptr [rip + label_746]]
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
	je	.label_780
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, r14
	call	hash_find_entry
	lea	rdi, [rdi]
	test	rax, rax
	jne	.label_788
.label_781:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_791
	mov	rdi, r15
	call	allocate_entry
	mov	rbp, rbp
	mov	ebp, 0xffffffff
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_780
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
	jmp	.label_793
.label_791:
	mov	qword ptr [rax], r14
	nop	
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_793:
	mov	rbp, rbp
	mov	ebp, 1
.label_780:
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
.label_788:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40de30

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
	je	.label_795
	cmp	rsi, r13
	nop	
	je	.label_799
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_801
.label_799:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	mov	rsp, rsp
	je	.label_795
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_797
	nop	
	movups	xmm0, xmmword ptr [rsi]
	mov	rsp, rsp
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_800
.label_801:
	mov	rax, qword ptr [rbx + 8]
	nop	
	xor	r15d, r15d
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_795
	lea	rsi, [rsi]
	add	rbx, 8
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_798:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	nop	
	cmp	rsi, r13
	mov	rsp, rsp
	je	.label_796
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	mov	rsp, rsp
	test	al, al
	jne	.label_796
	nop	
	mov	rbx, qword ptr [rbx]
	nop	
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_798
	jmp	.label_795
.label_797:
	mov	rbp, rbp
	mov	qword ptr [rbx], 0
	lea	rsi, [rsi]
	jmp	.label_795
.label_796:
	nop	
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_795
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_800:
	mov	rdi, r14
	mov	rbp, rbp
	call	free_entry
.label_795:
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
	.align	16
	#Procedure 0x40df50

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	nop	
	je	.label_802
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_802:
	push	rax
	mov	edi, 0x10
	mov	rsp, rsp
	call	malloc
	add	rsp, 8
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40df80

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
	je	.label_803
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	cmove	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rax, rbx
.label_803:
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dfd0

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
	je	.label_813
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	jne	.label_804
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	nop	
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_811
	cvtsi2ss	xmm0, rax
	jmp	.label_815
.label_811:
	shr	rax, 1
	mov	rsp, rsp
	or	rcx, rax
	nop	
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_815:
	nop	
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	mov	rsp, rsp
	and	edx, 1
	lea	rsi, [rsi]
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_805
	mov	rbp, rbp
	cvtsi2ss	xmm1, rcx
	mov	rsp, rsp
	jmp	.label_810
.label_805:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_810:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	lea	rsi, [rsi]
	jbe	.label_804
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_809
	mov	rsp, rsp
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	lea	rsi, [rsi]
	jmp	.label_814
.label_809:
	shr	rcx, 1
	or	rdx, rcx
	lea	rsi, [rsi]
	xorps	xmm1, xmm1
	lea	rsi, [rsi]
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_814:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_806
	lea	rsi, [rsi]
	cvtsi2ss	xmm0, rax
	jmp	.label_812
.label_806:
	shr	rax, 1
	or	rdx, rax
	mov	rsp, rsp
	cvtsi2ss	xmm0, rdx
	lea	rdi, [rdi]
	addss	xmm0, xmm0
.label_812:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_804
	mov	rbp, rbp
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	mov	rsp, rsp
	jne	.label_808
	mulss	xmm0, dword ptr [rcx + 8]
.label_808:
	movss	xmm1,  dword ptr [dword ptr [rip + label_746]]
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
	jne	.label_804
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	nop	
	je	.label_816
	nop	word ptr cs:[rax + rax]
.label_807:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	mov	rdi, rbx
	jne	.label_807
.label_816:
	nop	
	mov	qword ptr [r15 + 0x48], 0
.label_804:
	mov	rax, r14
.label_813:
	add	rsp, 0x10
	nop	
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e1c0

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
	jmp	.label_817
	nop	word ptr cs:[rax + rax]
.label_818:
	lea	rsi, [rsi]
	add	rbx, 2
.label_817:
	mov	rbp, rbp
	cmp	rbx, -1
	nop	
	je	.label_819
	nop	
	mov	rdi, rbx
	call	is_prime
	test	al, al
	mov	rbp, rbp
	je	.label_818
	mov	rsp, rsp
	mov	r14, rbx
.label_819:
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
	.align	16
	#Procedure 0x40e230

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
	jb	.label_820
	nop	
.label_821:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_820
	add	rdi, rcx
	mov	rbp, rbp
	add	rsi, 2
	lea	rdi, [rdi]
	add	rcx, 8
	mov	rbp, rbp
	cmp	rdi, r8
	jb	.label_821
.label_820:
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
	.align	16
	#Procedure 0x40e290

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
	.align	16
	#Procedure 0x40e2b0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	xor	edx, edx
	div	r14
	mov	rsp, rsp
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e2f0

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	nop
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	nop	
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e300

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	nop
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_822
	nop	
	mov	rax, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_823
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	mov	rsp, rsp
	add	rsp, 8
	ret	
.label_822:
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_823:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e340
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_825
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_824
	mov	rbp, rbp
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	sete	al
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	ret	
.label_825:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	ret	
.label_824:
	lea	rsi, [rsi]
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e390

	.globl triple_free
	.type triple_free, @function
triple_free:
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	jmp	free
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e3c0

	.globl opendirat
	.type opendirat, @function
opendirat:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	r14, rcx
	mov	rsp, rsp
	or	edx, 0x90900
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rsp, rsp
	xor	eax, eax
	call	openat_safer
	lea	rsi, [rsi]
	mov	ebp, eax
	test	ebp, ebp
	js	.label_826
	mov	rsp, rsp
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_827
	mov	dword ptr [r14], ebp
	mov	rsp, rsp
	jmp	.label_826
.label_827:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	lea	rsi, [rsi]
	mov	dword ptr [rbx], r14d
	lea	rsi, [rsi]
	xor	ebx, ebx
.label_826:
	nop	
	mov	rax, rbx
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e440

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
	je	.label_828
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
	jl	.label_830
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_8
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_830
	mov	esi, OFFSET FLAT:.str.2_5
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_829
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_829:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_830:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_828:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_10
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
	#Procedure 0x40e530

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	nop	
	push	rax
	mov	r14d, ecx
	mov	rsp, rsp
	mov	rbx, rdx
	mov	rsp, rsp
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	lea	rsi, [rsi]
	mov	ebp, 0xfffffffe
	test	eax, eax
	mov	rbp, rbp
	jne	.label_831
	lea	r15, [rsp]
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	nop	
	mov	ebp, eax
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free_permission_context
.label_831:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e5a0

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	mov	rsp, rsp
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	free_permission_context
	mov	rsp, rsp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e5f0
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
	#Procedure 0x40e640
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
	#Procedure 0x40e660
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
	#Procedure 0x40e680

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
	#Procedure 0x40e6f0
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
	#Procedure 0x40e710

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
	je	.label_832
	test	rdx, rdx
	nop	
	je	.label_832
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_832:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e750
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
	#Procedure 0x40e7f0

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
.label_912:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_844
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_898]]
.label_1346:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_1
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
.label_1347:
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
	jne	.label_840
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_840
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_953:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_893
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_893:
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
	jne	.label_953
.label_840:
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
	jmp	.label_849
.label_1339:
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
	jmp	.label_849
.label_1342:
	mov	rsp, rsp
	mov	al, 1
.label_1340:
	mov	r15b, 1
.label_1343:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_877
	mov	cl, al
.label_877:
	lea	rdi, [rdi]
	mov	al, cl
.label_1341:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_880
	test	r10, r10
	je	.label_886
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_897
.label_880:
	xor	ecx, ecx
	jmp	.label_897
.label_1344:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_899
	test	r10, r10
	je	.label_902
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_906
.label_1345:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_849
.label_886:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_897:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_849
.label_899:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_906
.label_902:
	mov	rbp, rbp
	mov	eax, 1
.label_906:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_849:
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
	jmp	.label_846
	nop	word ptr [rax + rax]
.label_916:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_846:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_892
	cmp	rsi, rbp
	jne	.label_932
	jmp	.label_896
	nop	word ptr cs:[rax + rax]
.label_892:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_896
.label_932:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_903
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_909
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_909
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
.label_909:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_937
.label_903:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_859:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_942
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_945]]
.label_1309:
	test	rsi, rsi
	jne	.label_837
	jmp	.label_890
	nop	word ptr [rax + rax]
.label_937:
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
	jne	.label_851
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
	je	.label_859
	mov	rsp, rsp
	jmp	.label_834
.label_851:
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
	jmp	.label_859
.label_1313:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_868
	test	rsi, rsi
	nop	
	jne	.label_887
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_890
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_839
.label_1302:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_842
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_834
	cmp	edi, 2
	nop	
	jne	.label_947
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_908
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_882
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_882:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_925
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_925:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_931
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_931:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_879
.label_1303:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_941
.label_1304:
	mov	cl, 0x74
	jmp	.label_856
.label_1305:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_941
.label_1306:
	mov	bl, 0x66
	jmp	.label_941
.label_1307:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_856
.label_1310:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_928
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_835
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
	jae	.label_864
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_864:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_862
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_862:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_872
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_872:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_881
.label_1311:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_895
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_894
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_835
.label_894:
	mov	rdi, r14
	jmp	.label_837
.label_1312:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_901
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_835
	mov	rdi, r14
	jmp	.label_913
.label_942:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_915
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
.label_857:
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
	ja	.label_936
	test	dl, dl
	mov	rsp, rsp
	je	.label_936
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_839
.label_868:
	test	rsi, rsi
	jne	.label_950
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_950
.label_890:
	mov	rbp, rbp
	mov	dl, 1
.label_1308:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_834
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_839
.label_842:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_837
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_846
.label_928:
	mov	rdi, r14
.label_881:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_839
.label_901:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_856
.label_913:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_836
.label_856:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_834
.label_941:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_839
	lea	rsi, [rsi]
	jmp	.label_841
.label_915:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_876
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
.label_876:
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
.label_845:
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
	je	.label_917
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
	je	.label_922
	cmp	rbp, -2
	nop	
	je	.label_934
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_852
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_948:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_843
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_946
.label_843:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_948
.label_852:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_951
	xor	r15d, r15d
.label_951:
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
	je	.label_845
	jmp	.label_857
.label_950:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_839
.label_895:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_837
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_837
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_837
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_873
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_838
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_834
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_907
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_907:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_952
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_952:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_900
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_900:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_865
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_865:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_839
.label_837:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_839:
	test	r12b, r12b
	je	.label_938
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_940
	jmp	.label_866
	nop	word ptr cs:[rax + rax]
.label_938:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_866
.label_940:
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
	jne	.label_944
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_836
	jmp	.label_841
	nop	word ptr cs:[rax + rax]
.label_866:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_841
	jmp	.label_836
.label_944:
	mov	bl, r13b
	mov	rsi, r14
.label_841:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_834
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_855
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_855
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_935
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_935:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_867
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_867:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_878
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_878:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_855:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_889
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_889:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_860
.label_887:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_839
.label_936:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_871
	nop	word ptr cs:[rax + rax]
.label_850:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_871:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_921
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_924
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_929
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_929:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_924
	nop	dword ptr [rax]
.label_921:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_835
	cmp	r14d, 2
	jne	.label_874
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_874
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_923
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_923:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_858
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_858:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_919
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_919:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_874:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_863
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_863:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_918
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
.label_918:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_883
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
.label_883:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_924:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_836
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_914
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_911
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_920
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_920:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_930
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_930:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_911
	nop	word ptr cs:[rax + rax]
.label_914:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_911:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_850
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_850
	nop	word ptr cs:[rax + rax]
.label_836:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_833
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_833
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_869
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_869:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_848
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_848:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_860
	nop	word ptr cs:[rax + rax]
.label_833:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_860:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_916
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_916
.label_947:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_879
.label_908:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_879:
	cmp	rcx, r10
	jae	.label_884
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_884:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_891
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_853
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_905
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_910
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_910:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_927
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_927:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_839
.label_891:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_839
.label_853:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_839
.label_905:
	xor	r15d, r15d
	jmp	.label_839
.label_917:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_861
.label_922:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_949
.label_934:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_954
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_847:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_904
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_847
	xor	r15d, r15d
	nop	
	jmp	.label_861
.label_954:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_949:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_861:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_857
.label_904:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_861
.label_873:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_839
.label_838:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_839
	nop	word ptr cs:[rax + rax]
.label_896:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_875
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_835
.label_875:
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
	je	.label_888
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_888
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_854
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_888
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
	je	.label_912
.label_888:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_926
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_926
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_926
	inc	rdx
	nop	dword ptr [rax + rax]
.label_939:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_933
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_933:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_939
.label_926:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_943
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_943
.label_834:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_870:
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
.label_885:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_943:
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
.label_946:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_870
.label_835:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_870
.label_854:
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
	jmp	.label_885
.label_844:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ff40
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
	#Procedure 0x40ff60

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
.label_1395:
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
	je	.label_955
	mov	qword ptr [rax], rbx
.label_955:
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
	#Procedure 0x4100b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_956
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_960:
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
	jl	.label_960
.label_956:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_959
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_957]], OFFSET FLAT:slot0
.label_959:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_958
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_958:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410170

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x410180

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
	js	.label_967
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_965
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_962
.label_965:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_966
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
	jne	.label_963
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_963:
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
.label_962:
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
	ja	.label_961
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
	je	.label_964
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_964:
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
.label_961:
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
.label_967:
	lea	rdi, [rdi]
	call	abort
.label_966:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4103f0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410400
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
	#Procedure 0x410420
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
	#Procedure 0x410440

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
	#Procedure 0x4104a0

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
	je	.label_968
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
.label_968:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410510

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
	#Procedure 0x410570

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
	#Procedure 0x410590
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
	#Procedure 0x4105b0

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
	mov	rcx,  qword ptr [word ptr [rip + label_969]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_970]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_971]]
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
	#Procedure 0x410650

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
	#Procedure 0x410670

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
	#Procedure 0x410680
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410690

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
	#Procedure 0x410700

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
	#Procedure 0x410710

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
	mov	rax,  qword ptr [word ptr [rip + label_969]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_970]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_971]]
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
	#Procedure 0x4107a0
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
	#Procedure 0x4107d0
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
	#Procedure 0x410800

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410810
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
	#Procedure 0x410830

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410840

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
	#Procedure 0x410850

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
	jne	.label_972
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
	je	.label_973
	mov	eax, OFFSET FLAT:.str.14_1
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_972
	nop	
	mov	eax, OFFSET FLAT:.str.15_1
	jmp	.label_972
.label_973:
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
	je	.label_974
	nop	
	mov	eax, OFFSET FLAT:.str.17_2
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_972
	mov	eax, OFFSET FLAT:.str.18_2
	jmp	.label_972
.label_974:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_972:
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
	#Procedure 0x410980

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
	je	.label_977
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_975
	jmp	.label_976
.label_977:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_976
.label_975:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_976
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
.label_976:
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
	#Procedure 0x410a40

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
	je	.label_980
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_979
	lea	rsi, [rsi]
	jmp	.label_978
.label_980:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_978
.label_979:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_978
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
.label_978:
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
	#Procedure 0x410b30

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
	je	.label_983
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_982
	jmp	.label_981
.label_983:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_981
.label_982:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_981
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
.label_981:
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
	#Procedure 0x410c00

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
	je	.label_986
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_985
	jmp	.label_984
.label_986:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_984
.label_985:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_984
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
.label_984:
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
	#Procedure 0x410ca0

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
	je	.label_989
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_988
	nop	
	jmp	.label_987
.label_989:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_987
.label_988:
	mov	eax, 1
	test	bpl, bpl
	je	.label_987
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
.label_987:
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
	#Procedure 0x410d40

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
	je	.label_992
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_991
	lea	rsi, [rsi]
	jmp	.label_990
.label_992:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_990
.label_991:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_990
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
.label_990:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410dd0

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
	je	.label_995
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_994
	jmp	.label_993
.label_995:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_993
.label_994:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_993
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_993:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x410e40

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
	je	.label_996
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_998
	mov	rbp, rbp
	jmp	.label_997
.label_996:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_997
.label_998:
	xor	eax, eax
.label_997:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410e90

	.globl renameatu
	.type renameatu, @function
renameatu:
	mov	rsp, rsp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x128
	mov	rsp, rsp
	mov	r13d, r8d
	mov	rsp, rsp
	mov	r12, rcx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	r15d, edi
	nop	
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	nop	
	mov	r8, r12
	lea	rdi, [rdi]
	mov	r9d, r13d
	lea	rsi, [rsi]
	call	syscall
	mov	rsp, rsp
	mov	rbx, rax
	call	__errno_location
	nop	
	test	ebx, ebx
	jns	.label_999
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x16
	je	.label_1003
	lea	rdi, [rdi]
	cmp	ecx, 0x5f
	je	.label_1003
	cmp	ecx, 0x26
	mov	rbp, rbp
	jne	.label_999
.label_1003:
	mov	rbp, rbp
	test	r13d, r13d
	je	.label_1008
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	cmp	r13d, 2
	jb	.label_1010
	nop	
	mov	edi, 0x5f
	mov	rbp, rbp
	jmp	.label_1005
.label_1008:
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	xor	r13d, r13d
.label_1009:
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	lea	rsi, [rsi]
	call	strlen
	lea	rdi, [rdi]
	test	rbx, rbx
	nop	
	je	.label_1000
	test	rax, rax
	mov	rbp, rbp
	je	.label_1000
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbx + rbp - 1]
	mov	rsp, rsp
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_1002
	movzx	eax, byte ptr [rax + r12 - 1]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_1000
.label_1002:
	lea	rdx, [rsp + 0x98]
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	nop	
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_999
	lea	rsi, [rsi]
	test	r13b, r13b
	lea	rdi, [rdi]
	je	.label_1004
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_1000
	lea	rdi, [rdi]
	mov	edi, 2
	nop	
	jmp	.label_1006
.label_1010:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	mov	rsp, rsp
	call	lstatat
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1007
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	r13b, 1
	cmp	eax, 2
	lea	rdi, [rdi]
	je	.label_1009
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	lea	rsi, [rsi]
	jne	.label_999
.label_1007:
	mov	edi, 0x11
.label_1005:
	mov	rbp, rbp
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_999
.label_1004:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	nop	
	call	lstatat
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1012
	nop	
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	mov	rbp, rbp
	jne	.label_999
	mov	rsp, rsp
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	nop	
	jne	.label_999
	nop	
	jmp	.label_1000
.label_1012:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0x4000
	mov	rsp, rsp
	jne	.label_1011
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_1001
.label_1000:
	mov	rbp, rbp
	mov	edi, r15d
	nop	
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	nop	
	mov	ebx, eax
.label_999:
	mov	eax, ebx
	mov	rbp, rbp
	add	rsp, 0x128
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_1011:
	mov	edi, 0x14
	jmp	.label_1006
.label_1001:
	mov	edi, 0x15
.label_1006:
	lea	rdi, [rdi]
	call	errno_fail
	jmp	.label_999
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411130

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	nop	
	mov	dword ptr [rax], ebx
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411150

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	push	rax
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r14, rsi
	mov	r15d, edi
	lea	rdi, [rdi]
	mov	r12d, 0x7ff00000
	nop	word ptr cs:[rax + rax]
.label_1013:
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	write
	mov	rbp, rax
	nop	
	test	rbp, rbp
	jns	.label_1014
	call	__errno_location
	mov	eax, dword ptr [rax]
	nop	
	cmp	eax, 4
	nop	
	je	.label_1013
	cmp	eax, 0x16
	sete	cl
	mov	rbp, rbp
	cmp	rbx, 0x7ff00000
	seta	dl
	lea	rsi, [rsi]
	and	dl, cl
	mov	rsp, rsp
	mov	rcx, rbx
	lea	rdi, [rdi]
	cmovne	rcx, r12
	lea	rsi, [rsi]
	test	dl, dl
	cmovne	rbp, r13
	lea	rdi, [rdi]
	cmp	rbx, 0x7ff00001
	mov	rsp, rsp
	jb	.label_1014
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_1013
.label_1014:
	mov	rax, rbp
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	nop	
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411220

	.globl same_name
	.type same_name, @function
same_name:
	nop	
	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	nop	
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411240

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x138
	lea	rsi, [rsi]
	mov	r15, rcx
	mov	dword ptr [rsp + 0x14], edx
	lea	rsi, [rsi]
	mov	r13, rsi
	mov	r12d, edi
	lea	rdi, [rdi]
	mov	rdi, r13
	lea	rsi, [rsi]
	call	last_component
	nop	
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rbp, rbp
	jne	.label_1021
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r15
	lea	rsi, [rsi]
	mov	r15d, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rdx, rax
	nop	
	call	memcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_1015
	xor	ebp, ebp
	mov	rsp, rsp
	jmp	.label_1016
.label_1021:
	xor	ebp, ebp
	mov	rbp, rbp
	jmp	.label_1016
.label_1015:
	mov	rdi, r13
	mov	rsp, rsp
	call	dir_name
	lea	rdi, [rdi]
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	ecx, 0x100
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_1017
	nop	
	call	__errno_location
	mov	esi, dword ptr [rax]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1017:
	mov	rbp, rbp
	mov	rdi, rbp
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	call	dir_name
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	nop	
	mov	ecx, 0x100
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_1020
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, rbx
	call	error
.label_1020:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1018
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xa8]
	nop	
	cmp	rax, qword ptr [rsp + 0x18]
	nop	
	sete	bpl
	jmp	.label_1019
.label_1018:
	lea	rsi, [rsi]
	xor	ebp, ebp
.label_1019:
	mov	rdi, rbx
	call	free
.label_1016:
	mov	al, bpl
	lea	rdi, [rdi]
	add	rsp, 0x138
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411400

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	mov	rbp, rbp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x48
	mov	rbp, rbp
	mov	r13, rdi
	mov	rsp, rsp
	mov	ebx, esi
	nop	
	xor	r14d, r14d
	test	r13, r13
	je	.label_1022
	mov	rax,  qword ptr [word ptr [+ (rbx * 8) + comparison_function_table]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	dec	rbx
	mov	qword ptr [rsp + 0x28], rbx
	xor	r15d, r15d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	nop	
	jmp	.label_1024
.label_1023:
	mov	qword ptr [rsp + 0x38], rcx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbx, rcx
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	rsp, rsp
	mov	qword ptr [rbx + rcx], rax
	mov	rax, qword ptr [r14]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + rcx + 8], rax
	inc	r12
	add	r15, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_1024:
	nop	
	mov	dword ptr [rbp], 0
	nop	
	mov	rdi, r13
	mov	rsp, rsp
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_1030
	movzx	eax, byte ptr [r14 + 0x13]
	cmp	eax, 0x2e
	mov	eax, 0
	jne	.label_1034
	movzx	eax, byte ptr [r14 + 0x14]
	mov	rsp, rsp
	cmp	eax, 0x2e
	mov	eax, 1
	jne	.label_1034
	mov	eax, 2
.label_1034:
	lea	rsi, [rsi]
	cmp	byte ptr [r14 + rax + 0x13], 0
	je	.label_1024
	nop	
	mov	rbx, r14
	mov	rbp, rbp
	add	rbx, 0x13
	mov	rdi, rbx
	nop	
	call	strlen
	nop	
	mov	rcx, rax
	inc	rcx
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1026
	nop	
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, r12
	jne	.label_1027
	mov	qword ptr [rsp + 0x40], rax
	mov	edx, 0x10
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x40]
	call	x2nrealloc
	mov	rcx, rax
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_1023
.label_1026:
	mov	rax, qword ptr [rsp + 0x20]
	sub	rax, r15
	lea	rdi, [rdi]
	cmp	rax, rcx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	nop	
	ja	.label_1035
	mov	rdx, rcx
	mov	r14, rdx
	nop	
	add	rcx, r15
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	jb	.label_1036
	mov	edx, 1
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	lea	rsi, [rsp + 0x40]
	call	x2nrealloc
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbp, rbp
	mov	rcx, r14
.label_1035:
	mov	qword ptr [rsp + 0x30], rax
	mov	rbp, rbp
	lea	rdi, [rax + r15]
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbx, rcx
	mov	rsp, rsp
	call	memcpy
	add	r15, rbx
	jmp	.label_1024
.label_1027:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, rax
	jmp	.label_1023
.label_1030:
	mov	ebx, dword ptr [rbp]
	lea	rdi, [rdi]
	test	ebx, ebx
	je	.label_1025
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	call	free
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	dword ptr [rbp], ebx
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rsi, [rsi]
	jmp	.label_1022
.label_1025:
	cmp	qword ptr [rsp + 0x28], 1
	mov	r14, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x38]
	ja	.label_1028
	test	r12, r12
	je	.label_1033
	nop	
	mov	edx, 0x10
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	qsort
	nop	
	inc	r15
	mov	rsp, rsp
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbx, r13
	nop	
.label_1029:
	lea	rbp, [r14 + r15]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	stpcpy
	inc	r15
	sub	r15, rbp
	mov	rbp, rbp
	add	r15, rax
	nop	
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r12
	jne	.label_1029
	nop	
	jmp	.label_1031
.label_1028:
	nop	
	cmp	qword ptr [rsp + 0x20], r15
	nop	
	jne	.label_1032
	lea	rsi, [rsi]
	lea	rsi, [r15 + 1]
	mov	rdi, r14
	nop	
	call	xrealloc
	mov	rsp, rsp
	mov	r14, rax
	jmp	.label_1032
.label_1033:
	mov	rbp, rbp
	inc	r15
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	call	xmalloc
	lea	rsi, [rsi]
	mov	r14, rax
	xor	r15d, r15d
.label_1031:
	mov	rdi, r13
	nop	
	call	free
.label_1032:
	nop	
	mov	byte ptr [r14 + r15], 0
.label_1022:
	lea	rdi, [rdi]
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1036:
	mov	rbp, rbp
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411750

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	mov	rbp, rbp
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1037
	nop	
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1037
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	dword ptr [rbx], ebp
	mov	rsp, rsp
	xor	r14d, r14d
.label_1037:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4117c0

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	
	.section	.text
	.align	16
	#Procedure 0x4117d0

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rsi + 8]
	mov	rsp, rsp
	seta	al
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	cmovae	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411800
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411820
	.globl freecon
	.type freecon, @function
freecon:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411830
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rbp, rbp
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411850

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	mov	rbp, rbp
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411870
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411890
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	mov	rsp, rsp
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4118b0

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4118d0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	rbp, rbp
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4118f0
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rax
	mov	rbp, rbp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411910
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	nop
	push	rax
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411930
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	lea	rsi, [rsi]
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411950
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	lea	rsi, [rsi]
	push	rax
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x5f
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411970
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	mov	rbp, rbp
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411990
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	nop	
	pop	rcx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4119b0
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	nop	
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4119d0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	mov	rbp, rbp
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4119f0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	nop	
	call	__errno_location
	mov	rsp, rsp
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411a10

	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x50]
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411a20

	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411a30

	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:
	mov	rax, qword ptr [rdi + 0x60]
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411a40
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411a50

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
	.align	16
	#Procedure 0x411a70
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411a80

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411a90
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
	.align	16
	#Procedure 0x411ab0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	mov	eax, edi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411ac0
	.globl statat
	.type statat, @function
statat:

	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ad0

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ae0

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, esi
	mov	rbp, rbp
	mov	r15, rdi
	nop	
	call	__errno_location
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	r12d, dword ptr [rax]
	nop	
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	lea	rsi, [rsi]
	movsxd	rbx, ebx
	lea	rsi, [rsi]
	lea	rax, [rbx + r14]
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsp, rsp
	sub	rdi, rax
	mov	rbp, rbp
	jb	.label_1042
	nop	
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	mov	rbp, rbp
	test	al, al
	nop	
	je	.label_1042
	mov	dword ptr [rsp + 0xc], r12d
	nop	
	mov	qword ptr [rsp + 0x10], r15
	nop	
	xor	r13d, r13d
	mov	rsp, rsp
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1040
	sub	rbp, rbx
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	rbp, r12
	lea	rsi, [rsi]
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x18], rax
	nop	
.label_1043:
	test	r14, r14
	nop	
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_1044
	nop	dword ptr [rax + rax]
.label_1039:
	mov	rsp, rsp
	mov	esi, 0x3d
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	randint_genmax
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	nop	
	inc	rbx
	lea	rdi, [rdi]
	jne	.label_1039
.label_1044:
	mov	rdi, r12
	mov	rbx, r12
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1038
	mov	rax, qword ptr [rsp + 0x30]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	mov	rsp, rsp
	jne	.label_1041
	mov	rbp, rbp
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, rbx
	jbe	.label_1043
	mov	rdi, r15
	nop	
	call	randint_all_free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	mov	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	mov	rsp, rsp
	jmp	.label_1040
.label_1042:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x30]
	mov	dword ptr [rax], 0x16
	nop	
	mov	r12d, 0xffffffff
.label_1040:
	mov	rbp, rbp
	mov	eax, r12d
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1038:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0xc]
	mov	dword ptr [rax], ecx
.label_1041:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	ebx, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	randint_all_free
	mov	rbp, rbp
	mov	dword ptr [rbp], ebx
	mov	rsp, rsp
	jmp	.label_1040
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411cd0

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	esi, 0x58
	mov	rbp, rbp
	call	__strspn_c1
	lea	rsi, [rsi]
	cmp	rax, rbx
	lea	rdi, [rdi]
	setae	al
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411d00

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	mov	rbp, rbp
	push	rax
	mov	dword ptr [rsp + 4], edx
	nop	
	cmp	ecx, 3
	jae	.label_1045
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1046]]
	lea	rsi, [rsi]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1045:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str_11
	mov	esi, OFFSET FLAT:.str.1_9
	mov	rsp, rsp
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.gen_tempname_len
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411d50

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	lea	rdi, [rdi]
	or	esi, 0xc2
	mov	edx, 0x180
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	jmp	open
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411d80

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	lea	rsi, [rsi]
	jmp	mkdir
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411d90

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	lea	rdi, [rdi]
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	lea	rsi, [rsi]
	call	__lstat
	test	eax, eax
	je	.label_1048
	lea	rsi, [rsi]
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1047
.label_1048:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_1047:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411de0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	lea	rdi, [rdi]
	mov	r8d, 6
	jmp	gen_tempname_len
	nop	
	.section	.text
	.align	16
	#Procedure 0x411df0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	lea	rsi, [rsi]
	jmp	try_tempname_len
	nop	
	.section	.text
	.align	16
	#Procedure 0x411e00

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
	ja	.label_1049
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
	jmp	.label_1050
.label_1049:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_1050:
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
	.align	16
	#Procedure 0x411e70

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	rbp, rbp
	mov	eax, ecx
	lea	rsi, [rsi]
	mov	rcx, rdx
	mov	rdx, rsi
	lea	rsi, [rsi]
	mov	rsi, rdi
	nop	
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	nop	
	.section	.text
	.align	16
	#Procedure 0x411e90

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	nop	
	sub	rsp, 0xf8
	mov	ebp, r8d
	mov	rsp, rsp
	mov	rbx, rcx
	mov	rbp, rbp
	mov	r13, rdx
	nop	
	mov	qword ptr [rsp + 0x18], rsi
	mov	dword ptr [rsp + 0x24], edi
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13 + 0x58]
	mov	rsp, rsp
	mov	r15, qword ptr [rbx + 0x58]
	lea	rdi, [rdi]
	mov	rdi, r13
	call	get_stat_mtime_ns
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, rbx
	mov	rsp, rsp
	call	get_stat_mtime_ns
	lea	rdi, [rdi]
	mov	r14, rax
	mov	rsp, rsp
	test	bpl, 1
	je	.label_1071
	cmp	r12, r15
	jne	.label_1075
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	eax, r14d
	mov	rbp, rbp
	je	.label_1052
.label_1075:
	lea	rax, [r15 - 2]
	nop	
	mov	ecx, 0xffffffff
	cmp	r12, rax
	mov	rbp, rbp
	jle	.label_1052
	lea	rax, [r12 - 2]
	mov	ecx, 1
	lea	rdi, [rdi]
	cmp	r15, rax
	jle	.label_1052
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	jne	.label_1068
	mov	edi, 0x10
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	nop	
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rax
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1056
.label_1068:
	cmp	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	lea	rdi, [rdi]
	jne	.label_1054
	nop	
	mov	edi, 0x10
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rax
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	test	rax, rax
	je	.label_1058
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1054:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	qword ptr [rsi], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	nop	
	call	hash_insert
	mov	rcx, rax
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1058
	cmp	rcx,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	nop	
	jne	.label_1066
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_1066
.label_1058:
	mov	rsp, rsp
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	je	.label_1062
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xe8], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	lea	rsi, [rsp + 0xe8]
	nop	
	call	hash_lookup
	mov	rsp, rsp
	mov	rcx, rax
.label_1062:
	test	rcx, rcx
	lea	rdi, [rdi]
	jne	.label_1066
.label_1056:
	mov	dword ptr [rsp + 0xf0], 0x77359400
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0xf4], 0
	lea	rcx, [rsp + 0xe8]
.label_1066:
	nop	
	cmp	byte ptr [rcx + 0xc], 0
	je	.label_1070
	mov	r13d, dword ptr [rcx + 8]
	mov	rbp, rbp
	jmp	.label_1072
.label_1070:
	mov	qword ptr [rsp + 0x10], rcx
	nop	
	mov	rbx, qword ptr [r13 + 0x48]
	lea	rsi, [rsi]
	mov	eax, dword ptr [r13 + 0x68]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 8], eax
	nop	
	mov	rdi, r13
	call	get_stat_atime_ns
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rdi, r13
	call	get_stat_ctime_ns
	mov	r8, rbp
	mov	rbp, rbp
	mov	r11, rbx
	mov	ecx, r11d
	mov	rsp, rsp
	or	ecx, r12d
	or	ecx, dword ptr [rsp + 8]
	mov	rbp, rbp
	and	ecx, 1
	movsxd	rdx, r8d
	mov	rsp, rsp
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	nop	
	add	esi, edi
	mov	rsp, rsp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	rsp, rsp
	sub	edx, esi
	mov	rsp, rsp
	movsxd	rsi, eax
	imul	rdi, rsi, 0x66666667
	mov	rbp, rbp
	mov	rbp, rdi
	lea	rdi, [rdi]
	shr	rbp, 0x3f
	lea	rsi, [rsi]
	sar	rdi, 0x22
	nop	
	add	edi, ebp
	lea	rdi, [rdi]
	add	edi, edi
	mov	rbp, rbp
	lea	edi, [rdi + rdi*4]
	mov	rbp, rbp
	sub	esi, edi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x28]
	movsxd	rdi, ebx
	mov	rbp, rbp
	imul	rdi, rdi, 0x66666667
	lea	rsi, [rsi]
	mov	rbp, rdi
	nop	
	shr	rbp, 0x3f
	nop	
	sar	rdi, 0x22
	nop	
	add	edi, ebp
	mov	rbp, rbp
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ebx
	lea	rdi, [rdi]
	sub	ebp, edi
	mov	rbp, rbp
	or	ebp, edx
	mov	rsp, rsp
	or	ebp, esi
	je	.label_1061
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x10]
	mov	dword ptr [r10 + 8], 1
	mov	r13d, 1
.label_1053:
	mov	dword ptr [r10 + 8], r13d
	mov	byte ptr [r10 + 0xc], 1
.label_1072:
	cmp	r13d, 0x77359400
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	not	rax
	and	r15, rax
	mov	rsp, rsp
	mov	eax, r14d
	mov	rbp, rbp
	cdq	
	mov	rsp, rsp
	idiv	r13d
	lea	rsi, [rsi]
	sub	r14d, edx
.label_1071:
	mov	ecx, 0xffffffff
	cmp	r12, r15
	mov	rsp, rsp
	jl	.label_1052
	mov	ecx, 1
	jg	.label_1052
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	cmp	eax, r14d
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	jl	.label_1052
	setg	al
	lea	rdi, [rdi]
	movzx	ecx, al
.label_1052:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_1061:
	nop	
	mov	r10, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	cmp	dword ptr [r10 + 8], 0xa
	lea	rdi, [rdi]
	jle	.label_1051
	mov	r13d, 0xa
	mov	rsp, rsp
	mov	edx, r8d
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r8
	nop	
	mov	rsi, qword ptr [rsp + 0x28]
.label_1060:
	movsxd	rsi, esi
	nop	
	imul	rsi, rsi, 0x66666667
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rbp, rbp
	shr	rdi, 0x3f
	sar	rsi, 0x22
	mov	rbp, rbp
	add	esi, edi
	cdqe	
	mov	rsp, rsp
	imul	rax, rax, 0x66666667
	mov	rsp, rsp
	mov	rdi, rax
	shr	rdi, 0x3f
	lea	rdi, [rdi]
	sar	rax, 0x22
	mov	rbp, rbp
	add	eax, edi
	movsxd	rdx, edx
	mov	rbp, rbp
	imul	rdx, rdx, 0x66666667
	mov	rsp, rsp
	mov	rdi, rdx
	lea	rsi, [rsi]
	shr	rdi, 0x3f
	sar	rdx, 0x22
	mov	rsp, rsp
	add	edx, edi
	nop	
	movsxd	r8, edx
	imul	rdi, r8, 0x66666667
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	shr	rbx, 0x3f
	sar	rdi, 0x22
	add	edi, ebx
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	sub	r8d, edi
	movsxd	r9, eax
	imul	rbx, r9, 0x66666667
	mov	rbp, rbx
	mov	rsp, rsp
	shr	rbp, 0x3f
	sar	rbx, 0x22
	add	ebx, ebp
	nop	
	add	ebx, ebx
	mov	rbp, rbp
	lea	ebp, [rbx + rbx*4]
	sub	r9d, ebp
	nop	
	or	r9d, r8d
	lea	rsi, [rsi]
	movsxd	rbp, esi
	imul	rbx, rbp, 0x66666667
	mov	rsp, rsp
	mov	rdi, rbx
	shr	rdi, 0x3f
	nop	
	sar	rbx, 0x22
	add	ebx, edi
	lea	rsi, [rsi]
	add	ebx, ebx
	lea	rsi, [rsi]
	lea	edi, [rbx + rbx*4]
	sub	ebp, edi
	or	ebp, r9d
	jne	.label_1064
	nop	
	cmp	r13d, 0x3b9aca00
	je	.label_1073
	mov	rbp, rbp
	add	r13d, r13d
	lea	r13d, [r13 + r13*4]
	cmp	r13d, dword ptr [r10 + 8]
	jl	.label_1060
	jmp	.label_1064
.label_1051:
	mov	dword ptr [r10 + 8], 0xa
	lea	rdi, [rdi]
	mov	r13d, 0xa
	lea	rdi, [rdi]
	jmp	.label_1065
.label_1073:
	lea	rdi, [rdi]
	xor	ecx, 1
	shl	r13d, cl
.label_1064:
	lea	rdi, [rdi]
	mov	dword ptr [r10 + 8], r13d
	nop	
	cmp	r13d, 2
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 8]
	jl	.label_1053
.label_1065:
	cmp	r13d, 0x77359400
	sete	al
	mov	rbp, rbp
	movzx	esi, al
	lea	rdi, [rdi]
	mov	ecx, 1
	cmp	r15, r12
	lea	rdi, [rdi]
	jl	.label_1052
	mov	rsp, rsp
	cmp	r12, r15
	mov	rsp, rsp
	setne	al
	mov	rdx, qword ptr [rsp + 0x28]
	nop	
	cmp	r14d, edx
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	mov	ebx, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	jg	.label_1057
	mov	rbp, rbp
	test	al, al
	je	.label_1052
.label_1057:
	nop	
	mov	rax, rsi
	nop	
	not	rax
	lea	rdi, [rdi]
	and	rax, r15
	nop	
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	cmp	r12, rax
	mov	rsp, rsp
	jl	.label_1052
	mov	rsp, rsp
	jne	.label_1059
	mov	rbp, rbp
	mov	eax, r14d
	nop	
	cdq	
	idiv	r13d
	lea	rdi, [rdi]
	mov	eax, r14d
	mov	rsp, rsp
	sub	eax, edx
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	cmp	edx, eax
	jl	.label_1052
.label_1059:
	mov	qword ptr [rsp + 0xc0], r11
	movsxd	rax, r8d
	mov	qword ptr [rsp + 0xc8], rax
	or	rsi, r12
	nop	
	mov	qword ptr [rsp + 0xd0], rsi
	movsxd	rax, r13d
	imul	rax, rax, 0x38e38e39
	lea	rdi, [rdi]
	mov	rcx, rax
	shr	rcx, 0x3f
	sar	rax, 0x21
	add	eax, ecx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x28]
	add	eax, ecx
	mov	rsp, rsp
	cdqe	
	mov	qword ptr [rsp + 0xd8], rax
	lea	rdx, [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	ecx, 0x100
	mov	edi, ebx
	mov	rsi, rbp
	call	utimensat
	mov	rbp, rbp
	mov	ecx, 0xfffffffe
	test	eax, eax
	nop	
	jne	.label_1052
	lea	rdx, [rsp + 0x30]
	nop	
	mov	ecx, 0x100
	mov	edi, ebx
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	fstatat
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], eax
	cdqe	
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	xor	rbx, r12
	lea	rsi, [rsi]
	or	rbx, rax
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsi]
	call	get_stat_mtime_ns
	nop	
	mov	rcx, qword ptr [rsp + 0x28]
	movsxd	rcx, ecx
	xor	rax, rcx
	or	rax, rbx
	mov	rsp, rsp
	je	.label_1074
	mov	qword ptr [rsp + 0xd0], r12
	mov	qword ptr [rsp + 0xd8], rcx
	lea	rdx, [rsp + 0xc0]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	utimensat
.label_1074:
	cmp	dword ptr [rsp + 8], 0
	je	.label_1067
	mov	ecx, 0xfffffffe
	jmp	.label_1052
.label_1067:
	mov	ebx, dword ptr [rsp + 0x88]
	mov	rbp, rbp
	and	ebx, 1
	mov	rsp, rsp
	neg	ebx
	and	ebx, 0x3b9aca00
	lea	rdi, [rsp + 0x30]
	call	get_stat_mtime_ns
	nop	
	add	rax, rbx
	mov	rsp, rsp
	movsxd	rdx, eax
	lea	rsi, [rsi]
	imul	rcx, rdx, 0x66666667
	nop	
	mov	rsi, rcx
	shr	rsi, 0x3f
	nop	
	sar	rcx, 0x22
	add	ecx, esi
	mov	rsp, rsp
	add	ecx, ecx
	lea	esi, [rcx + rcx*4]
	mov	ecx, 1
	mov	rbp, rbp
	cmp	edx, esi
	je	.label_1069
	mov	rsp, rsp
	mov	edx, 1
	jmp	.label_1055
.label_1069:
	lea	rsi, [rsi]
	mov	edx, 0x77359400
	nop	
	cmp	ecx, 0x3b9aca00
	je	.label_1055
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	lea	rsi, [rsi]
	cmp	ecx, r13d
	je	.label_1063
	mov	rsp, rsp
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	sar	rax, 0x22
	add	eax, edx
	nop	
	movsxd	rdx, eax
	lea	rsi, [rsi]
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	lea	rdi, [rdi]
	shr	rdi, 0x3f
	lea	rsi, [rsi]
	sar	rsi, 0x22
	mov	rbp, rbp
	add	esi, edi
	lea	rdi, [rdi]
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	lea	rdi, [rdi]
	cmp	edx, esi
	mov	edx, ecx
	je	.label_1069
	jmp	.label_1055
.label_1063:
	lea	rdi, [rdi]
	mov	edx, ecx
.label_1055:
	mov	r13d, edx
	lea	rdi, [rdi]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_1053
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412620

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	nop	
	div	rsi
	mov	rbp, rbp
	mov	rax, rdx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412640

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	nop	
	sete	al
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x412650
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	lea	rsi, [rsi]
	mov	ecx, 0x100
	nop	
	jmp	utimensat
	nop	
	.section	.text
	.align	16
	#Procedure 0x412660

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x100
	mov	r14, rsi
	mov	rbp, rbp
	mov	r15d, edi
	xor	ebp, ebp
	test	rdx, rdx
	lea	rax, [rsp + 0xe0]
	lea	rdi, [rdi]
	cmove	rax, rdx
	mov	qword ptr [rsp + 0xd8], rax
	lea	rdi, [rdi]
	je	.label_1099
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0xd8]
	call	validate_timespec
	nop	
	mov	ebp, eax
	mov	rbp, rbp
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	ebp, ebp
	js	.label_1079
.label_1099:
	mov	rbp, rbp
	test	r15d, r15d
	jns	.label_1100
	nop	
	test	r14, r14
	mov	rbp, rbp
	jne	.label_1100
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	jmp	.label_1079
.label_1100:
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	js	.label_1077
	mov	rbp, rbp
	cmp	ebp, 2
	lea	rsi, [rsi]
	jne	.label_1082
	lea	rsi, [rsp + 0x48]
	mov	rbp, rbp
	test	r15d, r15d
	js	.label_1085
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rbp, rbp
	call	__fstat
	mov	rsp, rsp
	jmp	.label_1091
.label_1085:
	mov	rdi, r14
	mov	rbp, rbp
	call	stat
.label_1091:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1079
	mov	rbx, qword ptr [rsp + 0xd8]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1096
	lea	rdi, [rsp + 0x48]
	nop	
	call	get_stat_atime
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rax
	mov	rbp, rbp
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1088
.label_1096:
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	lea	rdi, [rdi]
	jne	.label_1088
	mov	rbp, rbp
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_1088:
	inc	ebp
.label_1082:
	test	r15d, r15d
	jns	.label_1087
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	edi, 0xffffff9c
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, r14
	call	utimensat
	lea	rsi, [rsi]
	mov	ebx, eax
	lea	rdi, [rdi]
	test	ebx, ebx
	jle	.label_1095
	mov	rbp, rbp
	call	__errno_location
	mov	dword ptr [rax], 0x26
	nop	
	jmp	.label_1101
.label_1095:
	mov	rsp, rsp
	je	.label_1094
.label_1101:
	nop	
	call	__errno_location
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0x26
	jne	.label_1094
.label_1087:
	mov	rsp, rsp
	test	r15d, r15d
	js	.label_1077
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rsp, rsp
	mov	edi, r15d
	call	futimens
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1083
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x26
	mov	rbp, rbp
	jmp	.label_1098
.label_1094:
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1079
.label_1083:
	je	.label_1078
.label_1098:
	mov	rbp, rbp
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1078
.label_1077:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	nop	
	test	ebp, ebp
	lea	rsi, [rsi]
	je	.label_1092
	cmp	ebp, 3
	je	.label_1103
	lea	rsi, [rsp + 0x48]
	nop	
	test	r15d, r15d
	js	.label_1104
	nop	
	mov	edi, r15d
	lea	rdi, [rdi]
	call	__fstat
	jmp	.label_1081
.label_1078:
	nop	
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	lea	rsi, [rsi]
	jmp	.label_1079
.label_1104:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	stat
.label_1081:
	nop	
	mov	ebx, 0xffffffff
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1079
.label_1103:
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xd8], 0
	je	.label_1092
	mov	rsp, rsp
	lea	rdi, [rsp + 0x48]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0xd8]
	call	update_timespec
	mov	rsp, rsp
	xor	ebx, ebx
	test	al, al
	jne	.label_1079
.label_1092:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd8]
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	rax, rax
	mov	rsp, rsp
	je	.label_1097
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	rsi, qword ptr [rsp + 0xd8]
	mov	rbp, rbp
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	lea	rsi, [rsi]
	imul	qword ptr [rsi + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	lea	rdi, [rdi]
	sar	rdx, 7
	mov	rsp, rsp
	add	rdx, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	rdx, qword ptr [rsp + 0xd8]
	mov	rax, rcx
	mov	rbp, rbp
	imul	qword ptr [rdx + 0x18]
	mov	rax, rdx
	mov	rbp, rbp
	shr	rax, 0x3f
	sar	rdx, 7
	nop	
	add	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	mov	rsp, rsp
	lea	rbp, [rsp + 0x20]
.label_1097:
	test	r15d, r15d
	lea	rsi, [rsi]
	js	.label_1084
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	esi, esi
	mov	edi, r15d
	nop	
	mov	rdx, rbp
	call	futimesat
	test	eax, eax
	mov	rsp, rsp
	je	.label_1090
	nop	
	mov	ebx, 0xffffffff
	lea	rsi, [rsi]
	test	r14, r14
	mov	rsp, rsp
	je	.label_1079
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	utimes
	jmp	.label_1102
.label_1084:
	mov	rbp, rbp
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	futimesat
.label_1102:
	mov	rsp, rsp
	mov	ebx, eax
.label_1079:
	lea	rdi, [rdi]
	mov	eax, ebx
	add	rsp, 0x100
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_1090:
	test	rbp, rbp
	je	.label_1079
	mov	rsp, rsp
	mov	r12, qword ptr [rbp + 8]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x18]
	lea	rdi, [rdi]
	cmp	r12, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	lea	rdi, [rdi]
	or	cl, al
	mov	rbp, rbp
	movzx	eax, cl
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_1079
	lea	rsi, [rsp + 0x48]
	mov	rbp, rbp
	mov	edi, r15d
	call	__fstat
	test	eax, eax
	jne	.label_1079
	mov	rsp, rsp
	lea	rcx, [rbp + 0x10]
	mov	rax, qword ptr [rsp + 0x90]
	nop	
	mov	rbx, qword ptr [rsp + 0xa0]
	mov	rsp, rsp
	sub	rax, qword ptr [rbp]
	sub	rbx, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rbp]
	movaps	xmmword ptr [rsp], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rcx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	xor	ebp, ebp
	lea	rsi, [rsi]
	cmp	r12, 0x7a120
	jl	.label_1089
	cmp	rax, 1
	jne	.label_1089
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x48]
	call	get_stat_atime_ns
	xor	ebp, ebp
	test	rax, rax
	jne	.label_1089
	lea	rbp, [rsp]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], 0
.label_1089:
	mov	rbp, rbp
	cmp	r14, 0x7a120
	lea	rdi, [rdi]
	jl	.label_1086
	cmp	rbx, 1
	jne	.label_1086
	lea	rdi, [rsp + 0x48]
	nop	
	call	get_stat_mtime_ns
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1076
.label_1086:
	test	rbp, rbp
	jne	.label_1093
	lea	rdi, [rdi]
	jmp	.label_1080
.label_1076:
	lea	rbp, [rsp]
	mov	qword ptr [rsp + 0x18], 0
.label_1093:
	xor	esi, esi
	mov	edi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	futimesat
.label_1080:
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_1079
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412b40

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, 0x3b9aca00
	lea	rdi, [rdi]
	jb	.label_1105
	nop	
	and	rax, 0xfffffffffffffffe
	nop	
	cmp	rax, 0x3ffffffe
	jne	.label_1107
.label_1105:
	mov	rax, qword ptr [rdi + 0x18]
	lea	rdi, [rdi]
	cmp	rax, 0x3b9aca00
	jb	.label_1106
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	mov	rbp, rbp
	je	.label_1106
.label_1107:
	nop	
	push	rax
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	add	rsp, 8
	lea	rsi, [rsi]
	ret	
.label_1106:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	and	rax, 0xfffffffffffffffe
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	cmp	rax, 0x3ffffffe
	mov	rsp, rsp
	mov	eax, 0
	jne	.label_1109
	mov	qword ptr [rdi], 0
	mov	rsp, rsp
	cmp	qword ptr [rdi + 8], 0x3ffffffe
	sete	al
	mov	rsp, rsp
	movzx	eax, al
	mov	ecx, 1
.label_1109:
	nop	
	mov	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	and	rdx, 0xfffffffffffffffe
	cmp	rdx, 0x3ffffffe
	jne	.label_1108
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x10], 0
	nop	
	cmp	qword ptr [rdi + 0x18], 0x3ffffffe
	lea	rsi, [rsi]
	sete	cl
	mov	rsp, rsp
	movzx	ecx, cl
	add	eax, ecx
	mov	ecx, 1
.label_1108:
	nop	
	cmp	eax, 1
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	eax, al
	add	eax, ecx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x412c30

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	r14
	nop	
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [rsi]
	nop	
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3ffffffe
	mov	rbp, rbp
	jne	.label_1115
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	mov	rbp, rbp
	je	.label_1114
	mov	rax, qword ptr [rbx + 8]
.label_1115:
	mov	rsp, rsp
	cmp	rax, 0x3fffffff
	mov	rbp, rbp
	jne	.label_1113
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	mov	rsp, rsp
	jne	.label_1113
	mov	qword ptr [rsi], 0
	nop	
	jmp	.label_1112
.label_1113:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3fffffff
	mov	rsp, rsp
	je	.label_1116
	mov	rbp, rbp
	cmp	rax, 0x3ffffffe
	lea	rdi, [rdi]
	jne	.label_1111
	nop	
	mov	rdi, r14
	call	get_stat_atime
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1111
.label_1116:
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	gettime
.label_1111:
	mov	rax, qword ptr [rbx + 0x18]
	nop	
	cmp	rax, 0x3fffffff
	lea	rdi, [rdi]
	je	.label_1110
	cmp	rax, 0x3ffffffe
	lea	rsi, [rsi]
	jne	.label_1112
	mov	rdi, r14
	lea	rsi, [rsi]
	call	get_stat_mtime
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
	jmp	.label_1112
.label_1110:
	lea	rdi, [rdi]
	add	rbx, 0x10
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	gettime
.label_1112:
	nop	
	xor	eax, eax
.label_1114:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412d30

	.globl utimens
	.type utimens, @function
utimens:
	lea	rsi, [rsi]
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	nop	
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	fdutimens
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412d50

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xc0
	mov	r14, rdi
	nop	
	xor	ebp, ebp
	test	rsi, rsi
	mov	rsp, rsp
	lea	rax, [rsp + 0xa0]
	lea	rdi, [rdi]
	cmove	rax, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x98], rax
	je	.label_1123
	movups	xmm0, xmmword ptr [rsi]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rsi, [rsi]
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	mov	rdi, qword ptr [rsp + 0x98]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_1119
.label_1123:
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	lea	rdi, [rdi]
	js	.label_1129
	cmp	ebp, 2
	mov	rbp, rbp
	jne	.label_1122
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	nop	
	call	__lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1119
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1128
	nop	
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	nop	
	jmp	.label_1118
.label_1128:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	lea	rsi, [rsi]
	jne	.label_1118
	mov	rbp, rbp
	lea	rdi, [rsp + 8]
	call	get_stat_mtime
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_1118:
	lea	rsi, [rsi]
	inc	ebp
.label_1122:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	lea	rsi, [rsi]
	jle	.label_1127
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x26
	jmp	.label_1117
.label_1127:
	je	.label_1121
.label_1117:
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1121
.label_1129:
	nop	
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	mov	rsp, rsp
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_1124
	mov	rbp, rbp
	cmp	ebp, 3
	nop	
	je	.label_1126
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	nop	
	call	__lstat
	mov	rsp, rsp
	mov	ebx, 0xffffffff
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1119
.label_1126:
	cmp	qword ptr [rsp + 0x98], 0
	je	.label_1125
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x98]
	mov	rsp, rsp
	call	update_timespec
	nop	
	xor	ebx, ebx
	test	al, al
	mov	rsp, rsp
	je	.label_1125
	jmp	.label_1119
.label_1121:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	mov	rsp, rsp
	jmp	.label_1119
.label_1124:
	lea	rsi, [rsi]
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	rdi, r14
	call	__lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1119
.label_1125:
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	cmp	eax, 0xa000
	jne	.label_1120
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	rsp, rsp
	mov	ebx, 0xffffffff
	nop	
	jmp	.label_1119
.label_1120:
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [rsi]
	mov	edi, 0xffffffff
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	fdutimens
	mov	rsp, rsp
	mov	ebx, eax
.label_1119:
	mov	eax, ebx
	lea	rdi, [rdi]
	add	rsp, 0xc0
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412fc0

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
	je	.label_1130
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_12
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_1132
.label_1130:
	mov	edx, OFFSET FLAT:.str.1_10
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_1132:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_6
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
	mov	esi, OFFSET FLAT:.str.3_3
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
	ja	.label_1135
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1136]]
.label_1319:
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
.label_1135:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_1
	jmp	.label_1131
.label_1320:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_1321:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_1322:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
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
	jmp	.label_1139
.label_1323:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
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
	jmp	.label_1138
.label_1324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
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
	jmp	.label_1137
.label_1325:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
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
.label_1137:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_1138:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_1139:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_1134
.label_1327:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_1131:
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
	jmp	.label_1133
.label_1326:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
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
.label_1133:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_1134:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1318:
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
	#Procedure 0x4133b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_1140:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_1140
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4133e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1144:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_1141
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_1143
	nop	word ptr cs:[rax + rax]
.label_1141:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1143:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1142
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_1144
.label_1142:
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
	#Procedure 0x413470

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_1145
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
.label_1145:
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
	#Procedure 0x413520
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_2
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_2
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17_0
	mov	ecx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_1
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
	#Procedure 0x4135b0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	and	al, 1
	jne	.label_1146
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	call	geteuid
	lea	rsi, [rsi]
	test	eax, eax
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_1146:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4135f0
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
	jb	.label_1147
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_1147:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413630

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_1148
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1149
.label_1148:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1149:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413660

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
	jb	.label_1150
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_1150:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4136a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_1151
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_1151
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_1151:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_1152
	test	rax, rax
	nop	
	je	.label_1153
.label_1152:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_1153:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4136f0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1154
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_1155
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1156
.label_1154:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_1157
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_1157:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_1158
.label_1156:
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
.label_1155:
	call	xalloc_die
.label_1158:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413790

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4137a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4137b0
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
	#Procedure 0x4137f0
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
	jb	.label_1159
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_1159
	pop	rcx
	ret	
.label_1159:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x413820

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
	#Procedure 0x413870

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
	#Procedure 0x413890

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_11
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
	.align	16
	#Procedure 0x4138e0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	call	getline
	test	rax, rax
	jle	.label_1160
	mov	rcx, qword ptr [rsp + 8]
	movzx	edx, byte ptr [rax + rcx - 1]
	lea	rdi, [rdi]
	cmp	edx, 0xa
	jne	.label_1161
	mov	rsp, rsp
	mov	byte ptr [rcx + rax - 1], 0
.label_1161:
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	call	rpmatch
	test	eax, eax
	mov	rbp, rbp
	setg	bl
	jmp	.label_1162
.label_1160:
	mov	rsp, rsp
	xor	ebx, ebx
.label_1162:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	al, bl
	add	rsp, 0x10
	nop	
	pop	rbx
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x413960

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_1163
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1164
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
	je	.label_1164
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
.label_1163:
	mov	ecx, 1
.label_1164:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4139d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1165
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1165
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1165:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x413a00

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_1166
	mov	rbp, rbp
	ret	
.label_1166:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x413a20

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	nop	
	ja	.label_1167
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	nop	
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	je	.label_1168
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1168:
	lea	rdi, [rdi]
	add	rax, rcx
.label_1167:
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413a60

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
	jne	.label_1169
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1169
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1170
.label_1169:
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
.label_1170:
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
	je	.label_1171
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1171:
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
	#Procedure 0x413b10

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
	je	.label_1172
	nop	
	cmp	r15, -2
	jb	.label_1172
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_1172
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_1172:
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
	#Procedure 0x413ba0

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413bb0

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	lea	rdi, [rdi]
	mov	dword ptr [rcx], edx
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413bc0

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	cmp	esi, -1
	je	.label_1173
	lea	rdi, [rdi]
	mov	edi, esi
	nop	
	mov	esi, edx
	mov	rsp, rsp
	jmp	fchmod
.label_1173:
	mov	rbp, rbp
	mov	esi, edx
	mov	rbp, rbp
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413bf0

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	nop	
	push	rax
	mov	rbp, rbp
	mov	eax, dword ptr [rdi]
	mov	rdi, rsi
	nop	
	mov	esi, edx
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	call	chmod_or_fchmod
	mov	rbp, rbp
	neg	eax
	sbb	eax, eax
	mov	rbp, rbp
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413c20
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
	.align	16
	#Procedure 0x413c30
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
	.align	16
	#Procedure 0x413c40
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
	.align	16
	#Procedure 0x413c50
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
	.align	16
	#Procedure 0x413c60
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
	.align	16
	#Procedure 0x413c70

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
	.align	16
	#Procedure 0x413c80
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
	.align	16
	#Procedure 0x413cb0
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
	.align	16
	#Procedure 0x413ce0
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
	.align	16
	#Procedure 0x413d10
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
	.align	16
	#Procedure 0x413d40
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1174
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1174
.label_1175:
	ret	
.label_1174:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1175
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413d70
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1176
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1176:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x413d90
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413da0
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
	#Procedure 0x413db0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1177
.label_1178:
	ret	
.label_1177:
	cmp	edi, 0x7f
	je	.label_1178
	xor	eax, eax
	jmp	.label_1178
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413dd0
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
	#Procedure 0x413de0
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
	#Procedure 0x413df0
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
	#Procedure 0x413e00
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
	#Procedure 0x413e10
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_1179
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_1179
.label_1180:
	ret	
.label_1179:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_1180
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413e40
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1181
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_1181:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413e60

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
	#Procedure 0x413e70
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1182
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1182:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x413e90
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
	#Procedure 0x413ea0
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
	#Procedure 0x413eb0

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
	je	.label_1184
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1183
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_1183
.label_1184:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1183
	test	cl, cl
	jne	.label_1183
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_1183:
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
	#Procedure 0x413f50

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	push	rax
	call	opendir
	mov	rsp, rsp
	mov	r14, rax
	lea	rdi, [rdi]
	xor	ebx, ebx
	nop	
	test	r14, r14
	mov	rbp, rbp
	je	.label_1185
	lea	rsi, [rsi]
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	nop	
	cmp	ecx, 2
	mov	rbp, rbp
	ja	.label_1186
	lea	rsi, [rsi]
	mov	esi, 0x406
	lea	rdi, [rdi]
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	lea	rdi, [rdi]
	js	.label_1188
	mov	edi, ebp
	call	fdopendir
	lea	rsi, [rsi]
	mov	rbx, rax
	call	__errno_location
	mov	r15d, dword ptr [rax]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_1187
	lea	rsi, [rsi]
	mov	edi, ebp
	call	close
	jmp	.label_1189
.label_1186:
	mov	rbx, r14
	lea	rdi, [rdi]
	jmp	.label_1185
.label_1188:
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_1189:
	xor	ebx, ebx
.label_1187:
	mov	rdi, r14
	call	closedir
	call	__errno_location
	nop	
	mov	dword ptr [rax], r15d
.label_1185:
	lea	rdi, [rdi]
	mov	rax, rbx
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414020

	.globl gettime
	.type gettime, @function
gettime:
	mov	rsp, rsp
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	.section	.text
	.align	16
	#Procedure 0x414030
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	lea	rsi, [rsi]
	sub	rsp, 0x18
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	call	gettime
	nop	
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x18
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414060

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
	je	.label_1191
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1190
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_1192
.label_1190:
	nop	
	mov	esi, OFFSET FLAT:.str.1_12
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1191
.label_1192:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1191:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4140b0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	lea	rsi, [rsi]
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1193
	mov	rbp, rbp
	inc	rdi
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1194:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	lea	rdi, [rdi]
	mov	cl, byte ptr [rdi]
	mov	rbp, rbp
	inc	rdi
	test	cl, cl
	mov	rsp, rsp
	jne	.label_1194
.label_1193:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414100

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
	mov	eax, OFFSET FLAT:.str.1_13
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1195
	nop	
	mov	rax, rcx
.label_1195:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414140

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	nop	
	sub	rsp, 0xc8
	nop	
	test	al, al
	lea	rdi, [rdi]
	je	.label_1196
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x50], xmm2
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x80], xmm5
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1196:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	dl, 0x40
	je	.label_1197
	lea	rdi, [rdi]
	lea	rax, [rsp]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xc0], rax
	lea	rsi, [rsi]
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x18
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1199
	nop	
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1198
.label_1199:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1198:
	mov	ecx, dword ptr [rax]
.label_1197:
	xor	eax, eax
	call	openat
	lea	rsi, [rsi]
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414260

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	call	xmalloc
	nop	
	mov	qword ptr [rax], rbx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414290

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_1200
	lea	rdi, [rdi]
	mov	rdi, rax
	pop	rax
	mov	rsp, rsp
	jmp	randint_new
.label_1200:
	xor	eax, eax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4142c0
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	nop
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4142d0

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	nop	
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	lea	rbp, [r13 + 1]
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	lea	r12, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_1202:
	cmp	rbx, r13
	jae	.label_1201
	lea	rsi, [rsi]
	mov	rax, rbx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1207:
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	shift_left
	lea	rdi, [rdi]
	add	rax, 0xff
	inc	r14
	lea	rdi, [rdi]
	cmp	rax, r13
	jb	.label_1207
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, r14
	mov	rsp, rsp
	call	randread
	mov	rbp, r12
	nop	
.label_1203:
	mov	rdi, r15
	call	shift_left
	nop	
	movzx	r15d, byte ptr [rbp]
	nop	
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	lea	rdi, [rdi]
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbx, r13
	jb	.label_1203
	mov	rcx, r15
	nop	
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_1204
.label_1201:
	nop	
	mov	rcx, r15
.label_1204:
	mov	rsp, rsp
	mov	rsi, rbx
	sub	rsi, r13
	lea	rsi, [rsi]
	je	.label_1206
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	r15, rdx
	mov	rbp, rbp
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	ja	.label_1202
	xor	edx, edx
	mov	rax, rcx
	mov	rsp, rsp
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, rsi
	mov	rbp, rbp
	div	rbp
	nop	
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rcx, r15
	mov	rsp, rsp
	jmp	.label_1205
.label_1206:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
.label_1205:
	mov	rax, rcx
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414470

	.globl shift_left
	.type shift_left, @function
shift_left:
	mov	rbp, rbp
	shl	rdi, 8
	mov	rax, rdi
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414480

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4144a0

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	lea	rsi, [rsi]
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	rbp, rbp
	mov	eax, r14d
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4144f0

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_1209
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_1210
	mov	esi, OFFSET FLAT:.str_13
	mov	rdi, rbx
	call	fopen_safer
	nop	
	mov	r12, rax
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	r12, r12
	nop	
	je	.label_1208
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	lea	rdi, [rdi]
	cmp	r15, 0x1000
	lea	rdi, [rdi]
	mov	ecx, 0x1000
	mov	rsp, rsp
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	call	setvbuf
	jmp	.label_1208
.label_1209:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	jmp	simple_new
.label_1210:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	simple_new
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	mov	rsp, rsp
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	mov	rsp, rsp
	call	get_nonce
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	isaac_seed
.label_1208:
	mov	rbp, rbp
	mov	rax, r14
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414600

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	edi, 0x1038
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414650

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:.str.3_4
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	call	open
	nop	
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1211
	cmp	rbx, 0x800
	mov	edx, 0x800
	lea	rdi, [rdi]
	cmovbe	rdx, rbx
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	nop	
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	xor	r15d, r15d
	nop	
	test	rbx, rbx
	mov	rsp, rsp
	js	.label_1211
	mov	rbp, rbp
	cmp	rbx, 0x7ff
	mov	r15, rbx
	mov	rsp, rsp
	ja	.label_1212
.label_1211:
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, r15
	mov	rbp, rbp
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	mov	rsp, rsp
	ja	.label_1212
	lea	rdi, [rdi]
	mov	eax, 0x800
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, 4
	lea	rsi, [rsi]
	mov	r15d, 4
	mov	rsp, rsp
	cmovbe	r15, rax
	lea	rsi, [rsi]
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rbp, rbp
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	nop	
	cmp	r15, 0x7ff
	mov	rbp, rbp
	ja	.label_1212
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	nop	
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1212
	mov	eax, 0x800
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, 4
	nop	
	mov	r15d, 4
	mov	rbp, rbp
	cmovbe	r15, rax
	lea	rdi, [rdi]
	call	getuid
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], eax
	mov	rbp, rbp
	lea	rdi, [r14 + rbx]
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	add	r15, rbx
	mov	rsp, rsp
	cmp	r15, 0x7ff
	ja	.label_1212
	lea	rdi, [rdi]
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r15
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	lea	rsi, [rsi]
	cmovbe	rbx, rax
	nop	
	call	getgid
	mov	dword ptr [rsp + 8], eax
	nop	
	add	r14, r15
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
.label_1212:
	nop	
	add	rsp, 0x18
	pop	rbx
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414880
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414890
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4148a0

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	cmp	qword ptr [rdi], 0
	mov	rsp, rsp
	je	.label_1213
	nop	
	jmp	readsource
.label_1213:
	add	rdi, 0x18
	nop	
	jmp	readisaac
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4148c0

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r13, rdx
	nop	
	mov	r14, rsi
	nop	
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, r14
	call	fread_unlocked
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	mov	rbp, rbp
	cmp	rbx, r13
	nop	
	je	.label_1215
	nop	word ptr [rax + rax]
.label_1214:
	lea	rsi, [rsi]
	sub	r13, rbx
	mov	rbp, rbp
	add	r14, rbx
	nop	
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, r13
	nop	
	call	fread_unlocked
	mov	rbp, rbp
	mov	rbx, rax
	cmp	r13, rbx
	jne	.label_1214
.label_1215:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414980

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	mov	rsp, rsp
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	nop	
	sub	rsi, r12
	lea	rsi, [rsi]
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_1216
	nop	
	lea	rbp, [r14 + 8]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	lea	rsi, [rsi]
	add	rbx, r12
	lea	rdi, [rdi]
	sub	r15, r12
	mov	rbp, rbp
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1218:
	cmp	r15, 0x800
	jb	.label_1217
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	lea	rsi, [rsi]
	add	rbx, 0x800
	mov	rbp, rbp
	add	r15, -0x800
	lea	rsi, [rsi]
	jne	.label_1218
	jmp	.label_1219
.label_1217:
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	rsi, r13
	call	isaac_refill
	nop	
	mov	r12d, 0x800
	mov	rsi, r13
.label_1216:
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, r15
	nop	
	call	memcpy
	mov	rsp, rsp
	sub	r12, r15
.label_1219:
	mov	qword ptr [r14], r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414a70

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x1038
	nop	
	call	explicit_bzero
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r14, r14
	je	.label_1220
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_1220:
	xor	eax, eax
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x414ac0

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_1221
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_1223
	mov	esi, OFFSET FLAT:.str.1_14
	jmp	.label_1222
.label_1223:
	mov	esi, OFFSET FLAT:.str.2_7
.label_1222:
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_1221:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x414b50

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x810]
	mov	rbp, rbp
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	nop	
	lea	rax, [r14 + 0x400]
	mov	qword ptr [rsp], rax
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	r15, r14
	nop	dword ptr [rax]
.label_1224:
	mov	qword ptr [rsp + 0x10], rbp
	lea	rsi, [rsi]
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r15 + 0x400]
	mov	rbx, qword ptr [r15]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, r12
	lea	rdi, [rdi]
	add	rax, r13
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	mov	rsp, rsp
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rdi, r13
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	shr	rbp, 5
	lea	rdi, [rdi]
	xor	rbp, r13
	nop	
	add	rbp, qword ptr [r15 + 0x408]
	nop	
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	mov	rbp, rbp
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r15 + 8], rbx
	mov	rbp, rbp
	shr	rbx, 8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	ind
	add	r12, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	call	just
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r15 + 0x410]
	mov	rbp, rbp
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r15 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbp
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	call	just
	mov	rbx, rax
	nop	
	shr	rbx, 0x21
	lea	rsi, [rsi]
	xor	rbx, r12
	add	rbx, qword ptr [r15 + 0x418]
	lea	rsi, [rsi]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	nop	
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	ind
	nop	
	add	r12, rax
	nop	
	mov	rdi, r12
	lea	rsi, [rsi]
	call	just
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	lea	rdi, [rdi]
	add	r15, 0x20
	add	rbp, 0x20
	cmp	r15, rcx
	jb	.label_1224
	add	qword ptr [rsp + 8], 0x400
	lea	rax, [r14 + 0x800]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	nop	
.label_1225:
	nop	
	mov	r13, rbx
	shl	r13, 0x15
	nop	
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [rcx - 0x400]
	mov	rsp, rsp
	mov	rbx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, rbx
	mov	r15, rcx
	call	ind
	mov	rsp, rsp
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	nop	
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	just
	mov	rbx, rax
	shr	rbx, 5
	lea	rdi, [rdi]
	xor	rbx, r13
	mov	rbp, rbp
	add	rbx, qword ptr [r15 - 0x3f8]
	nop	
	mov	r12, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	nop	
	call	ind
	add	rbp, rbx
	add	rbp, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rbp
	mov	rsp, rsp
	shr	rbp, 8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	ind
	lea	rsi, [rsi]
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbp, rax
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r13 + 8], rbp
	mov	r12, rbx
	shl	r12, 0xc
	xor	r12, rbx
	nop	
	add	r12, qword ptr [r15 - 0x3f0]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	call	ind
	mov	rsp, rsp
	add	rbp, r12
	lea	rsi, [rsi]
	add	rbp, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x10], rbp
	shr	rbp, 8
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	nop	
	mov	rdi, rbx
	call	just
	nop	
	mov	rbp, rax
	mov	qword ptr [r13 + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	lea	rdi, [rdi]
	shr	rbx, 0x21
	mov	rsp, rsp
	xor	rbx, r12
	add	rbx, qword ptr [r15 - 0x3e8]
	mov	rbp, rbp
	mov	r12, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rbp, rbp
	call	ind
	lea	rdi, [rdi]
	add	rbp, rbx
	add	rbp, rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x18], rbp
	mov	rbp, rbp
	shr	rbp, 8
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	r12, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	rcx, r15
	mov	rbp, rbp
	mov	r12, rax
	mov	rax, r13
	mov	qword ptr [rax + 0x18], r12
	nop	
	add	rcx, 0x20
	add	rax, 0x20
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rsp + 0x10]
	jb	.label_1225
	mov	qword ptr [r14 + 0x800], rbx
	mov	qword ptr [r14 + 0x808], r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414fa0

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x414fb0

	.globl just
	.type just, @function
just:
	mov	rsp, rsp
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414fc0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	mov	rbp, rbp
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	lea	rdi, [rdi]
	movabs	rdx, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	mov	rbp, rbp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1227:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	lea	rdi, [rdi]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	mov	rbp, rbp
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	lea	rsi, [rsi]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	mov	rbp, rbp
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rbp, rbp
	mov	rdi, r12
	call	just
	nop	
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	nop	
	add	r12, rbp
	nop	
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	shl	rbp, 9
	lea	rsi, [rsi]
	xor	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x28], rbp
	nop	
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	mov	rsp, rsp
	xor	r12, rax
	add	r15, r14
	nop	
	mov	qword ptr [rsp], r15
	mov	rbp, rbp
	sub	rbx, r12
	nop	
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	mov	rsp, rsp
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x10]
	sub	r13, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	call	just
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	shr	r15, 0xe
	mov	rbp, rbp
	xor	r15, qword ptr [rsp]
	add	rbx, r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	lea	rsi, [rsi]
	shl	r14, 0x14
	mov	rsp, rsp
	xor	r14, qword ptr [rsp + 8]
	mov	rbp, rbp
	add	r13, rdi
	mov	qword ptr [rsp + 8], r13
	mov	r13, qword ptr [rsp + 0x28]
	nop	
	sub	r13, r14
	nop	
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbx, rax
	mov	rsp, rsp
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, r13
	mov	rbp, rbp
	add	rdx, rax
	lea	rsi, [rsi]
	sub	r12, rbx
	mov	rbp, rbp
	shl	r13, 0xe
	nop	
	xor	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	add	rax, r12
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	lea	rdi, [rdi]
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_1227
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_1226:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	add	r15, qword ptr [rdi + rcx*8 + 8]
	lea	rdi, [rdi]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	lea	rsi, [rsi]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	nop	
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	mov	rsp, rsp
	xor	rbp, qword ptr [rsp + 0x28]
	sub	r14, rbp
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	lea	rdi, [rdi]
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	mov	rsp, rsp
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	rbp, rbp
	mov	r14, r13
	mov	rbp, rbp
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	r13, rdi
	lea	rdi, [rdi]
	sub	rbp, r14
	lea	rdi, [rdi]
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp + 0x30]
	add	rdx, rbp
	nop	
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	lea	rdi, [rdi]
	add	rbp, r12
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	nop	
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_1226
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi + 0x800], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x810], 0
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4153f0

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
	#Procedure 0x415410

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	16
	#Procedure 0x415420

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
	js	.label_1228
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1229
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
	je	.label_1228
.label_1229:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1228
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_1230
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1230:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1228:
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
	#Procedure 0x4154e0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_1240
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
.label_1240:
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
	ja	.label_1242
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_1231
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_1234
	mov	rbp, rbp
	test	esi, esi
	jne	.label_1242
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1244
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_1238
.label_1242:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_1235
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1234
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_1239
.label_1231:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1234:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1243
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_1233
.label_1243:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1233:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1239:
	nop	
	cmp	eax, 6
	jne	.label_1235
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1237
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_1241
.label_1235:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1232
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1236
.label_1244:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1238:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_1237:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_1241:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_1232:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1236:
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
	#Procedure 0x415780

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
	#Procedure 0x4157a0

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
	js	.label_1245
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
	jns	.label_1246
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_1246
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1247
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_1248
.label_1246:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_1248
.label_1245:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1248:
	test	ebx, ebx
	js	.label_1247
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1247
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1249
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
	jne	.label_1247
.label_1249:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1247:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4158b0

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
	.section	.text
	.align	16
	#Procedure 0x4158d0

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
	je	.label_1250
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1251
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1254
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1252
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1250
.label_1252:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_1253
.label_1251:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1250
.label_1254:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1253:
	xor	eax, eax
.label_1250:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415a60

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x415a70

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	16
	#Procedure 0x415a80

	.globl __lstat
	.type __lstat, @function
__lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x415a90

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
	nop	word ptr cs:[rax + rax]
	nop	
	.section .text
	.align	16
	#Procedure 0x415ab0

	.globl __mknod
	.type __mknod, @function
__mknod:
	sub	rsp, 0x18
	lea	rcx, [rsp + 8]
	mov	qword ptr [rsp + 8], rdx
	mov	edx, esi
	mov	rsi, rdi
	xor	edi, edi
	call	__xmknod
	add	rsp, 0x18
	ret	
