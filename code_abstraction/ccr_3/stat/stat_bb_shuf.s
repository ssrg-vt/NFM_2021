	.section	.text
	.align	32
	#Procedure 0x402229
	.globl sub_402229
	.type sub_402229, @function
sub_402229:

	hlt	
	.section	.text
	.align	32
	#Procedure 0x40222a
	.globl sub_40222a
	.type sub_40222a, @function
sub_40222a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402262
	.globl sub_402262
	.type sub_402262, @function
sub_402262:

	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022aa
	.globl sub_4022aa
	.type sub_4022aa, @function
sub_4022aa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022cc
	.globl sub_4022cc
	.type sub_4022cc, @function
sub_4022cc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022dd
	.globl sub_4022dd
	.type sub_4022dd, @function
sub_4022dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022f6
	.globl sub_4022f6
	.type sub_4022f6, @function
sub_4022f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402300

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x402303
	.globl sub_402303
	.type sub_402303, @function
sub_402303:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402310

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
	je	.label_10
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_9
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_9
.label_10:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_9
	test	cl, cl
	jne	.label_9
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_9:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402376
	.globl sub_402376
	.type sub_402376, @function
sub_402376:

	nop	word ptr cs:[rax + rax]
.label_14:
	inc	rdi
.label_17:
	movzx	edx, byte ptr [rcx + rdi*2]
	cmp	dl, 0x25
	jne	.label_11
	cmp	byte ptr [rcx + rdi*2 + 1], 0x73
	je	.label_14
	jmp	.label_15
.label_12:
	call	__errno_location
	mov	rcx, rax
	xor	eax, eax
	cmp	dword ptr [rcx], 0xc
	je	.label_16
.label_13:
	pop	rcx
	ret	
.label_16:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4023ab
	.globl sub_4023ab
	.type sub_4023ab, @function
sub_4023ab:

	nop	word ptr [rax + rax]
.label_11:
	test	dl, dl
	jne	.label_15
	mov	rsi, rax
	call	xstrcat
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023c2

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rax
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	jmp	.label_17
	.section	.text
	.align	32
	#Procedure 0x4023cd
	.globl sub_4023cd
	.type sub_4023cd, @function
sub_4023cd:

	nop	dword ptr [rax + rax]
.label_15:
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vasprintf_chk
	test	eax, eax
	js	.label_12
	mov	rax, qword ptr [rsp]
	jmp	.label_13
	.section	.text
	.align	32
	#Procedure 0x4023f0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x402403
	.globl sub_402403
	.type sub_402403, @function
sub_402403:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402410

	.globl print_stat
	.type print_stat, @function
print_stat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r9
	mov	r13, r8
	mov	r14, rsi
	mov	r15, rdi
	add	edx, -0x41
	cmp	edx, 0x39
	ja	.label_24
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_29]]
.label_1225:
	mov	rdi, rbx
	call	human_access
	mov	edx, OFFSET FLAT:human_access.modebuf
	jmp	.label_28
.label_1226:
	mov	edx, 0x200
	jmp	.label_25
.label_1227:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r13
	call	out_file_context
	mov	r12b, al
	jmp	.label_19
.label_1228:
	mov	rdx, qword ptr [rbx]
	jmp	.label_33
.label_24:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, 0x3f
	call	fputc_unlocked
	jmp	.label_20
.label_1229:
	mov	rdi, rbx
	call	file_type
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	jmp	.label_22
.label_1230:
	mov	edi, dword ptr [rbx + 0x20]
	call	getgrgid
	jmp	.label_26
.label_1231:
	xor	r12d, r12d
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, r13
	call	quotearg_style
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	out_string
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_19
	mov	rsi, qword ptr [rbx + 0x30]
	mov	rdi, r13
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_30
	xor	r12d, r12d
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_23
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, rbx
	call	quotearg_style
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	out_string
	mov	rdi, rbx
	call	free
	jmp	.label_19
.label_1232:
	mov	rdi, qword ptr [rbx + 0x28]
	call	gnu_dev_minor
	jmp	.label_31
.label_1233:
	mov	edi, dword ptr [rbx + 0x1c]
	call	getpwuid
.label_26:
	mov	edx, OFFSET FLAT:label_32
	test	rax, rax
	je	.label_28
	mov	rdx, qword ptr [rax]
	jmp	.label_28
.label_1234:
	mov	rdi, rbx
	call	get_birthtime
	mov	rdi, rax
	mov	rsi, rdx
	call	neg_to_zero
	jmp	.label_21
.label_1235:
	mov	rdi, rbx
	call	get_stat_atime
	jmp	.label_21
.label_1236:
	mov	rdi, rbx
	call	get_stat_mtime
	jmp	.label_21
.label_1237:
	mov	rdi, rbx
	call	get_stat_ctime
.label_21:
	mov	rcx, rdx
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	out_epoch_sec
	jmp	.label_20
.label_1238:
	mov	edx, dword ptr [rbx + 0x18]
	and	edx, 0xfff
	mov	rdi, r15
	mov	rsi, r14
	call	out_uint_o
	jmp	.label_20
.label_1239:
	mov	rdx, qword ptr [rbx + 0x40]
	jmp	.label_25
.label_1240:
	mov	rdx, qword ptr [rbx]
	jmp	.label_25
.label_1241:
	mov	edx, dword ptr [rbx + 0x18]
	jmp	.label_33
.label_1242:
	mov	edx, dword ptr [rbx + 0x20]
	jmp	.label_25
.label_1243:
	mov	rdx, qword ptr [rbx + 0x10]
	jmp	.label_25
.label_1244:
	mov	rdx, qword ptr [rbx + 8]
	jmp	.label_25
.label_1245:
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbx
	call	out_mount_point
	mov	r12b, al
	jmp	.label_19
.label_1246:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r13
	jmp	.label_22
.label_1247:
	mov	rax, qword ptr [rbx + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	jmp	.label_25
.label_1248:
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r15
	mov	rsi, r14
	call	out_int
	jmp	.label_20
.label_1249:
	mov	rdi, qword ptr [rbx + 0x28]
	call	gnu_dev_major
.label_31:
	mov	edx, eax
.label_33:
	mov	rdi, r15
	mov	rsi, r14
	call	out_uint_x
	jmp	.label_20
.label_1250:
	mov	edx, dword ptr [rbx + 0x1c]
.label_25:
	mov	rdi, r15
	mov	rsi, r14
	call	out_uint
	jmp	.label_20
.label_1251:
	mov	rdi, rbx
	call	get_birthtime
	test	rdx, rdx
	jns	.label_18
	mov	edx, OFFSET FLAT:label_27
	jmp	.label_28
.label_1252:
	mov	rdi, rbx
	call	get_stat_atime
	jmp	.label_18
.label_1253:
	mov	rdi, rbx
	call	get_stat_mtime
	jmp	.label_18
.label_1254:
	mov	rdi, rbx
	call	get_stat_ctime
.label_18:
	mov	rdi, rax
	mov	rsi, rdx
	call	human_time
	mov	edx, OFFSET FLAT:human_time.str
.label_28:
	mov	rdi, r15
	mov	rsi, r14
.label_22:
	call	out_string
.label_20:
	xor	r12d, r12d
.label_19:
	mov	eax, r12d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_30:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	jmp	.label_19
	.section	.text
	.align	32
	#Procedure 0x402718
	.globl sub_402718
	.type sub_402718, @function
sub_402718:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402720

	.globl do_statfs
	.type do_statfs, @function
do_statfs:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x78
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_35
	cmp	byte ptr [rbx + 1], 0
	je	.label_39
.label_35:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	statfs
	test	eax, eax
	je	.label_36
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	jmp	.label_40
.label_36:
	lea	r8, [rsp]
	mov	esi, 0xffffffff
	mov	ecx, OFFSET FLAT:print_statfs
	mov	rdi, r14
	mov	rdx, rbx
	call	print_it
	mov	r14b, al
	xor	r14b, 1
	jmp	.label_41
.label_39:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
.label_40:
	call	error
.label_41:
	mov	eax, r14d
	add	rsp, 0x78
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027eb
	.globl sub_4027eb
	.type sub_4027eb, @function
sub_4027eb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_42
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_42
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_42:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	.section	.text
	.align	32
	#Procedure 0x402816
	.globl sub_402816
	.type sub_402816, @function
sub_402816:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402820

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402829
	.globl sub_402829
	.type sub_402829, @function
sub_402829:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402830

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40283a
	.globl sub_40283a
	.type sub_40283a, @function
sub_40283a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402840
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
	#Procedure 0x402850

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x402859
	.globl sub_402859
	.type sub_402859, @function
sub_402859:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402860

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x40286a
	.globl sub_40286a
	.type sub_40286a, @function
sub_40286a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402870
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x402873
	.globl sub_402873
	.type sub_402873, @function
sub_402873:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402880

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	.section	.text
	.align	32
	#Procedure 0x402889
	.globl sub_402889
	.type sub_402889, @function
sub_402889:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402890

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
	mov	rax,  qword ptr [word ptr [rip + label_43]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_44]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_45]]
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
	#Procedure 0x4028f8
	.globl sub_4028f8
	.type sub_4028f8, @function
sub_4028f8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402900

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	.section	.text
	.align	32
	#Procedure 0x402908
	.globl sub_402908
	.type sub_402908, @function
sub_402908:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402910

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	lea	eax, [rdi + 0x17e]
	sub	eax, esi
	cdqe	
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402943
	.globl sub_402943
	.type sub_402943, @function
sub_402943:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402950

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_55
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_55:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_56
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_51
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_52
	test	esi, esi
	jne	.label_56
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_58
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_49
.label_56:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_48
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_52
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_54
.label_51:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_52:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_59
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_47
.label_59:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_47:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_54:
	cmp	eax, 6
	jne	.label_48
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_57
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_46
.label_48:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_50
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_53
.label_58:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_49:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_57:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_46:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_50:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_53:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b04
	.globl sub_402b04
	.type sub_402b04, @function
sub_402b04:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b10

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_61
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_63
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_63
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_60
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_64
.label_63:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_64
.label_61:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_64:
	test	ebx, ebx
	js	.label_60
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_60
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_62
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_60
.label_62:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_60:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bd3
	.globl sub_402bd3
	.type sub_402bd3, @function
sub_402bd3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402be0

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	mov	byte ptr [rbx + r14], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402bfc
	.globl sub_402bfc
	.type sub_402bfc, @function
sub_402bfc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c00

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
	je	.label_65
	cmp	r15, -2
	jb	.label_65
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_65
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_65:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c56
	.globl sub_402c56
	.type sub_402c56, @function
sub_402c56:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c60
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
	#Procedure 0x402c93
	.globl sub_402c93
	.type sub_402c93, @function
sub_402c93:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ca0

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
	jne	.label_73
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
	je	.label_69
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_74
	mov	eax, OFFSET FLAT:label_75
	jmp	.label_72
.label_69:
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
	je	.label_68
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_70
	mov	eax, OFFSET FLAT:label_71
	jmp	.label_72
.label_68:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_66
	mov	eax, OFFSET FLAT:label_67
.label_72:
	cmove	rax, rcx
.label_73:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402d5d
	.globl sub_402d5d
	.type sub_402d5d, @function
sub_402d5d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402d60

	.globl timetostr
	.type timetostr, @function
timetostr:
	jmp	imaxtostr
	.section	.text
	.align	32
	#Procedure 0x402d65
	.globl sub_402d65
	.type sub_402d65, @function
sub_402d65:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d70

	.globl strmode
	.type strmode, @function
strmode:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	call	ftypelet
	mov	byte ptr [r14], al
	mov	al, bh
	test	al, 1
	mov	sil, 0x72
	mov	cl, 0x72
	jne	.label_83
	mov	cl, 0x2d
.label_83:
	mov	byte ptr [r14 + 1], cl
	mov	ecx, ebx
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [r14 + 2], cl
	mov	ecx, ebx
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_80
	mov	cl, 0x2d
.label_80:
	test	al, 8
	jne	.label_85
	mov	dl, cl
.label_85:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	cl, 0x72
	jne	.label_86
	mov	cl, 0x2d
.label_86:
	mov	byte ptr [r14 + 4], cl
	test	bl, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_78
	mov	cl, 0x2d
.label_78:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_81
	mov	cl, 0x2d
.label_81:
	test	al, 4
	jne	.label_82
	mov	dil, cl
.label_82:
	mov	byte ptr [r14 + 6], dil
	test	bl, 4
	jne	.label_84
	mov	sil, 0x2d
.label_84:
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_77
	mov	dl, 0x2d
.label_77:
	mov	byte ptr [r14 + 8], dl
	and	ebx, 1
	jne	.label_79
	mov	r8b, 0x2d
.label_79:
	test	al, 2
	je	.label_76
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8d, ebx
.label_76:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e3d
	.globl sub_402e3d
	.type sub_402e3d, @function
sub_402e3d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e40

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_88
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_87
.label_88:
	mov	rax, rbx
	pop	rbx
	ret	
.label_87:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x402e66
	.globl sub_402e66
	.type sub_402e66, @function
sub_402e66:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e70

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	js	.label_89
	call	close
.label_89:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x402e89
	.globl sub_402e89
	.type sub_402e89, @function
sub_402e89:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e90
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e9a
	.globl sub_402e9a
	.type sub_402e9a, @function
sub_402e9a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ea0

	.globl human_fstype
	.type human_fstype, @function
human_fstype:
	push	rbx
	mov	ebx, OFFSET FLAT:label_162
	mov	r8, qword ptr [rdi]
	cmp	r8, 0x2fc12fc0
	jg	.label_163
	cmp	r8, 0xadfe
	jle	.label_172
	cmp	r8, 0x13111a7
	jg	.label_176
	cmp	r8, 0x1021993
	jg	.label_181
	cmp	r8, 0x11953
	jle	.label_214
	cmp	r8, 0x414a52
	jle	.label_194
	cmp	r8, 0x414a53
	je	.label_289
	cmp	r8, 0xc0ffee
	je	.label_205
	cmp	r8, 0xc36400
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_216
	jmp	.label_92
.label_163:
	cmp	r8, 0x65735542
	jle	.label_223
	mov	eax, 0x858458f5
	cmp	r8, rax
	jle	.label_228
	mov	eax, 0xc97e8167
	cmp	r8, rax
	jg	.label_236
	mov	eax, 0xaad7aae9
	cmp	r8, rax
	jg	.label_241
	mov	eax, 0x958458f5
	cmp	r8, rax
	jg	.label_247
	mov	eax, 0x858458f6
	cmp	r8, rax
	je	.label_251
	mov	eax, 0x9123683e
	cmp	r8, rax
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_219
	jmp	.label_92
.label_172:
	cmp	r8, 0x482a
	jg	.label_272
	cmp	r8, 0x2467
	jg	.label_278
	cmp	r8, 0x1372
	jle	.label_283
	lea	rax, [r8 - 0x1373]
	cmp	rax, 0x1c
	ja	.label_119
	jmp	qword ptr [word ptr [+ (rax * 8) + label_301]]
.label_1372:
	mov	ebx, OFFSET FLAT:label_303
	jmp	.label_92
.label_223:
	cmp	r8, 0x541900ff
	jg	.label_307
	cmp	r8, 0x47504652
	jle	.label_314
	cmp	r8, 0x5346414e
	jg	.label_321
	cmp	r8, 0x52654972
	jg	.label_327
	cmp	r8, 0x47504653
	je	.label_95
	cmp	r8, 0x50495045
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_193
	jmp	.label_92
.label_228:
	cmp	r8, 0x73636672
	jle	.label_111
	cmp	r8, 0x7461636e
	jg	.label_115
	cmp	r8, 0x73727278
	jg	.label_121
	cmp	r8, 0x73636673
	je	.label_127
	cmp	r8, 0x73717368
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_167
	jmp	.label_92
.label_272:
	cmp	r8, 0x6968
	jle	.label_191
	cmp	r8, 0x9f9f
	jg	.label_151
	cmp	r8, 0x72b5
	jg	.label_264
	cmp	r8, 0x6969
	je	.label_164
	cmp	r8, 0x7275
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_317
	jmp	.label_92
.label_307:
	cmp	r8, 0x6165676b
	jle	.label_177
	cmp	r8, 0x62656571
	jg	.label_200
	cmp	r8, 0x62646575
	jg	.label_189
	cmp	r8, 0x6165676c
	je	.label_197
	cmp	r8, 0x61756673
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_209
	jmp	.label_92
.label_176:
	cmp	r8, 0x15013345
	jg	.label_212
	cmp	r8, 0xbad1de9
	jle	.label_218
	cmp	r8, 0x11307853
	jg	.label_227
	cmp	r8, 0xbad1dea
	je	.label_232
	cmp	r8, 0xbd00bd0
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_318
	jmp	.label_92
.label_181:
	cmp	r8, 0x12fd16c
	jg	.label_109
	cmp	r8, 0x1021994
	je	.label_146
	cmp	r8, 0x1021997
	je	.label_259
	cmp	r8, 0x1161970
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_144
	jmp	.label_92
.label_236:
	mov	eax, 0xf97cff8b
	cmp	r8, rax
	jg	.label_277
	mov	eax, 0xde5e81e3
	cmp	r8, rax
	jg	.label_282
	mov	eax, 0xc97e8168
	cmp	r8, rax
	je	.label_291
	mov	eax, 0xcafe4a11
	cmp	r8, rax
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_114
	jmp	.label_92
.label_278:
	cmp	r8, 0x3fff
	jle	.label_309
	cmp	r8, 0x4005
	jg	.label_315
	cmp	r8, 0x4000
	je	.label_324
	cmp	r8, 0x4004
	jne	.label_90
.label_324:
	mov	ebx, OFFSET FLAT:label_204
	jmp	.label_92
.label_314:
	cmp	r8, 0x42494e4c
	jle	.label_101
	cmp	r8, 0x453dcd27
	jg	.label_106
	cmp	r8, 0x42494e4d
	je	.label_231
	cmp	r8, 0x43415d53
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_296
	jmp	.label_92
.label_111:
	cmp	r8, 0x68191121
	jle	.label_126
	cmp	r8, 0x6e667363
	jg	.label_132
	cmp	r8, 0x68191122
	je	.label_140
	cmp	r8, 0x6b414653
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_270
	jmp	.label_92
.label_191:
	cmp	r8, 0x4d59
	jle	.label_252
	cmp	r8, 0x564b
	jg	.label_161
	cmp	r8, 0x4d5a
	je	.label_170
	cmp	r8, 0x517b
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_105
	jmp	.label_92
.label_177:
	cmp	r8, 0x58465341
	jle	.label_190
	cmp	r8, 0x5dca2df4
	jg	.label_265
	cmp	r8, 0x58465342
	je	.label_196
	cmp	r8, 0x5a3c69f0
	je	.label_92
	jmp	.label_90
.label_212:
	cmp	r8, 0x1badfacd
	jle	.label_210
	cmp	r8, 0x28cd3d44
	jg	.label_213
	cmp	r8, 0x1badface
	je	.label_222
	cmp	r8, 0x24051905
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_179
	jmp	.label_92
.label_214:
	cmp	r8, 0xef52
	jg	.label_237
	cmp	r8, 0xadff
	je	.label_245
	cmp	r8, 0xef51
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_253
	jmp	.label_92
