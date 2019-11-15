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
	jne	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	mov	ecx, OFFSET FLAT:label_9
	mov	r8d, 0x80
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
	mov	esi, OFFSET FLAT:label_13
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
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_16
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_16
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_15:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401970

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	rbp, rsi
	mov	r15d, edi
	mov	r14d, 3
	mov	rdi, qword ptr [rbp]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_127
	call	setlocale
	mov	edi, OFFSET FLAT:label_136
	mov	esi, OFFSET FLAT:label_137
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_136
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rdi, qword ptr [rip + stdout]
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	ecx, 0xffffffff
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_138
.label_140:
	mov	byte ptr [rip + quiet],  0
	mov	ecx, ebx
	nop	dword ptr [rax + rax]
.label_138:
	mov	ebx, ecx
	mov	edx, OFFSET FLAT:label_142
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, rbp
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_145
	add	eax, -0x62
	cmp	eax, 0x22
	ja	.label_34
	mov	ecx, 1
	jmp	qword ptr [(rax * 8) + label_101]
.label_583:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	ecx, ebx
	jmp	.label_138
.label_584:
	xor	ecx, ecx
	jmp	.label_138
.label_585:
	mov	byte ptr [rip + status_only],  0
	mov	byte ptr [rip + warn],  1
	jmp	.label_140
.label_586:
	mov	byte ptr [rip + delim],  1
	mov	ecx, ebx
	jmp	.label_138
.label_587:
	mov	byte ptr [rip + ignore_missing],  1
	mov	ecx, ebx
	jmp	.label_138
.label_588:
	mov	byte ptr [rip + status_only],  1
	mov	byte ptr [rip + warn],  0
	jmp	.label_140
.label_589:
	mov	byte ptr [rip + status_only],  0
	mov	byte ptr [rip + warn],  0
	mov	byte ptr [rip + quiet],  1
	mov	ecx, ebx
	jmp	.label_138
.label_590:
	mov	byte ptr [rip + strict],  1
	mov	ecx, ebx
	jmp	.label_138
.label_591:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	ecx, 1
	jmp	.label_138
.label_145:
	cmp	eax, -1
	jne	.label_168
	mov	byte ptr [rip + min_digest_line_length],  1
	mov	byte ptr [rip + digest_hex_bytes],  1
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	sete	al
	test	ebx, ebx
	jne	.label_171
	test	al, al
	je	.label_201
.label_171:
	mov	rcx, qword ptr [rsp + 0x18]
	test	cl, cl
	je	.label_179
	mov	cl, byte ptr [rip + delim]
	xor	cl, 1
	test	cl, 1
	je	.label_133
.label_179:
	mov	rcx, qword ptr [rsp + 0x18]
	test	cl, cl
	sete	cl
	or	cl, al
	je	.label_181
	test	ebx, ebx
	js	.label_183
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_184
.label_183:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_186
	test	byte ptr [rip + ignore_missing],  1
	jne	.label_187
.label_186:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_189
	test	byte ptr [rip + status_only],  1
	jne	.label_191
.label_189:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_192
	test	byte ptr [rip + warn],  1
	jne	.label_194
.label_192:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	jne	.label_198
	test	byte ptr [rip + quiet],  1
	jne	.label_200
.label_198:
	movzx	eax, byte ptr [rip + strict]
	mov	rcx, qword ptr [rsp + 0x18]
	movzx	ecx, cl
	xor	ecx, 1
	test	eax, ecx
	jne	.label_204
	movsxd	rax, r15d
	lea	rcx, [rbp + rax*8]
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r15d
	jne	.label_208
	mov	qword ptr [rcx], OFFSET FLAT:label_210
	add	rcx, 8
.label_208:
	lea	rdx, [rbp + rax*8]
	mov	bpl, 1
	cmp	rdx, rcx
	jae	.label_213
	test	ebx, ebx
	mov	eax, 0x2a
	mov	esi, 0x20
	cmovg	esi, eax
	mov	dword ptr [rsp + 0x94], esi
	mov	byte ptr [rsp + 7], 0x2a
	jg	.label_216
	mov	byte ptr [rsp + 7], 0x20
.label_216:
	neg	r14
	lea	rbx, [rsp + r14 + 0xd3]
	mov	sil, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x88], rbx
	jmp	.label_203
.label_188:
	call	__overflow
	jmp	.label_35
.label_155:
	mov	esi, 0x20
	call	__overflow
	jmp	.label_40
.label_159:
	mov	esi, dword ptr [rsp + 0x94]
	call	__overflow
	jmp	.label_44
.label_104:
	mov	esi, 0x5c
	mov	rdi, rax
	call	__overflow
	jmp	.label_47
.label_151:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_203:
	mov	rax, qword ptr [rsp + 0x18]
	test	al, al
	mov	rbx, qword ptr [rdx]
	mov	dword ptr [rsp + 8], esi
	je	.label_55
	mov	qword ptr [rsp + 0x40], rdx
	cmp	byte ptr [rbx], 0x2d
	jne	.label_59
	cmp	byte ptr [rbx + 1], 0
	je	.label_64
.label_59:
	mov	esi, OFFSET FLAT:label_69
	mov	rdi, rbx
	call	fopen_safer
	mov	rbp, rax
	test	rbp, rbp
	je	.label_74
	mov	qword ptr [rsp + 0x10], rbx
	mov	dword ptr [rsp + 0x5c], 0
	jmp	.label_75
	nop	
.label_55:
	mov	r14, rdx
	mov	rdi, rbx
	lea	rsi, [rsp + 0xd0]
	lea	rdx, [rsp + 0xb0]
	call	digest_file
	test	al, al
	je	.label_83
	mov	esi, 0x5c
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	jne	.label_87
	mov	esi, 0xa
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	je	.label_93
.label_87:
	mov	r15b, byte ptr [rip + delim]
	xor	r15b, 1
.label_120:
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	je	.label_96
	mov	rax, qword ptr [rip + stdout]
	test	r15b, 1
	je	.label_99
	mov	rcx, qword ptr [rax + 0x28]
	cmp	rcx, qword ptr [rax + 0x30]
	jae	.label_104
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 0x28], rdx
	mov	byte ptr [rcx], 0x5c
.label_47:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_9
	call	fputs_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_111
	call	fputs_unlocked
	mov	r12, rbx
	mov	al, byte ptr [rbx]
	test	al, al
	mov	rbx, qword ptr [rsp + 0x88]
	je	.label_45
	lea	rbp, [r12 + 1]
	jmp	.label_119
.label_74:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdx, rbx
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	esi, r14d
	call	error
	jmp	.label_58
.label_83:
	xor	eax, eax
	jmp	.label_131
.label_64:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	mov	al, 1
	mov	dword ptr [rsp + 0x5c], eax
	mov	rbp, qword ptr [rip + stdin]
.label_75:
	mov	qword ptr [rsp + 0x80], 0
	mov	qword ptr [rsp + 0xa8], 0
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x98], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x68], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x28], rbp
	jmp	.label_190
.label_96:
	mov	r12, rbx
	test	r15b, 1
	mov	rbx, qword ptr [rsp + 0x88]
	je	.label_51
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_151
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_51
.label_99:
	mov	edi, OFFSET FLAT:label_9
	mov	rsi, rax
	call	fputs_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_111
	call	fputs_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	r12, rbx
	mov	rdi, rbx
	call	fputs_unlocked
	mov	rbx, qword ptr [rsp + 0x88]
	jmp	.label_45
.label_170:
	mov	esi, 0xa
	mov	rdi, r14
	call	strchr
	test	rax, rax
	setne	bpl
.label_175:
	mov	rbx, qword ptr [rsp + 0x68]
	mov	rdi, r14
	lea	rsi, [rsp + 0xb0]
	lea	rdx, [rsp + 0xf]
	call	digest_file
	test	al, al
	je	.label_173
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_176
	mov	al, byte ptr [rip + ignore_missing]
	xor	al, 1
	test	al, 1
	je	.label_178
.label_176:
	mov	dword ptr [rsp + 0x78], ebp
	movzx	eax, byte ptr [rip + digest_hex_bytes]
	mov	r15, rax
	shl	r15, 4
	cmp	rax, 1
	mov	r12d, 0
	mov	rbx, qword ptr [rsp + 0x60]
	jne	.label_57
	call	__ctype_tolower_loc
	mov	rax, qword ptr [rax]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_193:
	movzx	edx, byte ptr [r13 + r12*2]
	lea	rcx, [rsp + 0xb0]
	movzx	ecx, byte ptr [rcx + r12]
	mov	rsi, rcx
	shr	rsi, 4
	movsx	esi, byte ptr [rsi + digest_check.bin2hex]
	cmp	dword ptr [rax + rdx*4], esi
	jne	.label_57
	movzx	edx, byte ptr [r13 + r12*2 + 1]
	and	ecx, 0xf
	movsx	ecx, byte ptr [rcx + digest_check.bin2hex]
	cmp	dword ptr [rax + rdx*4], ecx
	jne	.label_57
	inc	r12
	cmp	r12, r15
	jb	.label_193
