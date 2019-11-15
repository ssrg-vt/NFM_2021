	.section	.text
	.align	16
	#Procedure 0x401930

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_78
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	cmp	dword ptr [rip + tcsetattr_options],  1
	jne	.label_79
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	jmp	.label_111
.label_78:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
.label_111:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_58
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_102
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_51
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_62
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_71
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_45
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_100
	mov	ecx, OFFSET FLAT:label_101
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	mov	r8d, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_38
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_34
	mov	esi, OFFSET FLAT:label_46
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_34
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_63
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_63
	mov	ecx, OFFSET FLAT:label_73
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402540

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rsi
	mov	dword ptr [rsp + 0x1c], edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_223
	call	setlocale
	mov	edi, OFFSET FLAT:label_235
	mov	esi, OFFSET FLAT:label_256
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_235
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [rip + opterr],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	mov	ebp, 1
	mov	al, 1
	mov	dword ptr [rsp + 0x18], eax
	mov	r13d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_192
.label_247:
	mov	ebp, r12d
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r12, rbx
	mov	ebx, eax
	jmp	.label_192
	nop	
.label_208:
	test	rax, rax
	je	.label_247
	neg	rax
	nop	dword ptr [rax + rax]
.label_250:
	inc	r12
	inc	rax
	jne	.label_250
	jmp	.label_247
	nop	word ptr [rax + rax]
.label_192:
	mov	edi, dword ptr [rsp + 0x1c]
	sub	edi, r15d
	movsxd	rax, r15d
	lea	rsi, [r12 + rax*8]
	mov	edx, OFFSET FLAT:label_254
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	call	getopt_long
	cmp	eax, 0x45
	jg	.label_121
	cmp	eax, -1
	je	.label_124
	cmp	eax, 0xffffff7d
	je	.label_126
	cmp	eax, 0xffffff7e
	jne	.label_132
	jmp	.label_136
	nop	word ptr cs:[rax + rax]
.label_121:
	cmp	eax, 0x46
	je	.label_139
	cmp	eax, 0x61
	je	.label_143
	cmp	eax, 0x67
	jne	.label_132
	mov	ebx, 2
	mov	r13b, 1
	jmp	.label_146
	nop	dword ptr [rax]
.label_132:
	add	r15d, ebp
	movsxd	rax, r15d
	mov	rbp, qword ptr [r12 + rax*8]
	mov	esi, OFFSET FLAT:label_159
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_169
	mov	esi, OFFSET FLAT:label_170
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_169
	mov	dword ptr [rsp + 0x18], 0
.label_169:
	mov	dword ptr [rip + optind],  0
	mov	ebp, 1
	jmp	.label_146
.label_139:
	cmp	qword ptr [rsp + 0x20], 0
	jne	.label_182
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_146
.label_143:
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	ebx, 1
.label_146:
	movsxd	r14, dword ptr [rip + optind]
	cmp	ebp, r14d
	jge	.label_192
	mov	rcx, r12
	mov	dword ptr [rsp + 0x2c], ebx
	movsxd	r12, ebp
	movsxd	rax, r15d
	add	rax, r12
	mov	rbx, rcx
	lea	rdi, [rcx + rax*8]
	lea	rdx, [r12 + 1]
	cmp	rdx, r14
	cmovl	rdx, r14
	sub	rdx, r12
	shl	rdx, 3
	xor	esi, esi
	call	memset
	mov	eax, r14d
	sub	eax, ebp
	lea	rcx, [r14 - 1]
	sub	rcx, r12
	and	eax, 7
	cmp	rcx, 7
	jb	.label_208
	sub	r14, rax
	nop	dword ptr [rax + rax]
.label_215:
	add	r12, 8
	cmp	r14, r12
	jne	.label_215
	jmp	.label_208
.label_124:
	mov	r14d, ebx
	mov	eax, r13d
	mov	rbx, qword ptr [rsp + 0x30]
	and	al, bl
	test	al, 1
	jne	.label_218
	mov	eax, dword ptr [rsp + 0x18]
	test	al, 1
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_224
	mov	eax, ebx
	or	al, r13b
	and	al, 1
	jne	.label_226
.label_224:
	test	rbp, rbp
	mov	r15, rbp
	jne	.label_228
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_232
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
.label_228:
	mov	eax, dword ptr [rsp + 0x18]
	or	r13b, al
	or	r13b, bl
	and	r13b, 1
	jne	.label_236
	lea	rax, [rsp + 0x17]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x16]
	mov	edi, 1
	mov	r8d, OFFSET FLAT:main.check_mode
	mov	rsi, r15
	mov	rdx, r12
	mov	ecx, dword ptr [rsp + 0x1c]
	call	apply_settings
.label_236:
	test	rbp, rbp
	mov	ebx, r14d
	je	.label_173
	xor	edi, edi
	mov	edx, 0x800
	xor	ecx, ecx
	mov	rsi, r15
	call	fd_reopen
	test	eax, eax
	js	.label_129
	xor	edi, edi
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_122
	and	ecx, 0xfffff7ff
	xor	edi, edi
	mov	esi, 4
	xor	eax, eax
	mov	edx, ecx
	call	rpl_fcntl
	test	eax, eax
	js	.label_122
.label_173:
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.mode
	call	tcgetattr
	test	eax, eax
	jne	.label_129
	test	r13b, r13b
	jne	.label_209
	mov	byte ptr [rsp + 0x16], 0
	mov	byte ptr [rsp + 0x17], 0
	lea	rax, [rsp + 0x17]
	mov	qword ptr [rsp], rax
	lea	r9, [rsp + 0x16]
	xor	edi, edi
	mov	r8d, OFFSET FLAT:main.mode
	mov	rsi, r15
	mov	rdx, r12
	mov	ecx, dword ptr [rsp + 0x1c]
	call	apply_settings
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_119
	mov	esi, dword ptr [rip + tcsetattr_options]
	xor	edi, edi
	mov	edx, OFFSET FLAT:main.mode
	call	tcsetattr
	test	eax, eax
	jne	.label_129
	xor	edi, edi
	mov	esi, OFFSET FLAT:main.new_mode
	call	tcgetattr
	test	eax, eax
	jne	.label_129
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_119
	and	dword ptr [rip + label_185],  0xeff0ffff
	cmp	byte ptr [rsp + 0x16], 0
	jne	.label_186
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, OFFSET FLAT:main.new_mode
	mov	edx, 0x3c
	call	memcmp
	test	eax, eax
	je	.label_119
.label_186:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_201
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_209:
	lea	rdx, [rsp + 0x40]
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	jne	.label_216
	movzx	eax, word ptr [rsp + 0x42]
	test	eax, eax
	jne	.label_217
.label_216:
	mov	edi, OFFSET FLAT:label_219
	call	getenv
	test	rax, rax
	je	.label_221
	lea	rcx, [rsp + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_223
	mov	rdi, rax
	call	xstrtol
	test	eax, eax
	jne	.label_221
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_217
.label_221:
	mov	qword ptr [rsp + 0x38], 0x50
	mov	eax, 0x50
.label_217:
	mov	dword ptr [rip + max_col],  eax
	mov	dword ptr [rip + current_col],  0
	cmp	ebx, 2
	je	.label_237
	cmp	ebx, 1
	je	.label_241
	test	ebx, ebx
	jne	.label_119
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	movzx	esi, byte ptr [rip + label_242]
	mov	edi, OFFSET FLAT:label_243
	xor	eax, eax
	call	wrapf
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_248
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_253:
	mov	dword ptr [rip + current_col],  0
	mov	r14b, 1
	mov	ebp, OFFSET FLAT:label_245
	jmp	.label_246
	nop	dword ptr [rax + rax]
.label_135:
	add	rbp, 0x18
.label_246:
	mov	r15, qword ptr [rbp - 0x10]
	cmp	byte ptr [r15], 0x6d
	jne	.label_123
	cmp	byte ptr [r15 + 1], 0x69
	jne	.label_123
	cmp	byte ptr [r15 + 2], 0x6e
	jne	.label_123
	cmp	byte ptr [r15 + 3], 0
	je	.label_133
	nop	word ptr [rax + rax]
.label_123:
	mov	rax, qword ptr [rbp]
	movzx	ebx, byte ptr [rax + label_140]
	cmp	bl, byte ptr [rbp - 8]
	je	.label_135
	mov	esi, OFFSET FLAT:label_147
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	je	.label_135
	test	bl, bl
	mov	edx, OFFSET FLAT:label_141
	je	.label_144
	cmp	bl, 0x20
	jb	.label_171
	cmp	bl, 0x7e
	ja	.label_165
	mov	byte ptr [rip + visible.buf],  bl
	mov	eax, OFFSET FLAT:label_157
	jmp	.label_166
.label_171:
	mov	byte ptr [rip + visible.buf],  0x5e
	add	bl, 0x40
	mov	byte ptr [rip + label_157],  bl
	jmp	.label_172
.label_165:
	cmp	bl, 0x7f
	jne	.label_177
	mov	word ptr [rip + visible.buf],  0x3f5e
.label_172:
	mov	eax, OFFSET FLAT:label_176
.label_166:
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_144:
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_180
	xor	eax, eax
	mov	rsi, r15
	call	wrapf
	jmp	.label_135
.label_177:
	mov	word ptr [rip + visible.buf],  0x2d4d
	cmp	bl, 0xa0
	jb	.label_193
	cmp	bl, 0xff
	je	.label_197
	xor	bl, 0x80
	mov	byte ptr [rip + label_176],  bl
	mov	eax, OFFSET FLAT:label_191
	jmp	.label_166
.label_193:
	mov	byte ptr [rip + label_176],  0x5e
	add	bl, 0xc0
	mov	byte ptr [rip + label_191],  bl
	mov	eax, OFFSET FLAT:label_196
	jmp	.label_166
.label_197:
	mov	word ptr [rip + label_176],  0x3f5e
	mov	eax, OFFSET FLAT:label_196
	jmp	.label_166
.label_237:
	mov	edx, dword ptr [rip + main.mode]
	mov	ecx, dword ptr [rip + label_153]
	mov	r8d, dword ptr [rip + label_154]
	mov	r9d, dword ptr [rip + label_155]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_156
	xor	eax, eax
	call	__printf_chk
	mov	rbx, -0x20
	nop	word ptr cs:[rax + rax]
.label_227:
	movzx	edx, byte ptr [rbx + label_189]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_190
	xor	eax, eax
	call	__printf_chk
	inc	rbx
	jne	.label_227
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_175
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_119
.label_241:
	mov	edi, OFFSET FLAT:main.mode
	mov	esi, 1
	call	display_speed
	mov	edi, 1
	mov	rsi, r15
	call	display_window_size
	movzx	esi, byte ptr [rip + label_242]
	mov	edi, OFFSET FLAT:label_243
	xor	eax, eax
	call	wrapf
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_244
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_120:
	mov	dword ptr [rip + current_col],  0
	mov	ebp, OFFSET FLAT:label_245
	jmp	.label_251
	nop	word ptr cs:[rax + rax]
.label_138:
	add	rbp, 0x18
.label_251:
	mov	rbx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rbx], 0x6d
	jne	.label_118
	cmp	byte ptr [rbx + 1], 0x69
	jne	.label_118
	cmp	byte ptr [rbx + 2], 0x6e
	jne	.label_118
	cmp	byte ptr [rbx + 3], 0
	je	.label_178
	nop	word ptr cs:[rax + rax]