.label_241:
	mov	eax, 0xbacbacbb
	cmp	r8, rax
	jg	.label_261
	mov	eax, 0xaad7aaea
	cmp	r8, rax
	je	.label_267
	mov	eax, 0xabba1974
	cmp	r8, rax
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_280
	jmp	.label_92
.label_321:
	cmp	r8, 0x5346544d
	jg	.label_285
	cmp	r8, 0x5346414f
	je	.label_294
	cmp	r8, 0x53464846
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_130
	jmp	.label_92
.label_115:
	cmp	r8, 0x794c762f
	jg	.label_310
	cmp	r8, 0x7461636f
	je	.label_262
	cmp	r8, 0x74726163
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_91
	jmp	.label_92
.label_151:
	cmp	r8, 0x9fa1
	jg	.label_96
	cmp	r8, 0x9fa0
	je	.label_103
	cmp	r8, 0x9fa1
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_112
	jmp	.label_92
.label_200:
	cmp	r8, 0x6462671f
	jg	.label_116
	cmp	r8, 0x62656572
	je	.label_123
	cmp	r8, 0x63677270
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_135
	jmp	.label_92
.label_109:
	lea	rax, [r8 - 0x12ff7b4]
	cmp	rax, 3
	ja	.label_142
	jmp	qword ptr [word ptr [+ (rax * 8) + label_148]]
.label_1219:
	mov	ebx, OFFSET FLAT:label_98
	jmp	.label_92
.label_277:
	mov	eax, 0xfe534d41
	cmp	r8, rax
	jg	.label_157
	mov	eax, 0xf97cff8c
	cmp	r8, rax
	je	.label_298
	mov	eax, 0xf995e849
	cmp	r8, rax
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_136
	jmp	.label_92
.label_283:
	cmp	r8, 0x2f
	je	.label_166
	cmp	r8, 0x187
	je	.label_322
	cmp	r8, 0x7c0
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_215
	jmp	.label_92
.label_218:
	cmp	r8, 0x13111a8
	je	.label_201
	cmp	r8, 0x7655821
	je	.label_93
	cmp	r8, 0x9041934
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_165
	jmp	.label_92
.label_309:
	cmp	r8, 0x2468
	je	.label_224
	cmp	r8, 0x2478
	je	.label_229
	cmp	r8, 0x3434
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_240
	jmp	.label_92
.label_101:
	cmp	r8, 0x2fc12fc1
	je	.label_246
	cmp	r8, 0x3153464a
	je	.label_249
	cmp	r8, 0x42465331
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_199
	jmp	.label_92
.label_126:
	cmp	r8, 0x65735543
	je	.label_268
	cmp	r8, 0x65735546
	je	.label_275
	cmp	r8, 0x67596969
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_100
	jmp	.label_92
.label_252:
	cmp	r8, 0x482b
	je	.label_293
	cmp	r8, 0x4858
	je	.label_300
	cmp	r8, 0x4d44
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_233
	jmp	.label_92
.label_190:
	cmp	r8, 0x54190100
	je	.label_122
	cmp	r8, 0x565a4653
	je	.label_152
	cmp	r8, 0x58295829
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_276
	jmp	.label_92
.label_210:
	cmp	r8, 0x15013346
	je	.label_102
	cmp	r8, 0x19800202
	je	.label_108
	cmp	r8, 0x19830326
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_117
	jmp	.label_92
.label_194:
	cmp	r8, 0x11954
	je	.label_122
	cmp	r8, 0x27e0eb
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_134
	jmp	.label_92
.label_247:
	mov	eax, 0x958458f6
	cmp	r8, rax
	je	.label_141
	mov	eax, 0xa501fcf5
	cmp	r8, rax
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_154
	jmp	.label_92
.label_327:
	cmp	r8, 0x52654973
	je	.label_159
	cmp	r8, 0x5346314d
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_288
	jmp	.label_92
.label_121:
	cmp	r8, 0x73727279
	je	.label_174
	cmp	r8, 0x73757245
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_129
	jmp	.label_92
.label_264:
	cmp	r8, 0x72b6
	je	.label_187
	cmp	r8, 0x9660
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_204
	jmp	.label_92
.label_189:
	cmp	r8, 0x62646576
	je	.label_206
	cmp	r8, 0x62656570
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_217
	jmp	.label_92
.label_227:
	cmp	r8, 0x11307854
	je	.label_188
	cmp	r8, 0x13661366
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_208
	jmp	.label_92
.label_282:
	mov	eax, 0xde5e81e4
	cmp	r8, rax
	je	.label_239
	mov	eax, 0xf2f52010
	cmp	r8, rax
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_131
	jmp	.label_92
.label_315:
	cmp	r8, 0x4006
	je	.label_254
	cmp	r8, 0x4244
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_269
	jmp	.label_92
.label_106:
	cmp	r8, 0x453dcd28
	je	.label_258
	cmp	r8, 0x45584653
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_97
	jmp	.label_92
.label_132:
	cmp	r8, 0x6e667364
	je	.label_292
	cmp	r8, 0x6e736673
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_304
	jmp	.label_92
.label_161:
	cmp	r8, 0x564c
	je	.label_308
	cmp	r8, 0x5df5
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_323
	jmp	.label_92
.label_265:
	cmp	r8, 0x5dca2df5
	je	.label_325
	cmp	r8, 0x61636673
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_160
	jmp	.label_92
.label_213:
	cmp	r8, 0x28cd3d45
	je	.label_184
	cmp	r8, 0x2bad1dea
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_171
	jmp	.label_92
.label_237:
	cmp	r8, 0xef53
	je	.label_120
	cmp	r8, 0xf15f
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_225
	jmp	.label_92
.label_261:
	mov	eax, 0xbacbacbc
	cmp	r8, rax
	je	.label_137
	mov	eax, 0xbeefdead
	cmp	r8, rax
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_150
	jmp	.label_92
.label_285:
	cmp	r8, 0x5346544e
	je	.label_156
	cmp	r8, 0x534f434b
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_169
	jmp	.label_92
.label_310:
	cmp	r8, 0x794c7630
	je	.label_173
	cmp	r8, 0x7c7c6673
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_182
	jmp	.label_92
.label_96:
	cmp	r8, 0x9fa2
	je	.label_185
	cmp	r8, 0xadf5
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_295
	jmp	.label_92
.label_116:
	cmp	r8, 0x64626720
	je	.label_203
	cmp	r8, 0x64646178
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_155
	jmp	.label_92
.label_157:
	mov	eax, 0xfe534d42
	cmp	r8, rax
	je	.label_221
	mov	eax, 0xff534d42
	cmp	r8, rax
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_234
	jmp	.label_92
.label_122:
	mov	ebx, OFFSET FLAT:label_284
	jmp	.label_92
.label_146:
	mov	ebx, OFFSET FLAT:label_243
	jmp	.label_92
.label_259:
	mov	ebx, OFFSET FLAT:label_143
	jmp	.label_92
.label_119:
	cmp	r8, 0x1cd1
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_257
	jmp	.label_92
.label_1373:
	mov	ebx, OFFSET FLAT:label_195
	jmp	.label_92
.label_1374:
	mov	ebx, OFFSET FLAT:label_286
	jmp	.label_92
.label_1375:
	mov	ebx, OFFSET FLAT:label_273
	jmp	.label_92
.label_289:
	mov	ebx, OFFSET FLAT:label_311
	jmp	.label_92
.label_205:
	mov	ebx, OFFSET FLAT:label_281
	jmp	.label_92
.label_251:
	mov	ebx, OFFSET FLAT:label_287
	jmp	.label_92
.label_95:
	mov	ebx, OFFSET FLAT:label_125
	jmp	.label_92
.label_127:
	mov	ebx, OFFSET FLAT:label_299
	jmp	.label_92
.label_164:
	mov	ebx, OFFSET FLAT:label_302
	jmp	.label_92
.label_197:
	mov	ebx, OFFSET FLAT:label_306
	jmp	.label_92
.label_232:
	mov	ebx, OFFSET FLAT:label_312
	jmp	.label_92
.label_291:
	mov	ebx, OFFSET FLAT:label_316
	jmp	.label_92
.label_231:
	mov	ebx, OFFSET FLAT:label_139
	jmp	.label_92
.label_140:
	mov	ebx, OFFSET FLAT:label_326
	jmp	.label_92
.label_170:
	mov	ebx, OFFSET FLAT:label_94
	jmp	.label_92
.label_196:
	mov	ebx, OFFSET FLAT:label_99
	jmp	.label_92
.label_222:
	mov	ebx, OFFSET FLAT:label_104
	jmp	.label_92
.label_245:
	mov	ebx, OFFSET FLAT:label_107
	jmp	.label_92
.label_267:
	mov	ebx, OFFSET FLAT:label_260
	jmp	.label_92
.label_294:
	mov	ebx, OFFSET FLAT:label_113
	jmp	.label_92
.label_262:
	mov	ebx, OFFSET FLAT:label_118
	jmp	.label_92
.label_103:
	mov	ebx, OFFSET FLAT:label_124
	jmp	.label_92
.label_123:
	mov	ebx, OFFSET FLAT:label_128
	jmp	.label_92
.label_298:
	mov	ebx, OFFSET FLAT:label_133
	jmp	.label_92
.label_166:
	mov	ebx, OFFSET FLAT:label_138
	jmp	.label_92
.label_322:
	mov	ebx, OFFSET FLAT:label_145
	jmp	.label_92
.label_201:
	mov	ebx, OFFSET FLAT:label_147
	jmp	.label_92
.label_93:
	mov	ebx, OFFSET FLAT:label_153
	jmp	.label_92
.label_224:
	mov	ebx, OFFSET FLAT:label_158
	jmp	.label_92
.label_229:
	mov	ebx, OFFSET FLAT:label_290
	jmp	.label_92
.label_246:
	mov	ebx, OFFSET FLAT:label_168
	jmp	.label_92
.label_249:
	mov	ebx, OFFSET FLAT:label_110
	jmp	.label_92
.label_268:
	mov	ebx, OFFSET FLAT:label_175
	jmp	.label_92
.label_275:
	mov	ebx, OFFSET FLAT:label_180
	jmp	.label_92
.label_293:
	mov	ebx, OFFSET FLAT:label_183
	jmp	.label_92
.label_300:
	mov	ebx, OFFSET FLAT:label_186
	jmp	.label_92
.label_152:
	mov	ebx, OFFSET FLAT:label_192
	jmp	.label_92
.label_102:
	mov	ebx, OFFSET FLAT:label_198
	jmp	.label_92
.label_108:
	mov	ebx, OFFSET FLAT:label_202
	jmp	.label_92
.label_141:
	mov	ebx, OFFSET FLAT:label_207
	jmp	.label_92
.label_159:
	mov	ebx, OFFSET FLAT:label_211
	jmp	.label_92
.label_174:
	mov	ebx, OFFSET FLAT:label_149
	jmp	.label_92
.label_187:
	mov	ebx, OFFSET FLAT:label_220
	jmp	.label_92
.label_206:
	mov	ebx, OFFSET FLAT:label_226
	jmp	.label_92
.label_188:
	mov	ebx, OFFSET FLAT:label_230
	jmp	.label_92
.label_239:
	mov	ebx, OFFSET FLAT:label_235
	jmp	.label_92
.label_254:
	mov	ebx, OFFSET FLAT:label_238
	jmp	.label_92
.label_258:
	mov	ebx, OFFSET FLAT:label_244
	jmp	.label_92
.label_292:
	mov	ebx, OFFSET FLAT:label_248
	jmp	.label_92
.label_308:
	mov	ebx, OFFSET FLAT:label_250
	jmp	.label_92
.label_325:
	mov	ebx, OFFSET FLAT:label_255
	jmp	.label_92
.label_184:
	mov	ebx, OFFSET FLAT:label_305
	jmp	.label_92
.label_120:
	mov	ebx, OFFSET FLAT:label_263
	jmp	.label_92
.label_137:
	mov	ebx, OFFSET FLAT:label_266
	jmp	.label_92
.label_156:
	mov	ebx, OFFSET FLAT:label_271
	jmp	.label_92
.label_173:
	mov	ebx, OFFSET FLAT:label_274
	jmp	.label_92
.label_185:
	mov	ebx, OFFSET FLAT:label_279
	jmp	.label_92
.label_203:
	mov	ebx, OFFSET FLAT:label_178
	jmp	.label_92
.label_221:
	mov	ebx, OFFSET FLAT:label_320
	jmp	.label_92
.label_142:
	cmp	r8, 0x12fd16d
	jne	.label_90
	mov	ebx, OFFSET FLAT:label_242
	jmp	.label_92
.label_90:
	mov	ebx, OFFSET FLAT:human_fstype.buf
	mov	edi, OFFSET FLAT:human_fstype.buf
	mov	esi, 1
	mov	edx, 0x1d
	mov	ecx, OFFSET FLAT:label_297
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_92
.label_1220:
	mov	ebx, OFFSET FLAT:label_313
	jmp	.label_92
.label_1221:
	mov	ebx, OFFSET FLAT:label_256
	jmp	.label_92
.label_1222:
	mov	ebx, OFFSET FLAT:label_319
.label_92:
	mov	rax, rbx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bf9
	.globl sub_403bf9
	.type sub_403bf9, @function
sub_403bf9:

	nop	dword ptr [rax]
.label_357:
	mov	edi, OFFSET FLAT:label_328
	mov	esi, OFFSET FLAT:label_329
	call	setmntent
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_333
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	je	.label_338
	lea	r15, [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_343:
	mov	esi, OFFSET FLAT:label_344
	mov	rdi, rbp
	call	hasmntopt
	mov	qword ptr [rsp + 0x50], rax
	mov	edi, 0x38
	call	xmalloc
	mov	r12, rax
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	qword ptr [r12], rax
	mov	rdi, qword ptr [rbp + 8]
	call	xstrdup
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x10], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	rbp, rax
	mov	qword ptr [r12 + 0x18], rbp
	or	byte ptr [r12 + 0x28], 4
	mov	esi, OFFSET FLAT:label_145
	mov	rdi, rbp
	call	strcmp
	mov	r13b, 1
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	mov	esi, OFFSET FLAT:label_124
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	mov	esi, OFFSET FLAT:label_342
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	mov	esi, OFFSET FLAT:label_178
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	mov	esi, OFFSET FLAT:label_257
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	mov	esi, OFFSET FLAT:label_175
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	mov	esi, OFFSET FLAT:label_202
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	mov	esi, OFFSET FLAT:label_100
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	mov	esi, OFFSET FLAT:label_128
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	mov	esi, OFFSET FLAT:label_303
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	mov	esi, OFFSET FLAT:label_341
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	mov	esi, OFFSET FLAT:label_331
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_332
	cmp	qword ptr [rsp + 0x50], 0
	sete	r14b
	mov	esi, OFFSET FLAT:label_337
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_332
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_332:
	movzx	eax, byte ptr [r12 + 0x28]
	and	al, 0xfe
	or	al, r14b
	mov	byte ptr [r12 + 0x28], al
	mov	rbp, qword ptr [r12]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_334
	cmp	byte ptr [rbp], 0x2f
	jne	.label_345
	cmp	byte ptr [rbp + 1], 0x2f
	jne	.label_345
	mov	rbp, qword ptr [r12 + 0x18]
	mov	esi, OFFSET FLAT:label_330
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_334
	mov	esi, OFFSET FLAT:label_234
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_334
	nop	dword ptr [rax]
.label_345:
	mov	rsi, qword ptr [r12]
	mov	edi, OFFSET FLAT:label_339
	call	strcmp
	test	eax, eax
	sete	r13b
.label_334:
	movzx	eax, byte ptr [r12 + 0x28]
	add	r13b, r13b
	and	al, 0xfd
	or	al, r13b
	mov	byte ptr [r12 + 0x28], al
	mov	qword ptr [r12 + 0x20], -1
	mov	qword ptr [r15], r12
	add	r12, 0x30
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	mov	r15, r12
	jne	.label_343
	jmp	.label_346
.label_358:
	mov	rdi, r14
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_349
	jmp	.label_335
.label_338:
	lea	r12, [rsp + 0x18]
.label_346:
	mov	rdi, rbx
	call	endmntent
	test	eax, eax
	je	.label_335
.label_349:
	mov	qword ptr [r12], 0
	mov	rax, qword ptr [rsp + 0x18]
.label_333:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ec2
	.globl sub_403ec2
	.type sub_403ec2, @function
sub_403ec2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ecf

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	edi, OFFSET FLAT:label_354
	mov	esi, OFFSET FLAT:label_329
	call	fopen
	mov	r14, rax
	test	r14, r14
	je	.label_357
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0x48], 0
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x48]
	mov	rdx, r14
	call	getline
	lea	r12, [rsp + 0x18]
	cmp	rax, -1
	je	.label_352
	lea	rbx, [rsp + 7]
	lea	r15, [rsp + 0x2c]
	lea	r13, [rsp + 0x14]
	nop	dword ptr [rax + rax]
.label_355:
	mov	rdi, qword ptr [rsp + 8]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_359
	mov	eax, 0
	lea	rdx, [rsp + 0x4c]
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x2c]
	lea	r9, [rsp + 0x38]
	push	rbx
	push	r15
	push	r13
	call	sscanf
	add	rsp, 0x20
	or	eax, 4
	cmp	eax, 7
	jne	.label_351
	movsxd	rdi, dword ptr [rsp + 0x2c]
	add	rdi, qword ptr [rsp + 8]
	mov	esi, OFFSET FLAT:label_347
	call	strstr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_351
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_353
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x44]
	lea	rcx, [rsp + 0x40]
	lea	r8, [rsp + 0x30]
	lea	r9, [rsp + 0x3c]
	push	rbx
	call	sscanf
	add	rsp, 0x10
	or	eax, 4
	cmp	eax, 5
	jne	.label_351
	movsxd	rax, dword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x2c]
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax], 0
	movsxd	rax, dword ptr [rsp + 0x34]
	mov	byte ptr [rbp + rax], 0
	movsxd	rdi, dword ptr [rsp + 0x28]
	add	rdi, rbp
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x14]
	add	rdi, qword ptr [rsp + 8]
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x24]
	add	rdi, qword ptr [rsp + 8]
	call	unescape_tab
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x28]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13], rax
	movsxd	rdi, dword ptr [rsp + 0x14]
	add	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x24]
	add	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13 + 0x18], rax
	or	byte ptr [r13 + 0x28], 4
	mov	edi, dword ptr [rsp + 0x44]
	mov	esi, dword ptr [rsp + 0x40]
	call	gnu_dev_makedev
	mov	qword ptr [r13 + 0x20], rax
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:label_145
	mov	rdi, rbp
	call	strcmp
	mov	bl, 1
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_124
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_342
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_178
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_257
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_175
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_202
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_100
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_128
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_303
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_341
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_331
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_350
	mov	esi, OFFSET FLAT:label_337
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	nop	word ptr cs:[rax + rax]
.label_350:
	movzx	ecx, byte ptr [r13 + 0x28]
	and	cl, 0xfe
	or	cl, al
	mov	byte ptr [r13 + 0x28], cl
	mov	rbp, qword ptr [r13]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_348
	cmp	byte ptr [rbp], 0x2f
	jne	.label_356
	cmp	byte ptr [rbp + 1], 0x2f
	jne	.label_356
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:label_330
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_348
	mov	esi, OFFSET FLAT:label_234
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_348
.label_356:
	mov	rsi, qword ptr [r13]
	mov	edi, OFFSET FLAT:label_339
	call	strcmp
	test	eax, eax
	sete	bl