.label_57:
	inc	rbx
	cmp	r12, r15
	mov	rax, qword ptr [rsp + 0x20]
	jne	.label_196
	mov	al, 1
.label_196:
	mov	rcx, qword ptr [rsp + 0x60]
	cmovne	rcx, rbx
	mov	dl, byte ptr [rip + status_only]
	test	dl, dl
	je	.label_199
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x60], rcx
	jmp	.label_178
.label_173:
	inc	rbx
	mov	qword ptr [rsp + 0x68], rbx
	mov	al, byte ptr [rip + status_only]
	test	al, al
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x48]
	jne	.label_97
	mov	rax, qword ptr [rip + stdout]
	test	bpl, bpl
	je	.label_212
	mov	rcx, qword ptr [rax + 0x28]
	cmp	rcx, qword ptr [rax + 0x30]
	jae	.label_214
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 0x28], rdx
	mov	byte ptr [rcx], 0x5c
.label_149:
	mov	al, byte ptr [r14]
	test	al, al
	je	.label_36
	inc	r14
	jmp	.label_85
.label_199:
	cmp	r12, r15
	jne	.label_221
	mov	al, byte ptr [rip + quiet]
	test	al, al
	je	.label_221
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_178
.label_212:
	mov	rdi, r14
	mov	rsi, rax
	call	fputs_unlocked
	jmp	.label_36
.label_221:
	mov	rax, qword ptr [rip + stdout]
	mov	ecx, dword ptr [rsp + 0x78]
	test	cl, cl
	je	.label_39
	mov	rcx, qword ptr [rax + 0x28]
	cmp	rcx, qword ptr [rax + 0x30]
	jae	.label_42
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax + 0x28], rdx
	mov	byte ptr [rcx], 0x5c
.label_153:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	al, byte ptr [r14]
	test	al, al
	je	.label_46
	inc	r14
	jmp	.label_50
.label_39:
	mov	rdi, r14
	mov	rsi, rax
	call	fputs_unlocked
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_46
.label_82:
	movzx	esi, al
	call	__overflow
	jmp	.label_60
	nop	word ptr cs:[rax + rax]
.label_85:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_66
	cmp	ecx, 0xa
	jne	.label_70
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_72
	call	fputs_unlocked
	jmp	.label_60
.label_66:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_76
	call	fputs_unlocked
	jmp	.label_60
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_82
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_60:
	movzx	eax, byte ptr [r14]
	inc	r14
	test	al, al
	jne	.label_85
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_94
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_97
.label_114:
	movzx	esi, al
	call	__overflow
	jmp	.label_112
	nop	dword ptr [rax]
.label_50:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_169
	cmp	ecx, 0xa
	jne	.label_105
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_72
	call	fputs_unlocked
	jmp	.label_112
.label_169:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_76
	call	fputs_unlocked
	jmp	.label_112
	nop	word ptr cs:[rax + rax]
.label_105:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_114
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_112:
	movzx	eax, byte ptr [r14]
	inc	r14
	test	al, al
	jne	.label_50
.label_46:
	mov	qword ptr [rsp + 0x10], rbp
	cmp	r12, r15
	je	.label_122
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_94
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	qword ptr [rsp + 0x60], rbx
.label_178:
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x48]
.label_97:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
.label_147:
	mov	al, 1
	mov	qword ptr [rsp + 0x98], rax
	jmp	.label_135
.label_122:
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	mov	al, byte ptr [rip + quiet]
	test	al, al
	mov	r13, qword ptr [rsp + 0x50]
	mov	r15, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_147
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_94
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_147
.label_214:
	mov	esi, 0x5c
	mov	rdi, rax
	call	__overflow
	jmp	.label_149
.label_42:
	mov	esi, 0x5c
	mov	rdi, rax
	call	__overflow
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_190:
	inc	rbx
	je	.label_156
	mov	edx, 0xa
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsp + 0xa8]
	mov	rcx, rbp
	call	__getdelim
	mov	r12, rax
	test	r12, r12
	jle	.label_161
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, qword ptr [rsp + 0x80]
	cmp	byte ptr [r14], 0x23
	jne	.label_162
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_135
	nop	word ptr cs:[rax + rax]
.label_162:
	cmp	byte ptr [r14 + r12 - 1], 0xa
	jne	.label_67
	dec	r12
	mov	byte ptr [r14 + r12], 0
	mov	r14, qword ptr [rsp + 0x80]
.label_67:
	mov	rax, r13
	xor	ebp, ebp
	jmp	.label_177
	nop	
.label_126:
	inc	rbp
.label_177:
	movzx	r13d, byte ptr [r14 + rbp]
	cmp	r13b, 0x20
	je	.label_126
	cmp	r13b, 9
	je	.label_126
	mov	qword ptr [rsp + 0x48], r15
	mov	qword ptr [rsp + 0x50], rax
	xor	r15d, r15d
	cmp	r13b, 0x5c
	sete	r15b
	lea	rbx, [r14 + r15]
	lea	rdi, [rbx + rbp]
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 3
	mov	qword ptr [rsp + 0x78], rdi
	call	strncmp
	test	eax, eax
	je	.label_185
	mov	rax, r12
	sub	rax, r15
	sub	rax, rbp
	mov	cl, byte ptr [rip + min_digest_line_length]
	test	cl, cl
	mov	ecx, 0
	mov	edx, 0x22
	cmovne	rcx, rdx
	xor	edx, edx
	cmp	byte ptr [rbx + rbp], 0x5c
	sete	dl
	or	rdx, rcx
	cmp	rax, rdx
	mov	r8, qword ptr [rsp + 0x78]
	jb	.label_48
	movzx	eax, byte ptr [rip + digest_hex_bytes]
	mov	r9, rax
	shl	r9, 5
	lea	rcx, [r9 + r15]
	add	rcx, r14
	mov	dl, byte ptr [rbp + rcx]
	cmp	dl, 0x20
	je	.label_197
	cmp	dl, 9
	jne	.label_48
.label_197:
	mov	byte ptr [rcx + rbp], 0
	mov	bl, byte ptr [rbx + rbp]
	test	al, al
	je	.label_206
	mov	qword ptr [rsp + 0xa0], r9
	call	__ctype_b_loc
	mov	r9, qword ptr [rsp + 0xa0]
	mov	r8, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rax]
	lea	rcx, [r14 + r15 + 2]
	xor	edx, edx
	nop	dword ptr [rax]
.label_218:
	movzx	esi, bl
	test	byte ptr [rax + rsi*2 + 1], 0x10
	je	.label_48
	lea	rsi, [rcx + rdx]
	movzx	edi, byte ptr [rbp + rsi - 1]
	test	byte ptr [rax + rdi*2 + 1], 0x10
	je	.label_48
	movzx	ebx, byte ptr [rbp + rsi]
	add	rdx, 2
	cmp	edx, 0x20
	jb	.label_218
.label_206:
	test	bl, bl
	jne	.label_48
	add	r9, r15
	lea	rax, [rbp + r9 + 1]
	mov	ecx, 2
	sub	rcx, r12
	add	rcx, r9
	add	rcx, rbp
	je	.label_41
	lea	rcx, [r14 + r9]
	mov	cl, byte ptr [rbp + rcx + 1]
	cmp	cl, 0x20
	je	.label_37
	cmp	cl, 0x2a
	jne	.label_41
.label_37:
	cmp	dword ptr [rip + bsd_reversed],  1
	je	.label_43
	mov	dword ptr [rip + bsd_reversed],  0
	lea	rax, [rbp + r9 + 2]
	jmp	.label_43
.label_185:
	lea	rax, [r15 + rbp + 3]
	cmp	byte ptr [rbp + rbx + 3], 0x20
	lea	rdx, [r15 + rbp + 4]
	cmovne	rdx, rax
	cmp	byte ptr [r14 + rdx], 0x28
	jne	.label_48
	lea	rax, [rdx + 1]
	cmp	r12, rax
	je	.label_48
	lea	r9, [r14 + rdx + 1]
	mov	rsi, rdx
	neg	rsi
	lea	rdi, [r14 + r12]
	lea	rbp, [r14 + r12 + 1]
	lea	rbx, [r14 + r12 + 3]
	nop	
.label_219:
	mov	rax, r12
	mov	rcx, rdi
	mov	r8, rbp
	mov	r15, rbx
	lea	rdi, [rsi + rax]
	cmp	rdi, 2
	je	.label_73
	lea	r12, [rax - 1]
	lea	rdi, [rcx - 1]
	lea	rbp, [r8 - 1]
	lea	rbx, [r15 - 1]
	cmp	byte ptr [r14 + rax - 1], 0x29
	jne	.label_219
	add	r14, r12
	sub	r12, rdx
	dec	r12
	xor	esi, esi
	jmp	.label_81
.label_73:
	mov	sil, 1
	cmp	byte ptr [r9], 0x29
	mov	r14, r9
	mov	r12d, 0
	jne	.label_48