.label_118:
	mov	esi, OFFSET FLAT:label_147
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	je	.label_138
	mov	rax, qword ptr [rbp]
	movzx	eax, byte ptr [rax + label_140]
	test	al, al
	mov	edx, OFFSET FLAT:label_141
	je	.label_142
	cmp	al, 0x20
	jb	.label_257
	cmp	al, 0x7e
	ja	.label_152
	mov	byte ptr [rip + visible.buf],  al
	mov	eax, OFFSET FLAT:label_157
	jmp	.label_158
.label_257:
	mov	byte ptr [rip + visible.buf],  0x5e
	add	al, 0x40
	mov	byte ptr [rip + label_157],  al
	jmp	.label_164
.label_152:
	cmp	al, 0x7f
	jne	.label_199
	mov	word ptr [rip + visible.buf],  0x3f5e
	nop	dword ptr [rax + rax]
.label_164:
	mov	eax, OFFSET FLAT:label_176
.label_158:
	mov	byte ptr [rax], 0
	mov	edx, OFFSET FLAT:visible.buf
.label_142:
	mov	edi, OFFSET FLAT:label_180
	xor	eax, eax
	mov	rsi, rbx
	call	wrapf
	jmp	.label_138
.label_199:
	mov	word ptr [rip + visible.buf],  0x2d4d
	cmp	al, 0xa0
	jb	.label_130
	cmp	al, 0xff
	je	.label_167
	xor	al, 0x80
	mov	byte ptr [rip + label_176],  al
	mov	eax, OFFSET FLAT:label_191
	jmp	.label_158
.label_130:
	mov	byte ptr [rip + label_176],  0x5e
	add	al, 0xc0
	mov	byte ptr [rip + label_191],  al
	mov	eax, OFFSET FLAT:label_196
	jmp	.label_158
.label_167:
	mov	word ptr [rip + label_176],  0x3f5e
	mov	eax, OFFSET FLAT:label_196
	jmp	.label_158
.label_133:
	test	byte ptr [rip + label_155],  2
	jne	.label_202
	movzx	esi, byte ptr [rip + label_203]
	movzx	edx, byte ptr [rip + label_204]
	mov	edi, OFFSET FLAT:label_205
	xor	eax, eax
	call	wrapf
	jmp	.label_131
.label_178:
	movzx	esi, byte ptr [rip + label_203]
	movzx	edx, byte ptr [rip + label_204]
	mov	edi, OFFSET FLAT:label_212
	xor	eax, eax
	call	wrapf
	cmp	dword ptr [rip + current_col],  0
	je	.label_148
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_234
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_148:
	mov	dword ptr [rip + current_col],  0
	mov	rbx, -0xb20
	xor	r15d, r15d
	jmp	.label_174
.label_202:
	test	r14b, 1
	jne	.label_131
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_249
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_131:
	mov	dword ptr [rip + current_col],  0
	xor	eax, eax
	mov	r14b, 1
	mov	rbx, -0xb20
	jmp	.label_160
.label_252:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_174:
	movzx	r14d, byte ptr [rbx + label_183]
	test	r14b, 8
	jne	.label_179
	mov	ebp, dword ptr [rbx + label_187]
	cmp	ebp, r15d
	je	.label_222
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_252
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_220:
	mov	dword ptr [rip + current_col],  0
	mov	r15d, ebp
.label_222:
	cmp	r15d, 5
	jae	.label_125
	mov	rax, qword ptr [rbx + label_127]
	test	rax, rax
	jne	.label_128
	mov	rax, qword ptr [rbx + label_198]
.label_128:
	cmp	r15d, 4
	je	.label_137
	movsxd	rcx, r15d
	mov	rcx, qword ptr [(rcx * 8) + label_229]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	cmp	rcx, qword ptr [rbx + label_198]
	jne	.label_230
	mov	rsi, qword ptr [rbx + label_149]
	mov	edi, OFFSET FLAT:label_150
	jmp	.label_151
	nop	word ptr cs:[rax + rax]
.label_230:
	test	r14b, 4
	je	.label_179
	mov	rsi, qword ptr [rbx + label_149]
	mov	edi, OFFSET FLAT:label_168
.label_151:
	xor	eax, eax
	call	wrapf
.label_179:
	add	rbx, 0x20
	jne	.label_174
	jmp	.label_231
.label_200:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_181
	nop	word ptr cs:[rax + rax]
.label_160:
	movsx	r15d, byte ptr [rbx + label_183]
	test	r15b, 8
	jne	.label_184
	mov	ebp, dword ptr [rbx + label_187]
	cmp	ebp, eax
	jne	.label_188
	mov	ebp, eax
	jmp	.label_194
	nop	dword ptr [rax]
.label_184:
	mov	ebp, eax
	jmp	.label_225
	nop	word ptr [rax + rax]
.label_188:
	test	r14b, 1
	jne	.label_194
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_200
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_181:
	mov	dword ptr [rip + current_col],  0
	mov	r14b, 1
.label_194:
	cmp	ebp, 5
	jae	.label_145
	mov	rax, qword ptr [rbx + label_127]
	test	rax, rax
	jne	.label_211
	mov	rax, qword ptr [rbx + label_198]
.label_211:
	cmp	ebp, 4
	je	.label_214
	movsxd	rcx, ebp
	mov	rcx, qword ptr [(rcx * 8) + label_229]
	mov	ecx, dword ptr [rcx]
	and	rcx, rax
	cmp	rcx, qword ptr [rbx + label_198]
	jne	.label_238
	test	r15b, 2
	je	.label_225
	mov	rsi, qword ptr [rbx + label_149]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_150
	jmp	.label_255
	nop	word ptr cs:[rax + rax]
.label_238:
	and	r15d, 5
	cmp	r15d, 5
	jne	.label_225
	mov	rsi, qword ptr [rbx + label_149]
	xor	r14d, r14d
	mov	edi, OFFSET FLAT:label_168
.label_255:
	xor	eax, eax
	call	wrapf
.label_225:
	add	rbx, 0x20
	mov	eax, ebp
	jne	.label_160
	test	r14b, 1
	jne	.label_239
.label_231:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_240
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_239:
	mov	dword ptr [rip + current_col],  0
.label_119:
	xor	eax, eax
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_240:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_239
.label_248:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_253
.label_175:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_119
.label_244:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_120
.label_234:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_148
.label_249:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_131
.label_126:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_63
	mov	edx, OFFSET FLAT:label_37
	mov	r8d, OFFSET FLAT:label_134
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_136:
	xor	edi, edi
	call	usage
.label_129:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_150
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_125:
	call	abort
.label_137:
	mov	edi, OFFSET FLAT:label_161
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 0x7f6
	mov	ecx, OFFSET FLAT:label_233
	call	__assert_fail
.label_145:
	call	abort
.label_214:
	mov	edi, OFFSET FLAT:label_161
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 0x7a2
	mov	ecx, OFFSET FLAT:label_163
	call	__assert_fail
.label_122:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_195
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_218:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_206
	jmp	.label_207
.label_226:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_210
	jmp	.label_207
.label_182:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_213
.label_207:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403150

	.globl apply_settings
	.type apply_settings, @function
apply_settings:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x60], r9
	mov	r13, r8
	mov	ebx, ecx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x58], rsi
	mov	dword ptr [rsp + 0x1c], edi
	cmp	ebx, 2
	jl	.label_364
	lea	rax, [r13 + 8]
	mov	qword ptr [rsp + 0x38], rax
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r13 + 0xc]
	mov	qword ptr [rsp + 0x40], rax
	lea	eax, [rbx - 1]
	mov	dword ptr [rsp + 0x2c], eax
	mov	r15d, 1
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 8], rbx
	jmp	.label_290
.label_372:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	je	.label_387
	and	eax, 0xfffffccf
	or	eax, 0x120
	mov	dword ptr [rcx], eax
	jmp	.label_280
.label_379:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	jne	.label_398
.label_387:
	and	eax, 0xfffffecf
	or	eax, 0x30
	mov	dword ptr [rcx], eax
	jmp	.label_280
.label_382:
	cmp	byte ptr [r13 + 1], 0x6b
	jne	.label_386
	cmp	byte ptr [r13 + 2], 0
	je	.label_406
.label_386:
	mov	esi, OFFSET FLAT:label_261
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_267
	mov	esi, OFFSET FLAT:label_271
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_277
	mov	esi, OFFSET FLAT:label_279
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_281
	mov	esi, OFFSET FLAT:label_380
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_291
	cmp	bl, 0x72
	jne	.label_295
	cmp	byte ptr [r13 + 1], 0x61
	jne	.label_295
	cmp	byte ptr [r13 + 2], 0x77
	jne	.label_295
	cmp	byte ptr [r13 + 3], 0
	je	.label_302