.label_348:
	movzx	eax, byte ptr [r13 + 0x28]
	add	bl, bl
	and	al, 0xfd
	or	al, bl
	mov	byte ptr [r13 + 0x28], al
	mov	qword ptr [r12], r13
	add	r13, 0x30
	mov	r12, r13
	lea	rbx, [rsp + 7]
	lea	r13, [rsp + 0x14]
.label_351:
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x48]
	mov	rdx, r14
	call	getline
	cmp	rax, -1
	jne	.label_355
.label_352:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_358
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, r14
	call	rpl_fclose
	mov	dword ptr [rbp], r15d
.label_335:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	qword ptr [r12], 0
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_336
	nop	dword ptr [rax]
.label_340:
	mov	rbx, qword ptr [rdi + 0x30]
	call	free_mount_entry
	mov	qword ptr [rsp + 0x18], rbx
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_340
.label_336:
	mov	dword ptr [rbp], r14d
	xor	eax, eax
	jmp	.label_333
	.section	.text
	.align	32
	#Procedure 0x4042e0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4042ea
	.globl sub_4042ea
	.type sub_4042ea, @function
sub_4042ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042f0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_360
	call	rpl_calloc
	test	rax, rax
	je	.label_360
	pop	rcx
	ret	
.label_360:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404316
	.globl sub_404316
	.type sub_404316, @function
sub_404316:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404320
	.globl xmax
	.type xmax, @function
xmax:

	cmp	rdi, rsi
	cmovae	rsi, rdi
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40432b
	.globl sub_40432b
	.type sub_40432b, @function
sub_40432b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404330
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404343
	.globl sub_404343
	.type sub_404343, @function
sub_404343:

	nop	word ptr cs:[rax + rax]
.label_362:
	jmp	unsetenv
	.section	.text
	.align	32
	#Procedure 0x404355
	.globl sub_404355
	.type sub_404355, @function
sub_404355:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404356

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:label_361
	test	rax, rax
	je	.label_362
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
	.section	.text
	.align	32
	#Procedure 0x404370

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	mov	edi, dword ptr [rdi]
	jmp	fchdir
	.section	.text
	.align	32
	#Procedure 0x404377
	.globl sub_404377
	.type sub_404377, @function
sub_404377:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404380

	.globl out_uint_o
	.type out_uint_o, @function
out_uint_o:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_363
	mov	ecx, OFFSET FLAT:label_364
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x4043b2
	.globl sub_4043b2
	.type sub_4043b2, @function
sub_4043b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043c0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043d3
	.globl sub_4043d3
	.type sub_4043d3, @function
sub_4043d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043e0

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	al, 1
	test	rbx, rbx
	je	.label_366
	cmp	r15, rbx
	ja	.label_365
	lea	rcx, [r15 + 0x38]
	cmp	rbx, rcx
	jb	.label_366
.label_365:
	mov	r14d, OFFSET FLAT:label_370
	cmp	byte ptr [rbx], 0
	je	.label_371
	lea	r14, [r12 + 9]
	jmp	.label_374
.label_377:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_374:
	lea	r13, [r12 + 9]
.label_376:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_368
	cmp	byte ptr [r14], 0
	jne	.label_369
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_373
	cmp	byte ptr [r12 + 8], 0
	je	.label_373
.label_369:
	mov	rdi, r14
	call	strlen
	lea	rcx, [r14 + rax + 1]
	cmp	byte ptr [r14 + rax + 1], 0
	mov	r14, rcx
	jne	.label_376
	jmp	.label_377
.label_373:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	jbe	.label_367
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_366
.label_367:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_375
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
.label_368:
	mov	al, 1
.label_371:
	mov	qword ptr [r15 + 0x30], r14
.label_366:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_375:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	mov	al, 1
	je	.label_372
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_371
.label_372:
	xor	eax, eax
	jmp	.label_366
	.section	.text
	.align	32
	#Procedure 0x4044f5
	.globl sub_4044f5
	.type sub_4044f5, @function
sub_4044f5:

	nop	word ptr cs:[rax + rax]
.label_380:
	movzx	eax, word ptr [rsp + 0x18]
	or	eax, 0x4000
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_378
	mov	r14, r15
.label_378:
	mov	ecx, OFFSET FLAT:print_stat
	mov	rdi, r14
	mov	esi, r12d
	mov	rdx, rbx
	mov	r8, rbp
	call	print_it
	mov	bpl, al
	xor	bpl, 1
.label_381:
	mov	eax, ebp
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404548
	.globl sub_404548
	.type sub_404548, @function
sub_404548:

	nop	word ptr [rax + rax]
.label_383:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	lstat
.label_385:
	test	eax, eax
	je	.label_380
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	jmp	.label_381
.label_386:
	lea	rbp, [rsp]
	mov	r12d, 0xffffffff
.label_384:
	cmp	byte ptr [byte ptr [rip + follow_links]],  1
	jne	.label_383
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	stat
	jmp	.label_385
	.section	.text
	.align	32
	#Procedure 0x4045be

	.globl do_stat
	.type do_stat, @function
do_stat:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x90
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_386
	mov	al, byte ptr [rbx + 1]
	mov	ecx, eax
	neg	cl
	sbb	r12d, r12d
	lea	rbp, [rsp]
	test	al, al
	jne	.label_384
	mov	edi, r12d
	mov	rsi, rbp
	call	fstat
	test	eax, eax
	je	.label_380
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_381
	.section	.text
	.align	32
	#Procedure 0x404630

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	strlen
	inc	rax
	je	.label_390
	xor	ecx, ecx
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_389:
	lea	rsi, [rcx + 4]
	cmp	rsi, rax
	jae	.label_387
	cmp	byte ptr [r14 + rcx], 0x5c
	jne	.label_387
	movzx	esi, byte ptr [r14 + rcx + 1]
	mov	ebx, esi
	and	bl, 0xfc
	cmp	bl, 0x30
	jne	.label_387
	movzx	edi, byte ptr [r14 + rcx + 2]
	mov	ebx, edi
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_387
	movzx	r8d, byte ptr [r14 + rcx + 3]
	mov	ebx, r8d
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_387
	add	rcx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_388
	.section	.text
	.align	32
	#Procedure 0x4046ac
	.globl sub_4046ac
	.type sub_4046ac, @function
sub_4046ac:

	nop	dword ptr [rax]
.label_387:
	movzx	ebx, byte ptr [r14 + rcx]
	mov	byte ptr [rdx], bl
.label_388:
	inc	rcx
	inc	rdx
	cmp	rcx, rax
	jb	.label_389
.label_390:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046ca
	.globl sub_4046ca
	.type sub_4046ca, @function
sub_4046ca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046d0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x4046da
	.globl sub_4046da
	.type sub_4046da, @function
sub_4046da:

	nop	word ptr [rax + rax]
.label_394:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_392:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_393
	inc	r9
	cmp	r9, 0xa
	jb	.label_391
.label_393:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	.section	.text
	.align	32
	#Procedure 0x40470f
	.globl sub_40470f
	.type sub_40470f, @function
sub_40470f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404710

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_391:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_394
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_392
	.section	.text
	.align	32
	#Procedure 0x404739
	.globl sub_404739
	.type sub_404739, @function
sub_404739:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404740
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_395
.label_396:
	ret	
.label_395:
	cmp	edi, 0x7f
	je	.label_396
	xor	eax, eax
	jmp	.label_396
	.section	.text
	.align	32
	#Procedure 0x404751
	.globl sub_404751
	.type sub_404751, @function
sub_404751:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404760

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
	#Procedure 0x404799
	.globl sub_404799
	.type sub_404799, @function
sub_404799:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047a0

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
	#Procedure 0x4047b1
	.globl sub_4047b1
	.type sub_4047b1, @function
sub_4047b1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047c0
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
	#Procedure 0x4047d4
	.globl sub_4047d4
	.type sub_4047d4, @function
sub_4047d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	.section	.text
	.align	32
	#Procedure 0x4047ee
	.globl sub_4047ee
	.type sub_4047ee, @function
sub_4047ee:

	nop	
.label_398:
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4047f4
	.globl sub_4047f4
	.type sub_4047f4, @function
sub_4047f4:

	nop	dword ptr [rax + rax]
.label_397:
	inc	rax
	mov	sil, dl
.label_401:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_397
	test	cl, cl
	je	.label_398
	mov	edx, esi
	and	dl, 1
	je	.label_399
	xor	esi, esi
.label_399:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_397
	.section	.text
	.align	32
	#Procedure 0x404820

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_400:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_400
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_401
	.section	.text
	.align	32
	#Procedure 0x404841
	.globl sub_404841
	.type sub_404841, @function
sub_404841:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404850
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404863
	.globl sub_404863
	.type sub_404863, @function
sub_404863:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404870

	.globl out_int
	.type out_int, @function
out_int:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_402
	mov	ecx, OFFSET FLAT:label_403
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x4048a2
	.globl sub_4048a2
	.type sub_4048a2, @function
sub_4048a2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048b0

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	push	r14
	push	rbx
	push	rax
	mov	edi, OFFSET FLAT:label_404
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_408
	mov	esi, OFFSET FLAT:quoting_style_args
	mov	edx, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_407
	cdqe	
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + quoting_style_vals]]
	xor	edi, edi
	jmp	.label_405
.label_407:
	xor	edi, edi
	mov	esi, 4
	call	set_quoting_style
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x40492e
	.globl sub_40492e
	.type sub_40492e, @function
sub_40492e:

	nop	word ptr cs:[rax + rax]
.label_408:
	xor	edi, edi
	mov	esi, 4
.label_405:
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	set_quoting_style
	.section	.text
	.align	32
	#Procedure 0x404950

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp], rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	esi, 0x2e
	mov	rdx, r13
	call	memchr
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	je	.label_429
	mov	qword ptr [rsp + 0x10], r14
	mov	r14, rbp
	sub	r14, rbx
	mov	byte ptr [rbx + r13], 0
	movsx	eax, byte ptr [rbp + 1]
	add	eax, -0x30
	mov	r12d, 9
	cmp	eax, 9
	ja	.label_430
	lea	rdi, [rbp + 1]
	xor	r15d, r15d
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	cmp	rax, 0x7fffffff
	mov	r12d, 0x7fffffff
	cmovle	r12d, eax
	test	r12d, r12d
	je	.label_410
.label_430:
	movsx	eax, byte ptr [rbp - 1]
	add	eax, -0x30
	xor	r15d, r15d
	cmp	eax, 9
	ja	.label_413
	mov	byte ptr [rbp], 0
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_409:
	movsx	eax, byte ptr [rbp + rbx - 2]
	add	eax, -0x30
	dec	rbx
	cmp	eax, 0xa
	jb	.label_409
	lea	r13, [rbp + rbx]
	xor	esi, esi
	mov	edx, 0xa
	mov	rdi, r13
	call	strtol
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovle	rcx, rax
	mov	r15d, 0x7fffffff
	cmovle	r15d, eax
	cmp	r15d, 2
	jl	.label_413
	xor	eax, eax
	cmp	byte ptr [rbp + rbx], 0x30
	sete	al
	add	r13, rax
	mov	r14, r13
	sub	r14, qword ptr [rsp + 8]
	mov	rdx,  qword ptr [word ptr [rip + decimal_point_len]]
	movsxd	rcx, ecx
	mov	esi, ecx
	sub	esi, edx
	cmp	rcx, rdx
	mov	r8d, 0
	cmova	r8d, esi
	cmp	r8d, 2
	jl	.label_413
	sub	r8d, r12d
	cmp	r8d, 2
	jl	.label_413
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	cmp	r13, rcx
	mov	rdi, rcx
	jbe	.label_416
	dec	rax
	mov	rsi, qword ptr [rsp + 8]
	sub	rax, rsi
	add	rbp, rax
	lea	rcx, [rbx + rbp + 1]
	xor	eax, eax
	mov	rdx, rsi
	mov	rdi, rsi
	nop	word ptr cs:[rax + rax]
.label_427:
	movzx	ebx, byte ptr [rdx]
	cmp	bl, 0x2d
	jne	.label_420
	mov	al, 1
	jmp	.label_428
	.section	.text
	.align	32
	#Procedure 0x404acc
	.globl sub_404acc
	.type sub_404acc, @function
sub_404acc:

	nop	dword ptr [rax]
.label_420:
	mov	byte ptr [rdi], bl
	inc	rdi
.label_428:
	inc	rdx
	dec	rcx
	jne	.label_427
	mov	r14, rdi
	sub	r14, qword ptr [rsp + 8]
	xor	ecx, ecx
	test	al, 1
	jne	.label_411
.label_416:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_412
	xor	eax, eax
	call	__sprintf_chk
	movsxd	rcx, eax
.label_411:
	add	r14, rcx
.label_413:
	mov	rdi, qword ptr [rsp]
	mov	eax, 1
	cmp	r12d, 8
	mov	r13, r14
	mov	r14, qword ptr [rsp + 0x10]
	jle	.label_415
	jmp	.label_414
.label_429:
	xor	r12d, r12d
	jmp	.label_423
.label_410:
	mov	r13, r14
	xor	r12d, r12d
	mov	r14, qword ptr [rsp + 0x10]
.label_423:
	mov	rdi, qword ptr [rsp]
.label_415:
	mov	eax, 1
	mov	ecx, 9
.label_422:
	add	eax, eax
	lea	eax, [rax + rax*4]
	dec	ecx
	cmp	r12d, ecx
	jne	.label_422
.label_414:
	movsxd	rsi, eax
	mov	rax, rdi
	cqo	
	idiv	rsi
	mov	rbp, rax
	test	r14, r14
	jns	.label_417
	test	rdi, rdi
	je	.label_417
	mov	eax, 0x3b9aca00
	xor	edx, edx
	idiv	esi
	mov	ecx, eax
	sub	ecx, ebp
	mov	rax, rdi
	cqo	
	idiv	rsi
	xor	eax, eax
	test	rdx, rdx
	setne	al
	xor	edx, edx
	mov	ebp, ecx
	sub	ebp, eax
	setne	dl
	add	r14, rdx
	je	.label_419
.label_417:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r14
	call	out_int
.label_418:
	test	r12d, r12d
	je	.label_424
	cmp	r12d, 0xa
	mov	ecx, 9
	cmovl	ecx, r12d
	sub	r12d, ecx
	xor	r9d, r9d
	test	eax, eax
	cmovs	eax, r9d
	sub	r15d, eax
	jle	.label_425
	mov	rax,  qword ptr [word ptr [rip + decimal_point_len]]
	movsxd	rdx, r15d
	cmp	rdx, rax
	jbe	.label_425
	sub	r15d, ecx
	sub	r15d, eax
	mov	r9d, r15d
.label_425:
	mov	rdx,  qword ptr [word ptr [rip + decimal_point]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_421
	mov	eax, 0
	mov	r8d, ebp
	push	0
	push	r12
	call	__printf_chk
	add	rsp, 0x28
	jmp	.label_426
.label_424:
	add	rsp, 0x18
.label_426:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_419:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	out_minus_zero
	jmp	.label_418
	.section	.text
	.align	32
	#Procedure 0x404c27
	.globl sub_404c27
	.type sub_404c27, @function
sub_404c27:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c30

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_434
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_433
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_431
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_431:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_432
.label_434:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_433:
	xor	eax, eax
.label_432:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cb7
	.globl sub_404cb7
	.type sub_404cb7, @function
sub_404cb7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_435
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_436:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_435
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_436
.label_435:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d23
	.globl sub_404d23
	.type sub_404d23, @function
sub_404d23:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d30

	.globl make_format
	.type make_format, @function
make_format:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdx
	lea	r15, [rdi + 1]
	mov	qword ptr [rsp + 0x10], rdi
	lea	r14, [rdi + rsi]
	cmp	rsi, 2
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, r15
	jl	.label_439
.label_438:
	movzx	r12d, byte ptr [rbx]
	movsx	ebp, r12b
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_439
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_437
	mov	byte ptr [r15], r12b
	inc	r15
.label_437:
	inc	rbx
	cmp	rbx, r14
	jb	.label_438
.label_439:
	cmp	rbx, r14
	jae	.label_441
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbx
	mov	rdx, qword ptr [rsp + 0x10]
	add	rdx, rax
	mov	rax, r15
	nop	word ptr cs:[rax + rax]
.label_440:
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	mov	byte ptr [rax], cl
	inc	rax
	cmp	r14, rbx
	jne	.label_440
	add	r15, rdx
.label_441:
	mov	rsi, qword ptr [rsp]
	mov	rdi, r15
	call	strcpy
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404dee
	.globl sub_404dee
	.type sub_404dee, @function
sub_404dee:

	nop	
	.section	.text
	.align	32
	#Procedure 0x404df0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x404dfa
	.globl sub_404dfa
	.type sub_404dfa, @function
sub_404dfa:

	nop	word ptr [rax + rax]
.label_442:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404e05
	.globl sub_404e05
	.type sub_404e05, @function
sub_404e05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e13

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_442
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e20

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_443
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_445
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_443
.label_445:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_443
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_444
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_444:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_443:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	.section	.text
	.align	32
	#Procedure 0x404e97
	.globl sub_404e97
	.type sub_404e97, @function
sub_404e97:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_446
	mov	esi, OFFSET FLAT:label_447
	jmp	.label_448
.label_446:
	mov	esi, OFFSET FLAT:label_449
.label_448:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x404f10
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
	#Procedure 0x404f23
	.globl sub_404f23
	.type sub_404f23, @function
sub_404f23:

	nop	word ptr cs:[rax + rax]
.label_450:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404f35
	.globl sub_404f35
	.type sub_404f35, @function
sub_404f35:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f3c

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_453
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_451
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_454
.label_453:
	test	rcx, rcx
	jne	.label_452
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_452:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_450
.label_454:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_451:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404fb0

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x130
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rbp - 0x30]
	call	save_cwd
	test	eax, eax
	je	.label_471
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_473
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_455
.label_471:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0x4000
	jne	.label_458
	lea	rdi, [rbp - 0xc0]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r14
	call	chdir
	test	eax, eax
	jns	.label_466
	jmp	.label_467
.label_458:
	mov	rdi, r14
	call	dir_name
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r14, rax
	mov	rsp, r14
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	rdi, r14
	call	chdir
	test	eax, eax
	js	.label_467
	lea	rsi, [rbp - 0xc0]
	mov	edi, OFFSET FLAT:label_457
	call	stat
	test	eax, eax
	js	.label_461
.label_466:
	lea	rsi, [rbp - 0x150]
	mov	edi, OFFSET FLAT:label_462
	call	stat
	test	eax, eax
	js	.label_464
	lea	r14, [rbp - 0xc0]
	lea	rbx, [rbp - 0x150]
	nop	word ptr cs:[rax + rax]
.label_463:
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_470
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0xb8]
	je	.label_470
	mov	edi, OFFSET FLAT:label_462
	call	chdir
	test	eax, eax
	js	.label_456
	mov	edx, 0x90
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	edi, OFFSET FLAT:label_462
	mov	rsi, rbx
	call	stat
	test	eax, eax
	jns	.label_463
.label_464:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	jmp	.label_465
.label_467:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_455
.label_470:
	call	xgetcwd
	mov	r15, rax
	jmp	.label_459