.label_81:
	sub	rax, rdx
	cmp	r13b, 0x5c
	jne	.label_88
	test	sil, sil
	mov	rdx, r9
	jne	.label_92
	xor	esi, esi
	mov	rdx, r9
	nop	dword ptr [rax + rax]
.label_113:
	movzx	ebx, byte ptr [r9 + rsi]
	movsx	edi, bl
	cmp	edi, 0x5c
	je	.label_95
	test	edi, edi
	je	.label_48
	mov	byte ptr [rdx], bl
	jmp	.label_100
	nop	dword ptr [rax]
.label_95:
	mov	rdi, rax
	sub	rdi, rsi
	add	rdi, -3
	je	.label_48
	movsx	edi, byte ptr [r9 + rsi + 1]
	inc	rsi
	cmp	edi, 0x5c
	je	.label_106
	cmp	edi, 0x6e
	jne	.label_48
	mov	byte ptr [rdx], 0xa
	jmp	.label_100
	nop	dword ptr [rax]
.label_106:
	mov	byte ptr [rdx], 0x5c
.label_100:
	inc	rdx
	inc	rsi
	cmp	rsi, r12
	jb	.label_113
.label_92:
	cmp	rdx, r14
	jae	.label_88
	mov	byte ptr [rdx], 0
.label_88:
	dec	rax
	mov	byte ptr [r14], 0
	jmp	.label_116
	nop	
.label_121:
	inc	rax
	inc	rcx
	inc	r8
	inc	r15
.label_116:
	movzx	edx, byte ptr [rcx]
	cmp	dl, 9
	je	.label_121
	cmp	dl, 0x20
	je	.label_121
	cmp	dl, 0x3d
	je	.label_123
	jmp	.label_48
	nop	word ptr cs:[rax + rax]
.label_130:
	inc	r8
	inc	r15
.label_123:
	movzx	ebx, byte ptr [r8]
	cmp	bl, 0x20
	je	.label_130
	cmp	bl, 9
	je	.label_130
	cmp	byte ptr [rip + digest_hex_bytes],  1
	jne	.label_132
	mov	r14, r8
	mov	rbp, r9
	call	__ctype_b_loc
	mov	r9, rbp
	mov	r8, r14
	mov	rax, qword ptr [rax]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_141:
	movzx	edx, bl
	test	byte ptr [rax + rdx*2 + 1], 0x10
	je	.label_48
	movzx	edx, byte ptr [r15 - 1]
	test	byte ptr [rax + rdx*2 + 1], 0x10
	je	.label_48
	add	ecx, 2
	movzx	ebx, byte ptr [r15]
	add	r15, 2
	cmp	ecx, 0x20
	jb	.label_141
.label_132:
	test	bl, bl
	mov	r14, r9
	jne	.label_48
	jmp	.label_108
.label_41:
	cmp	dword ptr [rip + bsd_reversed],  0
	je	.label_48
	mov	dword ptr [rip + bsd_reversed],  1
.label_43:
	add	r14, rax
	cmp	r13b, 0x5c
	jne	.label_108
	sub	r12, rax
	mov	rax, r14
	je	.label_150
	lea	rcx, [r12 - 1]
	xor	edx, edx
	mov	rax, r14
.label_163:
	movzx	ebx, byte ptr [r14 + rdx]
	movsx	esi, bl
	cmp	esi, 0x5c
	je	.label_154
	test	esi, esi
	je	.label_48
	mov	byte ptr [rax], bl
	jmp	.label_157
	nop	word ptr cs:[rax + rax]
.label_154:
	cmp	rdx, rcx
	je	.label_48
	movsx	esi, byte ptr [r14 + rdx + 1]
	inc	rdx
	cmp	esi, 0x5c
	je	.label_158
	cmp	esi, 0x6e
	jne	.label_48
	mov	byte ptr [rax], 0xa
	jmp	.label_157
	nop	dword ptr [rax]
.label_158:
	mov	byte ptr [rax], 0x5c
.label_157:
	inc	rax
	inc	rdx
	cmp	rdx, r12
	jb	.label_163
.label_150:
	add	r12, r14
	cmp	rax, r12
	jae	.label_165
	mov	byte ptr [rax], 0
.label_165:
	test	r14, r14
	je	.label_48
.label_108:
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	je	.label_38
	cmp	byte ptr [r14], 0x2d
	jne	.label_38
	cmp	byte ptr [r14 + 1], 0
	je	.label_48
.label_38:
	mov	al, byte ptr [rip + status_only]
	test	al, al
	mov	r13, r8
	je	.label_170
	xor	ebp, ebp
	jmp	.label_175
	nop	dword ptr [rax + rax]
.label_48:
	cmp	byte ptr [rip + warn],  1
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_109
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_180
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:label_9
	xor	eax, eax
	mov	rdx, r14
	mov	r8, rbx
	call	error
.label_109:
	mov	qword ptr [rsp + 0x10], rbp
	mov	r15, qword ptr [rsp + 0x48]
	inc	r15
	mov	r13, qword ptr [rsp + 0x50]
	inc	r13
	mov	rbp, qword ptr [rsp + 0x28]
.label_135:
	test	byte ptr [rbp], 0x30
	je	.label_190
.label_161:
	mov	rdi, qword ptr [rsp + 0x80]
	call	free
	test	byte ptr [rbp], 0x20
	jne	.label_195
	mov	eax, dword ptr [rsp + 0x5c]
	test	al, al
	jne	.label_107
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_107
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	esi, ebx
	call	error
	jmp	.label_58
	nop	dword ptr [rax]
.label_195:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
.label_118:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	jmp	.label_58
.label_107:
	mov	rax, qword ptr [rsp + 0x98]
	test	al, 1
	jne	.label_220
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r8d, OFFSET FLAT:label_9
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	word ptr cs:[rax + rax]
.label_58:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rsp + 8]
.label_65:
	and	bpl, sil
	and	bpl, 1
	jmp	.label_49
.label_220:
	cmp	byte ptr [rip + status_only],  1
	jne	.label_52
	mov	rax, qword ptr [rsp + 0x20]
	and	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_110:
	xor	ebp, ebp
	mov	rax, qword ptr [rsp + 0x60]
	or	qword ptr [rsp + 0x68], rax
	jne	.label_58
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	esi, dword ptr [rsp + 8]
	je	.label_65
	mov	bpl, byte ptr [rip + strict]
	test	r13, r13
	sete	al
	xor	bpl, 1
	or	bpl, al
	jmp	.label_65
.label_52:
	test	r15, r15
	je	.label_78
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, OFFSET FLAT:label_80
	mov	r8d, 5
	mov	rcx, r15
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r15
	call	error
.label_78:
	mov	r14, qword ptr [rsp + 0x68]
	test	r14, r14
	je	.label_86
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, OFFSET FLAT:label_91
	mov	r8d, 5
	mov	rcx, r14
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_86:
	mov	r14, qword ptr [rsp + 0x60]
	test	r14, r14
	je	.label_160
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, OFFSET FLAT:label_103
	mov	r8d, 5
	mov	rcx, r14
	call	dcngettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_160:
	mov	rax, qword ptr [rsp + 0x20]
	and	al, 1
	mov	qword ptr [rsp + 0x20], rax
	jne	.label_110
	test	byte ptr [rip + ignore_missing],  1
	je	.label_110
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	jmp	.label_118
.label_93:
	xor	r15d, r15d
	jmp	.label_120
.label_134:
	movzx	esi, al
	call	__overflow
	jmp	.label_124
	nop	dword ptr [rax]
.label_119:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_125
	cmp	ecx, 0xa
	jne	.label_129
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_72
	call	fputs_unlocked
	jmp	.label_124
.label_125:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_76
	call	fputs_unlocked
	jmp	.label_124
	nop	word ptr cs:[rax + rax]
.label_129:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_134
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_124:
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_119
.label_45:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_139
	call	fputs_unlocked