.label_295:
	mov	esi, OFFSET FLAT:label_307
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_302
	mov	esi, OFFSET FLAT:label_363
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_313
	mov	esi, OFFSET FLAT:label_318
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_320
	mov	esi, OFFSET FLAT:label_321
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_326
	mov	esi, OFFSET FLAT:label_329
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_326
	mov	al, 1
	cmp	bl, 0x64
	je	.label_362
	cmp	bl, 0x63
	jne	.label_341
	cmp	byte ptr [r13 + 1], 0x72
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_343
	cmp	byte ptr [r13 + 2], 0x74
	jne	.label_289
	cmp	byte ptr [r13 + 3], 0
	je	.label_297
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_282
.label_267:
	mov	r13, qword ptr [rsp + 0x10]
	mov	byte ptr [r13 + 0x1c], 0
	mov	byte ptr [r13 + 0x21], 0
	mov	word ptr [r13 + 0x19], 0x1311
	mov	byte ptr [r13 + 0x1b], 0x1a
	mov	byte ptr [r13 + 0x1d], 0x12
	mov	byte ptr [r13 + 0x1f], 0x17
	mov	byte ptr [r13 + 0x20], 0x16
	mov	byte ptr [r13 + 0x1e], 0xf
	movabs	rax, 0x10004157f1c03
	mov	qword ptr [r13 + 0x11], rax
	mov	rcx, -0xb20
	mov	rbx, qword ptr [rsp + 8]
	nop	
.label_374:
	movsx	eax, byte ptr [rcx + label_183]
	test	al, 0x10
	jne	.label_371
	test	al, 1
	jne	.label_314
	test	al, 2
	je	.label_371
	mov	edx, dword ptr [rcx + label_187]
	cmp	rdx, 4
	ja	.label_405
	mov	rax, qword ptr [rsp + 0x38]
	jmp	qword ptr [(rdx * 8) + label_394]
.label_1054:
	test	r13, r13
	mov	rax, r13
	jne	.label_293
	jmp	.label_276
	nop	word ptr cs:[rax + rax]
.label_314:
	mov	edx, dword ptr [rcx + label_187]
	cmp	rdx, 4
	ja	.label_391
	mov	rax, qword ptr [rsp + 0x38]
	jmp	qword ptr [(rdx * 8) + label_396]
.label_902:
	test	r13, r13
	mov	rax, r13
	jne	.label_399
	jmp	.label_403
.label_903:
	mov	rax, qword ptr [rsp + 0x50]
	jmp	.label_399
.label_904:
	mov	rax, qword ptr [rsp + 0x40]
.label_399:
	mov	edx, dword ptr [rcx + label_127]
	mov	esi, 0xffffffff
	xor	edx, esi
	and	edx, dword ptr [rax]
	or	edx, dword ptr [rcx + label_198]
	mov	dword ptr [rax], edx
	jmp	.label_371
.label_1055:
	mov	rax, qword ptr [rsp + 0x50]
	jmp	.label_293
.label_1056:
	mov	rax, qword ptr [rsp + 0x40]
.label_293:
	mov	edx, dword ptr [rcx + label_127]
	mov	edi, 0xffffffff
	xor	edx, edi
	and	edx, dword ptr [rax]
	mov	esi, dword ptr [rcx + label_198]
	xor	esi, edi
	and	esi, edx
	mov	dword ptr [rax], esi
	nop	word ptr cs:[rax + rax]
.label_371:
	add	rcx, 0x20
	mov	al, 1
	jne	.label_374
	jmp	.label_282
.label_398:
	and	eax, 0xfffffccf
	or	eax, 0x320
	mov	dword ptr [rcx], eax
	jmp	.label_280
.label_277:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_298
	or	eax, 2
	jmp	.label_305
.label_281:
	mov	rax, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	and	eax, ecx
	cmp	r12b, 0x2d
	jne	.label_308
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	mov	al, 1
	jmp	.label_270
.label_298:
	and	eax, 0xfffffffd
.label_305:
	mov	dword ptr [rcx], eax
	mov	al, 1
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_282
.label_291:
	mov	rax, qword ptr [rsp + 0x38]
	mov	eax, dword ptr [rax]
	mov	ecx, 0xfffffecf
	and	eax, ecx
	cmp	r12b, 0x2d
	jne	.label_322
	or	eax, 0x120
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	or	byte ptr [r13], 0x20
	or	byte ptr [r13 + 4], 1
	mov	al, 1
	jmp	.label_270
.label_308:
	or	eax, 0x30
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	and	byte ptr [r13], 0xdf
	mov	al, 1
	jmp	.label_270
.label_406:
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [r13 + 0x13], 0x157f
	mov	al, 1
	jmp	.label_270
.label_302:
	cmp	bl, 0x72
	setne	cl
	cmp	r12b, 0x2d
	sete	al
	setne	dl
	or	dl, cl
	cmp	bl, 0x63
	setne	cl
	cmp	dl, 1
	jne	.label_352
	or	al, cl
	je	.label_352
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13], 0
	and	byte ptr [r13 + 4], 0xfe
	and	byte ptr [r13 + 0xc], 0xf8
	mov	word ptr [r13 + 0x16], 0x100
	mov	al, 1
	jmp	.label_270
.label_322:
	or	eax, 0x30
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 8], eax
	and	byte ptr [r13], 0xdf
	and	byte ptr [r13 + 4], 0xfe
	mov	al, 1
	jmp	.label_270
.label_395:
	and	eax, 0xfffffeff
	mov	dword ptr [r13], eax
	and	byte ptr [r13 + 4], 0xfb
	mov	al, 1
	jmp	.label_270
.label_313:
	mov	r13, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [r13]
	cmp	r12b, 0x2d
	jne	.label_378
	or	eax, 0x800
	jmp	.label_381
.label_352:
	mov	r13, qword ptr [rsp + 0x10]
	or	dword ptr [r13], 0x526
	or	byte ptr [r13 + 4], 1
	or	byte ptr [r13 + 0xc], 3
	mov	al, 1
	jmp	.label_270
.label_326:
	mov	rax, qword ptr [rsp + 0x40]
	mov	eax, dword ptr [rax]
	cmp	r12b, 0x2d
	jne	.label_392
	and	eax, 0xfffffffb
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 0xc], eax
	and	byte ptr [r13 + 1], 0xfd
	and	byte ptr [r13 + 4], 0xfd
	mov	al, 1
	jmp	.label_270
.label_320:
	mov	rcx, qword ptr [rsp + 0x50]
	mov	eax, dword ptr [rcx]
	cmp	r12b, 0x2d
	jne	.label_312
	or	eax, 0x1800
	mov	dword ptr [rcx], eax
	jmp	.label_280
.label_378:
	and	eax, 0xfffff7ff
.label_381:
	mov	dword ptr [r13], eax
	mov	al, 1
	jmp	.label_270
.label_392:
	or	eax, 4
	mov	r13, qword ptr [rsp + 0x10]
	mov	dword ptr [r13 + 0xc], eax
	or	byte ptr [r13 + 1], 2
	or	byte ptr [r13 + 4], 2
	mov	al, 1
	jmp	.label_270
.label_312:
	and	eax, 0xffffe7ff
	mov	dword ptr [rcx], eax
	jmp	.label_280
.label_362:
	cmp	byte ptr [r13 + 1], 0x65
	jne	.label_341
	cmp	byte ptr [r13 + 2], 0x63
	mov	rbx, qword ptr [rsp + 8]
	jne	.label_289
	cmp	byte ptr [r13 + 3], 0
	je	.label_294
.label_343:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_282
.label_289:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_282
.label_345:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_317
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_317
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_299
	mov	rbx, -0x330
.label_325:
	mov	rsi, qword ptr [rbx + label_260]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_384
	add	rbx, 0x18
	mov	esi, 0xffffffff
	jne	.label_325
	jmp	.label_331
.label_330:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_317
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_317
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_274
	mov	rbx, -0x330
.label_353:
	mov	rsi, qword ptr [rbx + label_260]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_351
	add	rbx, 0x18
	mov	esi, 0xffffffff
	jne	.label_353
	jmp	.label_356
.label_349:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_317
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_317
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_274
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:label_268
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	edi, 0xffffffff
	mov	esi, eax
	jmp	.label_285
.label_335:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_317
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_317
	inc	r15d
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_274
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0x7fffffff
	mov	r8d, OFFSET FLAT:label_268
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	mov	esi, 0xffffffff
	mov	edi, eax
.label_285:
	mov	rdx, qword ptr [rsp + 0x58]
	call	set_window_size
	jmp	.label_274
.label_297:
	mov	rcx, qword ptr [rsp + 0x40]
	or	dword ptr [rcx], 0xa10
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_282
.label_294:
	mov	r13, qword ptr [rsp + 0x10]
	mov	byte ptr [r13 + 0x11], 3
	mov	byte ptr [r13 + 0x13], 0x7f
	mov	byte ptr [r13 + 0x14], 0x15
	or	dword ptr [r13 + 0xc], 0xa10
	and	byte ptr [r13 + 1], 0xf7
	jmp	.label_282
.label_384:
	mov	esi, dword ptr [rbx + label_284]
.label_331:
	mov	rdi, r13
	call	cfsetispeed
	jmp	.label_292
.label_351:
	mov	esi, dword ptr [rbx + label_284]
.label_356:
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
.label_275:
	call	cfsetospeed
.label_292:
	mov	rax, qword ptr [rsp + 0x60]
	mov	byte ptr [rax], 1
	jmp	.label_300
.label_354:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_274
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdx, [rsp + 0x20]
	call	ioctl
	test	eax, eax
	jne	.label_332
	movzx	eax, word ptr [rsp + 0x22]
	test	eax, eax
	jne	.label_266
.label_332:
	mov	edi, OFFSET FLAT:label_219
	call	getenv
	test	rax, rax
	je	.label_304
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_223
	mov	rdi, rax
	lea	rcx, [rsp + 0x48]
	call	xstrtol
	test	eax, eax
	jne	.label_304
	mov	rax, qword ptr [rsp + 0x48]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_266