.label_461:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_460
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_459
.label_456:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_469
.label_465:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_462
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	xor	r15d, r15d
.label_459:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	lea	rdi, [rbp - 0x30]
	call	restore_cwd
	test	eax, eax
	jne	.label_472
	lea	rdi, [rbp - 0x30]
	call	free_cwd
	mov	dword ptr [rbx], r14d
.label_455:
	mov	rax, r15
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_472:
	mov	ebx, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_468
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	nop	dword ptr [rax]
.label_474:
	mov	rdi, qword ptr [rdi + 8]
	jmp	chdir_long
	.section	.text
	.align	32
	#Procedure 0x405279
	.globl sub_405279
	.type sub_405279, @function
sub_405279:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405283

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	js	.label_474
	mov	edi, eax
	jmp	fchdir
	.section	.text
	.align	32
	#Procedure 0x405290

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_483
	cmp	ecx, 0x3fff
	jg	.label_479
	cmp	eax, 0x1000
	je	.label_482
	cmp	eax, 0x2000
	jne	.label_475
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_490
	mov	edx, 5
	jmp	dcgettext
.label_483:
	cmp	eax, 0x8000
	je	.label_485
	cmp	eax, 0xa000
	je	.label_489
	cmp	eax, 0xc000
	jne	.label_475
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	jmp	dcgettext
.label_479:
	cmp	eax, 0x4000
	je	.label_488
	cmp	eax, 0x6000
	jne	.label_475
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_478
	mov	edx, 5
	jmp	dcgettext
.label_482:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_487
	mov	edx, 5
	jmp	dcgettext
.label_485:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_480
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_491
	mov	edx, 5
	jmp	dcgettext
.label_489:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_476
	mov	edx, 5
	jmp	dcgettext
.label_488:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_484
	mov	edx, 5
	jmp	dcgettext
.label_475:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_477
	mov	edx, 5
	jmp	dcgettext
.label_480:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_486
	mov	edx, 5
	jmp	dcgettext
	.section	.text
	.align	32
	#Procedure 0x405384
	.globl sub_405384
	.type sub_405384, @function
sub_405384:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405390

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_492
	call	__ctype_tolower_loc
	nop	dword ptr [rax + rax]
.label_493:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	movzx	ecx, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_493
.label_492:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4053cd
	.globl sub_4053cd
	.type sub_4053cd, @function
sub_4053cd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4053d0

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
	je	.label_496
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_494
	jmp	.label_495
.label_496:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_495
.label_494:
	mov	eax, 1
	test	bpl, bpl
	je	.label_495
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
.label_495:
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
	#Procedure 0x405458
	.globl sub_405458
	.type sub_405458, @function
sub_405458:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405460

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
	je	.label_497
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_499
	jmp	.label_498
.label_497:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_498
.label_499:
	mov	eax, 1
	test	bpl, bpl
	je	.label_498
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
.label_498:
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
	#Procedure 0x4054d9
	.globl sub_4054d9
	.type sub_4054d9, @function
sub_4054d9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054e0

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
	je	.label_502
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_501
	jmp	.label_500
.label_502:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_500
.label_501:
	mov	eax, 1
	test	bpl, bpl
	je	.label_500
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
.label_500:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405543
	.globl sub_405543
	.type sub_405543, @function
sub_405543:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405550

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
	je	.label_505
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_503
	jmp	.label_504
.label_505:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_504
.label_503:
	mov	eax, 1
	test	bpl, bpl
	je	.label_504
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_504:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055af
	.globl sub_4055af
	.type sub_4055af, @function
sub_4055af:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4055b0

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
	je	.label_506
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_508
	jmp	.label_507
.label_506:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_507
.label_508:
	mov	eax, 1
	test	bpl, bpl
	je	.label_507
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_507:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4055f9
	.globl sub_4055f9
	.type sub_4055f9, @function
sub_4055f9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405600

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
	je	.label_511
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_510
	jmp	.label_509
.label_511:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_509
.label_510:
	mov	eax, 1
	test	bpl, bpl
	je	.label_509
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_509:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405645
	.globl sub_405645
	.type sub_405645, @function
sub_405645:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405650

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_514
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_513
	jmp	.label_512
.label_514:
	mov	eax, 1
	test	cl, cl
	je	.label_512
.label_513:
	xor	eax, eax
.label_512:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40567f
	.globl sub_40567f
	.type sub_40567f, @function
sub_40567f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405680
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405693
	.globl sub_405693
	.type sub_405693, @function
sub_405693:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056a0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_515
	nop	word ptr [rax + rax]
.label_516:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_516
.label_515:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4056c2
	.globl sub_4056c2
	.type sub_4056c2, @function
sub_4056c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056d0
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_517
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_517:
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
	#Procedure 0x405738
	.globl sub_405738
	.type sub_405738, @function
sub_405738:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405740
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
	#Procedure 0x4057b2
	.globl sub_4057b2
	.type sub_4057b2, @function
sub_4057b2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057c0

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
	#Procedure 0x4057f7
	.globl sub_4057f7
	.type sub_4057f7, @function
sub_4057f7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405800

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r14, rdi
	mov	al,  byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]]
	test	al, al
	jne	.label_518
	xor	edi, edi
	call	read_file_system_list
	mov	qword ptr [word ptr [rip + find_bind_mount.mount_list]],  rax
	test	rax, rax
	jne	.label_523
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_525
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_520
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_523:
	mov	byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]],  1
.label_518:
	lea	rsi, [rsp + 0x98]
	mov	rdi, r14
	call	stat
	xor	r12d, r12d
	test	eax, eax
	jne	.label_524
	mov	rbx,  qword ptr [word ptr [rip + find_bind_mount.mount_list]]
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_524
	xor	r12d, r12d
	lea	r15, [rsp + 8]
	nop	
.label_519:
	test	byte ptr [rbx + 0x28], 1
	je	.label_522
	mov	rax, qword ptr [rbx]
	cmp	byte ptr [rax], 0x2f
	jne	.label_522
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	strcmp
	test	eax, eax
	jne	.label_522
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	call	stat
	test	eax, eax
	jne	.label_522
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_522
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	je	.label_521
	nop	dword ptr [rax + rax]
.label_522:
	mov	rbx, qword ptr [rbx + 0x30]
	test	rbx, rbx
	jne	.label_519
.label_524:
	mov	rax, r12
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_521:
	mov	r12, qword ptr [rbx]
	jmp	.label_524
	.section	.text
	.align	32
	#Procedure 0x405900
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
	#Procedure 0x405949
	.globl sub_405949
	.type sub_405949, @function
sub_405949:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405950
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405963
	.globl sub_405963
	.type sub_405963, @function
sub_405963:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405970

	.globl get_birthtime
	.type get_birthtime, @function
get_birthtime:
	jmp	get_stat_birthtime
	.section	.text
	.align	32
	#Procedure 0x405975
	.globl sub_405975
	.type sub_405975, @function
sub_405975:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405980

	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:
	mov	rax, -1
	mov	rdx, -1
	ret	
	.section	.text
	.align	32
	#Procedure 0x40598f
	.globl sub_40598f
	.type sub_40598f, @function
sub_40598f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x405990

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
	je	.label_526
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_528
	jmp	.label_527
.label_526:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_527
.label_528:
	mov	eax, 1
	test	bpl, bpl
	je	.label_527
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
.label_527:
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
	#Procedure 0x405a0d
	.globl sub_405a0d
	.type sub_405a0d, @function
sub_405a0d:

	nop	dword ptr [rax]
.label_532:
	mov	edi, OFFSET FLAT:label_529
	mov	esi, OFFSET FLAT:label_530
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:label_531
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x405a29
	.globl sub_405a29
	.type sub_405a29, @function
sub_405a29:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a2e

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	push	rax
	mov	edi, dword ptr [rdi]
	test	edi, edi
	js	.label_533
	call	close
	test	eax, eax
	jne	.label_532
.label_533:
	pop	rax
	ret	
.label_535:
	mov	al, 0x2d
	movzx	ecx, di
	cmp	ecx, 0x8000
	je	.label_534
	cmp	ecx, 0xa000
	je	.label_537
	cmp	ecx, 0xc000
	jne	.label_536
	mov	al, 0x73
	ret	
.label_537:
	mov	al, 0x6c
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a63
	.globl sub_405a63
	.type sub_405a63, @function
sub_405a63:

	nop	dword ptr [rax + rax]
.label_539:
	mov	al, 0x70
	ret	
.label_538:
	mov	al, 0x62
	ret	
.label_536:
	mov	al, 0x3f
.label_534:
	ret	
.label_540:
	movzx	eax, di
	cmp	eax, 0x6000
	je	.label_538
	cmp	eax, 0x4000
	jne	.label_536
	mov	al, 0x64
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a85

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xfffff000
	movsx	eax, di
	cmp	eax, 0xfff
	jle	.label_535
	cmp	eax, 0x3fff
	jg	.label_540
	movzx	eax, di
	cmp	eax, 0x1000
	je	.label_539
	cmp	eax, 0x2000
	jne	.label_536
	mov	al, 0x63
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ab0
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ac3
	.globl sub_405ac3
	.type sub_405ac3, @function
sub_405ac3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ad0

	.globl out_minus_zero
	.type out_minus_zero, @function
out_minus_zero:
	push	rbx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_402
	mov	ecx, OFFSET FLAT:label_541
	call	make_format
	movsd	xmm0,  qword ptr [word ptr [rip + label_542]]
	mov	edi, 1
	mov	al, 1
	mov	rsi, rbx
	pop	rbx
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x405afb
	.globl sub_405afb
	.type sub_405afb, @function
sub_405afb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b00
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
	#Procedure 0x405b16
	.globl sub_405b16
	.type sub_405b16, @function
sub_405b16:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b20

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
.label_643:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_645
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_649]]
.label_1310:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_653
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_67
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1311:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_553
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_553
	xor	r14d, r14d
.label_570:
	cmp	r14, r11
	jae	.label_566
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_566:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_570
.label_553:
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
	jmp	.label_585
.label_1303:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_585
.label_1306:
	mov	al, 1
.label_1304:
	mov	r12b, 1
.label_1307:
	test	r12b, 1
	mov	cl, 1
	je	.label_591
	mov	ecx, eax
.label_591:
	mov	al, cl
.label_1305:
	test	r12b, 1
	jne	.label_593
	test	r11, r11
	je	.label_596
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_596:
	mov	r14d, 1
	jmp	.label_601
.label_593:
	xor	r14d, r14d
.label_601:
	mov	ecx, OFFSET FLAT:label_67
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_585
.label_1308:
	test	r12b, 1
	jne	.label_610
	test	r11, r11
	je	.label_613
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_613:
	mov	r14d, 1
	jmp	.label_580
.label_1309:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_66
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_585
.label_610:
	xor	r14d, r14d
.label_580:
	mov	eax, OFFSET FLAT:label_66
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_585:
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
	jmp	.label_584
	.section	.text
	.align	32
	#Procedure 0x405dfc
	.globl sub_405dfc
	.type sub_405dfc, @function
sub_405dfc:

	nop	dword ptr [rax]
.label_582:
	inc	rsi
.label_584:
	cmp	rbp, -1
	je	.label_544
	cmp	rsi, rbp
	jne	.label_546
	jmp	.label_548
	.section	.text
	.align	32
	#Procedure 0x405e13
	.globl sub_405e13
	.type sub_405e13, @function
sub_405e13:

	nop	word ptr cs:[rax + rax]
.label_544:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_548
.label_546:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_556
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_558
	cmp	rbp, -1
	jne	.label_558
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
.label_558:
	cmp	rbx, rbp
	jbe	.label_572
.label_556:
	xor	r8d, r8d
.label_604:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_575
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_581]]
.label_1268:
	test	rsi, rsi
	jne	.label_568
	jmp	.label_587
	.section	.text
	.align	32
	#Procedure 0x405eae
	.globl sub_405eae
	.type sub_405eae, @function
sub_405eae:

	nop	
.label_572:
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
	jne	.label_599
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_604
	jmp	.label_611
.label_599:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_604
.label_1272:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_618
	test	rsi, rsi
	jne	.label_619
	cmp	rbp, 1
	je	.label_587
	xor	r13d, r13d
	jmp	.label_549
.label_1261:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_625
	cmp	byte ptr [rsp + 7], 0
	jne	.label_567
	cmp	r12d, 2
	jne	.label_559
	mov	eax, r9d
	and	al, 1
	jne	.label_559
	cmp	r14, r11
	jae	.label_606
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_606:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_631
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_631:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_636
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_636:
	add	r14, 3
	mov	r9b, 1
.label_559:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_641
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_641:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_644
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_644
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_644
	cmp	r14, r11
	jae	.label_654
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_654:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_612
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_612:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_549
.label_1262:
	mov	bl, 0x62
	jmp	.label_551
.label_1263:
	mov	cl, 0x74
	jmp	.label_555
.label_1264:
	mov	bl, 0x76
	jmp	.label_551
.label_1265:
	mov	bl, 0x66
	jmp	.label_551
.label_1266:
	mov	cl, 0x72
	jmp	.label_555
.label_1269:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_563
	cmp	byte ptr [rsp + 7], 0
	jne	.label_567
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
	jae	.label_571
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_571:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_583
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_583:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_588
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_588:
	add	r14, 3
	xor	r9d, r9d
.label_563:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_549
.label_1270:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_597
	cmp	r12d, 2
	jne	.label_568
	cmp	byte ptr [rsp + 7], 0
	je	.label_568
	jmp	.label_567
.label_1271:
	cmp	r12d, 2
	jne	.label_607
	cmp	byte ptr [rsp + 7], 0
	jne	.label_567
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_552
.label_575:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_616
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
.label_562:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_622
	test	r8b, r8b
	je	.label_622
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_549
.label_618:
	test	rsi, rsi
	jne	.label_554
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_554
.label_587:
	mov	dl, 1
.label_1267:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_567
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_549:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_650
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_651
	jmp	.label_543
	.section	.text
	.align	32
	#Procedure 0x4061f4
	.globl sub_4061f4
	.type sub_4061f4, @function
sub_4061f4:

	nop	word ptr cs:[rax + rax]
.label_650:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_543
.label_651:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_545
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_552
	jmp	.label_561
	.section	.text
	.align	32
	#Procedure 0x40623d
	.globl sub_40623d
	.type sub_40623d, @function
sub_40623d:

	nop	dword ptr [rax]
.label_543:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_561
	jmp	.label_552
.label_545:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_561
.label_625:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_582
	xor	r15d, r15d
	jmp	.label_568
.label_607:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_555
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_552
.label_555:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_567
.label_551:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_549
	nop	word ptr cs:[rax + rax]
.label_561:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_567
	cmp	r12d, 2
	jne	.label_577
	mov	eax, r9d
	and	al, 1
	jne	.label_577
	cmp	r14, r11
	jae	.label_595
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_595:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_564
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_564:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_603
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_603:
	add	r14, 3
	mov	r9b, 1
.label_577:
	cmp	r14, r11
	jae	.label_609
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_609:
	inc	r14
	jmp	.label_614
.label_616:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_617
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_617:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_573:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_630
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_633
	cmp	rbp, -2
	je	.label_640
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_638
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_565:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_627
	bt	rsi, rdx
	jb	.label_611
.label_627:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_565
.label_638:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_547
	xor	r13d, r13d
.label_547:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_573
	jmp	.label_562
.label_644:
	xor	r13d, r13d
	jmp	.label_549
.label_554:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_549
.label_597:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_568
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_568
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_568
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_608
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_626
	cmp	byte ptr [rsp + 7], 0
	jne	.label_567
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_589
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_589:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_586
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_586:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_600
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_600:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_602
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_602:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_549
.label_568:
	xor	eax, eax
.label_619:
	xor	r13d, r13d
	jmp	.label_549
.label_622:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_615
	.section	.text
	.align	32
	#Procedure 0x406523
	.globl sub_406523
	.type sub_406523, @function
sub_406523:

	nop	word ptr cs:[rax + rax]
.label_569:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_615:
	test	r8b, r8b
	je	.label_620
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_621
	cmp	r14, r11
	jae	.label_623
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_623:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_621
	.section	.text
	.align	32
	#Procedure 0x40656c
	.globl sub_40656c
	.type sub_40656c, @function
sub_40656c:

	nop	dword ptr [rax]
.label_620:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_611
	cmp	r12d, 2
	jne	.label_629
	mov	eax, r9d
	and	al, 1
	jne	.label_629
	cmp	r14, r11
	jae	.label_632
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_632:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_634
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_634:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_639
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_639:
	add	r14, 3
	mov	r9b, 1
.label_629:
	cmp	r14, r11
	jae	.label_647
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_647:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_648
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_648:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_652
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_652:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_621:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_552
	test	r9b, 1
	je	.label_594
	mov	ebx, eax
	and	bl, 1
	jne	.label_594
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_557
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_557:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_642
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_642:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_594:
	cmp	r14, r11
	jae	.label_569
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_569
	.section	.text
	.align	32
	#Procedure 0x406673
	.globl sub_406673
	.type sub_406673, @function
sub_406673:

	nop	word ptr cs:[rax + rax]
.label_552:
	test	r9b, 1
	je	.label_576
	and	al, 1
	jne	.label_576
	cmp	r14, r11
	jae	.label_579
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_579:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_635
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_635:
	add	r14, 2
	xor	r9d, r9d
.label_576:
	mov	ebx, r15d
.label_614:
	cmp	r14, r11
	jae	.label_590
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_590:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_582
.label_633:
	xor	r13d, r13d
.label_630:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_562
.label_640:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_605
	mov	rsi, qword ptr [rsp + 0x50]
.label_578:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_655
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_578
	xor	r13d, r13d
	jmp	.label_562
.label_605:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_562
.label_655:
	xor	r13d, r13d
	jmp	.label_562
.label_608:
	xor	r13d, r13d
	jmp	.label_549
.label_626:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_549
	.section	.text
	.align	32
	#Procedure 0x406748
	.globl sub_406748
	.type sub_406748, @function
sub_406748:

	nop	dword ptr [rax + rax]
.label_548:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_624
	or	dl, al
	je	.label_611
.label_624:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_628
	or	dl, al
	jne	.label_628
	test	r10b, 1
	jne	.label_637
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_628
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_643
.label_628:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_646
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_550
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_550
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_560:
	cmp	r14, r11
	jae	.label_574
	mov	byte ptr [rcx + r14], al
.label_574:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_560
	jmp	.label_550
.label_567:
	mov	qword ptr [rsp + 0x20], rbp
.label_611:
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
.label_592:
	mov	r14, rax
.label_598:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_637:
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
	jmp	.label_592
.label_646:
	mov	rcx, qword ptr [rsp + 8]
.label_550:
	cmp	r14, r11
	jae	.label_598
	mov	byte ptr [rcx + r14], 0
	jmp	.label_598
.label_645:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4068dc
	.globl sub_4068dc
	.type sub_4068dc, @function
sub_4068dc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068e0

	.globl human_time
	.type human_time, @function