.label_51:
	cmp	byte ptr [rip + digest_hex_bytes],  1
	jne	.label_144
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_148:
	movzx	edx, byte ptr [rbx + rbp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_146
	xor	eax, eax
	call	__printf_chk
	inc	rbp
	movzx	eax, byte ptr [rip + digest_hex_bytes]
	shl	rax, 4
	cmp	rbp, rax
	jb	.label_148
.label_144:
	mov	rax, qword ptr [rsp + 0x70]
	test	al, al
	mov	rbp, r12
	jne	.label_152
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_155
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x20
.label_40:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_159
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	cl, byte ptr [rsp + 7]
	mov	byte ptr [rax], cl
.label_44:
	test	r15b, 1
	je	.label_164
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_152
	inc	rbp
	jmp	.label_167
.label_164:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbp
	call	fputs_unlocked
	jmp	.label_152
.label_182:
	movzx	esi, al
	call	__overflow
	jmp	.label_172
	nop	dword ptr [rax]
.label_167:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_174
	cmp	ecx, 0xa
	jne	.label_98
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_72
	call	fputs_unlocked
	jmp	.label_172
.label_174:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_76
	call	fputs_unlocked
	jmp	.label_172
	nop	word ptr cs:[rax + rax]
.label_98:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_182
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_172:
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_167
.label_152:
	mov	al, byte ptr [rip + delim]
	test	al, al
	mov	esi, 0xa
	mov	eax, 0
	cmovne	esi, eax
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_188
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_35:
	mov	eax, dword ptr [rsp + 8]
.label_131:
	mov	bpl, al
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdx, r14
.label_49:
	add	rdx, 8
	cmp	rdx, rcx
	mov	sil, bpl
	jb	.label_203
.label_213:
	mov	al, byte ptr [rip + have_read_stdin]
	test	al, al
	je	.label_205
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_209
.label_205:
	not	bpl
	and	bpl, 1
	movzx	eax, bpl
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_156:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_215
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_168:
	cmp	eax, 0xffffff7d
	je	.label_223
	cmp	eax, 0xffffff7e
	jne	.label_34
	xor	edi, edi
	call	usage
.label_223:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_12
	mov	edx, OFFSET FLAT:label_28
	mov	r8d, OFFSET FLAT:label_61
	mov	r9d, OFFSET FLAT:label_62
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_63
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_34:
	mov	edi, 1
	call	usage
.label_201:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	jmp	.label_54
.label_133:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	jmp	.label_54
.label_181:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_166
	jmp	.label_54
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_207
	jmp	.label_54
.label_187:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	jmp	.label_54
.label_191:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	jmp	.label_54
.label_194:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_202
	jmp	.label_54
.label_200:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	jmp	.label_54
.label_204:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
.label_54:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_209:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x402d00

	.globl digest_file
	.type digest_file, @function
digest_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	cmp	byte ptr [r15], 0x2d
	jne	.label_224
	cmp	byte ptr [r15 + 1], 0
	mov	byte ptr [rbx], 0
	jne	.label_227
	mov	byte ptr [rip + have_read_stdin],  1
	mov	bl, 1
	mov	rbp, qword ptr [rip + stdin]
	jmp	.label_228
.label_224:
	mov	byte ptr [rbx], 0
.label_227:
	mov	esi, OFFSET FLAT:label_69
	mov	rdi, r15
	call	fopen_safer
	mov	rbp, rax
	test	rbp, rbp
	je	.label_226
	xor	ebx, ebx
.label_228:
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	rdi, rbp
	mov	rsi, r14
	call	md5_stream
	test	eax, eax
	je	.label_229
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	esi, ebx
	call	error
	cmp	rbp, qword ptr [rip + stdin]
	je	.label_225
	mov	rdi, rbp
	call	rpl_fclose
	xor	r14d, r14d
	jmp	.label_225
.label_226:
	mov	bpl, byte ptr [rip + ignore_missing]
	call	__errno_location
	cmp	bpl, 1
	jne	.label_230
	cmp	dword ptr [rax], 2
	jne	.label_230
	mov	byte ptr [rbx], 1
	mov	r14b, 1
	jmp	.label_225
.label_229:
	mov	r14b, 1
	test	bl, bl
	jne	.label_225
	mov	rdi, rbp
	call	rpl_fclose
	test	eax, eax
	je	.label_225
	call	__errno_location
.label_230:
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_225:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e20
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e30
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e40

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_236
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_232
	cmp	dword ptr [rbp], 0x20
	jne	.label_232
.label_236:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_234
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_232:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_231
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_233
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_234:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_233:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_235
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f00
	.globl md5_init_ctx
	.type md5_init_ctx, @function
md5_init_ctx:

	movaps	xmm0, xmmword ptr [rip + label_237]
	movups	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f20
	.globl md5_read_ctx
	.type md5_read_ctx, @function
md5_read_ctx:

	mov	eax, dword ptr [rdi]
	mov	dword ptr [rsi], eax
	mov	eax, dword ptr [rdi + 4]
	mov	dword ptr [rsi + 4], eax
	mov	eax, dword ptr [rdi + 8]
	mov	dword ptr [rsi + 8], eax
	mov	eax, dword ptr [rdi + 0xc]
	mov	dword ptr [rsi + 0xc], eax
	mov	rax, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f40
	.globl md5_finish_ctx
	.type md5_finish_ctx, @function
md5_finish_ctx:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	r15d, 0x20
	cmovb	r15, rcx
	mov	ecx, dword ptr [rbx + 0x10]
	add	ecx, eax
	mov	dword ptr [rbx + 0x10], ecx
	jae	.label_238
	inc	dword ptr [rbx + 0x14]
.label_238:
	lea	edx, [rcx*8]
	lea	r12, [rbx + 0x1c]
	mov	dword ptr [rbx + r15*4 + 0x14], edx
	mov	edx, dword ptr [rbx + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rbx + r15*4 + 0x18], edx
	lea	rdi, [rbx + rax + 0x1c]
	lea	rdx, [r15*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	r15, 2
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rbx
	call	md5_process_block
	mov	eax, dword ptr [rbx]
	mov	dword ptr [r14], eax
	mov	eax, dword ptr [rbx + 4]
	mov	dword ptr [r14 + 4], eax
	mov	eax, dword ptr [rbx + 8]
	mov	dword ptr [r14 + 8], eax
	mov	eax, dword ptr [rbx + 0xc]
	mov	dword ptr [r14 + 0xc], eax
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0

	.globl md5_process_block
	.type md5_process_block, @function
md5_process_block:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r8, rsi
	and	r8, 0xfffffffffffffffc
	add	r8, rdi
	mov	r10d, dword ptr [rdx]
	mov	ebx, dword ptr [rdx + 4]
	mov	r9d, dword ptr [rdx + 8]
	mov	ebp, dword ptr [rdx + 0xc]
	mov	rax, rsi
	shr	rax, 0x20
	mov	ecx, dword ptr [rdx + 0x10]
	add	ecx, esi
	mov	dword ptr [rdx + 0x10], ecx
	adc	eax, 0
	mov	qword ptr [rsp - 0x28], rdx
	add	dword ptr [rdx + 0x14], eax
	cmp	rdi, r8
	jae	.label_240
	mov	qword ptr [rsp - 0x20], r8
	nop	word ptr [rax + rax]
.label_239:
	mov	qword ptr [rsp - 0x78], rbx
	mov	qword ptr [rsp - 8], rbp
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp - 0x34], r10d
	mov	eax, r9d
	xor	eax, ebp
	and	eax, ebx
	xor	eax, ebp
	add	eax, r10d
	mov	ecx, dword ptr [rdi]
	mov	esi, dword ptr [rdi + 4]
	mov	qword ptr [rsp - 0x58], rsi
	lea	edx, [rcx + rax - 0x28955b88]
	mov	r10, rcx
	mov	qword ptr [rsp - 0x10], r10
	rol	edx, 7
	mov	rax, qword ptr [rsp - 0x78]
	add	edx, eax
	mov	rax, qword ptr [rsp - 0x78]
	xor	eax, r9d
	and	eax, edx
	xor	eax, r9d
	lea	ecx, [rbp + rsi]
	lea	ebp, [rax + rcx - 0x173848aa]
	rol	ebp, 0xc
	add	ebp, edx
	mov	eax, edx
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	and	eax, ebp
	mov	rcx, qword ptr [rsp - 0x78]
	xor	eax, ecx
	mov	ecx, dword ptr [rdi + 8]
	mov	qword ptr [rsp - 0x30], rcx
	lea	ecx, [r9 + rcx]
	lea	ebx, [rax + rcx + 0x242070db]
	rol	ebx, 0x11
	add	ebx, ebp
	mov	eax, ebp
	xor	eax, edx
	and	eax, ebx
	xor	eax, edx
	mov	esi, dword ptr [rdi + 0xc]
	mov	rcx, qword ptr [rsp - 0x78]
	lea	ecx, [rcx + rsi]
	mov	r12, rsi
	mov	qword ptr [rsp - 0x18], r12
	lea	eax, [rax + rcx - 0x3e423112]
	rol	eax, 0x16
	add	eax, ebx
	mov	ecx, ebx
	xor	ecx, ebp
	and	ecx, eax
	xor	ecx, ebp
	mov	esi, dword ptr [rdi + 0x10]
	mov	dword ptr [rsp - 0x64], esi
	add	edx, esi
	lea	ecx, [rcx + rdx - 0xa83f051]
	rol	ecx, 7
	add	ecx, eax
	mov	edx, eax
	xor	edx, ebx
	and	edx, ecx
	xor	edx, ebx
	mov	esi, dword ptr [rdi + 0x14]
	mov	dword ptr [rsp - 0x6c], esi
	add	ebp, esi
	lea	r8d, [rdx + rbp + 0x4787c62a]
	rol	r8d, 0xc
	add	r8d, ecx
	mov	edx, ecx
	xor	edx, eax
	and	edx, r8d
	xor	edx, eax
	mov	esi, dword ptr [rdi + 0x18]
	add	ebx, esi
	mov	dword ptr [rsp - 0x38], esi
	lea	ebx, [rdx + rbx - 0x57cfb9ed]
	rol	ebx, 0x11
	add	ebx, r8d
	mov	ebp, r8d
	xor	ebp, ecx
	and	ebp, ebx
	xor	ebp, ecx
	mov	edx, dword ptr [rdi + 0x1c]
	mov	dword ptr [rsp - 0x60], edx
	add	eax, edx
	lea	r9d, [rbp + rax - 0x2b96aff]
	rol	r9d, 0x16
	add	r9d, ebx
	mov	eax, ebx
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	edx, dword ptr [rdi + 0x20]
	mov	dword ptr [rsp - 0x68], edx
	add	ecx, edx
	lea	ecx, [rax + rcx + 0x698098d8]
	rol	ecx, 7
	add	ecx, r9d
	mov	eax, r9d
	xor	eax, ebx
	and	eax, ecx
	xor	eax, ebx
	mov	edx, dword ptr [rdi + 0x24]
	mov	dword ptr [rsp - 0x7c], edx
	add	r8d, edx
	lea	ebp, [rax + r8 - 0x74bb0851]
	rol	ebp, 0xc
	add	ebp, ecx
	mov	eax, ecx
	xor	eax, r9d
	and	eax, ebp
	xor	eax, r9d
	mov	edx, dword ptr [rdi + 0x28]
	add	ebx, edx
	mov	r13d, edx
	mov	dword ptr [rsp - 0x48], r13d
	lea	r15d, [rax + rbx - 0xa44f]
	rol	r15d, 0x11
	add	r15d, ebp
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r15d
	xor	eax, ecx
	mov	edx, dword ptr [rdi + 0x2c]
	add	r9d, edx
	mov	dword ptr [rsp - 0x5c], edx
	lea	r11d, [rax + r9 - 0x76a32842]
	rol	r11d, 0x16
	add	r11d, r15d
	mov	eax, r15d
	xor	eax, ebp
	and	eax, r11d
	xor	eax, ebp
	mov	ebx, dword ptr [rdi + 0x30]
	mov	dword ptr [rsp - 0x40], ebx
	add	ecx, ebx
	lea	ecx, [rax + rcx + 0x6b901122]
	rol	ecx, 7
	add	ecx, r11d
	mov	eax, r11d
	xor	eax, r15d
	and	eax, ecx
	xor	eax, r15d
	mov	ebx, dword ptr [rdi + 0x34]
	add	ebp, ebx
	lea	r9d, [rax + rbp - 0x2678e6d]
	rol	r9d, 0xc
	add	r9d, ecx
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r9d
	xor	eax, r11d
	mov	r14d, dword ptr [rdi + 0x38]
	add	r15d, r14d
	lea	r8d, [rax + r15 - 0x5986bc72]
	rol	r8d, 0x11
	add	r8d, r9d
	mov	eax, r9d
	xor	eax, ecx
	and	eax, r8d
	xor	eax, ecx
	mov	ebp, dword ptr [rdi + 0x3c]
	add	r11d, ebp
	mov	r15d, ebp
	mov	dword ptr [rsp - 0x3c], r15d
	lea	r11d, [rax + r11 + 0x49b40821]
	rol	r11d, 0x16
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, r9d
	xor	eax, r8d
	mov	rbp, qword ptr [rsp - 0x58]
	add	ecx, ebp
	lea	ecx, [rax + rcx - 0x9e1da9e]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	r9d, esi
	lea	ebp, [rax + r9 - 0x3fbf4cc0]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x265e5a51]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x16493856]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	mov	r9d, dword ptr [rsp - 0x6c]
	add	ecx, r9d
	lea	ecx, [rax + rcx - 0x29d0efa3]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	add	ebp, r13d
	lea	ebp, [rax + rbp + 0x2441453]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r15d
	lea	r8d, [rax + r8 - 0x275e197f]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x64]
	add	r11d, r10d
	lea	r11d, [rax + r11 - 0x182c0438]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, dword ptr [rsp - 0x7c]
	lea	ecx, [rax + rcx + 0x21e1cde6]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	r13d, r14d
	mov	dword ptr [rsp - 0x4c], r13d
	add	ebp, r13d
	lea	ebp, [rax + rbp - 0x3cc8f82a]
	rol	ebp, 9
	add	ebp, ecx
	mov	eax, ebp
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	add	r8d, r12d
	lea	r8d, [rax + r8 - 0xb2af279]
	rol	r8d, 0xe
	add	r8d, ebp
	mov	eax, r8d
	xor	eax, ebp
	and	eax, ecx
	xor	eax, ebp
	mov	esi, dword ptr [rsp - 0x68]
	add	r11d, esi
	lea	r11d, [rax + r11 + 0x455a14ed]
	rol	r11d, 0x14
	add	r11d, r8d
	mov	eax, r11d
	xor	eax, r8d
	and	eax, ebp
	xor	eax, r8d
	add	ecx, ebx
	mov	dword ptr [rsp - 0x44], ebx
	lea	ecx, [rax + rcx - 0x561c16fb]
	rol	ecx, 5
	add	ecx, r11d
	mov	eax, ecx
	xor	eax, r11d
	and	eax, r8d
	xor	eax, r11d
	mov	rdx, qword ptr [rsp - 0x30]
	add	ebp, edx
	lea	r14d, [rax + rbp - 0x3105c08]
	rol	r14d, 9
	add	r14d, ecx
	mov	eax, r14d
	xor	eax, ecx
	and	eax, r11d
	xor	eax, ecx
	mov	edx, dword ptr [rsp - 0x60]
	add	r8d, edx
	lea	r8d, [rax + r8 + 0x676f02d9]
	rol	r8d, 0xe
	add	r8d, r14d
	mov	ebp, r8d
	xor	ebp, r14d
	mov	eax, ebp
	and	eax, ecx
	xor	eax, r14d
	mov	r15d, dword ptr [rsp - 0x40]
	add	r11d, r15d
	lea	eax, [rax + r11 - 0x72d5b376]
	rol	eax, 0x14
	add	eax, r8d
	xor	ebp, eax
	add	ecx, r9d
	lea	r11d, [rbp + rcx - 0x5c6be]
	rol	r11d, 4
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	add	r14d, esi
	lea	r14d, [rcx + r14 - 0x788e097f]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	ebp, r11d
	xor	ebp, eax
	xor	ebp, r14d
	add	r8d, dword ptr [rsp - 0x5c]
	lea	ebp, [rbp + r8 + 0x6d9d6122]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, ebp
	add	eax, r13d
	lea	r8d, [rcx + rax - 0x21ac7f4]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	mov	rcx, qword ptr [rsp - 0x58]
	add	r11d, ecx
	lea	r11d, [rax + r11 - 0x5b4115bc]
	rol	r11d, 4
	add	r11d, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, r11d
	add	r14d, r10d
	lea	r14d, [rcx + r14 + 0x4bdecfa9]
	rol	r14d, 0xb
	add	r14d, r11d
	mov	eax, r11d
	xor	eax, r8d
	xor	eax, r14d
	add	ebp, edx
	lea	ebp, [rax + rbp - 0x944b4a0]
	rol	ebp, 0x10
	add	ebp, r14d
	mov	eax, r14d
	xor	eax, r11d
	xor	eax, ebp
	mov	r10d, dword ptr [rsp - 0x48]
	add	r8d, r10d
	lea	r8d, [rax + r8 - 0x41404390]
	rol	r8d, 0x17
	add	r8d, ebp
	mov	eax, ebp
	xor	eax, r14d
	xor	eax, r8d
	add	r11d, ebx
	lea	eax, [rax + r11 + 0x289b7ec6]
	rol	eax, 4
	add	eax, r8d
	mov	ecx, r8d
	xor	ecx, ebp
	xor	ecx, eax
	mov	rsi, qword ptr [rsp - 0x10]
	add	r14d, esi
	lea	r11d, [rcx + r14 - 0x155ed806]
	rol	r11d, 0xb
	add	r11d, eax
	mov	ecx, eax
	xor	ecx, r8d
	xor	ecx, r11d
	mov	r9, qword ptr [rsp - 0x18]
	add	ebp, r9d
	lea	r14d, [rcx + rbp - 0x2b10cf7b]
	rol	r14d, 0x10
	add	r14d, r11d
	mov	ecx, r11d
	xor	ecx, eax
	xor	ecx, r14d
	mov	r12d, dword ptr [rsp - 0x38]
	add	r8d, r12d
	lea	r8d, [rcx + r8 + 0x4881d05]
	rol	r8d, 0x17
	add	r8d, r14d
	mov	ecx, r14d
	xor	ecx, r11d
	xor	ecx, r8d
	add	eax, dword ptr [rsp - 0x7c]
	lea	ecx, [rcx + rax - 0x262b2fc7]
	rol	ecx, 4
	add	ecx, r8d
	mov	eax, r8d
	xor	eax, r14d
	xor	eax, ecx
	add	r11d, r15d
	lea	edx, [rax + r11 - 0x1924661b]
	rol	edx, 0xb
	add	edx, ecx
	mov	ebp, ecx
	xor	ebp, r8d
	xor	ebp, edx
	mov	r13d, dword ptr [rsp - 0x3c]
	add	r14d, r13d
	lea	r11d, [rbp + r14 + 0x1fa27cf8]
	rol	r11d, 0x10
	add	r11d, edx
	mov	ebp, edx
	xor	ebp, ecx
	xor	ebp, r11d
	mov	rax, qword ptr [rsp - 0x30]
	add	r8d, eax
	mov	r14, rax
	lea	r8d, [rbp + r8 - 0x3b53a99b]
	add	ecx, esi
	rol	r8d, 0x17
	add	r8d, r11d
	mov	eax, edx
	not	eax
	or	eax, r8d
	xor	eax, r11d
	lea	ecx, [rax + rcx - 0xbd6ddbc]
	add	edx, dword ptr [rsp - 0x60]
	rol	ecx, 6
	add	ecx, r8d
	mov	eax, r11d
	not	eax
	or	eax, ecx
	xor	eax, r8d
	lea	ebp, [rax + rdx + 0x432aff97]
	add	r11d, dword ptr [rsp - 0x4c]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	eax, r8d
	not	eax
	or	eax, ebp
	xor	eax, ecx
	lea	eax, [rax + r11 - 0x546bdc59]
	add	r8d, dword ptr [rsp - 0x6c]
	rol	eax, 0xf
	add	eax, ebp
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	esi, [rdx + r8 - 0x36c5fc7]
	add	ecx, r15d
	rol	esi, 0x15
	add	esi, eax
	mov	edx, ebp
	not	edx
	or	edx, esi
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x655b59c3]
	add	ebp, r9d
	rol	ecx, 6
	add	ecx, esi
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, esi
	lea	ebp, [rdx + rbp - 0x70f3336e]
	add	eax, r10d
	mov	rbx, qword ptr [rsp - 0x78]
	rol	ebp, 0xa
	add	ebp, ecx
	mov	edx, esi
	not	edx
	or	edx, ebp
	xor	edx, ecx
	lea	eax, [rdx + rax - 0x100b83]
	rol	eax, 0xf
	add	eax, ebp
	mov	rdx, qword ptr [rsp - 0x58]
	add	esi, edx
	mov	edx, ecx
	not	edx
	or	edx, eax
	xor	edx, ebp
	lea	r8d, [rdx + rsi - 0x7a7ba22f]
	rol	r8d, 0x15
	add	r8d, eax
	add	ecx, dword ptr [rsp - 0x68]
	mov	edx, ebp
	not	edx
	or	edx, r8d
	xor	edx, eax
	lea	ecx, [rdx + rcx + 0x6fa87e4f]
	rol	ecx, 6
	add	ecx, r8d
	add	ebp, r13d
	mov	edx, eax
	not	edx
	or	edx, ecx
	xor	edx, r8d
	lea	edx, [rdx + rbp - 0x1d31920]
	rol	edx, 0xa
	add	edx, ecx
	add	eax, r12d
	mov	esi, r8d
	not	esi
	or	esi, edx
	xor	esi, ecx
	lea	ebp, [rsi + rax - 0x5cfebcec]
	rol	ebp, 0xf
	add	ebp, edx
	add	r8d, dword ptr [rsp - 0x44]
	mov	eax, ecx
	not	eax
	or	eax, ebp
	xor	eax, edx
	lea	esi, [rax + r8 + 0x4e0811a1]
	mov	r8, qword ptr [rsp - 0x20]
	mov	r10d, dword ptr [rsp - 0x34]
	rol	esi, 0x15
	add	esi, ebp
	add	ecx, dword ptr [rsp - 0x64]
	mov	eax, edx
	not	eax
	or	eax, esi
	xor	eax, ebp
	lea	ecx, [rax + rcx - 0x8ac817e]
	rol	ecx, 6
	add	ecx, esi
	add	edx, dword ptr [rsp - 0x5c]
	mov	eax, ebp
	not	eax
	or	eax, ecx
	xor	eax, esi
	lea	edx, [rax + rdx - 0x42c50dcb]
	rol	edx, 0xa
	add	edx, ecx
	add	ebp, r14d
	mov	eax, esi
	not	eax
	or	eax, edx
	xor	eax, ecx
	lea	eax, [rax + rbp + 0x2ad7d2bb]
	add	esi, dword ptr [rsp - 0x7c]
	rol	eax, 0xf
	add	eax, edx
	add	r10d, ecx
	not	ecx
	or	ecx, eax
	xor	ecx, edx
	lea	ecx, [rcx + rsi - 0x14792c6f]
	rol	ecx, 0x15
	add	ebx, eax
	add	ebx, ecx
	mov	rcx, qword ptr [rsp]
	add	eax, ecx
	mov	rcx, qword ptr [rsp - 8]
	add	edx, ecx
	add	rdi, 0x40
	cmp	rdi, r8
	mov	r9d, eax
	mov	ebp, edx
	jb	.label_239
	jmp	.label_241