.label_304:
	mov	qword ptr [rsp + 0x48], 0x50
	mov	eax, 0x50
.label_266:
	mov	dword ptr [rip + max_col],  eax
	mov	dword ptr [rip + current_col],  0
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x58]
	call	display_window_size
	jmp	.label_274
.label_358:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_317
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + rbp*8 + 8]
	test	r13, r13
	je	.label_317
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	rcx, -1
	mov	r8d, OFFSET FLAT:label_268
	mov	rdi, r13
	mov	r9, rax
	call	xnumtoumax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + 0x10], al
	movzx	ecx, al
	cmp	rcx, rax
	je	.label_366
	inc	rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0x30]
	mov	rdi, qword ptr [rax + rbp*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_366:
	inc	r15d
	jmp	.label_300
.label_327:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_274
	mov	edi, 1
	mov	esi, 0x5413
	xor	eax, eax
	lea	rdx, [rsp + 0x20]
	call	ioctl
	test	eax, eax
	jne	.label_397
	movzx	eax, word ptr [rsp + 0x22]
	test	eax, eax
	jne	.label_337
.label_397:
	mov	edi, OFFSET FLAT:label_219
	call	getenv
	test	rax, rax
	je	.label_273
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:label_223
	mov	rdi, rax
	lea	rcx, [rsp + 0x48]
	call	xstrtol
	test	eax, eax
	jne	.label_273
	mov	rax, qword ptr [rsp + 0x48]
	lea	rcx, [rax - 1]
	cmp	rcx, 0x7fffffff
	jb	.label_337
.label_273:
	mov	qword ptr [rsp + 0x48], 0x50
	mov	eax, 0x50
.label_337:
	mov	dword ptr [rip + max_col],  eax
	xor	esi, esi
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	call	display_speed
	jmp	.label_274
.label_369:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_274
	mov	rbx, -0x330
.label_306:
	mov	rsi, qword ptr [rbx + label_260]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_336
	add	rbx, 0x18
	mov	ebp, 0xffffffff
	jne	.label_306
	jmp	.label_323
.label_336:
	mov	ebp, dword ptr [rbx + label_284]
.label_323:
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, r13
	mov	esi, ebp
	call	cfsetispeed
	mov	rdi, r13
	mov	esi, ebp
	jmp	.label_275
	nop	word ptr cs:[rax + rax]
.label_290:
	movsxd	rbp, r15d
	mov	rax, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax + rbp*8]
	test	rax, rax
	je	.label_299
	mov	r12b, byte ptr [rax]
	lea	r14, [rax + 1]
	cmp	r12b, 0x2d
	cmovne	r14, rax
	mov	esi, OFFSET FLAT:label_170
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_338
	mov	rbx, -0xb20
	nop	dword ptr [rax]
.label_344:
	mov	r13, qword ptr [rbx + label_149]
	mov	rdi, r14
	mov	rsi, r13
	call	strcmp
	test	eax, eax
	je	.label_342
	add	rbx, 0x20
	jne	.label_344
	xor	eax, eax
	mov	r13, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 8]
	jmp	.label_346
	nop	dword ptr [rax]
.label_338:
	xor	eax, eax
	cmp	r12b, 0x2d
	setne	al
	mov	dword ptr [rip + tcsetattr_options],  eax
	jmp	.label_299
.label_342:
	cmp	r12b, 0x2d
	jne	.label_355
	test	byte ptr [rbx + label_183],  4
	jne	.label_355
	xor	eax, eax
	jmp	.label_341
.label_355:
	mov	ecx, dword ptr [rbx + label_187]
	cmp	rcx, 4
	ja	.label_359
	mov	rax, qword ptr [rsp + 0x38]
	jmp	qword ptr [(rcx * 8) + label_390]
.label_896:
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	jne	.label_258
.label_899:
	mov	esi, OFFSET FLAT:label_367
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_372
	mov	esi, OFFSET FLAT:label_333
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_372
	mov	esi, OFFSET FLAT:label_377
	mov	rdi, r13
	call	strcmp
	test	eax, eax
	je	.label_379
	mov	bl, byte ptr [r13]
	cmp	bl, 0x65
	je	.label_382
	cmp	bl, 0x6e
	jne	.label_386
	cmp	byte ptr [r13 + 1], 0x6c
	jne	.label_386
	cmp	byte ptr [r13 + 2], 0
	jne	.label_386
	mov	r13, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [r13]
	cmp	r12b, 0x2d
	jne	.label_395
	and	eax, 0xfffffe3f
	or	eax, 0x100
	mov	dword ptr [r13], eax
	mov	eax, dword ptr [r13 + 4]
	and	eax, 0xffffffd3
	or	eax, 4
	mov	dword ptr [r13 + 4], eax
	mov	al, 1
	jmp	.label_270
.label_898:
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_258
.label_897:
	mov	rax, qword ptr [rsp + 0x50]
.label_258:
	mov	edx, dword ptr [rax]
	mov	rcx, qword ptr [rbx + label_127]
	not	rcx
	and	rcx, rdx
	mov	rdx, qword ptr [rbx + label_198]
	cmp	r12b, 0x2d
	jne	.label_264
	mov	esi, 0xffffffff
	xor	edx, esi
	and	ecx, edx
	jmp	.label_278
.label_264:
	or	ecx, edx
.label_278:
	mov	dword ptr [rax], ecx
.label_280:
	mov	al, 1
.label_341:
	mov	r13, qword ptr [rsp + 0x10]
.label_270:
	mov	rbx, qword ptr [rsp + 8]
.label_282:
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	byte ptr [rcx], 1
.label_346:
	cmp	r12b, 0x2d
	setne	cl
	test	al, al
	jne	.label_402
	test	cl, cl
	je	.label_296
.label_402:
	test	al, al
	jne	.label_299
	mov	esi, OFFSET FLAT:label_301
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_301
	mov	r12d, 0
	je	.label_269
	mov	esi, OFFSET FLAT:label_361
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_361
	mov	r12d, 1
	je	.label_269
	mov	esi, OFFSET FLAT:label_319
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_319
	mov	r12d, 2
	je	.label_269
	mov	esi, OFFSET FLAT:label_328
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_328
	mov	r12d, 3
	je	.label_269
	mov	esi, OFFSET FLAT:label_340
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_340
	mov	r12d, 4
	je	.label_269
	mov	esi, OFFSET FLAT:label_348
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_348
	mov	r12d, 5
	je	.label_269
	mov	esi, OFFSET FLAT:label_357
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_357
	mov	r12d, 6
	je	.label_269
	mov	esi, OFFSET FLAT:label_365
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_365
	mov	r12d, 7
	je	.label_269
	mov	esi, OFFSET FLAT:label_370
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_370
	mov	r12d, 8
	je	.label_269
	mov	esi, OFFSET FLAT:label_375
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_375
	mov	r12d, 9
	je	.label_269
	mov	esi, OFFSET FLAT:label_385
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_385
	mov	r12d, 0xa
	je	.label_269
	mov	esi, OFFSET FLAT:label_393
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_393
	mov	r12d, 0xb
	je	.label_269
	mov	esi, OFFSET FLAT:label_404
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_404
	mov	r12d, 0xc
	je	.label_269
	mov	esi, OFFSET FLAT:label_262
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_262
	mov	r12d, 0xd
	je	.label_269
	mov	esi, OFFSET FLAT:label_147
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_147
	mov	r12d, 0xe
	je	.label_269
	mov	esi, OFFSET FLAT:label_288
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_288
	mov	r12d, 0xf
	je	.label_269
	mov	esi, OFFSET FLAT:label_316
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_316
	mov	r12d, 0x10
	je	.label_269
	mov	esi, OFFSET FLAT:label_283
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	mov	edi, OFFSET FLAT:label_283
	mov	r12d, 0x11
	je	.label_269
	mov	esi, OFFSET FLAT:label_259
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_345
	mov	esi, OFFSET FLAT:label_310
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_330
	mov	esi, OFFSET FLAT:label_347
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_335
	mov	esi, OFFSET FLAT:label_339
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_349
	mov	esi, OFFSET FLAT:label_401
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_349
	mov	esi, OFFSET FLAT:label_350
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_354
	mov	esi, OFFSET FLAT:label_265
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_358
	mov	esi, OFFSET FLAT:label_360
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_327
	mov	rbx, -0x330
.label_400:
	mov	rsi, qword ptr [rbx + label_260]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_369
	add	rbx, 0x18
	jne	.label_400
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, r14
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	qword ptr [rsp + 0x70], rax
	cmp	dword ptr [r13], 0
	jne	.label_263
	mov	rcx, qword ptr [rsp + 0x70]
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_263
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, r14
	je	.label_263
	cmp	byte ptr [rbx], 0x3a
	jne	.label_263
	inc	rbx
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	qword ptr [rsp + 0x68], rax
	cmp	dword ptr [r13], 0
	jne	.label_263
	mov	rcx, qword ptr [rsp + 0x68]
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_263
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	je	.label_263
	cmp	byte ptr [rbp], 0x3a
	jne	.label_263
	inc	rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbp
	lea	rsi, [rsp + 0x20]
	call	strtoul
	mov	r12, rax
	cmp	dword ptr [r13], 0
	jne	.label_263
	mov	rcx, r12
	mov	eax, ecx
	cmp	rax, rcx
	jne	.label_263
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	je	.label_263
	cmp	byte ptr [rbx], 0x3a
	jne	.label_263
	inc	rbx
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbx
	lea	rsi, [rsp + 0x20]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_263
	mov	ecx, eax
	cmp	rcx, rax
	jne	.label_263
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, rbx
	je	.label_263
	cmp	byte ptr [rcx], 0x3a
	jne	.label_263
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	dword ptr [rdx], esi
	mov	rsi, qword ptr [rsp + 0x68]
	mov	dword ptr [rdx + 4], esi
	mov	dword ptr [rdx + 8], r12d
	mov	dword ptr [rdx + 0xc], eax
	xor	ebx, ebx