human_time:
	push	rbx
	sub	rsp, 0x60
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	cmp	qword ptr [word ptr [rip + human_time.tz]],  0
	jne	.label_656
	mov	edi, OFFSET FLAT:label_361
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [rip + human_time.tz]],  rax
.label_656:
	mov	ebx, dword ptr [rsp + 8]
	mov	rdi,  qword ptr [word ptr [rip + human_time.tz]]
	lea	rsi, [rsp]
	lea	rdx, [rsp + 0x28]
	call	localtime_rz
	test	rax, rax
	je	.label_658
	mov	r8,  qword ptr [word ptr [rip + human_time.tz]]
	lea	rcx, [rsp + 0x28]
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 0x3d
	mov	edx, OFFSET FLAT:label_660
	mov	r9d, ebx
	call	nstrftime
	jmp	.label_659
.label_658:
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x10]
	call	timetostr
	mov	r8, rax
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 1
	mov	edx, 0x3d
	mov	ecx, OFFSET FLAT:label_657
	xor	eax, eax
	mov	r9d, ebx
	call	__sprintf_chk
.label_659:
	add	rsp, 0x60
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x406989
	.globl sub_406989
	.type sub_406989, @function
sub_406989:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406990

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x74], r8d
	mov	r13, rdx
	mov	qword ptr [rsp + 0x38], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	esi, OFFSET FLAT:label_370
	cmovne	rsi, rdx
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebp, 0xc
	cmovne	ebp, eax
	cmp	eax, 0xc
	cmovg	ebp, edx
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	cmp	byte ptr [r13], 0
	je	.label_726
	mov	dword ptr [rsp + 0x64], ebp
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x70], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	xor	r8d, r8d
	jmp	.label_728
.label_726:
	xor	r8d, r8d
	jmp	.label_748
.label_786:
	mov	ebx, 3
	jmp	.label_749
	.section	.text
	.align	32
	#Procedure 0x406a14
	.globl sub_406a14
	.type sub_406a14, @function
sub_406a14:

	nop	word ptr cs:[rax + rax]
.label_728:
	cmp	byte ptr [r13], 0x25
	jne	.label_753
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x74]
	mov	sil, cl
	xor	r15d, r15d
.label_1290:
	mov	r12d, eax
	mov	eax, esi
	jmp	.label_754
	.section	.text
	.align	32
	#Procedure 0x406a3a
	.globl sub_406a3a
	.type sub_406a3a, @function
sub_406a3a:

	nop	word ptr [rax + rax]
.label_758:
	movsx	r15d, byte ptr [r13]
.label_754:
	inc	r13
	movsx	ecx, byte ptr [r13]
	mov	al, 1
	lea	edx, [rcx - 0x23]
	cmp	edx, 0xd
	ja	.label_756
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_757]]
	.section	.text
	.align	32
	#Procedure 0x406a5e
	.globl sub_406a5e
	.type sub_406a5e, @function
sub_406a5e:

	nop	
.label_756:
	cmp	ecx, 0x5f
	je	.label_758
	cmp	ecx, 0x5e
	jne	.label_759
	mov	sil, al
	jmp	.label_754
	.section	.text
	.align	32
	#Procedure 0x406a73
	.globl sub_406a73
	.type sub_406a73, @function
sub_406a73:

	nop	word ptr cs:[rax + rax]
.label_753:
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rdx, qword ptr [rsp + 0x38]
	sub	rdx, r8
	mov	ecx, 1
	cmp	rbx, rdx
	jae	.label_766
	test	rdi, rdi
	mov	edx, 0
	je	.label_777
	cmp	eax, 2
	jb	.label_780
	mov	qword ptr [rsp + 0x28], rbp
	movsxd	rbp, r14d
	lea	rdx, [rbp - 1]
	mov	esi, 0x20
	mov	r14, r8
	mov	r15, rdi
	mov	r12d, r11d
	call	memset
	mov	r11d, r12d
	mov	rdi, r15
	mov	r8, r14
	lea	rdi, [rdi + rbp - 1]
	mov	rbp, qword ptr [rsp + 0x28]
.label_780:
	mov	al, byte ptr [r13]
	mov	byte ptr [rdi], al
	inc	rdi
	mov	rdx, rdi
.label_777:
	add	r8, rbx
	xor	ecx, ecx
	mov	rdi, rdx
.label_766:
	test	ecx, ecx
	mov	eax, 4
	cmove	ecx, eax
.label_779:
	or	ecx, 4
	cmp	ecx, 4
	je	.label_694
	jmp	.label_761
	.section	.text
	.align	32
	#Procedure 0x406b1f
	.globl sub_406b1f
	.type sub_406b1f, @function
sub_406b1f:

	nop	
.label_759:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_790
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_802:
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_793
	jne	.label_796
	movsx	ecx, byte ptr [r13]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_793
.label_796:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [r13]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_793:
	movsx	eax, byte ptr [r13 + 1]
	inc	r13
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r14d
	jb	.label_802
.label_790:
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x4f
	mov	qword ptr [rsp + 0x28], rbp
	je	.label_805
	xor	r9d, r9d
	cmp	eax, 0x45
	jne	.label_697
.label_805:
	movsx	r9d, byte ptr [r13]
	inc	r13
.label_697:
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp], rdi
	movsx	edx, byte ptr [r13]
	mov	ebp, OFFSET FLAT:label_811
	xor	ebx, ebx
	cmp	edx, 0x7a
	ja	.label_661
	mov	al, 0x72
	mov	r10d, 0xffffffff
	xor	esi, esi
	xor	ecx, ecx
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_817]]
.label_1182:
	cmp	r9d, 0x45
	je	.label_661
	mov	qword ptr [rsp + 8], rdx
	mov	dword ptr [rsp + 0x28], r9d
	mov	qword ptr [rsp + 0x10], r8
	mov	rdx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	ebp, [rax + rcx - 0x64]
	mov	r12d, dword ptr [rdx + 0x1c]
	mov	edi, r12d
	call	iso_week_days
	mov	ebx, eax
	test	ebx, ebx
	js	.label_824
	mov	eax, 0x16d
	test	bpl, 3
	jne	.label_662
	movsxd	rax, ebp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	ebp, eax
	sete	dl
	add	edx, 0x16d
	cmp	ebp, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_662:
	sub	r12d, eax
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	edi, r12d
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	ebx, eax
	jmp	.label_675
.label_1196:
	test	r12b, r12b
	je	.label_679
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_679:
	xor	esi, esi
	mov	eax, r9d
	cmp	eax, 0x45
	jne	.label_683
	xor	ebx, ebx
	jmp	.label_661
.label_1174:
	dec	r13
	jmp	.label_661
.label_1175:
	test	r9d, r9d
	jne	.label_661
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_663
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_689
	cmp	eax, 2
	jb	.label_696
	movsxd	rbx, r14d
	dec	rbx
	cmp	r15d, 0x30
	je	.label_698
	cmp	r15d, 0x2b
	jne	.label_702
.label_698:
	mov	esi, 0x30
	jmp	.label_705
.label_1176:
	mov	eax, 1
	jmp	.label_706
	.section	.text
	.align	32
	#Procedure 0x406d0f
	.globl sub_406d0f
	.type sub_406d0f, @function
sub_406d0f:

	nop	
.label_709:
	inc	rax
.label_706:
	movzx	ecx, byte ptr [r13 + rax]
	cmp	cl, 0x3a
	je	.label_709
	cmp	cl, 0x7a
	jne	.label_661
	add	r13, rax
	mov	rbx, rax
.label_1213:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_716
	mov	r10, qword ptr [rsp]
	mov	eax, dword ptr [rax + 0x28]
	mov	sil, 1
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r12d, r9d
	js	.label_721
	test	eax, eax
	je	.label_725
	xor	esi, esi
	jmp	.label_721
.label_1177:
	mov	eax, r9d
	test	eax, eax
	jne	.label_661
	test	r12b, r12b
	je	.label_687
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_687:
	xor	esi, esi
	mov	al, 0x41
	jmp	.label_688
.label_1178:
	mov	eax, r9d
	cmp	eax, 0x45
	je	.label_661
	test	r12b, r12b
	je	.label_732
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_732:
	xor	esi, esi
	mov	al, 0x42
	jmp	.label_688
.label_1179:
	mov	r12d, r9d
	cmp	r12d, 0x45
	jne	.label_734
	xor	esi, esi
	mov	al, 0x43
	jmp	.label_688
.label_1180:
	mov	ebp, OFFSET FLAT:label_740
	test	r9d, r9d
	jne	.label_661
	mov	r10d, 0xffffffff
	jmp	.label_704
.label_1181:
	test	r9d, r9d
	jne	.label_661
	mov	ebp, OFFSET FLAT:label_703
	test	r15d, r15d
	jne	.label_744
	test	r14d, r14d
	jns	.label_744
	mov	r15d, 0x2b
	mov	r10d, 4
	jmp	.label_704
.label_1183:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 8]
	mov	ecx, 2
	jmp	.label_673
.label_1184:
	mov	ecx, 2
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	eax, dword ptr [rsp + 0x64]
	jmp	.label_755
.label_1185:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 4]
	mov	ecx, 2
	jmp	.label_673
.label_1186:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	ecx, 9
	cmp	r14d, -1
	je	.label_762
	cmp	r14d, 8
	jg	.label_765
	mov	eax, 9
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	ebp, ecx
	mov	rdi, qword ptr [rsp]
	nop	word ptr [rax + rax]
.label_772:
	movsxd	rcx, ebp
	imul	rbp, rcx, 0x66666667
	mov	rcx, rbp
	shr	rcx, 0x3f
	sar	rbp, 0x22
	add	ebp, ecx
	dec	eax
	cmp	r14d, eax
	jne	.label_772
	mov	ecx, r14d
	jmp	.label_669
.label_1187:
	mov	cl, 1
.label_1205:
	xor	ebx, ebx
	test	r12b, r12b
	je	.label_782
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
.label_782:
	je	.label_784
	mov	cl, 1
.label_784:
	mov	al, 0x70
	mov	sil, cl
	jmp	.label_678
.label_1188:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax]
	mov	ecx, 2
	jmp	.label_673
.label_1189:
	mov	ebp, OFFSET FLAT:label_787
.label_704:
	mov	qword ptr [rsp + 0x10], r8
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	setne	r8b
	sub	rsp, 8
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4f8]
	push	rax
	push	qword ptr [rsp + 0x4f8]
	mov	qword ptr [rsp + 0x58], r10
	push	r10
	mov	dword ptr [rsp + 0x28], r11d
	call	__strftime_internal
	mov	r11d, dword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x30]
	add	rsp, 0x20
	test	r14d, r14d
	cmovns	ebx, r14d
	movsxd	rsi, ebx
	cmp	rax, rsi
	mov	rbx, rax
	cmovb	rbx, rsi
	mov	r12, qword ptr [rsp + 0x38]
	sub	r12, r8
	cmp	rbx, r12
	jae	.label_663
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_707
	cmp	rax, rsi
	mov	qword ptr [rsp + 0x30], rax
	jae	.label_814
	movsxd	rcx, r14d
	sub	rcx, rax
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x48], rcx
	je	.label_818
	cmp	r15d, 0x2b
	jne	.label_764
.label_818:
	mov	esi, 0x30
	jmp	.label_821
.label_1190:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	movsxd	rbp, eax
	jmp	.label_795
.label_1191:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	mov	rbp, rdx
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	add	ecx, 7
	sub	ecx, edx
	mov	rdx, rbp
	movsxd	rbp, ecx
.label_795:
	imul	rax, rbp, -0x6db6db6d
	shr	rax, 0x20
	add	ebp, eax
	mov	eax, ebp
	shr	eax, 0x1f
	sar	ebp, 2
	add	ebp, eax
	mov	ecx, 2
	jmp	.label_673
.label_1192:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_661
	mov	al, 0x58
	xor	esi, esi
	jmp	.label_678
.label_1193:
	xor	ebx, ebx
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_722
	cmp	r12d, 0x4f
	je	.label_661
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x14]
	cmp	ebp, 0xfffff894
	setl	sil
	add	ebp, 0x76c
	mov	ebx, 4
	jmp	.label_684
.label_1194:
	mov	rdi, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 8], r11d
	call	strlen
	mov	r11d, dword ptr [rsp + 8]
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ecx, ecx
	test	r14d, r14d
	cmovns	ecx, r14d
	movsxd	rsi, ecx
	cmp	rax, rsi
	mov	rbx, rax
	cmovb	rbx, rsi
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_663
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_707
	cmp	rax, rsi
	jae	.label_711
	movsxd	r14, r14d
	mov	qword ptr [rsp + 0x40], rax
	sub	r14, rax
	cmp	r15d, 0x30
	je	.label_712
	cmp	r15d, 0x2b
	jne	.label_718
.label_712:
	mov	esi, 0x30
	jmp	.label_720
.label_1195:
	mov	eax, r9d
	test	eax, eax
	jne	.label_661
	test	r12b, r12b
	je	.label_724
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_724:
	xor	esi, esi
	mov	al, 0x61
	jmp	.label_688
.label_1197:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_661
	mov	al, 0x63
	xor	esi, esi
	jmp	.label_678
.label_1198:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0xc]
	mov	ecx, 2
	jmp	.label_673
.label_1199:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_733
.label_1200:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x1c]
	cmp	ebp, -1
	setl	sil
	inc	ebp
	mov	ebx, 3
	jmp	.label_739
.label_1201:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_733
.label_1202:
	mov	r12d, r9d
	cmp	r12d, 0x45
	mov	eax, dword ptr [rsp + 0x64]
	je	.label_661
.label_733:
	test	r15d, r15d
	mov	ecx, 0x5f
	cmove	r15d, ecx
	mov	ecx, 2
.label_755:
	mov	ebp, eax
.label_673:
	mov	rdi, qword ptr [rsp]
.label_669:
	mov	esi, ebp
	shr	esi, 0x1f
	xor	r11d, r11d
	xor	r10d, r10d
	mov	ebx, ecx
	jmp	.label_751
.label_1203:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x10]
	cmp	ebp, -1
	setl	sil
	inc	ebp
	mov	ebx, 2
.label_739:
	xor	r11d, r11d
	xor	r10d, r10d
	mov	rdi, qword ptr [rsp]
	jmp	.label_751
.label_1204:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_663
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_689
	cmp	eax, 2
	jb	.label_768
	mov	dword ptr [rsp + 8], r11d
	mov	r12, r8
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_770
	cmp	r15d, 0x2b
	jne	.label_775
.label_770:
	mov	esi, 0x30
	jmp	.label_778
.label_1206:
	mov	rax, qword ptr [rsp + 0x18]
	imul	ebp, dword ptr [rax + 0x10], 0xb
	sar	ebp, 5
	inc	ebp
	mov	ebx, 1
	xor	r11d, r11d
	xor	r10d, r10d
	xor	esi, esi
	mov	rdi, qword ptr [rsp]
	mov	r12d, r9d
	jmp	.label_751
.label_1207:
	mov	dword ptr [rsp + 8], r11d
	mov	rbx, r8
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rsi, [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x4e8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0x97]
	nop	dword ptr [rax]
.label_799:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	mov	eax, ebp
	neg	eax
	test	rsi, rsi
	cmove	eax, ebp
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_799
	xor	r10d, r10d
	mov	r8, rbx
	mov	ebx, 1
	mov	rdi, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_813
.label_1208:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_663
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_689
	cmp	eax, 2
	jb	.label_747
	mov	dword ptr [rsp + 8], r11d
	mov	r12, r8
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_827
	cmp	r15d, 0x2b
	jne	.label_664
.label_827:
	mov	esi, 0x30
	jmp	.label_667
.label_1209:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x18]
	lea	ecx, [rax + 6]
	movsxd	rbp, ecx
	imul	rcx, rbp, -0x6db6db6d
	shr	rcx, 0x20
	lea	eax, [rcx + rax + 6]
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	lea	ecx, [rax*8]
	sub	ecx, eax
	sub	ebp, ecx
	inc	ebp
	mov	ecx, 1
	mov	rdi, qword ptr [rsp]
	mov	r12d, r9d
	jmp	.label_669
.label_1210:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_661
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x18]
	mov	ecx, 1
	jmp	.label_673
.label_1211:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_661
	mov	al, 0x78
	xor	esi, esi
	jmp	.label_678
.label_1212:
	mov	r12d, r9d
	cmp	r12d, 0x45
	jne	.label_686
	xor	esi, esi
	mov	al, 0x79
	jmp	.label_688
.label_683:
	mov	eax, edx
.label_688:
	xor	ebx, ebx
	jmp	.label_678
.label_814:
	mov	rcx, qword ptr [rsp + 0x18]
	jmp	.label_690
.label_824:
	dec	ebp
	mov	edi, 0x16d
	test	bpl, 3
	jne	.label_685
	movsxd	rax, ebp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	ebp, eax
	sete	dl
	add	edx, 0x16d
	cmp	ebp, ecx
	mov	edi, 0x16e
	cmove	edi, edx
.label_685:
	add	edi, r12d
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ebx, eax
	mov	ecx, 0xffffffff
.label_675:
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp]
	mov	r12d, dword ptr [rsp + 0x28]
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x47
	je	.label_714
	cmp	eax, 0x67
	jne	.label_736
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, ecx
	movsxd	rbp, esi
	imul	rdx, rbp, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	ebp, edx
	mov	ebx, 2
	jns	.label_723
	mov	edx, 0xfffff894
	sub	edx, ecx
	mov	ecx, ebp
	neg	ecx
	add	ebp, 0x64
	cmp	eax, edx
	cmovl	ebp, ecx
.label_723:
	xor	esi, esi
	jmp	.label_737
.label_716:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp]
	jmp	.label_694
.label_734:
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	sil
	setg	cl
	imul	rbp, rax, 0x51eb851f
	mov	rdx, rbp
	shr	rdx, 0x3f
	sar	rbp, 0x25
	add	ebp, edx
	imul	edx, ebp, 0x64
	cmp	eax, edx
	sets	al
	and	al, cl
	movzx	eax, al
	sub	ebp, eax
	add	ebp, 0x13
	mov	ebx, 2
	jmp	.label_684
.label_686:
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rcx, rax, 0x51eb851f
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x25
	add	ecx, edx
	imul	ecx, ecx, 0x64
	mov	ebp, eax
	sub	ebp, ecx
	mov	ebx, 2
	jns	.label_670
	mov	ecx, ebp
	neg	ecx
	add	ebp, 0x64
	cmp	eax, 0xfffff894
	cmovl	ebp, ecx
.label_670:
	xor	esi, esi
.label_684:
	mov	rdi, qword ptr [rsp]
	jmp	.label_737
.label_714:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	sil
	lea	ebp, [rcx + rax + 0x76c]
	mov	ebx, 4
.label_737:
	test	r15d, r15d
	cmove	r15d, dword ptr [rsp + 0x70]
	xor	r11d, r11d
	cmp	r15d, 0x2b
	mov	r10d, 0
	jne	.label_769
	cmp	ebx, 2
	mov	eax, 0x63
	mov	ecx, 0x270f
	cmove	ecx, eax
	cmp	ecx, ebp
	setb	cl
	cmp	ebx, r14d
	setl	r10b
	or	r10b, cl
.label_769:
	mov	rdx, qword ptr [rsp + 8]
.label_751:
	cmp	r12d, 0x4f
	jne	.label_774
	test	sil, sil
	jne	.label_774
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x28], rbp
	xor	esi, esi
	mov	eax, edx
.label_678:
	mov	dword ptr [rsp + 0x30], esi
	mov	qword ptr [rsp + 0x40], rbx
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, qword ptr [rsp]
	mov	word ptr [rsp + 0x53], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x55]
	je	.label_783
	mov	byte ptr [rsp + 0x55], r9b
	lea	rcx, [rsp + 0x56]