.label_240:
	mov	edx, ebp
	mov	eax, r9d
.label_241:
	mov	rcx, qword ptr [rsp - 0x28]
	mov	dword ptr [rcx], r10d
	mov	dword ptr [rcx + 4], ebx
	mov	dword ptr [rcx + 8], eax
	mov	dword ptr [rcx + 0xc], edx
	add	rsp, 8
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
	#Procedure 0x403800

	.globl md5_stream
	.type md5_stream, @function
md5_stream:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rsi
	mov	r12, rdi
	mov	edi, 0x8048
	call	malloc
	mov	r15, rax
	mov	eax, 1
	test	r15, r15
	je	.label_242
	movaps	xmm0, xmmword ptr [rip + label_237]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	lea	r13, [rsp]
	jmp	.label_243
	nop	word ptr [rax + rax]
.label_246:
	mov	esi, 0x8000
	mov	rdi, r15
	mov	rdx, r13
	call	md5_process_block
.label_243:
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_247:
	test	byte ptr [r12], 0x10
	jne	.label_245
	lea	rdi, [r15 + rbx]
	mov	edx, 0x8000
	sub	rdx, rbx
	mov	esi, 1
	mov	rcx, r12
	call	fread_unlocked
	add	rbx, rax
	cmp	rbx, 0x8000
	je	.label_246
	test	rax, rax
	jne	.label_247
	test	byte ptr [r12], 0x20
	jne	.label_244