.label_388:
	mov	rbp, rcx
	inc	rbp
	mov	dword ptr [r13], 0
	mov	edx, 0x10
	mov	rdi, rbp
	lea	rsi, [rsp + 0x20]
	call	strtoul
	cmp	dword ptr [r13], 0
	jne	.label_263
	cmp	rbx, 0x1f
	mov	dl, 0x3a
	jne	.label_303
	xor	edx, edx
.label_303:
	movzx	ecx, al
	cmp	rcx, rax
	jne	.label_263
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	rcx, rbp
	je	.label_263
	cmp	byte ptr [rcx], dl
	jne	.label_263
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rbx + 0x11], al
	inc	rbx
	cmp	rbx, 0x20
	jb	.label_388
	jmp	.label_300
.label_269:
	cmp	r15d, dword ptr [rsp + 0x2c]
	je	.label_317
	mov	rax, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rax + rbp*8 + 8]
	test	rbp, rbp
	je	.label_317
	cmp	byte ptr [rdi], 0x6d
	jne	.label_368
	cmp	byte ptr [rdi + 1], 0x69
	jne	.label_368
	cmp	byte ptr [rdi + 2], 0x6e
	jne	.label_368
	cmp	byte ptr [rdi + 3], 0
	je	.label_334
.label_368:
	mov	esi, OFFSET FLAT:label_283
	call	strcmp
	test	eax, eax
	je	.label_334
	movzx	ebx, byte ptr [rbp]
	test	rbx, rbx
	je	.label_376
	movzx	r14d, byte ptr [rbp + 1]
	test	r14, r14
	je	.label_376
	cmp	bl, 0x5e
	jne	.label_383
	cmp	r14b, 0x2d
	jne	.label_383
	cmp	byte ptr [rbp + 2], 0
	mov	eax, 0
	je	.label_272
.label_383:
	mov	esi, OFFSET FLAT:label_389
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	eax, 0
	je	.label_272
	cmp	bl, 0x5e
	jne	.label_334
	cmp	r14b, 0x3f
	mov	eax, 0x7f
	je	.label_272
	and	r14d, 0x9f
	mov	rax, r14
	jmp	.label_272
.label_334:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 0xff
	mov	r8d, OFFSET FLAT:label_268
	mov	rdi, rbp
	mov	r9, rax
	call	xnumtoumax
	jmp	.label_272
.label_376:
	mov	rax, rbx
.label_272:
	inc	r15d
	lea	rcx, [r12 + r12*2]
	mov	rcx, qword ptr [(rcx * 8) + label_245]
	mov	byte ptr [r13 + rcx + 0x11], al
.label_300:
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], 1
.label_274:
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_299:
	inc	r15d
	cmp	r15d, ebx
	jl	.label_290
.label_364:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_296:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	dec	r14
	jmp	.label_309
.label_317:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_311
.label_287:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
.label_309:
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_359:
	call	abort
.label_403:
	mov	edi, OFFSET FLAT:label_161
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 0x8cb
	mov	ecx, OFFSET FLAT:label_324
	call	__assert_fail
.label_391:
	call	abort
.label_276:
	mov	edi, OFFSET FLAT:label_161
	mov	esi, OFFSET FLAT:label_162
	mov	edx, 0x8d1
	mov	ecx, OFFSET FLAT:label_324
	call	__assert_fail
.label_405:
	call	abort
.label_263:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	jmp	.label_287
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404310

	.globl set_window_size
	.type set_window_size, @function
set_window_size:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	ebp, esi
	mov	ebx, edi
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_407
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 0x16
	jne	.label_411
	mov	qword ptr [rsp], 0
.label_407:
	test	ebx, ebx
	js	.label_408
	mov	word ptr [rsp], bx
.label_408:
	test	ebp, ebp
	js	.label_410
	mov	word ptr [rsp + 2], bp
.label_410:
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, 0x5414
	xor	eax, eax
	call	ioctl
	test	eax, eax
	jne	.label_409
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_409:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_150
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_411:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_150
	xor	eax, eax
	mov	esi, r15d
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4043d0

	.globl display_window_size
	.type display_window_size, @function
display_window_size:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14, rsi
	mov	ebp, edi
	lea	rdx, [rsp + 8]
	xor	edi, edi
	mov	esi, 0x5413
	xor	eax, eax
	call	ioctl
	test	eax, eax
	je	.label_413
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	jne	.label_414
	test	bpl, bpl
	jne	.label_412
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_413:
	mov	eax, OFFSET FLAT:label_415
	mov	edi, OFFSET FLAT:label_416
	test	bpl, bpl
	cmovne	rdi, rax
	movzx	esi, word ptr [rsp + 8]
	movzx	edx, word ptr [rsp + 0xa]
	xor	eax, eax
	call	wrapf
	test	bpl, bpl
	jne	.label_412
	mov	dword ptr [rip + current_col],  0
.label_412:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_414:
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_150
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044a0

	.globl display_speed
	.type display_speed, @function
display_speed:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r12d, esi
	mov	rbx, rdi
	call	cfgetispeed
	test	eax, eax
	je	.label_437
	mov	rdi, rbx
	call	cfgetispeed
	mov	ebp, eax
	mov	rdi, rbx
	call	cfgetospeed
	cmp	ebp, eax
	jne	.label_421
.label_437:
	mov	eax, OFFSET FLAT:label_422
	mov	ebp, OFFSET FLAT:label_423
	test	r12b, r12b
	cmovne	rbp, rax
	mov	rdi, rbx
	call	cfgetospeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_427
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_438:
	cmp	dword ptr [rdx], eax
	je	.label_418
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_420
	add	rcx, 2
	add	rdx, 0x30
	cmp	rcx, 0x23
	jne	.label_438
	jmp	.label_426
.label_421:
	mov	eax, OFFSET FLAT:label_428
	mov	r14d, OFFSET FLAT:label_429
	test	r12b, r12b
	cmovne	r14, rax
	mov	rdi, rbx
	call	cfgetispeed
	mov	ecx, 1
	mov	edx, OFFSET FLAT:label_427
	xor	r15d, r15d
.label_439:
	cmp	dword ptr [rdx], eax
	je	.label_419
	cmp	dword ptr [rdx + 0x18], eax
	je	.label_430
	add	rcx, 2
	add	rdx, 0x30
	cmp	rcx, 0x23
	jne	.label_439
	jmp	.label_432
.label_418:
	dec	rcx
.label_420:
	lea	rax, [rcx + rcx*2]
	mov	rsi, qword ptr [(rax * 8) + label_431]
.label_426:
	xor	eax, eax
	mov	rdi, rbp
	call	wrapf
	jmp	.label_436
.label_419:
	dec	rcx
.label_430:
	lea	rax, [rcx + rcx*2]
	mov	r15, qword ptr [(rax * 8) + label_431]
.label_432:
	mov	rdi, rbx
	call	cfgetospeed
	mov	ecx, 1
	mov	esi, OFFSET FLAT:label_427
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_435:
	cmp	dword ptr [rsi], eax
	je	.label_424
	cmp	dword ptr [rsi + 0x18], eax
	je	.label_434
	add	rcx, 2
	add	rsi, 0x30
	cmp	rcx, 0x23
	jne	.label_435
	jmp	.label_433
.label_424:
	dec	rcx
.label_434:
	lea	rax, [rcx + rcx*2]
	mov	rdx, qword ptr [(rax * 8) + label_431]
.label_433:
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, r15
	call	wrapf
.label_436:
	test	r12b, r12b
	jne	.label_425
	mov	dword ptr [rip + current_col],  0
.label_425:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045f0

	.globl wrapf
	.type wrapf, @function
wrapf:
	push	rbx
	sub	rsp, 0xe0
	mov	rbx, rdi
	test	al, al
	je	.label_444
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x90], xmm3
	movaps	xmmword ptr [rsp + 0xa0], xmm4
	movaps	xmmword ptr [rsp + 0xb0], xmm5
	movaps	xmmword ptr [rsp + 0xc0], xmm6
	movaps	xmmword ptr [rsp + 0xd0], xmm7
.label_444:
	mov	qword ptr [rsp + 0x58], r9
	mov	qword ptr [rsp + 0x50], r8
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x38], rsi
	lea	rax, [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0x18], rax
	mov	dword ptr [rsp + 0x14], 0x30
	mov	dword ptr [rsp + 0x10], 8
	lea	rdi, [rsp + 8]
	lea	rcx, [rsp + 0x10]
	mov	esi, 1
	mov	rdx, rbx
	call	__vasprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	js	.label_440
	mov	eax, dword ptr [rip + current_col]
	test	eax, eax
	jle	.label_442
	mov	esi, dword ptr [rip + max_col]
	sub	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x30]
	cmp	esi, ebx
	jge	.label_441
	cmp	rcx, rdx
	jae	.label_446
	lea	rax, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rax
	mov	byte ptr [rcx], 0xa
	mov	dword ptr [rip + current_col],  0
	jmp	.label_442
.label_441:
	cmp	rcx, rdx
	jae	.label_445
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], 0x20
.label_443:
	inc	eax
	mov	dword ptr [rip + current_col],  eax
.label_442:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	rdi, qword ptr [rsp + 8]
	call	free
	add	dword ptr [rip + current_col],  ebx
	add	rsp, 0xe0
	pop	rbx
	ret	
.label_446:
	mov	esi, 0xa
	call	__overflow
	mov	dword ptr [rip + current_col],  0
	jmp	.label_442
.label_445:
	mov	esi, 0x20
	call	__overflow
	mov	eax, dword ptr [rip + current_col]
	jmp	.label_443
.label_440:
	call	xalloc_die
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404750
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404760
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404770

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_452
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_449
	cmp	dword ptr [rbp], 0x20
	jne	.label_449
.label_452:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_448
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_447
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_150
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_448:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_447:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_451
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404830

	.globl fd_reopen
	.type fd_reopen, @function