.label_783:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x53]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x18]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_789
	dec	rbx
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x10]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_663
	xor	ecx, ecx
	mov	rdi, rbp
	test	rdi, rdi
	mov	r11d, dword ptr [rsp + 8]
	je	.label_800
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_682
	test	al, al
	mov	rax, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x30]
	jne	.label_752
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_812
	cmp	r15d, 0x2b
	jne	.label_822
.label_812:
	mov	esi, 0x30
	jmp	.label_815
.label_774:
	mov	eax, ebp
	neg	eax
	test	sil, sil
	cmove	eax, ebp
	lea	r12, [rsp + 0x97]
.label_823:
	test	r11b, 1
	je	.label_820
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_820:
	sar	r11d, 1
	mov	edx, eax
	mov	ebp, 0xcccccccd
	imul	rbp, rdx
	shr	rbp, 0x23
	lea	edx, [rbp + rbp]
	lea	edx, [rdx + rdx*4]
	mov	ecx, eax
	sub	ecx, edx
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, ebp
	ja	.label_823
	test	r11d, r11d
	mov	eax, ebp
	jne	.label_823
.label_813:
	cmp	ebx, r14d
	cmovl	ebx, r14d
	test	r10b, r10b
	je	.label_668
	mov	r10b, 0x2b
.label_668:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_666
	mov	esi, r10d
.label_666:
	cmp	r15d, 0x2d
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_691
	test	sil, sil
	je	.label_672
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	r9, qword ptr [rsp + 0x20]
	jae	.label_663
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_677
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_680
	test	al, al
	jne	.label_680
	movsxd	rbp, r14d
	lea	rdx, [rbp - 1]
	mov	byte ptr [rsp + 0x30], sil
	mov	esi, 0x20
	mov	qword ptr [rsp + 0x10], r8
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	lea	rdi, [rdi + rbp - 1]
.label_680:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_677:
	add	r8, rbx
	jmp	.label_693
.label_789:
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_694
.label_691:
	movsxd	rax, ebx
	mov	rcx, r12
	lea	rdx, [rsp + 0x97]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_699
	cmp	r15d, 0x5f
	mov	r9, qword ptr [rsp + 0x20]
	jne	.label_708
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x38]
	sub	rax, r8
	cmp	rdx, rax
	jae	.label_663
	xor	r10d, r10d
	test	rdi, rdi
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	je	.label_719
	mov	byte ptr [rsp + 0x30], sil
	mov	esi, 0x20
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x78], rdx
	call	memset
	mov	rdx, qword ptr [rsp + 0x78]
	xor	r10d, r10d
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	add	rbp, rdx
	mov	qword ptr [rsp + 0x48], rbp
.label_719:
	add	r8, rdx
	sub	r14d, ebx
	cmovg	r10d, r14d
	test	sil, sil
	je	.label_729
	xor	eax, eax
	test	r10d, r10d
	cmovns	eax, r10d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_663
	xor	edi, edi
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_741
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_743
	test	al, al
	jne	.label_743
	movsxd	rbx, r10d
	dec	rbx
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	mov	qword ptr [rsp], r10
	je	.label_807
	cmp	r15d, 0x2b
	jne	.label_665
.label_807:
	mov	esi, 0x30
	jmp	.label_750
.label_682:
	mov	rax, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x30]
	jmp	.label_752
.label_672:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_671
.label_699:
	test	sil, sil
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_671
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_663
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_760
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_763
	test	al, al
	jne	.label_763
	movsxd	rbx, r14d
	dec	rbx
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	je	.label_767
	cmp	r15d, 0x2b
	jne	.label_773
.label_767:
	mov	esi, 0x30
	jmp	.label_776
.label_708:
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_663
	test	sil, sil
	je	.label_781
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebp, 1
	cmova	rbp, rdx
	cmp	rbp, rcx
	jae	.label_663
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_735
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_745
	test	al, al
	jne	.label_745
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	je	.label_788
	cmp	r15d, 0x2b
	jne	.label_791
.label_788:
	mov	esi, 0x30
	jmp	.label_798
.label_822:
	mov	esi, 0x20
.label_815:
	mov	rdx, r14
	call	memset
	mov	ecx, dword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	add	rdi, r14
.label_752:
	lea	rsi, [rsp + 0xa1]
	mov	rdx, rbx
	mov	rbp, rdi
	test	cl, 1
	jne	.label_803
	test	al, 1
	jne	.label_806
	call	memcpy
	jmp	.label_808
.label_803:
	call	memcpy_lowcase
	mov	r11d, dword ptr [rsp + 8]
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_809
.label_806:
	call	memcpy_uppcase
.label_808:
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
.label_809:
	add	rcx, rbx
.label_800:
	add	r8, r12
	jmp	.label_676
.label_736:
	movsxd	rax, ebx
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	ebp, [rcx + rax + 1]
	mov	ecx, 2
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_669
.label_729:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r14d, r10d
	jmp	.label_671
.label_722:
	mov	al, 0x59
	xor	esi, esi
	jmp	.label_678
.label_711:
	mov	rsi, qword ptr [rsp + 0x68]
	jmp	.label_825
.label_764:
	mov	esi, 0x20
.label_821:
	mov	rdx, rcx
	mov	r14, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x18]
	add	r14, qword ptr [rsp + 0x48]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x20]
.label_690:
	mov	r10, qword ptr [rsp + 0x40]
	xor	r8d, r8d
	test	dl, dl
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	rdx, rbp
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4f8]
	push	rax
	push	qword ptr [rsp + 0x4f8]
	push	r10
	mov	rbp, rdi
	call	__strftime_internal
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x30]
	add	rax, rbp
	mov	rcx, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
.label_707:
	add	r8, rbx
	jmp	.label_676
.label_725:
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rcx], 0x2d
	sete	sil
.label_721:
	cmp	rbx, 3
	mov	qword ptr [rsp + 8], rdx
	ja	.label_681
	movsxd	rcx, eax
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	rbp, rcx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, eax
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	movsxd	rcx, edx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	imul	edi, ecx, 0x3c
	sub	ecx, edx
	sub	eax, edi
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_826]]
.label_1299:
	imul	ebp, ebp, 0x64
	add	ebp, ecx
	mov	ebx, 5
.label_749:
	xor	r11d, r11d
	jmp	.label_701
.label_744:
	xor	eax, eax
	mov	r10d, r14d
	add	r10d, -6
	cmovs	r10d, eax
	mov	ebp, OFFSET FLAT:label_703
	jmp	.label_704
.label_762:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	ebp, eax
	mov	r14d, 9
	jmp	.label_673
.label_681:
	xor	ebx, ebx
	mov	ecx, 0xe
	jmp	.label_713
.label_1302:
	test	eax, eax
	je	.label_717
.label_1301:
	imul	ebp, ebp, 0x2710
	imul	ecx, ecx, 0x64
	add	ebp, eax
	add	ebp, ecx
	mov	ebx, 9
	mov	r11d, 0x14
	jmp	.label_701
.label_765:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	ebp, eax
	mov	ecx, r14d
	jmp	.label_673
.label_718:
	mov	esi, 0x20
.label_720:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdi, r15
	mov	rdx, rbp
	mov	rax, qword ptr [rsp + 0x40]
.label_825:
	test	r12b, r12b
	je	.label_730
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy_lowcase
	mov	rax, rbp
	mov	r11d, dword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, qword ptr [rsp + 0x10]
	add	rcx, rax
	jmp	.label_707
.label_730:
	test	dl, dl
	je	.label_738
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy_uppcase
	jmp	.label_742
.label_775:
	mov	esi, 0x20
.label_778:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	r8, r12
	mov	rdi, rbx
	mov	r11d, dword ptr [rsp + 8]
.label_768:
	mov	byte ptr [rdi], 0xa
	jmp	.label_746
.label_664:
	mov	esi, 0x20
.label_667:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	r8, r12
	mov	rdi, rbx
	mov	r11d, dword ptr [rsp + 8]
.label_747:
	mov	byte ptr [rdi], 9
	jmp	.label_746
.label_773:
	mov	esi, 0x20
.label_776:
	mov	rdx, rbx
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	add	rdi, rbx
.label_763:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_760:
	add	r8, rbp
.label_693:
	mov	rdi, rcx
	jmp	.label_671
.label_738:
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy
.label_742:
	mov	rax, rbp
	mov	rcx, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
	add	rcx, rax
	jmp	.label_707
.label_717:
	test	ecx, ecx
	je	.label_786
.label_1300:
	imul	ebp, ebp, 0x64
	add	ebp, ecx
	mov	ebx, 6
	mov	r11d, 4
.label_701:
	mov	ecx, 0x21
.label_713:
	mov	rdi, r10
	mov	edx, ecx
	and	dl, 0x3f
	cmp	dl, 0xe
	je	.label_771
	mov	r10b, 1
	cmp	dl, 0x21
	mov	rdx, qword ptr [rsp + 8]
	je	.label_751
	jmp	.label_779
.label_771:
	mov	qword ptr [rsp + 0x28], rbp
.label_661:
	mov	r9, rbx
	xor	ebp, ebp
	xor	ebx, ebx
	movabs	rax, 0x100000000
	nop	word ptr cs:[rax + rax]
.label_785:
	add	rbx, rax
	cmp	byte ptr [r13 + rbp], 0x25
	lea	rbp, [rbp - 1]
	jne	.label_785
	mov	rax, rbp
	neg	rax
	test	r14d, r14d
	mov	ecx, r14d
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	edx, ecx
	cmova	edx, eax
	movsxd	r12, edx
	mov	rdx, qword ptr [rsp + 0x38]
	sub	rdx, r8
	cmp	r12, rdx
	mov	rdi, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 0x20]
	jae	.label_663
	test	rdi, rdi
	mov	esi, 0
	je	.label_792
	sar	rbx, 0x20
	test	r9d, r9d
	jne	.label_794
	cmp	eax, ecx
	jae	.label_794
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x10], r8
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_797
	cmp	r15d, 0x2b
	jne	.label_801
.label_797:
	mov	esi, 0x30
	jmp	.label_804
.label_801:
	mov	esi, 0x20
.label_804:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r11d, dword ptr [rsp + 8]
.label_794:
	mov	r15d, r11d
	mov	r14, r8
	lea	rsi, [r13 + rbp + 1]
	test	dl, 1
	jne	.label_810
	mov	rdx, rbx
	mov	rbp, rdi
	call	memcpy
	jmp	.label_816
.label_810:
	mov	rdx, rbx
	mov	rbp, rdi
	call	memcpy_uppcase
.label_816:
	add	rbp, rbx
	mov	rsi, rbp
	mov	r8, r14
	mov	r11d, r15d
.label_792:
	add	r8, r12
	mov	rdi, rsi
	jmp	.label_819
.label_665:
	mov	esi, 0x20
.label_750:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	mov	r14, r9
	call	memset
	mov	r10, qword ptr [rsp]
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, r14
	mov	r8, qword ptr [rsp + 0x10]
	add	qword ptr [rsp + 0x48], rbx
.label_743:
	mov	rax, qword ptr [rsp + 0x48]
	mov	byte ptr [rax], sil
	inc	rax
	mov	rdi, rax
.label_741:
	add	r8, rbp
	mov	r14d, r10d
	jmp	.label_671
.label_791:
	mov	esi, 0x20
.label_798:
	mov	rdx, r14
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	add	rdi, r14
.label_745:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_735:
	add	r8, rbp
	mov	rdi, rcx
.label_781:
	xor	r14d, r14d
	test	rdi, rdi
	mov	ebp, 0
	je	.label_674
	movsxd	rdx, ebx
	mov	qword ptr [rsp], rdx
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, rdi
	call	memset
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	add	rbp, qword ptr [rsp]
.label_674:
	movsxd	rcx, ebx
	add	r8, rcx
	mov	rdi, rbp
.label_671:
	lea	rbx, [rsp + 0x97]
	sub	rbx, r12
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	rbp, rbx
	cmovb	rbp, rax
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_663
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_689
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_692
	test	al, al
	jne	.label_692
	mov	qword ptr [rsp + 0x10], r8
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_695
	cmp	r15d, 0x2b
	jne	.label_727
.label_695:
	mov	esi, 0x30
	jmp	.label_700
.label_727:
	mov	esi, 0x20
.label_700:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, r15
	mov	r9, qword ptr [rsp + 0x20]
.label_692:
	mov	r14, r8
	mov	rsi, r12
	mov	rdx, rbx
	mov	r15, rdi
	test	r9b, r9b
	je	.label_710
	call	memcpy_uppcase
	jmp	.label_715
.label_710:
	call	memcpy
.label_715:
	add	r15, rbx
	mov	rcx, r15
	mov	r8, r14
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_689
.label_702:
	mov	esi, 0x20
.label_705:
	mov	rdx, rbx
	mov	r14, r8
	mov	r15, rdi
	mov	r12d, r11d
	call	memset
	mov	r11d, r12d
	mov	rdi, r15
	mov	r8, r14
	add	rdi, rbx
.label_696:
	mov	al, byte ptr [r13]
	mov	byte ptr [rdi], al
.label_746:
	inc	rdi
	mov	rcx, rdi
.label_689:
	add	r8, rbp
.label_676:
	mov	rdi, rcx
.label_819:
	mov	rbp, qword ptr [rsp + 0x28]
.label_694:
	mov	r14d, 0xffffffff
	cmp	byte ptr [r13 + 1], 0
	lea	r13, [r13 + 1]
	jne	.label_728
.label_748:
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_731
	test	rdi, rdi
	je	.label_731
	mov	byte ptr [rdi], 0
.label_731:
	mov	qword ptr [rsp + 0x58], r8
.label_761:
	mov	rax, qword ptr [rsp + 0x58]
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_663:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_761
	.section	.text
	.align	32
	#Procedure 0x4081c5
	.globl sub_4081c5
	.type sub_4081c5, @function
sub_4081c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081d0

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
	#Procedure 0x4081e7
	.globl sub_4081e7
	.type sub_4081e7, @function
sub_4081e7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4081f0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_828
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_828:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_829
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_831
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_830
.label_831:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_830:
	mov	edx, dword ptr [rax]
.label_829:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082b4
	.globl sub_4082b4
	.type sub_4082b4, @function
sub_4082b4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4082c0

	.globl out_uint
	.type out_uint, @function
out_uint:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_832
	mov	ecx, OFFSET FLAT:label_833
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x4082f2
	.globl sub_4082f2
	.type sub_4082f2, @function
sub_4082f2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408300

	.globl human_access
	.type human_access, @function
human_access:
	push	rax
	mov	esi, OFFSET FLAT:human_access.modebuf
	call	filemodestring
	mov	byte ptr [byte ptr [rip + label_834]],  0
	pop	rax
	ret	
	.section	.text
	.align	32
	#Procedure 0x408314
	.globl sub_408314
	.type sub_408314, @function
sub_408314:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408320

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_835
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	mov	rdi, r14
	call	change_env
	mov	ebx, eax
	test	bl, bl
	jne	.label_836
	mov	ebp, dword ptr [r15]
.label_836:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_835:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408366
	.globl sub_408366
	.type sub_408366, @function
sub_408366:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408370
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408383
	.globl sub_408383
	.type sub_408383, @function
sub_408383:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408390
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408395
	.globl sub_408395
	.type sub_408395, @function
sub_408395:

	nop	word ptr cs:[rax + rax]
.label_837:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_840:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_840
	mov	byte ptr [rsi], 0x2d
.label_839:
	mov	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083f8
	.globl sub_4083f8
	.type sub_4083f8, @function
sub_4083f8:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408405

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_837
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_838:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_838
	jmp	.label_839
	.section	.text
	.align	32
	#Procedure 0x408460

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	.section	.text
	.align	32
	#Procedure 0x40846d
	.globl sub_40846d
	.type sub_40846d, @function
sub_40846d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408470
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
	#Procedure 0x40847f
	.globl sub_40847f
	.type sub_40847f, @function
sub_40847f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408480

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
	mov	rcx,  qword ptr [word ptr [rip + label_43]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_44]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_45]]
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
	#Procedure 0x4084ed
	.globl sub_4084ed
	.type sub_4084ed, @function
sub_4084ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4084f0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x4084fd
	.globl sub_4084fd
	.type sub_4084fd, @function
sub_4084fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408500

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	.section	.text
	.align	32
	#Procedure 0x408507
	.globl sub_408507
	.type sub_408507, @function
sub_408507:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408510

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_844
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_841:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_842
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_846
	cmp	qword ptr [rsp + 8], -1
	je	.label_847
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_843
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_842
.label_843:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_842
.label_847:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_842:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_841
	jmp	.label_845
.label_844:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_845:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_846:
	mov	rax, rbp
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
	#Procedure 0x40860d
	.globl sub_40860d
	.type sub_40860d, @function
sub_40860d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408610
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
	#Procedure 0x40861d
	.globl sub_40861d
	.type sub_40861d, @function
sub_40861d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408620
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_848
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_848:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x408638
	.globl sub_408638
	.type sub_408638, @function
sub_408638:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408640

	.globl change_env
	.type change_env, @function
change_env:
	push	rbx
	xor	ebx, ebx
	cmp	byte ptr [rdi + 8], 0
	lea	rdi, [rdi + 9]
	cmove	rdi, rbx
	call	setenv_TZ
	test	eax, eax
	jne	.label_849
	call	tzset
	mov	bl, 1
.label_849:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408663
	.globl sub_408663
	.type sub_408663, @function
sub_408663:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408670

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rdi
	call	chdir
	mov	ebx, eax
	xor	eax, eax
	test	ebx, ebx
	je	.label_851
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	mov	eax, ebx
	jne	.label_851
	mov	rdi, r13
	call	strlen
	mov	r15, rax
	lea	rdi, [rsp + 8]
	call	cdb_init
	test	r15, r15
	je	.label_859
	cmp	r15, 0xfff
	jbe	.label_860
	add	r15, r13
	mov	esi, 0x2f
	mov	rdi, r13
	call	__strspn_c1
	mov	rbx, rax
	test	rbx, rbx
	je	.label_857
	cmp	rbx, 2
	jne	.label_869
	lea	rdi, [r13 + 3]
	mov	rdx, r15
	sub	rdx, rdi
	mov	esi, 0x2f
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_850
	mov	byte ptr [rbx], 0
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	call	cdb_advance_fd
	mov	byte ptr [rbx], 0x2f
	test	eax, eax
	jne	.label_855
	inc	rbx
	mov	rdi, rbx
	call	find_non_slash
	mov	r13, rax
	jmp	.label_857
.label_869:
	lea	rdi, [rsp + 8]
	mov	esi, OFFSET FLAT:label_858
	call	cdb_advance_fd
	test	eax, eax
	jne	.label_855
	add	r13, rbx
.label_857:
	cmp	byte ptr [r13], 0x2f
	je	.label_862
	cmp	r13, r15
	ja	.label_866
	mov	rax, r15
	sub	rax, r13
	cmp	rax, 0x1000
	jl	.label_868
	lea	r12, [rsp + 8]
	nop	word ptr [rax + rax]