.label_245:
	test	rbx, rbx
	je	.label_249
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_bytes
.label_249:
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	jae	.label_248
	inc	dword ptr [rsp + 0x14]
.label_248:
	lea	edx, [rcx*8]
	lea	r12, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], edx
	mov	edx, dword ptr [rsp + 0x14]
	shld	edx, ecx, 3
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	lea	rdi, [rsp + rax + 0x1c]
	lea	rdx, [rbx*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	mov	rdi, r12
	mov	rsi, rbx
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rdi, r15
	call	free
	xor	eax, eax
	jmp	.label_242
.label_244:
	mov	rdi, r15
	call	free
	mov	eax, 1
.label_242:
	add	rsp, 0xa0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403980

	.globl md5_process_bytes
	.type md5_process_bytes, @function
md5_process_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	ebx, dword ptr [r14 + 0x18]
	test	rbx, rbx
	je	.label_250
	mov	r13d, 0x80
	sub	r13, rbx
	cmp	r13, r12
	cmova	r13, r12
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	mov	dword ptr [r14 + 0x18], ebx
	cmp	ebx, 0x41
	jb	.label_254
	lea	rbp, [r14 + 0x1c]
	mov	esi, ebx
	and	esi, 0xffffffc0
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	mov	edx, dword ptr [r14 + 0x18]
	and	edx, 0x3f
	mov	dword ptr [r14 + 0x18], edx
	and	rbx, 0xffffffffffffffc0
	add	rbx, rbp
	mov	rdi, rbp
	mov	rsi, rbx
	call	memcpy
.label_254:
	add	r15, r13
	sub	r12, r13
.label_250:
	cmp	r12, 0x40
	jb	.label_251
	mov	rbx, r12
	and	rbx, 0xffffffffffffffc0
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	md5_process_block
	add	r15, rbx
	and	r12d, 0x3f
.label_251:
	test	r12, r12
	je	.label_252
	mov	ebx, dword ptr [r14 + 0x18]
	lea	rdi, [r14 + rbx + 0x1c]
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x40
	jb	.label_253
	lea	rbp, [r14 + 0x1c]
	mov	esi, 0x40
	mov	rdi, rbp
	mov	rdx, r14
	call	md5_process_block
	add	rbx, -0x40
	lea	rsi, [r14 + 0x5c]
	mov	rdi, rbp
	mov	rdx, rbx
	call	memcpy
.label_253:
	mov	dword ptr [r14 + 0x18], ebx
.label_252:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a80
	.globl md5_buffer
	.type md5_buffer, @function
md5_buffer:

	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xa0
	mov	r14, rdx
	movaps	xmm0, xmmword ptr [rip + label_237]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x14], 0
	mov	dword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0
	lea	rdx, [rsp]
	call	md5_process_bytes
	mov	eax, dword ptr [rsp + 0x18]
	cmp	rax, 0x38
	mov	ecx, 0x10
	mov	ebx, 0x20
	cmovb	rbx, rcx
	mov	ecx, dword ptr [rsp + 0x10]
	add	ecx, eax
	mov	dword ptr [rsp + 0x10], ecx
	mov	edx, dword ptr [rsp + 0x14]
	jae	.label_255
	inc	edx
	mov	dword ptr [rsp + 0x14], edx