fd_reopen:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edi
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, ecx
	call	open
	mov	ebx, eax
	cmp	ebx, ebp
	je	.label_454
	test	ebx, ebx
	js	.label_454
	mov	edi, ebx
	mov	esi, ebp
	call	dup2
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_453
.label_454:
	mov	eax, ebx
.label_453:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404890

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_458
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_456
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_455
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_456
	mov	esi, OFFSET FLAT:label_457
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_460
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_460:
	mov	rbx, r14
.label_456:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_458:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_459
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404940
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404990
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4049a0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049e0
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a00
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_461
	test	rdx, rdx
	je	.label_461
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_461:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30
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
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0

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
	mov	qword ptr [rsp + 0xa8], rax
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
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_550:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_549
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_552]
.label_837:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_556
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_494
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_838:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_571
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_571
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_583:
	cmp	r14, r11
	jae	.label_496
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_496:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_583
.label_571:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_469
.label_830:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_469
.label_833:
	mov	al, 1
.label_831:
	mov	r12b, 1
.label_834:
	test	r12b, 1
	mov	cl, 1
	je	.label_482
	mov	ecx, eax
.label_482:
	mov	al, cl
.label_832:
	test	r12b, 1
	jne	.label_486
	test	r11, r11
	je	.label_525
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_525:
	mov	r14d, 1
	jmp	.label_490
.label_486:
	xor	r14d, r14d
.label_490:
	mov	ecx, OFFSET FLAT:label_494
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_469
.label_835:
	test	r12b, 1
	jne	.label_505
	test	r11, r11
	je	.label_507
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_507:
	mov	r14d, 1
	jmp	.label_511
.label_836:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_513
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_469
.label_505:
	xor	r14d, r14d
.label_511:
	mov	eax, OFFSET FLAT:label_513
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_469:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_530
	nop	dword ptr [rax]
.label_463:
	inc	rsi
.label_530:
	cmp	rbp, -1
	je	.label_565
	cmp	rsi, rbp
	jne	.label_566
	jmp	.label_567
	nop	word ptr cs:[rax + rax]
.label_565:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_572
.label_566:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_521
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_578
	cmp	rbp, -1
	jne	.label_578
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_578:
	cmp	rbx, rbp
	jbe	.label_470
.label_521:
	xor	r8d, r8d
.label_537:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_473
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_475]
.label_850:
	test	rsi, rsi
	jne	.label_465
	jmp	.label_481
	nop	word ptr cs:[rax + rax]
.label_470:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_495
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_537
	jmp	.label_510
.label_495:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_537
.label_854:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_520
	test	rsi, rsi
	jne	.label_522
	cmp	rbp, 1
	je	.label_481
	xor	r13d, r13d
	jmp	.label_478
.label_843:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_529
	cmp	byte ptr [rsp + 6], 0
	jne	.label_485
	cmp	r12d, 2
	jne	.label_533
	mov	eax, r9d
	and	al, 1
	jne	.label_533
	cmp	r14, r11
	jae	.label_536
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_536:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_541
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_541:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_568
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_568:
	add	r14, 3
	mov	r9b, 1
.label_533:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_551
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_551:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_553
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_553
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_553
	cmp	r14, r11
	jae	.label_576
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_576:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_575
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_575:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_478
.label_844:
	mov	bl, 0x62
	jmp	.label_577
.label_845:
	mov	cl, 0x74
	jmp	.label_504
.label_846:
	mov	bl, 0x76
	jmp	.label_577
.label_847:
	mov	bl, 0x66
	jmp	.label_577
.label_848:
	mov	cl, 0x72
	jmp	.label_504
.label_851:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_582
	cmp	byte ptr [rsp + 6], 0
	jne	.label_464
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_467
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_467:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_479
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_479:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_483
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_483:
	add	r14, 3
	xor	r9d, r9d
.label_582:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_478
.label_852:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_492
	cmp	r12d, 2
	jne	.label_465
	cmp	byte ptr [rsp + 6], 0
	je	.label_465
	jmp	.label_464
.label_853:
	cmp	r12d, 2
	jne	.label_506
	cmp	byte ptr [rsp + 6], 0
	jne	.label_464
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_472
.label_473:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_515
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
.label_500:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_532
	test	r8b, r8b
	je	.label_532
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_478
.label_520:
	test	rsi, rsi
	jne	.label_491
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_491
.label_481:
	mov	dl, 1
.label_849:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_464
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_478:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_559
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_560
	jmp	.label_564
	nop	word ptr cs:[rax + rax]
.label_559:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_564
.label_560:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_569
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_472
	jmp	.label_581
	nop	dword ptr [rax]
.label_564:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_581
	jmp	.label_472
.label_569:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_581
.label_529:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_463
	xor	r15d, r15d
	jmp	.label_465
.label_506:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_504
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_472
.label_504:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_464
.label_577:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_478
	nop	word ptr cs:[rax + rax]
.label_581:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_485
	cmp	r12d, 2
	jne	.label_487
	mov	eax, r9d
	and	al, 1
	jne	.label_487
	cmp	r14, r11
	jae	.label_517
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_517:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_488
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_488:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_498
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_498:
	add	r14, 3
	mov	r9b, 1
.label_487:
	cmp	r14, r11
	jae	.label_509
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_509:
	inc	r14
	jmp	.label_497
.label_515:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_516
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_516:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_526:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_539
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_543
	cmp	rbp, -2
	je	.label_548
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_518
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_580:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_563
	bt	rsi, rdx
	jb	.label_562
.label_563:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_580
.label_518:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_489
	xor	r13d, r13d
.label_489:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_526
	jmp	.label_500
.label_553:
	xor	r13d, r13d
	jmp	.label_478
.label_491:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_478
.label_492:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_465
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_465
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_465
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_535
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_555
	cmp	byte ptr [rsp + 6], 0
	jne	.label_574
	cmp	r14, r11
	jae	.label_476
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_476:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_503
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_503:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_493
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_493:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_462
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_462:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_478
.label_465:
	xor	eax, eax
.label_522:
	xor	r13d, r13d
	jmp	.label_478
.label_532:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_514
	nop	word ptr cs:[rax + rax]
.label_466:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_514:
	test	r8b, r8b
	je	.label_523
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_524
	cmp	r14, r11
	jae	.label_527
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_527:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_524
	nop	dword ptr [rax]
.label_523:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_510
	cmp	r12d, 2
	jne	.label_538
	mov	eax, r9d
	and	al, 1
	jne	.label_538
	cmp	r14, r11
	jae	.label_542
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_542:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_546
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_546:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_468
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_468:
	add	r14, 3
	mov	r9b, 1
.label_538:
	cmp	r14, r11
	jae	.label_508
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_508:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_557
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_557:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_561
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_561:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_524:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_472
	test	r9b, 1
	je	.label_540
	mov	ebx, eax
	and	bl, 1
	jne	.label_540
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_579
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_579:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_519
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_519:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_540:
	cmp	r14, r11
	jae	.label_466
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_466
	nop	word ptr cs:[rax + rax]
.label_472:
	test	r9b, 1
	je	.label_474
	and	al, 1
	jne	.label_474
	cmp	r14, r11
	jae	.label_477
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_477:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_545
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_545:
	add	r14, 2
	xor	r9d, r9d
.label_474:
	mov	ebx, r15d
.label_497:
	cmp	r14, r11
	jae	.label_484
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_484:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_463
.label_543:
	xor	r13d, r13d
.label_539:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_500
.label_548:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_502
	mov	rsi, qword ptr [rsp + 0x58]
.label_512:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_544
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_512
	xor	r13d, r13d
	jmp	.label_500
.label_502:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_500
.label_544:
	xor	r13d, r13d
	jmp	.label_500
.label_535:
	xor	r13d, r13d
	jmp	.label_478
.label_555:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_478
	nop	dword ptr [rax + rax]
.label_567:
	mov	rcx, rsi
.label_572:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_528
	or	al, dl
	je	.label_531
.label_528:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_534
	or	al, dl
	jne	.label_534
	test	r10b, 1
	jne	.label_547
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_534
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_550
.label_534:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_554
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_558
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_558
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_570:
	cmp	r14, r11
	jae	.label_471
	mov	byte ptr [rcx + r14], al
.label_471:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_570
	jmp	.label_558
.label_485:
	mov	qword ptr [rsp + 0x20], rbp
.label_510:
	mov	rdx, rdi
	jmp	.label_480
.label_464:
	mov	qword ptr [rsp + 0x20], rbp
.label_562:
	mov	rdx, rdi
	mov	eax, 2
.label_573:
	mov	qword ptr [rsp + 0x38], rax
.label_480:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
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
.label_499:
	mov	r14, rax
.label_501:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_531:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_480
.label_547:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_499
.label_554:
	mov	rcx, qword ptr [rsp + 8]
.label_558:
	cmp	r14, r11
	jae	.label_501
	mov	byte ptr [rcx + r14], 0
	jmp	.label_501
.label_574:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_573
.label_549:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058c0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
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
	#Procedure 0x405990
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
	call	xmalloc
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
	je	.label_584
	mov	qword ptr [rax], rbx
.label_584:
	mov	rax, r14
	add	rsp, 0x28
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
	#Procedure 0x405a80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_585
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_587:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_587
.label_585:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_589
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_588], OFFSET FLAT:slot0
.label_589:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_586
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_586:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b20
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b30

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
	js	.label_593
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_596
	cmp	r12d, 0x7fffffff
	je	.label_591
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
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_594
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_594:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_596:
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
	jbe	.label_592
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_595
.label_592:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_590
	mov	rdi, r14
	call	free
.label_590:
	mov	rdi, r15
	call	xmalloc
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
.label_595:
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
.label_593:
	call	abort