.label_861:
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, r13
	call	memrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_850
	mov	byte ptr [rbx], 0
	mov	rax, rbx
	sub	rax, r13
	cmp	rax, 0x1000
	jge	.label_854
	mov	rdi, r12
	mov	rsi, r13
	call	cdb_advance_fd
	mov	byte ptr [rbx], 0x2f
	test	eax, eax
	jne	.label_855
	inc	rbx
	mov	rdi, rbx
	call	find_non_slash
	mov	r13, rax
	mov	rax, r15
	sub	rax, r13
	cmp	rax, 0xfff
	jg	.label_861
.label_868:
	cmp	r13, r15
	jae	.label_865
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	call	cdb_advance_fd
	test	eax, eax
	jne	.label_855
.label_865:
	lea	rdi, [rsp + 8]
	call	cdb_fchdir
	test	eax, eax
	je	.label_871
.label_855:
	mov	ebx, dword ptr [r14]
	lea	rdi, [rsp + 8]
	call	cdb_free
	mov	dword ptr [r14], ebx
	jmp	.label_864
.label_850:
	mov	dword ptr [r14], 0x24
.label_864:
	mov	eax, 0xffffffff
.label_851:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_871:
	lea	rdi, [rsp + 8]
	call	cdb_free
	xor	eax, eax
	jmp	.label_851
.label_854:
	mov	edi, OFFSET FLAT:label_867
	mov	esi, OFFSET FLAT:label_530
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_853
	call	__assert_fail
.label_859:
	mov	edi, OFFSET FLAT:label_863
	mov	esi, OFFSET FLAT:label_530
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_853
	call	__assert_fail
.label_860:
	mov	edi, OFFSET FLAT:label_870
	mov	esi, OFFSET FLAT:label_530
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:label_853
	call	__assert_fail
.label_862:
	mov	edi, OFFSET FLAT:label_852
	mov	esi, OFFSET FLAT:label_530
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:label_853
	call	__assert_fail
.label_866:
	mov	edi, OFFSET FLAT:label_856
	mov	esi, OFFSET FLAT:label_530
	mov	edx, 0xa3
	mov	ecx, OFFSET FLAT:label_853
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4088b8
	.globl sub_4088b8
	.type sub_4088b8, @function
sub_4088b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088c0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	test	edi, edi
	sete	al
	test	esi, esi
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088d4
	.globl sub_4088d4
	.type sub_4088d4, @function
sub_4088d4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4088e0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	sete	al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_872
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_873
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_873:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_872:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x408937
	.globl sub_408937
	.type sub_408937, @function
sub_408937:

	nop	word ptr [rax + rax]
.label_877:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_874
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_875
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_520
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x408985

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_879
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_877
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_877
.label_879:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_878
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_875:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_876
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
.label_878:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	.section	.text
	.align	32
	#Procedure 0x408a00
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_881:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_880
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_881
.label_880:
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a26
	.globl sub_408a26
	.type sub_408a26, @function
sub_408a26:

	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a30
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a33
	.globl sub_408a33
	.type sub_408a33, @function
sub_408a33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a40

	.globl freecon
	.type freecon, @function
freecon:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408a41
	.globl sub_408a41
	.type sub_408a41, @function
sub_408a41:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a50

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	add	edx, -0x53
	cmp	edx, 0x21
	ja	.label_883
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_887]]
.label_1131:
	mov	rdx, qword ptr [r9 + 0x48]
	test	rdx, rdx
	jne	.label_888
.label_1141:
	mov	rdx, qword ptr [r9 + 8]
	jmp	.label_888
.label_1132:
	mov	rdi, r9
	call	human_fstype
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rax
	call	out_string
	jmp	.label_885
.label_883:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, 0x3f
	call	fputc_unlocked
	jmp	.label_885
.label_1133:
	mov	rdx, qword ptr [r9 + 0x20]
	jmp	.label_882
.label_1134:
	mov	rdx, qword ptr [r9 + 0x10]
	jmp	.label_882
.label_1135:
	mov	rdx, qword ptr [r9 + 0x28]
	jmp	.label_888
.label_1136:
	mov	rdx, qword ptr [r9 + 0x30]
	jmp	.label_882
.label_1137:
	mov	rdx, qword ptr [r9 + 0x18]
.label_882:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_int
	jmp	.label_885
.label_1138:
	add	r9, 0x3c
	xor	ecx, ecx
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_886:
	mov	eax, dword ptr [r9]
	shl	rax, cl
	or	rdx, rax
	add	r9, -4
	add	rcx, 0x20
	cmp	rcx, 0x40
	jne	.label_886
	jmp	.label_884
.label_1139:
	mov	rdx, qword ptr [r9 + 0x40]
.label_888:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint
	jmp	.label_885
.label_1140:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r8
	call	out_string
	jmp	.label_885
.label_1142:
	mov	rdx, qword ptr [r9]
.label_884:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint_x
.label_885:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b42
	.globl sub_408b42
	.type sub_408b42, @function
sub_408b42:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b50

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbx
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	or	edx, eax
	or	edx, ecx
	mov	eax, dword ptr [rsi + 0x10]
	xor	eax, dword ptr [rdi + 0x10]
	mov	ebx, dword ptr [rsi + 0x14]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	or	ebx, edx
	mov	edi, dword ptr [rdi + 0x20]
	mov	esi, dword ptr [rsi + 0x20]
	call	isdst_differ
	movzx	ecx, al
	xor	eax, eax
	or	ecx, ebx
	sete	al
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b94
	.globl sub_408b94
	.type sub_408b94, @function
sub_408b94:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ba0

	.globl neg_to_zero
	.type neg_to_zero, @function
neg_to_zero:
	xor	edx, edx
	test	rsi, rsi
	cmovs	rdi, rdx
	cmovns	rdx, rsi
	mov	rax, rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bb1
	.globl sub_408bb1
	.type sub_408bb1, @function
sub_408bb1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bc0

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	mov	dword ptr [rdi], 0xffffff9c
	ret	
	.section	.text
	.align	32
	#Procedure 0x408bc7
	.globl sub_408bc7
	.type sub_408bc7, @function
sub_408bc7:

	nop	word ptr [rax + rax]
.label_1381:
	mov	bl, 0xc
	jmp	.label_889
.label_1382:
	mov	bl, 0xa
	jmp	.label_889
.label_1379:
	mov	bl, 8
	jmp	.label_889
	.section	.text
	.align	32
	#Procedure 0x408bdc

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	push	rbx
	mov	ebx, edi
	lea	eax, [rbx - 0x22]
	cmp	eax, 0x54
	ja	.label_892
	jmp	qword ptr [word ptr [+ (rax * 8) + label_890]]
.label_1380:
	mov	bl, 0x1b
	jmp	.label_889
.label_1378:
	mov	bl, 7
	jmp	.label_889
.label_1384:
	mov	bl, 9
	jmp	.label_889
.label_1385:
	mov	bl, 0xb
.label_889:
	movsx	edi, bl
	pop	rbx
	jmp	putchar_unlocked
	.section	.text
	.align	32
	#Procedure 0x408c05
	.globl sub_408c05
	.type sub_408c05, @function
sub_408c05:

	nop	
.label_1383:
	mov	bl, 0xd
	jmp	.label_889
.label_892:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_891
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	jmp	.label_889
	.section	.text
	.align	32
	#Procedure 0x408c30

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	.section	.text
	.align	32
	#Procedure 0x408c35
	.globl sub_408c35
	.type sub_408c35, @function
sub_408c35:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c40

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_893
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x408c62
	.globl sub_408c62
	.type sub_408c62, @function
sub_408c62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c70
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c7a
	.globl sub_408c7a
	.type sub_408c7a, @function
sub_408c7a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c80
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_894
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_894:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408ca6
	.globl sub_408ca6
	.type sub_408ca6, @function
sub_408ca6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cb0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_895
	test	rbx, rbx
	jne	.label_895
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_895:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_897
	test	rax, rax
	je	.label_896
.label_897:
	pop	rbx
	ret	
.label_896:
	call	xalloc_die
.label_898:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	.section	.text
	.align	32
	#Procedure 0x408cec
	.globl sub_408cec
	.type sub_408cec, @function
sub_408cec:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cf9

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_898
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d00
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d05
	.globl sub_408d05
	.type sub_408d05, @function
sub_408d05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d10

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	mov	eax, 0xffffffff
	test	ebp, ebp
	js	.label_899
	mov	rdi, rbx
	call	cdb_free
	mov	dword ptr [rbx], ebp
	xor	eax, eax
.label_899:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d42
	.globl sub_408d42
	.type sub_408d42, @function
sub_408d42:

	nop	word ptr cs:[rax + rax]
.label_901:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_900
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d5b
	.globl sub_408d5b
	.type sub_408d5b, @function
sub_408d5b:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d65
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_901
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_901
.label_900:
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d80

	.globl xsum
	.type xsum, @function
xsum:
	add	rsi, rdi
	cmp	rsi, rdi
	mov	rax, -1
	cmovae	rax, rsi
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d92
	.globl sub_408d92
	.type sub_408d92, @function
sub_408d92:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408da0
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	pop	rbx
	jmp	xsum
	.section	.text
	.align	32
	#Procedure 0x408db2
	.globl sub_408db2
	.type sub_408db2, @function
sub_408db2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408dc0
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	call	xsum
	mov	rdi, rax
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xsum
	.section	.text
	.align	32
	#Procedure 0x408de9
	.globl sub_408de9
	.type sub_408de9, @function
sub_408de9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408df0
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
	#Procedure 0x408e17
	.globl sub_408e17
	.type sub_408e17, @function
sub_408e17:

	nop	word ptr [rax + rax]
.label_902:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e23
	.globl sub_408e23
	.type sub_408e23, @function
sub_408e23:

	nop	
	.section	.text
	.align	32
	#Procedure 0x408e25
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_902
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e40
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_903
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_904
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_906
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_907
	mov	ecx, OFFSET FLAT:label_908
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_905
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	.section	.text
	.align	32
	#Procedure 0x408eb4
	.globl sub_408eb4
	.type sub_408eb4, @function
sub_408eb4:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ec0
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408ed3
	.globl sub_408ed3
	.type sub_408ed3, @function
sub_408ed3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ee0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_910:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_909
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_910
.label_909:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f1b
	.globl sub_408f1b
	.type sub_408f1b, @function
sub_408f1b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f20
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f33
	.globl sub_408f33
	.type sub_408f33, @function
sub_408f33:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f40
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_911
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_911:
	push	rax
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408f63
	.globl sub_408f63
	.type sub_408f63, @function
sub_408f63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f70

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_912
	test	rax, rax
	je	.label_913
.label_912:
	pop	rbx
	ret	
.label_913:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x408f8a
	.globl sub_408f8a
	.type sub_408f8a, @function
sub_408f8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f90

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_914
	test	rdx, rdx
	je	.label_914
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_914:
	push	rax
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408fbb
	.globl sub_408fbb
	.type sub_408fbb, @function
sub_408fbb:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fc0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	.section	.text
	.align	32
	#Procedure 0x408fca
	.globl sub_408fca
	.type sub_408fca, @function
sub_408fca:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fd0

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
	je	.label_915
	mov	qword ptr [rax], rbx
.label_915:
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
	#Procedure 0x4090bc
	.globl sub_4090bc
	.type sub_4090bc, @function
sub_4090bc:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4090c0

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
	#Procedure 0x4090f6
	.globl sub_4090f6
	.type sub_4090f6, @function
sub_4090f6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409100

	.globl xasprintf
	.type xasprintf, @function
xasprintf:
	sub	rsp, 0xd8
	test	al, al
	je	.label_916
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_916:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	lea	rsi, [rsp]
	call	xvasprintf
	add	rsp, 0xd8
	ret	
	.section	.text
	.align	32
	#Procedure 0x409192
	.globl sub_409192
	.type sub_409192, @function
sub_409192:

	nop	word ptr cs:[rax + rax]
.label_918:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_917:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091bd
	.globl sub_4091bd
	.type sub_4091bd, @function
sub_4091bd:

	nop	
.label_920:
	mov	eax, 1
	test	cl, cl
	je	.label_917
.label_919:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_917
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_918
	mov	rax, rbx
	jmp	.label_917
	.section	.text
	.align	32
	#Procedure 0x4091eb

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	call	getenv_TZ
	mov	rbx, rax
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_920
	test	cl, cl
	je	.label_919
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_919
	jmp	.label_917
	.section	.text
	.align	32
	#Procedure 0x409220
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409230

	.globl out_uint_x
	.type out_uint_x, @function
out_uint_x:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_363
	mov	ecx, OFFSET FLAT:label_921
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x409262
	.globl sub_409262
	.type sub_409262, @function
sub_409262:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409270

	.globl out_mount_point
	.type out_mount_point, @function
out_mount_point:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	al,  byte ptr [byte ptr [rip + follow_links]]
	test	al, al
	jne	.label_927
	mov	eax, 0xf000
	and	eax, dword ptr [r13 + 0x18]
	cmp	eax, 0xa000
	je	.label_923
.label_927:
	mov	rdi, r12
	call	canonicalize_file_name
	mov	rbp, rax
	test	rbp, rbp
	je	.label_925
	mov	rdi, rbp
	call	find_bind_mount
	mov	rbx, rax
	mov	rdi, rbp
	call	free
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_923
	xor	r12d, r12d
	jmp	.label_926
.label_923:
	mov	rdi, r12
	mov	rsi, r13
	call	find_mount_point
	mov	r13, rax
	mov	r12b, 1
	xor	ebx, ebx
	test	r13, r13
	mov	ebp, 0
	je	.label_926
	mov	rdi, r13
	call	find_bind_mount
	mov	rbx, rax
	xor	r12d, r12d
	mov	rbp, r13
	jmp	.label_926
.label_925:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_924
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
	call	error
	mov	r12b, 1
	xor	ebp, ebp
.label_926:
	test	rbp, rbp
	mov	edx, OFFSET FLAT:label_922
	cmovne	rdx, rbp
	test	rbx, rbx
	cmovne	rdx, rbx
	mov	rdi, r15
	mov	rsi, r14
	call	out_string
	mov	rdi, rbp
	call	free
	mov	eax, r12d
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
	#Procedure 0x40937a
	.globl sub_40937a
	.type sub_40937a, @function
sub_40937a:

	nop	word ptr [rax + rax]
.label_929:
	ret	
	.section	.text
	.align	32
	#Procedure 0x409381
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_928
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_930]]
.label_928:
	xor	eax, eax
	jmp	.label_929
	.section	.text
	.align	32
	#Procedure 0x409396
	.globl sub_409396
	.type sub_409396, @function
sub_409396:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093a0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_933
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_935:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_939
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_932
.label_939:
	cmp	r13, r12
	jb	.label_934
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_936
	add	r12, r12
	jmp	.label_938
	.section	.text
	.align	32
	#Procedure 0x409433
	.globl sub_409433
	.type sub_409433, @function
sub_409433:

	nop	word ptr cs:[rax + rax]
.label_936:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_931
.label_938:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_935
	jmp	.label_933
.label_931:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_937
.label_934:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_933
.label_932:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_937:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_933:
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
	#Procedure 0x4094a1
	.globl sub_4094a1
	.type sub_4094a1, @function
sub_4094a1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094b0

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rax
	mov	eax, r9d
	mov	r10, r8
	sub	rsp, 8
	mov	r8d, 0
	mov	r9d, 0
	push	rax
	push	r10
	push	-1
	call	__strftime_internal
	add	rsp, 0x20
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094d7
	.globl sub_4094d7
	.type sub_4094d7, @function
sub_4094d7:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094e0

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
	#Procedure 0x4094ef
	.globl sub_4094ef
	.type sub_4094ef, @function
sub_4094ef:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4094f0
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
	#Procedure 0x4094fd
	.globl sub_4094fd
	.type sub_4094fd, @function
sub_4094fd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409500

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40950a
	.globl sub_40950a
	.type sub_40950a, @function
sub_40950a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409510
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409523
	.globl sub_409523
	.type sub_409523, @function
sub_409523:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409530
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409543
	.globl sub_409543
	.type sub_409543, @function
sub_409543:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409550

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x2f
	call	__strspn_c1
	add	rax, rbx
	pop	rbx
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

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	xor	ebp, ebp
	mov	edi, OFFSET FLAT:label_457
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	test	eax, eax
	jns	.label_940
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_940:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095b3
	.globl sub_4095b3
	.type sub_4095b3, @function
sub_4095b3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_942
	cmp	byte ptr [rax], 0x43
	jne	.label_944
	cmp	byte ptr [rax + 1], 0
	je	.label_941
.label_944:
	mov	esi, OFFSET FLAT:label_943
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_942
.label_941:
	xor	ebx, ebx
.label_942:
	mov	eax, ebx
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095f1
	.globl sub_4095f1
	.type sub_4095f1, @function
sub_4095f1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409600

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_945
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_520
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409630

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_946
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_947
.label_946:
	mov	eax, ebx
.label_947:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409671
	.globl sub_409671
	.type sub_409671, @function
sub_409671:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409680

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409689
	.globl sub_409689
	.type sub_409689, @function
sub_409689:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409690

	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	test	byte ptr [rbx + 0x28], 4
	je	.label_948
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_948:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x4096c6
	.globl sub_4096c6
	.type sub_4096c6, @function
sub_4096c6:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096d0

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
	#Procedure 0x4096df
	.globl sub_4096df
	.type sub_4096df, @function
sub_4096df:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4096e0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_949
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_955
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_951:
	test	rbp, rbp
	je	.label_953
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_950
.label_953:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_956
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_952
	.section	.text
	.align	32
	#Procedure 0x409773
	.globl sub_409773
	.type sub_409773, @function
sub_409773:

	nop	word ptr cs:[rax + rax]
.label_950:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_954
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_952:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_951
.label_955:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	.section	.text
	.align	32
	#Procedure 0x4097de
	.globl sub_4097de
	.type sub_4097de, @function
sub_4097de:

	nop	
	.section	.text
	.align	32
	#Procedure 0x4097e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_957
	test	rsi, rsi
	mov	ecx, 1
	je	.label_958
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_958
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_957:
	mov	ecx, 1
.label_958:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	.section	.text
	.align	32
	#Procedure 0x40982b
	.globl sub_40982b
	.type sub_40982b, @function
sub_40982b:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409830

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_967
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_975
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_964
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_960
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_965
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_959
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_969
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_970
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_971
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_976
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_972
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_968
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_973
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_974
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_regular
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_966
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_fs
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_963
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_962
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_967:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_961
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
	#Procedure 0x409a88
	.globl sub_409a88
	.type sub_409a88, @function
sub_409a88:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409a90
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x409aa3
	.globl sub_409aa3
	.type sub_409aa3, @function
sub_409aa3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ab0

	.globl print_it
	.type print_it, @function
print_it:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	r14, rdi
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	al, byte ptr [r14]
	xor	r12d, r12d
	jmp	.label_996
	.section	.text
	.align	32
	#Procedure 0x409aee
	.globl sub_409aee
	.type sub_409aee, @function
sub_409aee:

	nop	
.label_979:
	mov	al, byte ptr [r14 + 1]
	inc	r14