.label_255:
	lea	esi, [rcx*8]
	lea	r15, [rsp + 0x1c]
	mov	dword ptr [rsp + rbx*4 + 0x14], esi
	shld	edx, ecx, 3
	mov	dword ptr [rsp + rbx*4 + 0x18], edx
	lea	rdi, [rsp + rax + 0x1c]
	lea	rdx, [rbx*4 - 8]
	sub	rdx, rax
	mov	esi, OFFSET FLAT:fillbuf
	call	memcpy
	shl	rbx, 2
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	call	md5_process_block
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0xa0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b50
	.globl fdadvise
	.type fdadvise, @function
fdadvise:

	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b60

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_256
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_256:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b80

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_257
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_261
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_258
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_259
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_257
.label_259:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_260
.label_261:
	mov	rax, rbx
	jmp	.label_257
.label_258:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_260:
	xor	eax, eax
.label_257:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_265
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_267
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_262
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_267
	mov	esi, OFFSET FLAT:label_264
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_263
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_263:
	mov	rbx, r14
.label_267:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_265:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_266
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cc0
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
	#Procedure 0x403d00
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
	#Procedure 0x403d10
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
	#Procedure 0x403d20
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
	#Procedure 0x403d60
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
	#Procedure 0x403d80
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_268
	test	rdx, rdx
	je	.label_268
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_268:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403db0
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
	#Procedure 0x403e30

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_299
	nop	
.label_343:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_329
	or	al, dl
	jne	.label_329
	test	dil, 1
	jne	.label_342
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_329
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_299
	jmp	.label_329
.label_599:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_350
	test	rbp, rbp
	je	.label_353
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_353:
	mov	r14d, 1
	jmp	.label_355
.label_600:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_348
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_295
.label_350:
	xor	r14d, r14d
.label_355:
	mov	eax, OFFSET FLAT:label_348
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_349
	nop	
.label_299:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_373
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_306]
.label_601:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_385
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_327
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_602:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_274
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_274
	xor	r14d, r14d
	nop	
.label_383:
	cmp	r14, rbp
	jae	.label_282
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_282:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_383
.label_274:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_295
.label_594:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_295
.label_597:
	mov	al, 1
.label_595:
	mov	r12b, 1
.label_598:
	test	r12b, 1
	mov	cl, 1
	je	.label_310
	mov	ecx, eax
.label_310:
	mov	al, cl
.label_596:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_312
	test	rbp, rbp
	je	.label_320
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_320:
	mov	r14d, 1
	jmp	.label_323
.label_312:
	xor	r14d, r14d
.label_323:
	mov	ecx, OFFSET FLAT:label_327
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_349:
	mov	sil, r12b
.label_295:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_333
	nop	word ptr cs:[rax + rax]
.label_375:
	inc	r12
.label_333:
	cmp	r11, -1
	je	.label_360
	cmp	r12, r11
	jne	.label_362
	jmp	.label_363
	nop	word ptr cs:[rax + rax]
.label_360:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_368
.label_362:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_374
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_379
	cmp	r11, -1
	jne	.label_379
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_379:
	cmp	rbx, r11
	jbe	.label_390
.label_374:
	xor	esi, esi
.label_288:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_393
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_270]
.label_623:
	test	r12, r12
	jne	.label_281
	jmp	.label_275
	nop	word ptr cs:[rax + rax]
.label_390:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_285
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_288
	jmp	.label_307
.label_285:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_288
.label_627:
	xor	eax, eax
	cmp	r11, -1
	je	.label_294
	test	r12, r12
	jne	.label_308
	cmp	r11, 1
	je	.label_275
	xor	r13d, r13d
	jmp	.label_269
.label_616:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_315
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_307
	cmp	r8d, 2
	jne	.label_314
	mov	eax, r9d
	and	al, 1
	jne	.label_314
	cmp	r14, rbp
	jae	.label_328
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_328:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_330
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_330:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_322
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_322:
	add	r14, 3
	mov	r9b, 1
.label_314:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_340
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_340:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_321
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_321
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_321
	cmp	r14, rbp
	jae	.label_388
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_388:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_283
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_283:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_269
.label_617:
	mov	bl, 0x62
	jmp	.label_357
.label_618:
	mov	cl, 0x74
	jmp	.label_356
.label_619:
	mov	bl, 0x76
	jmp	.label_357
.label_620:
	mov	bl, 0x66
	jmp	.label_357
.label_621:
	mov	cl, 0x72
	jmp	.label_356
.label_624:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_371
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_293
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_381
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_381:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_394
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_394:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_272
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_272:
	add	r14, 3
	xor	r9d, r9d
.label_371:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_269
.label_625:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_277
	cmp	r8d, 2
	jne	.label_281
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_281
	jmp	.label_293
.label_626:
	cmp	r8d, 2
	jne	.label_290
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_293
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_297
.label_393:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_298
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_311
.label_294:
	test	r12, r12
	jne	.label_324
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_324
.label_275:
	mov	dl, 1
.label_622:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_293
	xor	eax, eax
	mov	r13b, dl
.label_269:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_334
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_336
	jmp	.label_338
	nop	word ptr cs:[rax + rax]
.label_334:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_338
.label_336:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_303
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_345
	nop	dword ptr [rax]
.label_338:
	test	sil, sil
.label_345:
	mov	ebx, r15d
	je	.label_276
	jmp	.label_352
.label_303:
	mov	ebx, r15d
	jmp	.label_352
.label_315:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_375
	xor	r15d, r15d
	jmp	.label_281
.label_290:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_356
	xor	eax, eax
	mov	r15b, 0x5c
.label_297:
	xor	r13d, r13d
	jmp	.label_276
.label_356:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_293
.label_357:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_269
	nop	
.label_352:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_307
	cmp	r8d, 2
	jne	.label_372
	mov	eax, r9d
	and	al, 1
	jne	.label_372
	cmp	r14, rbp
	jae	.label_378
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_378:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_361
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_361:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_384
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_384:
	add	r14, 3
	mov	r9b, 1
.label_372:
	cmp	r14, rbp
	jae	.label_392
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_392:
	inc	r14
	jmp	.label_377
.label_298:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_271
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_271:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_335
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_326:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_291
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_305
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_325
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_318
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_341:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_300
	bt	rsi, rdx
	jb	.label_293
.label_300:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_341
.label_318:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_339
	xor	r13d, r13d
.label_339:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_326
	jmp	.label_346
.label_321:
	xor	r13d, r13d
	jmp	.label_269
.label_324:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_269
.label_277:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_281
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_281
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_281
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_359
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_347
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_367
	cmp	r14, rbp
	jae	.label_369
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_369:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_376
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_376:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_365
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_365:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_304
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_304:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_347:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_269
.label_281:
	xor	eax, eax
.label_308:
	xor	r13d, r13d
	jmp	.label_269
.label_335:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_302:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_286
	cmp	rbp, -1
	je	.label_289
	cmp	rbp, -2
	je	.label_291
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_296
	xor	r13d, r13d
.label_296:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_302
	jmp	.label_346
.label_291:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_316
	lea	rax, [r10 + r12]
.label_391:
	cmp	byte ptr [rax + rsi], 0
	je	.label_316
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_391
.label_316:
	mov	qword ptr [rsp + 0x40], rsi
.label_305:
	xor	r13d, r13d
	jmp	.label_325
.label_289:
	xor	r13d, r13d
.label_286:
	mov	r10, qword ptr [rsp + 0x28]
.label_325:
	mov	r12, qword ptr [rsp + 0x40]
.label_346:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_311:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_332
	test	al, al
	je	.label_332
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_269
.label_332:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_344
	nop	word ptr [rax + rax]
.label_364:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_344:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_351
	test	sil, 1
	je	.label_301
	cmp	r14, rbp
	jae	.label_354
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_354:
	inc	r14
	xor	esi, esi
	jmp	.label_301
	nop	word ptr cs:[rax + rax]
.label_351:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_307
	cmp	r8d, 2
	jne	.label_309
	mov	eax, r9d
	and	al, 1
	jne	.label_309
	cmp	r14, rbp
	jae	.label_366
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_366:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_370
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_370:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_337
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_337:
	add	r14, 3
	mov	r9b, 1
.label_309:
	cmp	r14, rbp
	jae	.label_382
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_382:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_387
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_387:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_395
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_395:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_301:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_276
	test	r9b, 1
	je	.label_279
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_358
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_284
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_284:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_292
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_292:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_279
	nop	word ptr cs:[rax + rax]
.label_358:
	mov	rbx, rcx
.label_279:
	cmp	r14, rbp
	jae	.label_364
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_364
	nop	