.label_591:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d00
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405d20
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_597
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_597:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405db0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_598
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_598:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e20
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_599
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_599:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e90
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_600
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_600:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f00
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_601]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_602]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_603]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405f70
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_601]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_602]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_603]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405fe0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_601]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_602]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_603]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406040
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_601]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_602]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_603]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060a0

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_604
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_604:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406140
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_601]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_602]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_603]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_605
	test	rdx, rdx
	je	.label_605
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_605:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4061b0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_601]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_602]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_603]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_606
	test	rdx, rdx
	je	.label_606
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_606:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406220
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_601]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_602]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_603]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_607
	test	rsi, rsi
	je	.label_607
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_607:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406290
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_601]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_602]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_603]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_608
	test	rsi, rsi
	je	.label_608
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_608:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406300
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406310
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406330
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406350

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406370

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_610
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_615
	cmp	ecx, 0x55
	jne	.label_609
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_609
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_609
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_609
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_609
	cmp	byte ptr [rax + 5], 0
	jne	.label_609
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_612
	mov	eax, OFFSET FLAT:label_613
	jmp	.label_614
.label_615:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_609
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_609
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_609
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_609
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_609
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_609
	cmp	byte ptr [rax + 7], 0
	je	.label_611
.label_609:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_513
	mov	eax, OFFSET FLAT:label_494
.label_614:
	cmove	rax, rcx
.label_610:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_611:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_616
	mov	eax, OFFSET FLAT:label_617
	jmp	.label_614
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406440

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
	je	.label_618
	mov	edx, OFFSET FLAT:label_628
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_634
.label_618:
	mov	edx, OFFSET FLAT:label_635
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_634:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_621
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
	mov	esi, OFFSET FLAT:label_636
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_623
	jmp	qword ptr [(r12 * 8) + label_624]
.label_940:
	add	rsp, 8
	jmp	.label_622
.label_623:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_631
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
	jmp	.label_622
.label_941:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_619
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
.label_942:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_632
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
.label_943:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_629
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
.label_944:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_626
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
	jmp	.label_622
.label_945:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_625
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
	jmp	.label_622
.label_946:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_627
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
	jmp	.label_622
.label_947:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_630
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
	jmp	.label_622
.label_949:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_633
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
	jmp	.label_622
.label_948:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_620
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
.label_622:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_637:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_637
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_643
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_645
.label_643:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_645:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_640
	cmp	r10d, 0x29
	jae	.label_642
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_644
.label_642:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_644:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_640
	cmp	r10d, 0x29
	jae	.label_639
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_641
.label_639:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_641:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_640
	cmp	r10d, 0x29
	jae	.label_650
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_638
.label_650:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_638:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_640
	cmp	r10d, 0x29
	jae	.label_648
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_649
.label_648:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_649:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_640
	cmp	r10d, 0x29
	jae	.label_646
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_647
.label_646:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_647:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_640
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_640
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_640
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_640
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_640:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_651
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_651:
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_652
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_653
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_655
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_38
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_654
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ad0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_656
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_657
	test	rax, rax
	je	.label_656
.label_657:
	pop	rbx
	ret	
.label_656:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b10

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_658
	test	rax, rax
	je	.label_659
.label_658:
	pop	rbx
	ret	
.label_659:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b30
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_660
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_661
	test	rbx, rbx
	jne	.label_661
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_661:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_662
	test	rax, rax
	je	.label_660
.label_662:
	pop	rbx
	ret	
.label_660:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b80

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_663
	test	rbx, rbx
	jne	.label_663
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_663:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_665
	test	rax, rax
	je	.label_664
.label_665:
	pop	rbx
	ret	
.label_664:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x406bb0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_669
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_671
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_666
.label_669:
	test	rcx, rcx
	jne	.label_672
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_672:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_667
.label_666:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_668
	test	rbx, rbx
	jne	.label_668
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_668:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_670
	test	rax, rax
	je	.label_671
.label_670:
	pop	rbx
	ret	
.label_671:
	call	xalloc_die
.label_667:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c50
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_673
	test	rax, rax
	je	.label_674
.label_673:
	pop	rbx
	ret	
.label_674:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c70
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_677
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_679
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_676
	call	free
	xor	eax, eax
	jmp	.label_678
.label_677:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_675
	mov	qword ptr [rsi], rbx
.label_676:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_678
	test	rax, rax
	je	.label_675
.label_678:
	pop	rbx
	ret	
.label_675:
	call	xalloc_die
.label_679:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ce0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_681
	test	r14, r14
	je	.label_680
.label_681:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_680:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_682
	call	rpl_calloc
	test	rax, rax
	je	.label_682
	pop	rcx
	ret	
.label_682:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d50

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_683
	test	r15, r15
	je	.label_684
.label_683:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_684:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406d90
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_686
	test	r15, r15
	je	.label_685
.label_686:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_685:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406de0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_687
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_150
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406e10

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
	mov	r13, rdx
	mov	eax, esi
	mov	r12, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	test	eax, eax
	je	.label_690
	cmp	eax, 1
	je	.label_692
	cmp	eax, 3
	jne	.label_694
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_688
.label_692:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_688
.label_690:
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r13
	jb	.label_693
	cmp	rbx, r15
	jbe	.label_689
.label_693:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_691
	mov	dword ptr [rax], 0x4b
	jmp	.label_688
.label_694:
	call	__errno_location
	jmp	.label_688
.label_691:
	mov	dword ptr [rax], 0x22
.label_688:
	mov	ecx, dword ptr [rsp + 0x40]
	test	ecx, ecx
	mov	ebx, 1
	cmovne	ebx, ecx
	mov	ebp, dword ptr [rax]
	xor	eax, eax
	cmp	ebp, 0x16
	cmove	ebp, eax
	mov	rdi, r12
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_451
	xor	eax, eax
	mov	edi, ebx
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	rbx, qword ptr [rsp]
.label_689:
	mov	rax, rbx
	add	rsp, 8
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
	#Procedure 0x406ee0
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f10

	.globl xstrtol
	.type xstrtol, @function
xstrtol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	qword ptr [rsp + 8], rcx
	mov	ebp, edx
	mov	r13, rdi
	cmp	ebp, 0x25
	jae	.label_699
	test	rsi, rsi
	lea	r15, [rsp + 0x20]
	cmovne	r15, rsi
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	mov	rdi, r13
	mov	rsi, r15
	mov	edx, ebp
	call	strtol
	mov	r12, rax
	mov	rcx, qword ptr [r15]
	cmp	rcx, r13
	je	.label_717
	mov	eax, dword ptr [rbx]
	xor	ebp, ebp
	test	eax, eax
	je	.label_721
	mov	ebp, 4
	cmp	eax, 0x22
	jne	.label_725
	mov	ebp, 1
.label_721:
	test	r14, r14
	je	.label_727
	mov	ebx, ebp
	jmp	.label_729
.label_717:
	mov	ebp, 4
	test	r14, r14
	je	.label_725
	movsx	esi, byte ptr [r13]
	test	esi, esi
	je	.label_725
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	ebx, ebx
	mov	r12d, 1
	test	rax, rax
	je	.label_725
.label_729:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_738
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_719
	mov	edi, 1
	mov	r8d, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_697
	movabs	rcx, 0x814400308945
	bt	rcx, rax
	jae	.label_697
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	edi, 1
	mov	r8d, 0x400
	test	rax, rax
	je	.label_697
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	edi, 1
	mov	r8d, 0x400
	cmp	eax, 0x42
	je	.label_714
	cmp	eax, 0x44
	je	.label_714
	cmp	eax, 0x69
	jne	.label_697
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rdi, [rax + rax + 1]
	mov	r8d, 0x400
	jmp	.label_697
.label_727:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	jmp	.label_725
.label_714:
	mov	edi, 2
	mov	r8d, 0x3e8
.label_697:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_719
	movabs	r9, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	r14, r12
	jmp	qword ptr [(r13 * 8) + label_731]
.label_1010:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_734
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_734:
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_746
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rbp, r9
.label_746:
	or	r11d, ecx
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_720
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_720:
	or	ecx, r11d
	jmp	.label_705
.label_719:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	ebx, 2
	jmp	.label_724
.label_1011:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	cmp	r12, rax
	mov	ecx, 1
	jl	.label_705
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, r12
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
	jmp	.label_705
.label_1012:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	rbp, rax
	cmp	r12, rbp
	mov	ecx, 1
	mov	rsi, r14
	mov	r10d, 1
	jl	.label_707
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	r10d, r10d
	cmp	rax, r12
	setl	r10b
	cmovl	rsi, r9
.label_707:
	cmp	rsi, rbp
	jl	.label_739
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_739:
	or	ecx, r10d
	jmp	.label_705
.label_1014:
	mov	r13, rdi
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ecx, 1
	jl	.label_747
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ecx, ecx
	cmp	rax, r12
	setl	cl
	cmovl	rsi, r9
.label_747:
	cmp	rsi, r10
	mov	rdi, r14
	jl	.label_703
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rsi
	imul	rdi, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rdi, r9
.label_703:
	or	r11d, ecx
	cmp	rdi, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_715
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rdi
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rdi
	setl	bpl
	cmovl	rsi, r9
.label_715:
	or	ebp, r11d
	cmp	rsi, r10
	jl	.label_728
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_728:
	or	ecx, ebp
	mov	rdi, r13
	jmp	.label_705
.label_1008:
	movabs	rax, 0xffe0000000000000
	cmp	r12, rax
	jl	.label_706
	mov	r14, r12
	shl	r14, 0xa
	movabs	rax, 0x1fffffffffffff
	jmp	.label_736
.label_1009:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_743
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_743:
	mov	qword ptr [rsp + 0x18], rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_700
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_700:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_710
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_710:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_726
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_726:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	mov	rdi, r14
	mov	r12d, 1
	jl	.label_735
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rdi, rbp
	imul	rdi, r8
	xor	r12d, r12d
	cmp	rax, rbp
	setl	r12b
	cmovl	rdi, r9
.label_735:
	or	r12d, r11d
	cmp	rdi, r10
	jl	.label_741
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rdi
	xor	ecx, ecx
	cmp	rax, rdi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_741:
	or	ecx, r12d
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_705
.label_1013:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rcx, r14
	mov	esi, 1
	jl	.label_696
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, r12
	imul	rcx, r8
	xor	esi, esi
	cmp	rax, r12
	setl	sil
	cmovl	rcx, r9