.label_996:
	test	al, al
	je	.label_991
	movsx	edi, al
	cmp	edi, 0x5c
	je	.label_1003
	cmp	edi, 0x25
	jne	.label_978
	lea	r15, [r14 + 1]
	mov	esi, OFFSET FLAT:printf_flags
	mov	rdi, r15
	call	strspn
	lea	rbp, [r14 + rax]
	lea	rdi, [r14 + rax + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	lea	rbx, [rax + rbp + 1]
	cmp	byte ptr [rax + rbp + 1], 0x2e
	jne	.label_988
	lea	rdi, [rbx + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	lea	rbx, [rbx + rax + 1]
.label_988:
	mov	rbp, rbx
	sub	rbp, r15
	movsx	r13d, byte ptr [rbx]
	lea	r15, [rbp + 1]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	cmp	r13d, 0x25
	mov	r14, rbx
	je	.label_1001
	test	r13d, r13d
	jne	.label_1002
	lea	r14, [rbx - 1]
.label_1001:
	test	rbp, rbp
	jne	.label_977
	mov	edi, 0x25
	call	putchar_unlocked
	jmp	.label_979
	.section	.text
	.align	32
	#Procedure 0x409b9e
	.globl sub_409b9e
	.type sub_409b9e, @function
sub_409b9e:

	nop	
.label_1003:
	mov	al,  byte ptr [byte ptr [rip + interpret_backslash_escapes]]
	test	al, al
	je	.label_983
	movsx	edi, byte ptr [r14 + 1]
	mov	eax, edi
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_986
	add	edi, -0x30
	mov	eax, 2
	nop	word ptr cs:[rax + rax]
.label_995:
	movsx	ecx, byte ptr [r14 + rax]
	mov	edx, ecx
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_993
	lea	edi, [rcx + rdi*8 - 0x30]
	inc	rax
	lea	ecx, [rax - 1]
	cmp	ecx, 3
	jl	.label_995
.label_993:
	add	r14, rax
	call	putchar_unlocked
	dec	r14
	jmp	.label_979
.label_1002:
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	mov	edx, r13d
	mov	ecx, dword ptr [rsp + 0xc]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x18]
	and	r12b, 1
	or	r12b, al
	jmp	.label_981
.label_986:
	cmp	dil, 0x78
	jne	.label_984
	movsx	r15d, byte ptr [r14 + 2]
	mov	edi, r15d
	call	to_uchar
	movzx	ebx, al
	call	__ctype_b_loc
	mov	r13, rax
	mov	rax, qword ptr [r13]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	jne	.label_989
.label_984:
	lea	rbx, [r14 + 1]
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_992
	movsx	edi, al
	call	print_esc_char
.label_981:
	mov	r14, rbx
	jmp	.label_979
.label_992:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_998
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_983:
	mov	edi, 0x5c
	call	putchar_unlocked
	jmp	.label_979
.label_989:
	mov	eax, r15d
	add	al, 0x9f
	cmp	al, 5
	ja	.label_980
	add	r15d, -0x57
	jmp	.label_987
.label_980:
	mov	eax, r15d
	add	al, 0xbf
	cmp	al, 5
	ja	.label_985
	add	r15d, -0x37
	jmp	.label_987
.label_985:
	add	r15d, -0x30
.label_987:
	movsx	ebx, byte ptr [r14 + 3]
	mov	edi, ebx
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [r13]
	test	byte ptr [rcx + rax*2 + 1], 0x10
	jne	.label_982
	add	r14, 2
	jmp	.label_1000
.label_982:
	shl	r15d, 4
	mov	eax, ebx
	add	al, 0x9f
	cmp	al, 5
	ja	.label_994
	add	ebx, -0x57
	jmp	.label_997
.label_994:
	mov	eax, ebx
	add	al, 0xbf
	cmp	al, 5
	ja	.label_999
	add	ebx, -0x37
	jmp	.label_997
.label_999:
	add	ebx, -0x30
.label_997:
	add	r14, 3
	add	r15d, ebx
.label_1000:
	mov	edi, r15d
	nop	word ptr cs:[rax + rax]
.label_978:
	call	putchar_unlocked
	jmp	.label_979
.label_991:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + trailing_delim]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	and	r12b, 1
	mov	eax, r12d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_977:
	mov	al, byte ptr [rbx]
	mov	rbx, qword ptr [rsp]
	mov	byte ptr [rbx + rbp + 1], al
	mov	byte ptr [rbx + rbp + 2], 0
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_990
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d90

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_1009
	nop	
.label_1008:
	mov	edi, OFFSET FLAT:label_962
	call	strcmp
	test	eax, eax
	je	.label_1006
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_1008
.label_1006:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_962
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1010
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_907
	mov	ecx, OFFSET FLAT:label_908
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_1004
	mov	esi, OFFSET FLAT:label_1005
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_1004
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1013
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_1004:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1011
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_962
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_908
	mov	ecx, OFFSET FLAT:label_962
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1007
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_1012
	mov	ecx, OFFSET FLAT:label_370
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
	#Procedure 0x409eaa
	.globl sub_409eaa
	.type sub_409eaa, @function
sub_409eaa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409eb0
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
	#Procedure 0x409ec9
	.globl sub_409ec9
	.type sub_409ec9, @function
sub_409ec9:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ed0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_1014
	call	__ctype_toupper_loc
	nop	dword ptr [rax + rax]
.label_1015:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	movzx	ecx, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_1015
.label_1014:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f0d
	.globl sub_409f0d
	.type sub_409f0d, @function
sub_409f0d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409f10

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_1016
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_1016:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1017
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_1017
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_1017:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f7f
	.globl sub_409f7f
	.type sub_409f7f, @function
sub_409f7f:

	nop	
	.section	.text
	.align	32
	#Procedure 0x409f80

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
	mov	r12, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_370
	call	setlocale
	mov	edi, OFFSET FLAT:label_1027
	mov	esi, OFFSET FLAT:label_1028
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_1027
	call	textdomain
	call	localeconv
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	mov	edi, OFFSET FLAT:label_457
	cmovne	rdi, rax
	mov	qword ptr [word ptr [rip + decimal_point]],  rdi
	call	strlen
	mov	qword ptr [word ptr [rip + decimal_point_len]],  rax
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	xor	ebp, ebp
	xor	r15d, r15d
.label_1126:
	mov	r13d, eax
	mov	al, bpl
.label_1127:
	mov	bpl, al
	jmp	.label_1018
	.section	.text
	.align	32
	#Procedure 0x40a005
	.globl sub_40a005
	.type sub_40a005, @function
sub_40a005:

	nop	word ptr cs:[rax + rax]
.label_1026:
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	byte ptr [byte ptr [rip + interpret_backslash_escapes]],  bl
	mov	qword ptr [word ptr [rip + trailing_delim]],  rdx
	jmp	.label_1018
.label_1128:
	mov	bl, 1
	mov	edx, OFFSET FLAT:label_370
	jmp	.label_1026
	.section	.text
	.align	32
	#Procedure 0x40a02f
	.globl sub_40a02f
	.type sub_40a02f, @function
sub_40a02f:

	nop	
.label_1018:
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_1030
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_1032
	lea	ecx, [rax - 0x63]
	cmp	ecx, 0x1d
	ja	.label_1033
	mov	al, 1
	mov	edx, OFFSET FLAT:label_1034
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1035]]
.label_1033:
	cmp	eax, 0x4c
	jne	.label_1036
	mov	byte ptr [byte ptr [rip + follow_links]],  1
	jmp	.label_1018
.label_1032:
	cmp	eax, -1
	jne	.label_1040
	cmp	dword ptr [dword ptr [rip + optind]],  r14d
	je	.label_1020
	test	r15, r15
	mov	qword ptr [rsp], r12
	je	.label_1021
	mov	esi, OFFSET FLAT:label_1019
	mov	rdi, r15
	call	strstr
	test	rax, rax
	je	.label_1025
	call	getenv_quoting_style
.label_1025:
	mov	r12, r15
	jmp	.label_1029
.label_1021:
	xor	r12d, r12d
	test	r13b, r13b
	setne	r12b
	xor	ebx, ebx
	test	bpl, bpl
	setne	bl
	xor	edx, edx
	mov	edi, r12d
	mov	esi, ebx
	call	default_format
	mov	r15, rax
	mov	edx, 1
	mov	edi, r12d
	mov	esi, ebx
	call	default_format
	mov	r12, rax
.label_1029:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	bl, 1
	cmp	eax, r14d
	jge	.label_1038
	mov	rcx, qword ptr [rsp]
	lea	rbp, [rcx + rax*8]
	sub	r14d, eax
	mov	bl, 1
.label_1039:
	test	r13b, r13b
	mov	rdi, qword ptr [rbp]
	mov	rsi, r15
	je	.label_1022
	call	do_statfs
	jmp	.label_1023
	.section	.text
	.align	32
	#Procedure 0x40a113
	.globl sub_40a113
	.type sub_40a113, @function
sub_40a113:

	nop	word ptr cs:[rax + rax]
.label_1022:
	mov	rdx, r12
	call	do_stat
.label_1023:
	and	bl, al
	add	rbp, 8
	dec	r14d
	jne	.label_1039
.label_1038:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1040:
	cmp	eax, 0xffffff7d
	je	.label_1031
	cmp	eax, 0xffffff7e
	jne	.label_1036
	xor	edi, edi
	call	usage
.label_1031:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_962
	mov	edx, OFFSET FLAT:label_907
	mov	r8d, OFFSET FLAT:label_1037
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_1036:
	mov	edi, 1
	call	usage
.label_1020:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1024
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
	.section	.text
	.align	32
	#Procedure 0x40a1c2
	.globl sub_40a1c2
	.type sub_40a1c2, @function
sub_40a1c2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1d0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a1da
	.globl sub_40a1da
	.type sub_40a1da, @function
sub_40a1da:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	.section	.text
	.align	32
	#Procedure 0x40a1ea
	.globl sub_40a1ea
	.type sub_40a1ea, @function
sub_40a1ea:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1f0

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:label_361
	jmp	getenv
	.section	.text
	.align	32
	#Procedure 0x40a1fa
	.globl sub_40a1fa
	.type sub_40a1fa, @function
sub_40a1fa:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a200

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a209
	.globl sub_40a209
	.type sub_40a209, @function
sub_40a209:

	nop	dword ptr [rax]
.label_1046:
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	lgetfilecon
.label_1045:
	test	eax, eax
	js	.label_1043
	xor	ebx, ebx
	jmp	.label_1041
	.section	.text
	.align	32
	#Procedure 0x40a225

	.globl out_file_context
	.type out_file_context, @function
out_file_context:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	cmp	byte ptr [byte ptr [rip + follow_links]],  1
	jne	.label_1046
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	getfilecon
	jmp	.label_1045
.label_1043:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1042
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbp
	call	error
	mov	qword ptr [rsp + 8], 0
	mov	bl, 1
.label_1041:
	mov	word ptr [r15 + r14], 0x73
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	mov	edx, OFFSET FLAT:label_922
	cmovne	rdx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r15
	call	__printf_chk
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_1044
	call	freecon
.label_1044:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a2dd
	.globl sub_40a2dd
	.type sub_40a2dd, @function
sub_40a2dd:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a2e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_370
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1047
	cmovne	rax, rcx
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a305
	.globl sub_40a305
	.type sub_40a305, @function
sub_40a305:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a310
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a315
	.globl sub_40a315
	.type sub_40a315, @function
sub_40a315:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a320

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40a32e
	.globl sub_40a32e
	.type sub_40a32e, @function
sub_40a32e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40a330

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
	js	.label_1051
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1054
	cmp	r12d, 0x7fffffff
	je	.label_1049
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
	jne	.label_1052
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1052:
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
.label_1054:
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
	jbe	.label_1050
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1053
.label_1050:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1048
	mov	rdi, r14
	call	free
.label_1048:
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
.label_1053:
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
.label_1051:
	call	abort
.label_1049:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a4ed
	.globl sub_40a4ed
	.type sub_40a4ed, @function
sub_40a4ed:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a4f0

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
	#Procedure 0x40a51d
	.globl sub_40a51d
	.type sub_40a51d, @function
sub_40a51d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a520

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
	#Procedure 0x40a533
	.globl sub_40a533
	.type sub_40a533, @function
sub_40a533:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a540

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a553
	.globl sub_40a553
	.type sub_40a553, @function
sub_40a553:

	nop	word ptr cs:[rax + rax]
.label_1055:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a565
	.globl sub_40a565
	.type sub_40a565, @function
sub_40a565:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a573

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
	je	.label_1055
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
	.section	.text
	.align	32
	#Procedure 0x40a5c0

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5d3
	.globl sub_40a5d3
	.type sub_40a5d3, @function
sub_40a5d3:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5e8
	.globl sub_40a5e8
	.type sub_40a5e8, @function
sub_40a5e8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	.section	.text
	.align	32
	#Procedure 0x40a5fa
	.globl sub_40a5fa
	.type sub_40a5fa, @function
sub_40a5fa:

	nop	word ptr [rax + rax]
.label_1058:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	.section	.text
	.align	32
	#Procedure 0x40a611
	.globl sub_40a611
	.type sub_40a611, @function
sub_40a611:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a618

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1058
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1059
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_1057
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_1056
	lea	rsi, [rsp + 8]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_1056
.label_1057:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_1056
	mov	qword ptr [rsp], -1
.label_1056:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_1059
	mov	rax, qword ptr [rsp]
	jmp	.label_1060
.label_1059:
	mov	rax, -1
.label_1060:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6b8
	.globl sub_40a6b8
	.type sub_40a6b8, @function
sub_40a6b8:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6c0

	.globl default_format
	.type default_format, @function
default_format:
	push	r15
	push	r14
	push	rbx
	mov	ebx, edx
	test	dil, dil
	je	.label_1061
	test	sil, sil
	je	.label_1066
	mov	edi, OFFSET FLAT:fmt_terse_fs
	jmp	.label_1064
.label_1062:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1068
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	xstrdup
	mov	r14, rax
	xor	edi, edi
	test	bl, bl
	je	.label_1073
	mov	esi, OFFSET FLAT:label_1071
	jmp	.label_1072
.label_1061:
	test	sil, sil
	je	.label_1062
	mov	edi, OFFSET FLAT:fmt_terse_regular
	jmp	.label_1064
.label_1066:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1067
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
.label_1064:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
.label_1073:
	mov	esi, OFFSET FLAT:label_1063
.label_1072:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_1070
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	xasprintf
	mov	r15, rax
	mov	rdi, r14
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1069
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_1070
	xor	eax, eax
	mov	rsi, r15
	mov	rdx, rcx
	call	xasprintf
	mov	r14, rax
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1065
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_1070
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	xasprintf
	mov	rbx, rax
	mov	rdi, r14
	call	free
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7c5
	.globl sub_40a7c5
	.type sub_40a7c5, @function
sub_40a7c5:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7d0

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
	je	.label_1084
	mov	edx, OFFSET FLAT:label_1089
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1076
.label_1084:
	mov	edx, OFFSET FLAT:label_1078
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1076:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1083
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
	mov	esi, OFFSET FLAT:label_1079
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1085
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1086]]
.label_1359:
	add	rsp, 8
	jmp	.label_1077
.label_1085:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1092
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
	jmp	.label_1077
.label_1360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1080
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
.label_1361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1074
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
.label_1362:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1090
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
.label_1363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1087
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
	jmp	.label_1077
.label_1364:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1082
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
	jmp	.label_1077
.label_1365:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1088
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
	jmp	.label_1077
.label_1366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1091
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
	jmp	.label_1077
.label_1368:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1075
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
	jmp	.label_1077
.label_1367:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1081
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
.label_1077:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab28
	.globl sub_40ab28
	.type sub_40ab28, @function
sub_40ab28:

	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab30

	.globl out_string
	.type out_string, @function
out_string:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_1093
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	.section	.text
	.align	32
	#Procedure 0x40ab62
	.globl sub_40ab62
	.type sub_40ab62, @function
sub_40ab62:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1094
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1096:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1096
.label_1094:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1097
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_1098]], OFFSET FLAT:slot0
.label_1097:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1095
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1095:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac01
	.globl sub_40ac01
	.type sub_40ac01, @function
sub_40ac01:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac10
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1099
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_1099:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac2e
	.globl sub_40ac2e
	.type sub_40ac2e, @function
sub_40ac2e:

	nop	
.label_1104:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_1100
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40ac50
	.globl sub_40ac50
	.type sub_40ac50, @function
sub_40ac50:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac5f

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1104
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1102
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1105
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1102
	mov	esi, OFFSET FLAT:label_1103
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1101
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_1101:
	mov	rbx, r14
.label_1102:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ace0

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r12, rdi
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp], xmm0
	test	r12, r12
	je	.label_1112
	xor	ebx, ebx
	mov	rbp, r12
	nop	
.label_1108:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1107
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1111
	.section	.text
	.align	32
	#Procedure 0x40ad2a
	.globl sub_40ad2a
	.type sub_40ad2a, @function
sub_40ad2a:

	nop	word ptr [rax + rax]
.label_1107:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1111:
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	call	xsum
	mov	rbx, rax
	dec	rbp
	jne	.label_1108
	test	rbx, -0x80000000
	je	.label_1110
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	r15d, r15d
	jmp	.label_1113
.label_1112:
	mov	edi, 1
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	jmp	.label_1109
.label_1110:
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	test	r12, r12
	je	.label_1109
	nop	dword ptr [rax]
.label_1114:
	movsxd	rcx, dword ptr [r14]
	cmp	rcx, 0x28
	ja	.label_1106
	mov	rax, rcx
	add	rax, qword ptr [r14 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r14], ecx
	jmp	.label_1115
	.section	.text
	.align	32
	#Procedure 0x40adb8
	.globl sub_40adb8
	.type sub_40adb8, @function
sub_40adb8:

	nop	dword ptr [rax + rax]
.label_1106:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r14 + 8], rcx
.label_1115:
	mov	r13, qword ptr [rax]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	add	rbx, rbp
	dec	r12
	jne	.label_1114
.label_1109:
	mov	byte ptr [rbx], 0
.label_1113:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae05
	.globl sub_40ae05
	.type sub_40ae05, @function
sub_40ae05:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae10

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
	jne	.label_1116
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1116
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1117
.label_1116:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1117:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1118
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1118:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae7e
	.globl sub_40ae7e
	.type sub_40ae7e, @function
sub_40ae7e:

	nop	
	.section	.text
	.align	32
	#Procedure 0x40ae80

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	.section	.text
	.align	32
	#Procedure 0x40ae8a
	.globl sub_40ae8a
	.type sub_40ae8a, @function
sub_40ae8a:

	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae90
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	.section	.text
	.align	32
	#Procedure 0x40ae9d
	.globl sub_40ae9d
	.type sub_40ae9d, @function
sub_40ae9d:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aea0
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
	#Procedure 0x40aeb0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1119:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1119
	jmp	version_etc_arn
	.section	.text
	.align	32
	#Procedure 0x40aed1
	.globl sub_40aed1
	.type sub_40aed1, @function
sub_40aed1:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aee0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1120
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1120:
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
	#Procedure 0x40af63
	.globl sub_40af63
	.type sub_40af63, @function
sub_40af63:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40afd5
	.globl sub_40afd5
	.type sub_40afd5, @function
sub_40afd5:

	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40afe2
	.globl sub_40afe2
	.type sub_40afe2, @function
sub_40afe2:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b006
	.globl sub_40b006
	.type sub_40b006, @function
sub_40b006:

	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b019
	.globl sub_40b019
	.type sub_40b019, @function
sub_40b019:

	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b020

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40b030

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x40b03f
	.globl sub_40b03f
	.type sub_40b03f, @function
sub_40b03f:

	nop	