.label_276:
	test	r9b, 1
	je	.label_313
	and	al, 1
	jne	.label_313
	cmp	r14, rbp
	jae	.label_319
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_319:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_317
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_317:
	add	r14, 2
	xor	r9d, r9d
.label_313:
	mov	ebx, r15d
.label_377:
	cmp	r14, rbp
	jae	.label_331
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_331:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_375
.label_359:
	xor	r13d, r13d
	jmp	.label_269
	nop	word ptr cs:[rax + rax]
.label_363:
	mov	rcx, r12
.label_368:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_343
	or	al, dl
	jne	.label_343
	mov	r11, rcx
	jmp	.label_307
.label_293:
	mov	eax, 2
.label_287:
	mov	qword ptr [rsp + 0x38], rax
.label_307:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_278:
	mov	r14, rax
.label_280:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_329:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_273
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_380
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_380
	inc	rdx
	nop	dword ptr [rax + rax]
.label_389:
	cmp	r14, rbp
	jae	.label_386
	mov	byte ptr [rcx + r14], al
.label_386:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_389
	jmp	.label_380
.label_342:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_278
.label_273:
	mov	rcx, qword ptr [rsp + 0x10]
.label_380:
	cmp	r14, rbp
	jae	.label_280
	mov	byte ptr [rcx + r14], 0
	jmp	.label_280
.label_367:
	mov	eax, 5
	jmp	.label_287
.label_373:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404c60
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
	#Procedure 0x404d30
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
	je	.label_396
	mov	qword ptr [rax], rbx
.label_396:
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
	#Procedure 0x404e20
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_397
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_399:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_399
.label_397:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_400
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_401], OFFSET FLAT:slot0
.label_400:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_398
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_398:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ec0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ed0

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
	js	.label_405
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_408
	cmp	r12d, 0x7fffffff
	je	.label_403
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
	jne	.label_406
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_406:
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
.label_408:
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
	jbe	.label_404
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_407
.label_404:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_402
	mov	rdi, r14
	call	free
.label_402:
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
.label_407:
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
.label_405:
	call	abort
.label_403:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405090
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0
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
	#Procedure 0x4050c0
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
	#Procedure 0x4050e0
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
	je	.label_409
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
.label_409:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405150
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
	je	.label_410
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
.label_410:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051c0
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
	je	.label_411
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
.label_411:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405230
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
	je	.label_412
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
.label_412:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052a0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_413]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_415]
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
	#Procedure 0x405310
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_413]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_415]
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
	#Procedure 0x405380

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_413]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_415]
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
	#Procedure 0x4053e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_413]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_415]
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
	#Procedure 0x405440

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
	je	.label_416
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
.label_416:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054e0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_413]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_415]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_417
	test	rdx, rdx
	je	.label_417
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_417:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405550
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_413]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_415]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_418
	test	rdx, rdx
	je	.label_418
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_418:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_413]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_415]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_419
	test	rsi, rsi
	je	.label_419
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_419:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405630
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_413]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_414]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_415]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_420
	test	rsi, rsi
	je	.label_420
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
.label_420:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056b0
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
	#Procedure 0x4056d0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056f0
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
	#Procedure 0x405710

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
	jne	.label_425
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_429
	cmp	ecx, 0x55
	jne	.label_421
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_421
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_421
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_421
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_421
	cmp	byte ptr [rax + 5], 0
	jne	.label_421
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_427
	mov	eax, OFFSET FLAT:label_428
	jmp	.label_424
.label_429:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_421
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_421
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_421
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_421
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_421
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_421
	cmp	byte ptr [rax + 7], 0
	je	.label_426
.label_421:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_348
	mov	eax, OFFSET FLAT:label_327
.label_424:
	cmove	rax, rcx
.label_425:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_426:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_422
	mov	eax, OFFSET FLAT:label_423
	jmp	.label_424
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4057e0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x4057f0

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
	je	.label_446
	mov	edx, OFFSET FLAT:label_436
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_442
.label_446:
	mov	edx, OFFSET FLAT:label_443
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_442:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
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
	mov	esi, OFFSET FLAT:label_444
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_431
	jmp	qword ptr [(r12 * 8) + label_432]
.label_546:
	add	rsp, 8
	jmp	.label_430
.label_431:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_439
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
	jmp	.label_430
.label_547:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
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
.label_548:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_445
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
.label_549:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_437
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
.label_550:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
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
	jmp	.label_430
.label_551:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_433
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
	jmp	.label_430
.label_552:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
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
	jmp	.label_430
.label_553:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
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
	jmp	.label_430
.label_555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
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
	jmp	.label_430
.label_554:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_447
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
.label_430:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b50
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_449:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_449
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b80

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_450
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_452
.label_450:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_452:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_453
	cmp	r10d, 0x29
	jae	.label_462
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_451
.label_462:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_451:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_453
	cmp	r10d, 0x29
	jae	.label_460
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_461
.label_460:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_461:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_453
	cmp	r10d, 0x29
	jae	.label_458
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_459
.label_458:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_459:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_453
	cmp	r10d, 0x29
	jae	.label_456
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_457
.label_456:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_457:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_453
	cmp	r10d, 0x29
	jae	.label_454
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_455
.label_454:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_455:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_453
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_453
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_453
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_453
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_453:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d70

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_463
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_463:
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
	#Procedure 0x405e00
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_464
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_465
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_467
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_466
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e80
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_468
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_469
	test	rax, rax
	je	.label_468
.label_469:
	pop	rbx
	ret	
.label_468:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ec0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_470
	test	rax, rax
	je	.label_471
.label_470:
	pop	rbx
	ret	
.label_471:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ee0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_472
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_473
	test	rbx, rbx
	jne	.label_473
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_473:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_474
	test	rax, rax
	je	.label_472
.label_474:
	pop	rbx
	ret	
.label_472:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f30

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_475
	test	rbx, rbx
	jne	.label_475
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_475:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_477
	test	rax, rax
	je	.label_476
.label_477:
	pop	rbx
	ret	
.label_476:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405f60
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_478
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_481
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_479
.label_478:
	test	rcx, rcx
	jne	.label_484
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_484:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_480
.label_479:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_483
	test	rbx, rbx
	jne	.label_483
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_483:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_482
	test	rax, rax
	je	.label_481
.label_482:
	pop	rbx
	ret	
.label_481:
	call	xalloc_die
.label_480:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406000
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_485
	test	rax, rax
	je	.label_486
.label_485:
	pop	rbx
	ret	
.label_486:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406020
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_487
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_490
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_491
	call	free
	xor	eax, eax
	jmp	.label_488
.label_487:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_489
	mov	qword ptr [rsi], rbx
.label_491:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_488
	test	rax, rax
	je	.label_489
.label_488:
	pop	rbx
	ret	
.label_489:
	call	xalloc_die
.label_490:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406090
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
	je	.label_493
	test	r14, r14
	je	.label_492
.label_493:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_492:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_494
	call	rpl_calloc
	test	rax, rax
	je	.label_494
	pop	rcx
	ret	
.label_494:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406100

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
	je	.label_495
	test	r15, r15
	je	.label_496
.label_495:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_496:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406140
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
	je	.label_498
	test	r15, r15
	je	.label_497
.label_498:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_497:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406190

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_499
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_128
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4061c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_500
	test	rsi, rsi
	mov	ecx, 1
	je	.label_501
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_501
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_500:
	mov	ecx, 1
.label_501:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406210

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_502
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_504
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_502
.label_504:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_502
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_503
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_503:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_502:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406290

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_507
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_507:
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
	ja	.label_513
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_509
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_510
	test	esi, esi
	jne	.label_513
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_514
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_524
.label_513:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_515
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_510
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_520
.label_509:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_511
.label_510:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_525
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_505
.label_525:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_505:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_506:
	call	fcntl
.label_511:
	mov	ebp, eax
.label_508:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_520:
	cmp	eax, 6
	jne	.label_515
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_517
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_519
.label_515:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_518
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_523
.label_514:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_524:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_506
.label_517:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_519:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_512
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_516
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_516
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_508
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_521
.label_516:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_508
.label_518:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_523:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_511
.label_512:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_521:
	test	al, al
	je	.label_508
	test	ebp, ebp
	js	.label_508
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_522
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_508
.label_522:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_508
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406530

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_526
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_526
	test	byte ptr [rbx + 1], 1
	je	.label_526
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_526:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406570

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
	jne	.label_527
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_527
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_528
.label_527:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_528:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_529
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_529:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4065e0

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
	je	.label_530
	cmp	r15, -2
	jb	.label_530
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_530
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_530:
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
	#Procedure 0x406640

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
	jne	.label_532
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_531
	test	cl, cl
	jne	.label_531
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_531
.label_532:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_531
	call	__errno_location
	mov	dword ptr [rax], 0
.label_531:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_534
	cmp	byte ptr [rax], 0x43
	jne	.label_536
	cmp	byte ptr [rax + 1], 0
	je	.label_533
.label_536:
	mov	esi, OFFSET FLAT:label_535
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_534
.label_533:
	xor	ebx, ebx
.label_534:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_127
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_537
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x406710

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