.label_696:
	mov	r12, rdi
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_708
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rbp, r9
.label_708:
	or	r13d, esi
	cmp	rbp, r10
	mov	r11d, 1
	mov	rcx, r14
	mov	edi, 1
	jl	.label_722
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rbp
	imul	rcx, r8
	xor	edi, edi
	cmp	rax, rbp
	setl	dil
	cmovl	rcx, r9
.label_722:
	or	edi, r13d
	cmp	rcx, r10
	mov	rbp, r14
	jl	.label_732
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rcx
	imul	rbp, r8
	xor	r11d, r11d
	cmp	rax, rcx
	setl	r11b
	cmovl	rbp, r9
.label_732:
	or	r11d, edi
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_737
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_737:
	or	ecx, r11d
	mov	rdi, r12
	jmp	.label_705
.label_1015:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_748
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_748:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_704
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_704:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_716
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_716:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_744
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_744:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_730
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_730:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_745
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_745:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	mov	rsi, r14
	mov	r11d, 1
	jl	.label_698
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rbp
	imul	rsi, r8
	xor	r11d, r11d
	cmp	rax, rbp
	setl	r11b
	cmovl	rsi, r9
.label_698:
	or	r11d, r12d
	cmp	rsi, r10
	jl	.label_709
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rsi
	xor	ecx, ecx
	cmp	rax, rsi
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_709:
	or	ecx, r11d
	jmp	.label_705
.label_1016:
	lea	r14, [r9 + 1]
	mov	rax, r14
	cqo	
	idiv	r8
	mov	r10, rax
	cmp	r12, r10
	mov	r13d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_723
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, r12
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, r12
	setl	bpl
	cmovl	rsi, r9
.label_723:
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_733
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r13d, r13d
	cmp	rax, rsi
	setl	r13b
	cmovl	rcx, r9
.label_733:
	or	r13d, ebp
	cmp	rcx, r10
	mov	r11d, 1
	mov	rsi, r14
	mov	ebp, 1
	jl	.label_740
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	ebp, ebp
	cmp	rax, rcx
	setl	bpl
	cmovl	rsi, r9
.label_740:
	or	ebp, r13d
	cmp	rsi, r10
	mov	rcx, r14
	jl	.label_695
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rcx, rsi
	imul	rcx, r8
	xor	r11d, r11d
	cmp	rax, rsi
	setl	r11b
	cmovl	rcx, r9
.label_695:
	or	r11d, ebp
	cmp	rcx, r10
	mov	r12d, 1
	mov	rsi, r14
	mov	r13d, 1
	jl	.label_702
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rsi, rcx
	imul	rsi, r8
	xor	r13d, r13d
	cmp	rax, rcx
	setl	r13b
	cmovl	rsi, r9
.label_702:
	or	r13d, r11d
	cmp	rsi, r10
	mov	rbp, r14
	jl	.label_718
	xor	edx, edx
	mov	rax, r9
	div	r8
	mov	rbp, rsi
	imul	rbp, r8
	xor	r12d, r12d
	cmp	rax, rsi
	setl	r12b
	cmovl	rbp, r9
.label_718:
	or	r12d, r13d
	cmp	rbp, r10
	mov	ecx, 1
	jl	.label_701
	xor	edx, edx
	mov	rax, r9
	div	r8
	imul	r8, rbp
	xor	ecx, ecx
	cmp	rax, rbp
	setl	cl
	cmovl	r8, r9
	mov	r14, r8
.label_701:
	or	ecx, r12d
	jmp	.label_705
.label_1017:
	movabs	rax, 0xffc0000000000000
	cmp	r12, rax
	jl	.label_706
	mov	r14, r12
	shl	r14, 9
	movabs	rax, 0x3fffffffffffff
	jmp	.label_736
.label_1018:
	movabs	rax, 0xc000000000000000
	cmp	r12, rax
	jge	.label_742
.label_706:
	inc	r9
	mov	ecx, 1
	mov	r14, r9
	jmp	.label_705
.label_742:
	lea	r14, [r12 + r12]
	movabs	rax, 0x3fffffffffffffff
.label_736:
	xor	ecx, ecx
	cmp	r12, rax
	setg	cl
	cmovg	r14, r9
.label_705:
	or	ecx, ebx
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rax, [rdx + rdi]
	mov	qword ptr [r15], rax
	lea	ebx, [rcx + 2]
	cmp	byte ptr [rdx + rdi], 0
	cmove	ebx, ecx
	mov	r12, r14
.label_738:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_724:
	mov	ebp, ebx
.label_725:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_699:
	mov	edi, OFFSET FLAT:label_711
	mov	esi, OFFSET FLAT:label_712
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_713
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407860

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_759
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_756:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_756
	test	rbp, rbp
	lea	rsi, [rsp + 0x20]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_749
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rsi
	mov	edx, r12d
	call	__strtoul_internal
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rax]
	cmp	rcx, rbx
	je	.label_763
	mov	eax, dword ptr [r15]
	test	eax, eax
	je	.label_769
	cmp	eax, 0x22
	jne	.label_749
	mov	ebp, 1
.label_769:
	test	r14, r14
	mov	r15d, ebp
	jne	.label_753
	jmp	.label_755
.label_763:
	test	r14, r14
	je	.label_749
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_749
	mov	rdi, r14
	mov	rbx, rcx
	call	strchr
	mov	rcx, rbx
	xor	r15d, r15d
	mov	r12d, 1
	test	rax, rax
	je	.label_749
.label_753:
	movsx	r13d, byte ptr [rcx]
	test	r13d, r13d
	je	.label_755
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_764
	mov	ecx, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_752
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_752
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	ecx, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_752
	mov	rax, qword ptr [rsp + 0x10]
	movsx	eax, byte ptr [rax + 1]
	mov	ecx, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_757
	cmp	eax, 0x44
	je	.label_757
	cmp	eax, 0x69
	jne	.label_752
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 2], 0x42
	sete	al
	lea	rcx, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_752
.label_757:
	mov	ecx, 2
	mov	esi, 0x3e8
.label_752:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_764
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_751]
.label_922:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_760
.label_764:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
	or	r15d, 2
	jmp	.label_761
.label_923:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, r12
	cmp	rax, r12
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_765
.label_924:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	jmp	.label_754
.label_926:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, r9
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bl, bl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	jmp	.label_762
.label_920:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x36
	setne	al
	shl	r12, 0xa
	jmp	.label_758
.label_921:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	or	dl, bpl
	jmp	.label_754
.label_925:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
.label_762:
	or	dl, r10b
.label_760:
	or	dl, bl
.label_754:
	and	dl, 1
	movzx	eax, dl
	mov	r12, rsi
	jmp	.label_750
.label_927:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	mov	r13d, r15d
	sbb	r15b, r15b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	bpl, bpl
	imul	rsi, rbx
	cmp	rax, rbx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r15b
	mov	r15d, r13d
	or	dl, bpl
	jmp	.label_766
.label_928:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, r12
	sbb	r8b, r8b
	mov	rbx, r12
	imul	rbx, rsi
	cmp	rax, r12
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	dl, dl
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r10b, r10b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rbx, rbp
	imul	rbx, rsi
	cmp	rax, rbp
	cmovb	rbx, rdi
	cmp	rax, rbx
	sbb	r14b, r14b
	mov	rbp, rbx
	imul	rbp, rsi
	cmp	rax, rbx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	bl, bl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, bl
.label_766:
	movzx	eax, dl
.label_765:
	and	eax, 1
	mov	r12, rsi
	jmp	.label_750
.label_929:
	xor	eax, eax
	mov	rdx, r12
	shr	rdx, 0x37
	setne	al
	shl	r12, 9
.label_758:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	r12, rdx
	jmp	.label_750
.label_930:
	lea	rax, [r12 + r12]
	test	r12, r12
	mov	rdx, -1
	cmovns	rdx, rax
	shr	r12, 0x3f
	mov	eax, r12d
	mov	r12, rdx
.label_750:
	or	eax, r15d
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdx, [rdi + rcx]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rdx
	lea	r15d, [rax + 2]
	cmp	byte ptr [rdi + rcx], 0
	cmove	r15d, eax
.label_755:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], r12
.label_761:
	mov	r13d, r15d
.label_749:
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_759:
	mov	edi, OFFSET FLAT:label_711
	mov	esi, OFFSET FLAT:label_767
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_768
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ea0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_770
	test	rsi, rsi
	mov	ecx, 1
	je	.label_771
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_771
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_770:
	mov	ecx, 1
.label_771:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ef0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_791
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_791:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_774
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_792
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_773
	test	esi, esi
	jne	.label_774
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_775
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_777
.label_774:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_778
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_773
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_785
.label_792:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_772
.label_773:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_788
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_789
.label_788:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_789:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_790:
	call	fcntl
.label_772:
	mov	ebp, eax
.label_779:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_785:
	cmp	eax, 6
	jne	.label_778
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_781
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_783
.label_778:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_784
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_787
.label_775:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_777:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_790
.label_781:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_783:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_782
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_780
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_780
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_779
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_786
.label_780:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_779
.label_784:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_787:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_772
.label_782:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_786:
	test	al, al
	je	.label_779
	test	ebp, ebp
	js	.label_779
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_776
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_779
.label_776:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_779
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408190

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
	je	.label_793
	cmp	r15, -2
	jb	.label_793
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_793
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_793:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081f0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_795
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_794
	test	cl, cl
	jne	.label_794
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_794
.label_795:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_794
	call	__errno_location
	mov	dword ptr [rax], 0
.label_794:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408250

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_797
	cmp	byte ptr [rax], 0x43
	jne	.label_799
	cmp	byte ptr [rax + 1], 0
	je	.label_796
.label_799:
	mov	esi, OFFSET FLAT:label_798
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_797
.label_796:
	xor	ebx, ebx
.label_797:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408290

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_223
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_800
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082c0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_801
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_803
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_801
.label_803:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_801
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_802
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_802:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_801:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408340

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_804
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_804
	test	byte ptr [rbx + 1], 1
	je	.label_804
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_804:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408380

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
	jne	.label_805
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_805
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_806
.label_805:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_806:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_807
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_807:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x4083f0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
