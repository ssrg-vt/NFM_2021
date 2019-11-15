	.section	.text
	.align	32
	#Procedure 0x4028c0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_37
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_23
	movabs	rsi, OFFSET FLAT:label_66
	mov	qword ptr [rbp - 0x50], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_23
	mov	qword ptr [rbp - 0x58], rax
	call	textdomain
	mov	edi, 2
	mov	qword ptr [rbp - 0x60], rax
	call	initialize_exit_failure
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	movabs	rsi, 0x8000000000000000
	mov	dword ptr [dword ptr [exit_status]],  0
	mov	byte ptr [byte ptr [print_dir_name]],  1
	mov	qword ptr [word ptr [pending_dirs]],  0
	mov	qword ptr [word ptr [current_time]],  rsi
	mov	qword ptr [word ptr [label_39]],  -1
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	decode_switches
	mov	dword ptr [rbp - 0x14], eax
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_53
	call	parse_ls_color
.label_53:
	test	byte ptr [byte ptr [directories_first]],  1
	je	.label_59
	mov	byte ptr [byte ptr [check_symlink_mode]],  1
	jmp	.label_34
.label_59:
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_32
	mov	edi, 0xd
	call	is_colored
	test	al, 1
	jne	.label_67
	mov	edi, 0xe
	call	is_colored
	test	al, 1
	jne	.label_25
	jmp	.label_70
.label_25:
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_67
.label_70:
	mov	edi, 0xc
	call	is_colored
	test	al, 1
	jne	.label_20
	jmp	.label_24
.label_20:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_24
.label_67:
	mov	byte ptr [byte ptr [check_symlink_mode]],  1
.label_24:
	jmp	.label_32
.label_32:
	jmp	.label_34
.label_34:
	cmp	dword ptr [dword ptr [dereference]],  1
	jne	.label_35
	mov	al, 1
	test	byte ptr [byte ptr [immediate_dirs]],  1
	mov	byte ptr [rbp - 0x65], al
	jne	.label_40
	mov	al, 1
	cmp	dword ptr [dword ptr [indicator_style]],  3
	mov	byte ptr [rbp - 0x65], al
	je	.label_40
	cmp	dword ptr [dword ptr [format]],  0
	sete	al
	mov	byte ptr [rbp - 0x65], al
.label_40:
	mov	al, byte ptr [rbp - 0x65]
	mov	ecx, 4
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [dword ptr [dereference]],  ecx
.label_35:
	test	byte ptr [byte ptr [recursive]],  1
	je	.label_54
	mov	eax, 0x1e
	mov	edi, eax
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:dev_ino_hash
	movabs	rcx, OFFSET FLAT:dev_ino_compare
	movabs	r8, OFFSET FLAT:dev_ino_free
	call	hash_initialize
	mov	qword ptr [word ptr [active_dir_set]],  rax
	cmp	qword ptr [word ptr [active_dir_set]],  0
	jne	.label_65
	call	xalloc_die
.label_65:
	movabs	rdi, OFFSET FLAT:dev_ino_obstack
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x70], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	call	_obstack_begin
	mov	dword ptr [rbp - 0x74], eax
.label_54:
	movabs	rdi, OFFSET FLAT:label_30
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	cl, 1
	mov	qword ptr [word ptr [localtz]],  rax
	cmp	dword ptr [dword ptr [sort_type]],  4
	mov	byte ptr [rbp - 0x75], cl
	je	.label_42
	mov	al, 1
	cmp	dword ptr [dword ptr [sort_type]],  2
	mov	byte ptr [rbp - 0x75], al
	je	.label_42
	mov	al, 1
	cmp	dword ptr [dword ptr [format]],  0
	mov	byte ptr [rbp - 0x75], al
	je	.label_42
	mov	al, 1
	test	byte ptr [byte ptr [print_scontext]],  1
	mov	byte ptr [rbp - 0x75], al
	jne	.label_42
	mov	al,  byte ptr [byte ptr [print_block_size]]
	mov	byte ptr [rbp - 0x75], al
.label_42:
	mov	al, byte ptr [rbp - 0x75]
	xor	ecx, ecx
	mov	dl, cl
	and	al, 1
	mov	byte ptr [byte ptr [format_needs_stat]],  al
	test	byte ptr [byte ptr [format_needs_stat]],  1
	mov	byte ptr [rbp - 0x76], dl
	jne	.label_56
	mov	al, 1
	test	byte ptr [byte ptr [recursive]],  1
	mov	byte ptr [rbp - 0x77], al
	jne	.label_64
	mov	al, 1
	test	byte ptr [byte ptr [print_with_color]],  1
	mov	byte ptr [rbp - 0x77], al
	jne	.label_64
	mov	al, 1
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	byte ptr [rbp - 0x77], al
	jne	.label_64
	mov	al,  byte ptr [byte ptr [directories_first]]
	mov	byte ptr [rbp - 0x77], al
.label_64:
	mov	al, byte ptr [rbp - 0x77]
	mov	byte ptr [rbp - 0x76], al
.label_56:
	mov	al, byte ptr [rbp - 0x76]
	and	al, 1
	mov	byte ptr [byte ptr [format_needs_type]],  al
	test	byte ptr [byte ptr [dired]],  1
	je	.label_14
	movabs	rdi, OFFSET FLAT:dired_obstack
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x80]
	call	_obstack_begin
	movabs	rdi, OFFSET FLAT:subdired_obstack
	xor	r9d, r9d
	mov	ecx, r9d
	movabs	rdx, OFFSET FLAT:malloc
	movabs	r8, OFFSET FLAT:free
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x8c], eax
	call	_obstack_begin
	mov	dword ptr [rbp - 0x90], eax
.label_14:
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_57
	call	file_escape_init
	call	xgethostname
	mov	qword ptr [word ptr [hostname]],  rax
	cmp	qword ptr [word ptr [hostname]],  0
	jne	.label_62
	movabs	rax, OFFSET FLAT:label_37
	mov	qword ptr [word ptr [hostname]],  rax
.label_62:
	jmp	.label_57
.label_57:
	mov	eax, 0xc8
	mov	esi, eax
	mov	qword ptr [word ptr [cwd_n_alloc]],  0x64
	mov	rdi,  qword ptr [word ptr [cwd_n_alloc]]
	call	xnmalloc
	mov	qword ptr [word ptr [cwd_file]],  rax
	mov	qword ptr [word ptr [cwd_n_used]],  0
	call	clear_files
	mov	ecx, dword ptr [rbp - 8]
	sub	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x24], ecx
	cmp	dword ptr [rbp - 0x24], 0
	jg	.label_27
	test	byte ptr [byte ptr [immediate_dirs]],  1
	je	.label_31
	movabs	rdi, OFFSET FLAT:label_36
	mov	esi, 3
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 1
	movabs	r8, OFFSET FLAT:label_37
	call	gobble_file
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_46
.label_31:
	movabs	rdi, OFFSET FLAT:label_36
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	call	queue_directory
.label_46:
	jmp	.label_50
.label_27:
	jmp	.label_52
.label_52:
	xor	esi, esi
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 1
	movabs	r8, OFFSET FLAT:label_37
	mov	eax, dword ptr [rbp - 0x14]
	mov	edi, eax
	add	edi, 1
	mov	dword ptr [rbp - 0x14], edi
	movsxd	r9, eax
	mov	r10, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [r10 + r9*8]
	call	gobble_file
	mov	qword ptr [rbp - 0xa0], rax
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 8]
	jl	.label_52
	jmp	.label_50
.label_50:
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	je	.label_19
	call	sort_files
	test	byte ptr [byte ptr [immediate_dirs]],  1
	jne	.label_69
	xor	eax, eax
	mov	edi, eax
	mov	esi, 1
	call	extract_dirs_from_files
.label_69:
	jmp	.label_19
.label_19:
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	je	.label_21
	call	print_current_files
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_38
	jmp	.label_33
.label_33:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_38
.label_38:
	jmp	.label_44
.label_21:
	cmp	dword ptr [rbp - 0x24], 1
	jg	.label_18
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_18
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_18
	mov	byte ptr [byte ptr [print_dir_name]],  0
.label_18:
	jmp	.label_44
.label_44:
	jmp	.label_45
.label_45:
	cmp	qword ptr [word ptr [pending_dirs]],  0
	je	.label_58
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [pending_dirs]],  rax
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_47
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_43
	call	dev_ino_pop
	lea	rcx, [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	mov	rsi, rcx
	call	hash_delete
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_22
	jmp	.label_60
.label_22:
	movabs	rdi, OFFSET FLAT:label_29
	movabs	rsi, OFFSET FLAT:label_16
	mov	edx, 0x640
	movabs	rcx, OFFSET FLAT:label_17
	call	__assert_fail
.label_60:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	dev_ino_free
	mov	rdi, qword ptr [rbp - 0x20]
	call	free_pending_ent
	jmp	.label_45
.label_43:
	jmp	.label_47
.label_47:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x10]
	and	cl, 1
	movzx	edx, cl
	call	print_dir
	mov	rdi, qword ptr [rbp - 0x20]
	call	free_pending_ent
	mov	byte ptr [byte ptr [print_dir_name]],  1
	jmp	.label_45
.label_58:
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_49
	test	byte ptr [byte ptr [used_color]],  1
	je	.label_49
	cmp	qword ptr [word ptr [color_indicator]],  2
	jne	.label_11
	mov	rax,  qword ptr [word ptr [label_10]]
	movzx	ecx, word ptr [rax]
	sub	ecx, 0x5b1b
	setne	dl
	movzx	esi, dl
	cmp	esi, 0
	mov	dword ptr [rbp - 0xa8], ecx
	jne	.label_11
	cmp	qword ptr [word ptr [label_71]],  1
	jne	.label_11
	mov	rax,  qword ptr [word ptr [label_12]]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x6d
	je	.label_13
.label_11:
	call	restore_default_color
.label_13:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	mov	dword ptr [rbp - 0xac], eax
	call	signal_restore
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	mov	dword ptr [rbp - 0x44], eax
.label_41:
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_63
	mov	edi, 0x13
	call	raise
	mov	dword ptr [rbp - 0xb0], eax
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, -1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_41
.label_63:
	mov	eax,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	je	.label_48
	mov	edi, dword ptr [rbp - 0x44]
	call	raise
	mov	dword ptr [rbp - 0xb4], eax
.label_48:
	jmp	.label_49
.label_49:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_51
	movabs	rdi, OFFSET FLAT:label_55
	movabs	rsi, OFFSET FLAT:dired_obstack
	call	dired_dump_obstack
	movabs	rdi, OFFSET FLAT:label_61
	movabs	rsi, OFFSET FLAT:subdired_obstack
	call	dired_dump_obstack
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	call	get_quoting_style
	movabs	rdi, OFFSET FLAT:label_68
	mov	eax, eax
	mov	esi, eax
	mov	rsi,  qword ptr [word ptr [+ (rsi * 8) + quoting_style_args]]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0xb8], eax
.label_51:
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_9
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	call	hash_get_n_entries
	cmp	rax, 0
	jne	.label_26
	jmp	.label_28
.label_26:
	movabs	rdi, OFFSET FLAT:label_15
	movabs	rsi, OFFSET FLAT:label_16
	mov	edx, 0x674
	movabs	rcx, OFFSET FLAT:label_17
	call	__assert_fail
.label_28:
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	call	hash_free
.label_9:
	mov	eax,  dword ptr [dword ptr [exit_status]]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403170

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_72
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_72:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403190

	.globl decode_switches
	.type decode_switches, @function
decode_switches:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x160
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x19], 0
	mov	byte ptr [rbp - 0x1a], 0
	mov	byte ptr [byte ptr [rip + qmark_funny_chars]],  0
	mov	edi,  dword ptr [dword ptr [rip + ls_mode]]
	mov	eax, edi
	sub	eax, 1
	mov	dword ptr [rbp - 0xa8], edi
	mov	dword ptr [rbp - 0xac], eax
	je	.label_157
	jmp	.label_173
.label_173:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 2
	mov	dword ptr [rbp - 0xb0], eax
	je	.label_174
	jmp	.label_179
.label_179:
	mov	eax, dword ptr [rbp - 0xa8]
	sub	eax, 3
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_180
	jmp	.label_77
.label_174:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 7
	mov	dword ptr [dword ptr [format]],  2
	call	set_quoting_style
	jmp	.label_84
.label_180:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 7
	mov	dword ptr [dword ptr [format]],  0
	call	set_quoting_style
	jmp	.label_84
.label_157:
	mov	edi, 1
	call	isatty
	cmp	eax, 0
	je	.label_91
	xor	eax, eax
	mov	edi, eax
	mov	esi, 3
	mov	dword ptr [dword ptr [format]],  2
	call	set_quoting_style
	mov	byte ptr [byte ptr [qmark_funny_chars]],  1
	jmp	.label_99
.label_91:
	mov	dword ptr [dword ptr [format]],  1
	mov	byte ptr [byte ptr [qmark_funny_chars]],  0
.label_99:
	jmp	.label_84
.label_77:
	call	abort
.label_84:
	mov	dword ptr [dword ptr [time_type]],  0
	mov	dword ptr [dword ptr [sort_type]],  0
	mov	byte ptr [byte ptr [sort_reverse]],  0
	mov	byte ptr [byte ptr [numeric_ids]],  0
	mov	byte ptr [byte ptr [print_block_size]],  0
	mov	dword ptr [dword ptr [indicator_style]],  0
	mov	byte ptr [byte ptr [print_inode]],  0
	mov	dword ptr [dword ptr [dereference]],  1
	mov	byte ptr [byte ptr [recursive]],  0
	mov	byte ptr [byte ptr [immediate_dirs]],  0
	mov	dword ptr [dword ptr [ignore_mode]],  0
	mov	qword ptr [word ptr [ignore_patterns]],  0
	mov	qword ptr [word ptr [hide_patterns]],  0
	mov	byte ptr [byte ptr [print_scontext]],  0
	call	getenv_quoting_style
	movabs	rdi, OFFSET FLAT:label_133
	mov	qword ptr [word ptr [line_length]],  0x50
	call	getenv
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_146
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_146
	mov	rdi, qword ptr [rbp - 0x28]
	call	set_line_length
	test	al, 1
	jne	.label_146
	movabs	rdi, OFFSET FLAT:label_119
	call	gettext
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xc0], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_146:
	mov	edi, 1
	mov	eax, 0x5413
	mov	esi, eax
	lea	rdx, [rbp - 0x30]
	mov	al, 0
	call	ioctl
	cmp	eax, -1
	je	.label_140
	xor	eax, eax
	movzx	ecx, word ptr [rbp - 0x2e]
	cmp	eax, ecx
	jge	.label_140
	movzx	eax, word ptr [rbp - 0x2e]
	mov	ecx, eax
	movzx	eax, word ptr [rbp - 0x2e]
	mov	edx, eax
	cmp	rcx, rdx
	jne	.label_140
	movzx	eax, word ptr [rbp - 0x2e]
	mov	ecx, eax
	mov	qword ptr [word ptr [line_length]],  rcx
.label_140:
	movabs	rdi, OFFSET FLAT:label_182
	call	getenv
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [word ptr [tabsize]],  8
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_81
	xor	eax, eax
	mov	ecx, eax
	xor	edx, edx
	lea	rsi, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xc8], rsi
	mov	rsi, rcx
	mov	r8, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rcx, r8
	mov	r8, qword ptr [rbp - 0xd0]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_86
	cmp	qword ptr [rbp - 0x40], -1
	ja	.label_86
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [word ptr [tabsize]],  rax
	jmp	.label_96
.label_86:
	movabs	rdi, OFFSET FLAT:label_104
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd8], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xd8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_96:
	jmp	.label_81
.label_81:
	jmp	.label_93
.label_93:
	movabs	rdx, OFFSET FLAT:label_109
	movabs	rcx, OFFSET FLAT:long_options
	lea	r8, [rbp - 0x44]
	mov	dword ptr [rbp - 0x44], 0xffffffff
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], -1
	jne	.label_158
	jmp	.label_127
.label_158:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, 0x83
	mov	ecx, eax
	sub	eax, 0x113
	mov	qword ptr [rbp - 0xe0], rcx
	mov	dword ptr [rbp - 0xe4], eax
	ja	.label_130
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_138]]
	jmp	rcx
.label_2787:
	mov	dword ptr [dword ptr [ignore_mode]],  2
	jmp	.label_73
.label_2788:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 7
	call	set_quoting_style
	jmp	.label_73
.label_2789:
	mov	dword ptr [dword ptr [time_type]],  1
	jmp	.label_73
.label_2790:
	mov	byte ptr [byte ptr [immediate_dirs]],  1
	jmp	.label_73
.label_2791:
	mov	dword ptr [dword ptr [ignore_mode]],  2
	mov	dword ptr [dword ptr [sort_type]],  0xffffffff
	mov	byte ptr [rbp - 0x19], 1
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_152
	mov	edi, 1
	call	isatty
	mov	edi, 1
	mov	ecx, 2
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [dword ptr [format]],  edi
.label_152:
	mov	byte ptr [byte ptr [print_block_size]],  0
	mov	byte ptr [byte ptr [print_with_color]],  0
	mov	byte ptr [byte ptr [print_hyperlink]],  0
	jmp	.label_73
.label_2813:
	mov	dword ptr [dword ptr [indicator_style]],  2
	jmp	.label_73
.label_2792:
	mov	dword ptr [dword ptr [format]],  0
	mov	byte ptr [byte ptr [print_owner]],  0
	jmp	.label_73
.label_2793:
	mov	dword ptr [dword ptr [human_output_opts]],  0xb0
	mov	dword ptr [dword ptr [file_human_output_opts]],  0xb0
	mov	qword ptr [word ptr [output_block_size]],  1
	mov	qword ptr [word ptr [file_output_block_size]],  1
	jmp	.label_73
.label_2794:
	mov	byte ptr [byte ptr [print_inode]],  1
	jmp	.label_73
.label_2795:
	mov	byte ptr [rbp - 0x1a], 1
	jmp	.label_73
.label_2796:
	mov	dword ptr [dword ptr [format]],  0
	jmp	.label_73
.label_2797:
	mov	dword ptr [dword ptr [format]],  4
	jmp	.label_73
.label_2798:
	mov	byte ptr [byte ptr [numeric_ids]],  1
	mov	dword ptr [dword ptr [format]],  0
	jmp	.label_73
.label_2799:
	mov	dword ptr [dword ptr [format]],  0
	mov	byte ptr [byte ptr [print_group]],  0
	jmp	.label_73
.label_2800:
	mov	dword ptr [dword ptr [indicator_style]],  1
	jmp	.label_73
.label_2801:
	mov	byte ptr [byte ptr [qmark_funny_chars]],  1
	jmp	.label_73
.label_2802:
	mov	byte ptr [byte ptr [sort_reverse]],  1
	jmp	.label_73
.label_2803:
	mov	byte ptr [byte ptr [print_block_size]],  1
	jmp	.label_73
.label_2804:
	mov	dword ptr [dword ptr [sort_type]],  4
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_73
.label_2805:
	mov	dword ptr [dword ptr [time_type]],  2
	jmp	.label_73
.label_2806:
	mov	dword ptr [dword ptr [sort_type]],  3
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_73
.label_2807:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	set_line_length
	test	al, 1
	jne	.label_105
	movabs	rdi, OFFSET FLAT:label_136
	call	gettext
	mov	rdi,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xf0], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_144
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rax
	mov	al, 0
	call	error
.label_105:
	jmp	.label_73
.label_2808:
	mov	dword ptr [dword ptr [format]],  3
	jmp	.label_73
.label_2770:
	mov	dword ptr [dword ptr [ignore_mode]],  1
	jmp	.label_73
.label_2771:
	movabs	rdi, OFFSET FLAT:label_155
	call	add_ignore_pattern
	movabs	rdi, OFFSET FLAT:label_159
	call	add_ignore_pattern
	jmp	.label_73
.label_2772:
	mov	dword ptr [dword ptr [format]],  2
	jmp	.label_73
.label_2773:
	mov	byte ptr [byte ptr [dired]],  1
	jmp	.label_73
.label_2774:
	mov	dword ptr [dword ptr [indicator_style]],  3
	jmp	.label_73
.label_2775:
	mov	byte ptr [byte ptr [print_group]],  0
	jmp	.label_73
.label_2776:
	mov	dword ptr [dword ptr [dereference]],  3
	jmp	.label_73
.label_2812:
	mov	dword ptr [dword ptr [dereference]],  4
	jmp	.label_73
.label_2777:
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	add_ignore_pattern
	jmp	.label_73
.label_2778:
	mov	dword ptr [dword ptr [dereference]],  5
	jmp	.label_73
.label_2779:
	xor	eax, eax
	mov	edi, eax
	xor	esi, esi
	call	set_quoting_style
	jmp	.label_73
.label_2780:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 5
	call	set_quoting_style
	jmp	.label_73
.label_2781:
	mov	byte ptr [byte ptr [recursive]],  1
	jmp	.label_73
.label_2782:
	mov	dword ptr [dword ptr [sort_type]],  2
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_73
.label_2783:
	movabs	rdi, OFFSET FLAT:label_94
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0xf8], rax
	call	gettext
	xor	esi, esi
	xor	ecx, ecx
	mov	edx, ecx
	mov	rcx, -1
	movabs	r8, OFFSET FLAT:label_37
	mov	r9d, 2
	mov	rdi, qword ptr [rbp - 0xf8]
	mov	dword ptr [rbp - 0xfc], r9d
	mov	r9, rax
	mov	dword ptr [rsp], 2
	call	xnumtoumax
	mov	qword ptr [word ptr [tabsize]],  rax
	jmp	.label_73
.label_2784:
	mov	dword ptr [dword ptr [sort_type]],  0xffffffff
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_73
.label_2785:
	mov	dword ptr [dword ptr [sort_type]],  1
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_73
.label_2769:
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_126
	mov	dword ptr [dword ptr [format]],  1
.label_126:
	jmp	.label_73
.label_2809:
	mov	byte ptr [byte ptr [print_author]],  1
	jmp	.label_73
.label_2817:
	mov	eax, 0x10
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x50], rax
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [hide_patterns]]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [word ptr [hide_patterns]],  rax
	jmp	.label_73
.label_2823:
	movabs	rdi, OFFSET FLAT:label_90
	movabs	rdx, OFFSET FLAT:sort_args
	movabs	rax, OFFSET FLAT:sort_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + sort_types]]
	mov	dword ptr [dword ptr [sort_type]],  r10d
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_73
.label_2816:
	mov	byte ptr [byte ptr [directories_first]],  1
	jmp	.label_73
.label_2824:
	movabs	rdi, OFFSET FLAT:label_169
	movabs	rdx, OFFSET FLAT:time_args
	movabs	rax, OFFSET FLAT:time_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + time_types]]
	mov	dword ptr [dword ptr [time_type]],  r10d
	jmp	.label_73
.label_2814:
	movabs	rdi, OFFSET FLAT:label_83
	movabs	rdx, OFFSET FLAT:format_args
	movabs	rax, OFFSET FLAT:format_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + format_types]]
	mov	dword ptr [dword ptr [format]],  r10d
	jmp	.label_73
.label_2815:
	movabs	rdi, OFFSET FLAT:label_95
	mov	dword ptr [dword ptr [format]],  0
	call	bad_cast
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_73
.label_2811:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_108
	movabs	rdi, OFFSET FLAT:label_111
	movabs	rdx, OFFSET FLAT:when_args
	movabs	rax, OFFSET FLAT:when_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + when_types]]
	mov	dword ptr [rbp - 0x54], r10d
	jmp	.label_120
.label_108:
	mov	dword ptr [rbp - 0x54], 1
.label_120:
	mov	al, 1
	cmp	dword ptr [rbp - 0x54], 1
	mov	byte ptr [rbp - 0xfd], al
	je	.label_125
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x54], 2
	mov	byte ptr [rbp - 0xfe], cl
	jne	.label_132
	mov	edi, 1
	call	isatty
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0xfe], cl
.label_132:
	mov	al, byte ptr [rbp - 0xfe]
	mov	byte ptr [rbp - 0xfd], al
.label_125:
	mov	al, byte ptr [rbp - 0xfd]
	and	al, 1
	mov	byte ptr [byte ptr [print_with_color]],  al
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_143
	mov	qword ptr [word ptr [tabsize]],  0
.label_143:
	jmp	.label_73
.label_2818:
	cmp	qword ptr [word ptr [optarg]],  0
	je	.label_150
	movabs	rdi, OFFSET FLAT:label_153
	movabs	rdx, OFFSET FLAT:when_args
	movabs	rax, OFFSET FLAT:when_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + when_types]]
	mov	dword ptr [rbp - 0x58], r10d
	jmp	.label_166
.label_150:
	mov	dword ptr [rbp - 0x58], 1
.label_166:
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 1
	mov	byte ptr [rbp - 0xff], al
	je	.label_172
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x58], 2
	mov	byte ptr [rbp - 0x100], cl
	jne	.label_177
	mov	edi, 1
	call	isatty
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x100], cl
.label_177:
	mov	al, byte ptr [rbp - 0x100]
	mov	byte ptr [rbp - 0xff], al
.label_172:
	mov	al, byte ptr [rbp - 0xff]
	and	al, 1
	mov	byte ptr [byte ptr [print_hyperlink]],  al
	jmp	.label_73
.label_2819:
	movabs	rdi, OFFSET FLAT:label_85
	movabs	rdx, OFFSET FLAT:indicator_style_args
	movabs	rax, OFFSET FLAT:indicator_style_types
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	mov	r10d,  dword ptr [dword ptr [+ (rax * 4) + indicator_style_types]]
	mov	dword ptr [dword ptr [indicator_style]],  r10d
	jmp	.label_73
.label_2820:
	movabs	rdi, OFFSET FLAT:label_102
	movabs	rdx, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	r8d, ecx
	mov	rsi,  qword ptr [word ptr [optarg]]
	mov	r9,  qword ptr [word ptr [argmatch_die]]
	mov	rcx, rax
	call	__xargmatch_internal
	xor	r10d, r10d
	mov	edi, r10d
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + quoting_style_vals]]
	call	set_quoting_style
	jmp	.label_73
.label_2825:
	mov	rax,  qword ptr [word ptr [optarg]]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_73
.label_2821:
	mov	byte ptr [byte ptr [qmark_funny_chars]],  0
	jmp	.label_73
.label_2810:
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	rdi,  qword ptr [word ptr [optarg]]
	call	human_options
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	je	.label_134
	xor	edx, edx
	movabs	rcx, OFFSET FLAT:long_options
	mov	edi, dword ptr [rbp - 0x5c]
	mov	esi, dword ptr [rbp - 0x44]
	mov	r8,  qword ptr [word ptr [optarg]]
	call	xstrtol_fatal
.label_134:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	mov	dword ptr [dword ptr [file_human_output_opts]],  eax
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	mov	qword ptr [word ptr [file_output_block_size]],  rcx
	jmp	.label_73
.label_2822:
	mov	dword ptr [dword ptr [human_output_opts]],  0x90
	mov	dword ptr [dword ptr [file_human_output_opts]],  0x90
	mov	qword ptr [word ptr [output_block_size]],  1
	mov	qword ptr [word ptr [file_output_block_size]],  1
	jmp	.label_73
.label_2786:
	mov	byte ptr [byte ptr [print_scontext]],  1
	jmp	.label_73
.label_2768:
	xor	edi, edi
	call	usage
.label_2767:
	mov	rdi,  qword ptr [word ptr [stdout]]
	cmp	dword ptr [dword ptr [ls_mode]],  1
	mov	qword ptr [rbp - 0x108], rdi
	jne	.label_163
	movabs	rax, OFFSET FLAT:label_167
	mov	qword ptr [rbp - 0x110], rax
	jmp	.label_168
.label_163:
	movabs	rax, OFFSET FLAT:label_175
	movabs	rcx, OFFSET FLAT:label_176
	cmp	dword ptr [dword ptr [ls_mode]],  2
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
.label_168:
	mov	rax, qword ptr [rbp - 0x110]
	movabs	rdx, OFFSET FLAT:label_74
	movabs	r8, OFFSET FLAT:label_75
	movabs	r9, OFFSET FLAT:label_76
	xor	ecx, ecx
	mov	esi, ecx
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	rdi, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_130:
	mov	edi, 2
	call	usage
.label_73:
	jmp	.label_93
.label_127:
	cmp	qword ptr [word ptr [output_block_size]],  0
	jne	.label_101
	movabs	rdi, OFFSET FLAT:label_100
	call	getenv
	movabs	rsi, OFFSET FLAT:human_output_opts
	movabs	rdx, OFFSET FLAT:output_block_size
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	human_options
	cmp	qword ptr [rbp - 0x68], 0
	mov	dword ptr [rbp - 0x11c], eax
	jne	.label_113
	movabs	rdi, OFFSET FLAT:label_115
	call	getenv
	cmp	rax, 0
	je	.label_118
.label_113:
	mov	eax,  dword ptr [dword ptr [human_output_opts]]
	mov	dword ptr [dword ptr [file_human_output_opts]],  eax
	mov	rcx,  qword ptr [word ptr [output_block_size]]
	mov	qword ptr [word ptr [file_output_block_size]],  rcx
.label_118:
	test	byte ptr [rbp - 0x1a], 1
	je	.label_124
	mov	dword ptr [dword ptr [human_output_opts]],  0
	mov	qword ptr [word ptr [output_block_size]],  0x400
.label_124:
	jmp	.label_101
.label_101:
	xor	eax, eax
	mov	edi, eax
	mov	eax, 3
	mov	ecx, eax
	mov	rax,  qword ptr [word ptr [line_length]]
	xor	edx, edx
	div	rcx
	mov	qword ptr [word ptr [max_idx]],  rax
	mov	rax,  qword ptr [word ptr [line_length]]
	xor	esi, esi
	mov	edx, esi
	div	rcx
	cmp	rdx, 0
	setne	r8b
	and	r8b, 1
	movzx	esi, r8b
	movsxd	rcx, esi
	add	rcx,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [word ptr [max_idx]],  rcx
	call	get_quoting_style
	xor	esi, esi
	mov	r8b, sil
	mov	dword ptr [rbp - 0x6c], eax
	cmp	dword ptr [dword ptr [format]],  4
	mov	byte ptr [rbp - 0x11d], r8b
	je	.label_151
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [format]],  1
	mov	byte ptr [rbp - 0x11d], cl
	je	.label_151
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_162
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [dword ptr [format]],  0
	mov	byte ptr [rbp - 0x11d], cl
	jne	.label_151
.label_162:
	mov	al, 1
	cmp	dword ptr [rbp - 0x6c], 1
	mov	byte ptr [rbp - 0x11e], al
	je	.label_170
	mov	al, 1
	cmp	dword ptr [rbp - 0x6c], 3
	mov	byte ptr [rbp - 0x11e], al
	je	.label_170
	cmp	dword ptr [rbp - 0x6c], 6
	sete	al
	mov	byte ptr [rbp - 0x11e], al
.label_170:
	mov	al, byte ptr [rbp - 0x11e]
	mov	byte ptr [rbp - 0x11d], al
.label_151:
	mov	al, byte ptr [rbp - 0x11d]
	xor	ecx, ecx
	mov	edi, ecx
	and	al, 1
	mov	byte ptr [byte ptr [align_variable_outer_quotes]],  al
	call	clone_quoting_options
	mov	qword ptr [word ptr [filename_quoting_options]],  rax
	cmp	dword ptr [rbp - 0x6c], 7
	jne	.label_116
	mov	esi, 0x20
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	call	set_char_quoting
	mov	dword ptr [rbp - 0x124], eax
.label_116:
	mov	eax, 2
	cmp	eax,  dword ptr [dword ptr [indicator_style]]
	ja	.label_89
	movabs	rax, OFFSET FLAT:label_92
	mov	ecx,  dword ptr [dword ptr [indicator_style]]
	sub	ecx, 2
	mov	ecx, ecx
	mov	edx, ecx
	add	rax, rdx
	mov	qword ptr [rbp - 0x78], rax
.label_112:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	byte ptr [rax], 0
	je	.label_123
	mov	edx, 1
	mov	rdi,  qword ptr [word ptr [filename_quoting_options]]
	mov	rax, qword ptr [rbp - 0x78]
	movsx	esi, byte ptr [rax]
	call	set_char_quoting
	mov	dword ptr [rbp - 0x128], eax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_112
.label_123:
	jmp	.label_89
.label_89:
	xor	eax, eax
	mov	edi, eax
	call	clone_quoting_options
	mov	esi, 0x3a
	mov	edx, 1
	mov	qword ptr [word ptr [dirname_quoting_options]],  rax
	mov	rdi,  qword ptr [word ptr [dirname_quoting_options]]
	call	set_char_quoting
	test	byte ptr [byte ptr [dired]],  1
	mov	dword ptr [rbp - 0x12c], eax
	je	.label_121
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_128
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_121
.label_128:
	mov	byte ptr [byte ptr [dired]],  0
.label_121:
	cmp	dword ptr [dword ptr [time_type]],  1
	je	.label_137
	cmp	dword ptr [dword ptr [time_type]],  2
	jne	.label_145
.label_137:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_145
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_145
	mov	dword ptr [dword ptr [sort_type]],  4
.label_145:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_148
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_110
	movabs	rdi, OFFSET FLAT:label_154
	call	getenv
	mov	qword ptr [rbp - 0x80], rax
	cmp	rax, 0
	jne	.label_149
	movabs	rdi, OFFSET FLAT:label_161
	call	bad_cast
	mov	qword ptr [rbp - 0x80], rax
.label_149:
	jmp	.label_110
.label_110:
	jmp	.label_165
.label_165:
	movabs	rsi, OFFSET FLAT:decode_switches.posix_prefix
	mov	eax, 6
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x80]
	call	strncmp
	cmp	eax, 0
	jne	.label_129
	mov	edi, 2
	call	hard_locale
	test	al, 1
	jne	.label_178
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_135
.label_178:
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 6
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_165
.label_129:
	mov	rax, qword ptr [rbp - 0x80]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_82
	mov	esi, 0xa
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rdi, qword ptr [rbp - 0x88]
	call	strchr
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_88
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_141
.label_88:
	mov	esi, 0xa
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	rdi, rax
	call	strchr
	cmp	rax, 0
	je	.label_103
	movabs	rdi, OFFSET FLAT:label_106
	call	gettext
	mov	rdi, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x138], rax
	call	quote
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x138]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_103:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x90], rcx
	mov	byte ptr [rax], 0
.label_141:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [word ptr [long_time_format]],  rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [word ptr [label_79]],  rax
	jmp	.label_107
.label_82:
	movabs	rsi, OFFSET FLAT:time_style_args
	movabs	rax, OFFSET FLAT:time_style_types
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, rax
	call	argmatch
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jge	.label_139
	movabs	rdi, OFFSET FLAT:label_142
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x98]
	call	argmatch_invalid
	movabs	rdi, OFFSET FLAT:label_147
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdx, OFFSET FLAT:time_style_args
	mov	qword ptr [rbp - 0xa0], rdx
	mov	dword ptr [rbp - 0x13c], eax
.label_171:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	qword ptr [rax], 0
	je	.label_156
	movabs	rsi, OFFSET FLAT:label_160
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rdx, qword ptr [rax]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x140], eax
	jmp	.label_171
.label_156:
	movabs	rdi, OFFSET FLAT:label_131
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	edi, 2
	mov	dword ptr [rbp - 0x144], eax
	call	usage
.label_139:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, rax
	sub	rcx, 3
	mov	qword ptr [rbp - 0x150], rax
	mov	qword ptr [rbp - 0x158], rcx
	ja	.label_80
	mov	rax, qword ptr [rbp - 0x150]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_164]]
	jmp	rcx
.label_2937:
	movabs	rax, OFFSET FLAT:label_87
	mov	qword ptr [word ptr [label_79]],  rax
	mov	qword ptr [word ptr [long_time_format]],  rax
	jmp	.label_80
.label_2938:
	movabs	rax, OFFSET FLAT:label_78
	mov	qword ptr [word ptr [label_79]],  rax
	mov	qword ptr [word ptr [long_time_format]],  rax
	jmp	.label_80
.label_2939:
	movabs	rax, OFFSET FLAT:label_97
	movabs	rcx, OFFSET FLAT:label_98
	mov	qword ptr [word ptr [long_time_format]],  rcx
	mov	qword ptr [word ptr [label_79]],  rax
	jmp	.label_80
.label_2940:
	mov	edi, 2
	call	hard_locale
	test	al, 1
	jne	.label_181
	jmp	.label_114
.label_181:
	mov	dword ptr [rbp - 0xa4], 0
.label_122:
	cmp	dword ptr [rbp - 0xa4], 2
	jge	.label_117
	xor	eax, eax
	mov	edi, eax
	mov	edx, 2
	movsxd	rcx, dword ptr [rbp - 0xa4]
	mov	rsi,  qword ptr [word ptr [+ (rcx * 8) + long_time_format]]
	call	dcgettext
	movsxd	rcx, dword ptr [rbp - 0xa4]
	mov	qword ptr [word ptr [+ (rcx * 8) + long_time_format]],  rax
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_122
.label_117:
	jmp	.label_114
.label_114:
	jmp	.label_80
.label_80:
	jmp	.label_107
.label_107:
	call	abformat_init
.label_148:
	mov	eax,  dword ptr [dword ptr [optind]]
	mov	dword ptr [rbp - 4], eax
.label_135:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x160
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404540

	.globl parse_ls_color
	.type parse_ls_color, @function
parse_ls_color:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	movabs	rdi, OFFSET FLAT:label_199
	call	getenv
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	je	.label_207
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_208
.label_207:
	movabs	rdi, OFFSET FLAT:label_198
	call	getenv
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_185
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_187
.label_185:
	call	known_term_type
	test	al, 1
	jne	.label_187
	mov	byte ptr [byte ptr [print_with_color]],  0
.label_187:
	jmp	.label_194
.label_208:
	lea	rdi, [rbp - 0x17]
	mov	qword ptr [rbp - 0x20], 0
	mov	eax, OFFSET FLAT:label_196
	mov	esi, eax
	call	strcpy
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x48], rax
	call	xstrdup
	mov	qword ptr [word ptr [color_buf]],  rax
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x2c], 1
.label_195:
	mov	eax, dword ptr [rbp - 0x2c]
	dec	eax
	mov	ecx, eax
	sub	eax, 5
	mov	qword ptr [rbp - 0x50], rcx
	mov	dword ptr [rbp - 0x54], eax
	ja	.label_209
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_186]]
	jmp	rcx
.label_2941:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x58], ecx
	je	.label_189
	jmp	.label_191
.label_191:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x2a
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_192
	jmp	.label_184
.label_184:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x60], eax
	jne	.label_201
	jmp	.label_205
.label_205:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_200
.label_192:
	mov	eax, 0x28
	mov	edi, eax
	call	xmalloc
	lea	rdi, [rbp - 0x10]
	lea	rsi, [rbp - 8]
	mov	edx, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [color_ext_list]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [color_ext_list]],  rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rcx, qword ptr [rbp - 0x20]
	call	get_funky_string
	mov	edx, 6
	mov	r8d, 4
	test	al, 1
	cmovne	edx, r8d
	mov	dword ptr [rbp - 0x2c], edx
	jmp	.label_200
.label_189:
	mov	dword ptr [rbp - 0x2c], 5
	jmp	.label_206
.label_201:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x17], dl
	mov	dword ptr [rbp - 0x2c], 2
.label_200:
	jmp	.label_188
	.section	.text
	.align	32
	#Procedure 0x404980

	.globl is_colored
	.type is_colored, @function
is_colored:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, 1
	movabs	rcx, OFFSET FLAT:color_indicator
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	mov	edx, edi
	shl	rdx, 4
	mov	rsi, rcx
	add	rsi, rdx
	mov	rdx, qword ptr [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	edx, edi
	shl	rdx, 4
	add	rcx, rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x18], rcx
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x19], al
	je	.label_221
	cmp	qword ptr [rbp - 0x10], 1
	jne	.label_225
	movabs	rsi, OFFSET FLAT:label_224
	mov	eax, 1
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_221
.label_225:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 2
	mov	byte ptr [rbp - 0x1a], cl
	jne	.label_222
	movabs	rsi, OFFSET FLAT:label_223
	mov	eax, 2
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x1a], cl
.label_222:
	mov	al, byte ptr [rbp - 0x1a]
	mov	byte ptr [rbp - 0x19], al
.label_221:
	mov	al, byte ptr [rbp - 0x19]
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a50

	.globl dev_ino_hash
	.type dev_ino_hash, @function
dev_ino_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a80

	.globl dev_ino_compare
	.type dev_ino_compare, @function
dev_ino_compare:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_226
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	sete	dl
	mov	byte ptr [rbp - 0x21], dl
.label_226:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404af0

	.globl dev_ino_free
	.type dev_ino_free, @function
dev_ino_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b10

	.globl file_escape_init
	.type file_escape_init, @function
file_escape_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], 0
.label_228:
	cmp	dword ptr [rbp - 4], 0x100
	jge	.label_229
	mov	edi, dword ptr [rbp - 4]
	call	c_isalnum
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 5], cl
	jne	.label_227
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x7e
	mov	byte ptr [rbp - 5], al
	je	.label_227
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x2d
	mov	byte ptr [rbp - 5], al
	je	.label_227
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x2e
	mov	byte ptr [rbp - 5], al
	je	.label_227
	cmp	dword ptr [rbp - 4], 0x5f
	sete	al
	mov	byte ptr [rbp - 5], al
.label_227:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, dword ptr [rbp - 4]
	movsx	esi,  byte ptr [byte ptr [+ (rdx * 1) + RFC3986]]
	or	esi, ecx
	mov	al, sil
	mov	byte ptr [byte ptr [+ (rdx * 1) + RFC3986]],  al
	mov	eax, dword ptr [rbp - 4]
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
	jmp	.label_228
.label_229:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404bb0

	.globl clear_files
	.type clear_files, @function
clear_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], 0
.label_231:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_230
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_ent
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_231
.label_230:
	mov	qword ptr [word ptr [cwd_n_used]],  0
	mov	byte ptr [byte ptr [cwd_some_quoted]],  0
	mov	byte ptr [byte ptr [any_has_acl]],  0
	mov	dword ptr [dword ptr [inode_number_width]],  0
	mov	dword ptr [dword ptr [block_size_width]],  0
	mov	dword ptr [dword ptr [nlink_width]],  0
	mov	dword ptr [dword ptr [owner_width]],  0
	mov	dword ptr [dword ptr [group_width]],  0
	mov	dword ptr [dword ptr [author_width]],  0
	mov	dword ptr [dword ptr [scontext_width]],  0
	mov	dword ptr [dword ptr [major_device_number_width]],  0
	mov	dword ptr [dword ptr [minor_device_number_width]],  0
	mov	dword ptr [dword ptr [file_size_width]],  0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c90

	.globl gobble_file
	.type gobble_file, @function
gobble_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x6e0
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], 0
	test	byte ptr [rbp - 0x21], 1
	je	.label_297
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_272
.label_297:
	jmp	.label_276
.label_272:
	movabs	rdi, OFFSET FLAT:label_277
	movabs	rsi, OFFSET FLAT:label_16
	mov	edx, 0xc2f
	movabs	rcx, OFFSET FLAT:label_278
	call	__assert_fail
.label_276:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	cmp	rax,  qword ptr [word ptr [cwd_n_alloc]]
	jne	.label_286
	mov	eax, 0x190
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [cwd_file]]
	mov	rsi,  qword ptr [word ptr [cwd_n_alloc]]
	mov	rdi, rcx
	call	xnrealloc
	mov	qword ptr [word ptr [cwd_file]],  rax
	mov	rax,  qword ptr [word ptr [cwd_n_alloc]]
	shl	rax, 1
	mov	qword ptr [word ptr [cwd_n_alloc]],  rax
.label_286:
	xor	esi, esi
	mov	eax, 0xc8
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	imul	rcx, rcx, 0xc8
	add	rcx,  qword ptr [word ptr [cwd_file]]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	qword ptr [rdx + 0x20], rcx
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dword ptr [rcx + 0xa8], eax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dword ptr [rcx + 0xc4], 0xffffffff
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	jne	.label_301
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	je	.label_301
	mov	rdi, qword ptr [rbp - 0x10]
	call	needs_quoting
	and	al, 1
	movzx	ecx, al
	mov	rdi, qword ptr [rbp - 0x40]
	mov	dword ptr [rdi + 0xc4], ecx
	mov	rdi, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdi + 0xc4], 0
	je	.label_316
	mov	byte ptr [byte ptr [cwd_some_quoted]],  1
.label_316:
	jmp	.label_301
.label_301:
	test	byte ptr [rbp - 0x21], 1
	jne	.label_236
	test	byte ptr [byte ptr [print_hyperlink]],  1
	jne	.label_236
	test	byte ptr [byte ptr [format_needs_stat]],  1
	jne	.label_236
	cmp	dword ptr [rbp - 0x14], 3
	jne	.label_239
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_239
	mov	edi, 0x13
	call	is_colored
	test	al, 1
	jne	.label_236
	mov	edi, 0x12
	call	is_colored
	test	al, 1
	jne	.label_236
	mov	edi, 0x14
	call	is_colored
	test	al, 1
	jne	.label_236
.label_239:
	test	byte ptr [byte ptr [print_inode]],  1
	jne	.label_251
	test	byte ptr [byte ptr [format_needs_type]],  1
	je	.label_257
.label_251:
	cmp	dword ptr [rbp - 0x14], 6
	je	.label_258
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_257
.label_258:
	cmp	dword ptr [dword ptr [dereference]],  5
	je	.label_236
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_236
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	jne	.label_236
.label_257:
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_295
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_236
.label_295:
	test	byte ptr [byte ptr [format_needs_type]],  1
	je	.label_279
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_236
	test	byte ptr [rbp - 0x21], 1
	jne	.label_236
	cmp	dword ptr [rbp - 0x14], 5
	jne	.label_279
	cmp	dword ptr [dword ptr [indicator_style]],  3
	je	.label_236
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_279
	mov	edi, 0xe
	call	is_colored
	test	al, 1
	jne	.label_236
	mov	edi, 0x10
	call	is_colored
	test	al, 1
	jne	.label_236
	mov	edi, 0x11
	call	is_colored
	test	al, 1
	jne	.label_236
	mov	edi, 0x15
	call	is_colored
	test	al, 1
	jne	.label_236
	jmp	.label_279
.label_236:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_299
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_303
.label_299:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_306
.label_303:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x6b0], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x6b0]
	lea	rax, [rdi + rax + 0x11]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x48], rcx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	call	attach
.label_306:
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_245
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x48]
	call	canonicalize_filename_mode
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_232
	movabs	rdi, OFFSET FLAT:label_238
	mov	al, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x6b1], al
	call	gettext
	mov	rdx, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rbp - 0x6b1]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_232:
	jmp	.label_245
.label_245:
	mov	eax,  dword ptr [dword ptr [rip + dereference]]
	mov	ecx, eax
	add	ecx, -3
	sub	ecx, 2
	mov	dword ptr [rbp - 0x6b8], eax
	mov	dword ptr [rbp - 0x6bc], ecx
	jb	.label_246
	jmp	.label_252
.label_252:
	mov	eax, dword ptr [rbp - 0x6b8]
	sub	eax, 5
	mov	dword ptr [rbp - 0x6c0], eax
	jne	.label_255
	jmp	.label_259
.label_259:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x18
	mov	rsi, rax
	call	stat
	mov	dword ptr [rbp - 0x50], eax
	mov	byte ptr [rbp - 0x49], 1
	jmp	.label_265
.label_246:
	test	byte ptr [rbp - 0x21], 1
	je	.label_267
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x18
	mov	rsi, rax
	call	stat
	mov	dword ptr [rbp - 0x50], eax
	mov	byte ptr [rbp - 0x49], 1
	cmp	dword ptr [dword ptr [dereference]],  3
	jne	.label_274
	jmp	.label_265
.label_274:
	cmp	dword ptr [rbp - 0x50], 0
	jge	.label_281
	call	__errno_location
	cmp	dword ptr [rax], 2
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x6c4], edx
	jmp	.label_284
.label_281:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	sete	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 0x6c4], ecx
.label_284:
	mov	eax, dword ptr [rbp - 0x6c4]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x51], cl
	test	byte ptr [rbp - 0x51], 1
	jne	.label_290
	jmp	.label_265
.label_290:
	jmp	.label_267
.label_267:
	jmp	.label_255
.label_255:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0x18
	mov	rsi, rax
	call	lstat
	mov	dword ptr [rbp - 0x50], eax
	mov	byte ptr [rbp - 0x49], 0
.label_265:
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_300
	movabs	rdi, OFFSET FLAT:label_302
	mov	al, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x6c5], al
	call	gettext
	mov	rdx, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rbp - 0x6c5]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	test	byte ptr [rbp - 0x21], 1
	je	.label_310
	mov	qword ptr [rbp - 8], 0
	jmp	.label_312
.label_310:
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	add	rax, 1
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	mov	qword ptr [rbp - 8], 0
	jmp	.label_312
.label_300:
	mov	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rax + 0xb8], 1
	cmp	dword ptr [rbp - 0x14], 5
	je	.label_321
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	jne	.label_235
.label_321:
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_235
	mov	edi, 0x15
	call	is_colored
	test	al, 1
	jne	.label_298
	jmp	.label_235
.label_298:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	has_capability_cache
	mov	rsi, qword ptr [rbp - 0x40]
	and	al, 1
	mov	byte ptr [rsi + 0xc0], al
.label_235:
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_250
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_254
.label_250:
	mov	byte ptr [rbp - 0x52], 0
	mov	byte ptr [rbp - 0x53], 0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	al, byte ptr [rbp - 0x49]
	and	al, 1
	movzx	edx, al
	call	getfilecon_cache
	mov	dword ptr [rbp - 0x58], eax
	cmp	dword ptr [rbp - 0x58], 0
	setl	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_263
	call	is_smack_enabled
	test	al, 1
	jne	.label_256
	jmp	.label_273
.label_256:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax + 0xb0]
	mov	ecx, OFFSET FLAT:label_275
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x52], dl
	jmp	.label_280
.label_273:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rax + 0xb0]
	mov	ecx, OFFSET FLAT:label_285
	mov	edi, ecx
	call	strcmp
	cmp	eax, 0
	sete	dl
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 0x52], dl
.label_280:
	jmp	.label_288
.label_263:
	movabs	rax, OFFSET FLAT:UNKNOWN_SECURITY_CONTEXT
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0xb0], rax
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	is_ENOTSUP
	test	al, 1
	jne	.label_292
	call	__errno_location
	cmp	dword ptr [rax], 0x3d
	jne	.label_294
.label_292:
	mov	dword ptr [rbp - 0x50], 0
.label_294:
	jmp	.label_288
.label_288:
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_261
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_261
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	call	file_has_acl_cache
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setl	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x50], eax
	cmp	ecx, dword ptr [rbp - 0x5c]
	setl	dl
	and	dl, 1
	mov	byte ptr [rbp - 0x53], dl
.label_261:
	test	byte ptr [rbp - 0x52], 1
	jne	.label_311
	test	byte ptr [rbp - 0x53], 1
	jne	.label_311
	xor	eax, eax
	mov	dword ptr [rbp - 0x6cc], eax
	jmp	.label_314
.label_311:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x52], 1
	mov	byte ptr [rbp - 0x6cd], cl
	je	.label_317
	mov	al, byte ptr [rbp - 0x53]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x6cd], al
.label_317:
	mov	al, byte ptr [rbp - 0x6cd]
	mov	ecx, 2
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0x6cc], ecx
.label_314:
	mov	eax, dword ptr [rbp - 0x6cc]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	dword ptr [rcx + 0xbc], eax
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rcx + 0xbc], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	mov	dl,  byte ptr [byte ptr [any_has_acl]]
	and	dl, 1
	movzx	esi, dl
	or	esi, eax
	cmp	esi, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [byte ptr [any_has_acl]],  dl
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_233
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x6d4], ecx
	call	quotearg_n_style_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_253
	mov	esi, dword ptr [rbp - 0x6d4]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_233:
	jmp	.label_254
.label_254:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_260
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_266
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	je	.label_260
.label_266:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	edx, al
	call	get_link_name
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rsi + 8]
	call	make_link_name
	mov	qword ptr [rbp - 0xf8], rax
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_283
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0xc4], 0
	jne	.label_283
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 8]
	call	needs_quoting
	test	al, 1
	jne	.label_289
	jmp	.label_283
.label_289:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xc4], 0xffffffff
.label_283:
	cmp	qword ptr [rbp - 0xf8], 0
	je	.label_291
	mov	eax, 2
	cmp	eax,  dword ptr [dword ptr [indicator_style]]
	jbe	.label_293
	test	byte ptr [byte ptr [check_symlink_mode]],  1
	je	.label_291
.label_293:
	lea	rsi, [rbp - 0xf0]
	mov	rdi, qword ptr [rbp - 0xf8]
	call	stat
	cmp	eax, 0
	jne	.label_291
	mov	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rax + 0xb9], 1
	mov	ecx, dword ptr [rbp - 0xd8]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xac], ecx
.label_291:
	mov	rdi, qword ptr [rbp - 0xf8]
	call	free
.label_260:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_309
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 6
	jmp	.label_241
.label_309:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	jne	.label_318
	test	byte ptr [rbp - 0x21], 1
	je	.label_320
	test	byte ptr [byte ptr [immediate_dirs]],  1
	jne	.label_320
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 9
	jmp	.label_234
.label_320:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 3
.label_234:
	jmp	.label_240
.label_318:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax + 0xa8], 5
.label_240:
	jmp	.label_241
.label_241:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_243
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_247
.label_243:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x390]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	xor	esi, esi
	mov	rdi, rax
	call	gnu_mbswidth
	mov	dword ptr [rbp - 0x394], eax
	mov	eax,  dword ptr [dword ptr [block_size_width]]
	cmp	eax, dword ptr [rbp - 0x394]
	jge	.label_262
	mov	eax, dword ptr [rbp - 0x394]
	mov	dword ptr [dword ptr [block_size_width]],  eax
.label_262:
	jmp	.label_247
.label_247:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_307
	test	byte ptr [byte ptr [print_owner]],  1
	je	.label_270
	mov	rax, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rax + 0x34]
	call	format_user_width
	mov	dword ptr [rbp - 0x398], eax
	mov	eax,  dword ptr [dword ptr [owner_width]]
	cmp	eax, dword ptr [rbp - 0x398]
	jge	.label_304
	mov	eax, dword ptr [rbp - 0x398]
	mov	dword ptr [dword ptr [owner_width]],  eax
.label_304:
	jmp	.label_270
.label_270:
	test	byte ptr [byte ptr [print_group]],  1
	je	.label_268
	mov	rax, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rax + 0x38]
	call	format_group_width
	mov	dword ptr [rbp - 0x39c], eax
	mov	eax,  dword ptr [dword ptr [group_width]]
	cmp	eax, dword ptr [rbp - 0x39c]
	jge	.label_249
	mov	eax, dword ptr [rbp - 0x39c]
	mov	dword ptr [dword ptr [group_width]],  eax
.label_249:
	jmp	.label_268
.label_268:
	test	byte ptr [byte ptr [print_author]],  1
	je	.label_296
	mov	rax, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rax + 0x34]
	call	format_user_width
	mov	dword ptr [rbp - 0x3a0], eax
	mov	eax,  dword ptr [dword ptr [author_width]]
	cmp	eax, dword ptr [rbp - 0x3a0]
	jge	.label_271
	mov	eax, dword ptr [rbp - 0x3a0]
	mov	dword ptr [dword ptr [author_width]],  eax
.label_271:
	jmp	.label_296
.label_296:
	jmp	.label_307
.label_307:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_308
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0xb0]
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3a4], ecx
	mov	ecx,  dword ptr [dword ptr [scontext_width]]
	cmp	ecx, dword ptr [rbp - 0x3a4]
	jge	.label_315
	mov	eax, dword ptr [rbp - 0x3a4]
	mov	dword ptr [dword ptr [scontext_width]],  eax
.label_315:
	jmp	.label_308
.label_308:
	cmp	dword ptr [dword ptr [format]],  0
	jne	.label_313
	lea	rsi, [rbp - 0x3c0]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x28]
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3c4], ecx
	mov	ecx,  dword ptr [dword ptr [nlink_width]]
	cmp	ecx, dword ptr [rbp - 0x3c4]
	jge	.label_264
	mov	eax, dword ptr [rbp - 0x3c4]
	mov	dword ptr [dword ptr [nlink_width]],  eax
.label_264:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	je	.label_244
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	jne	.label_248
.label_244:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x40]
	call	gnu_dev_major
	lea	rsi, [rbp - 0x3e0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3e4], ecx
	mov	ecx,  dword ptr [dword ptr [major_device_number_width]]
	cmp	ecx, dword ptr [rbp - 0x3e4]
	jge	.label_269
	mov	eax, dword ptr [rbp - 0x3e4]
	mov	dword ptr [dword ptr [major_device_number_width]],  eax
.label_269:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x40]
	call	gnu_dev_minor
	lea	rsi, [rbp - 0x3e0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3e4], ecx
	mov	ecx,  dword ptr [dword ptr [minor_device_number_width]]
	cmp	ecx, dword ptr [rbp - 0x3e4]
	jge	.label_282
	mov	eax, dword ptr [rbp - 0x3e4]
	mov	dword ptr [dword ptr [minor_device_number_width]],  eax
.label_282:
	mov	eax,  dword ptr [dword ptr [major_device_number_width]]
	add	eax, 2
	add	eax,  dword ptr [dword ptr [minor_device_number_width]]
	mov	dword ptr [rbp - 0x3e4], eax
	mov	eax,  dword ptr [dword ptr [file_size_width]]
	cmp	eax, dword ptr [rbp - 0x3e4]
	jge	.label_287
	mov	eax, dword ptr [rbp - 0x3e4]
	mov	dword ptr [dword ptr [file_size_width]],  eax
.label_287:
	jmp	.label_242
.label_248:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	call	unsigned_file_size
	mov	ecx, 1
	lea	rsi, [rbp - 0x670]
	mov	qword ptr [rbp - 0x678], rax
	mov	rdi, qword ptr [rbp - 0x678]
	mov	edx,  dword ptr [dword ptr [file_human_output_opts]]
	mov	r8,  qword ptr [word ptr [file_output_block_size]]
	call	human_readable
	xor	esi, esi
	mov	rdi, rax
	call	gnu_mbswidth
	mov	dword ptr [rbp - 0x67c], eax
	mov	eax,  dword ptr [dword ptr [file_size_width]]
	cmp	eax, dword ptr [rbp - 0x67c]
	jge	.label_305
	mov	eax, dword ptr [rbp - 0x67c]
	mov	dword ptr [dword ptr [file_size_width]],  eax
.label_305:
	jmp	.label_242
.label_242:
	jmp	.label_313
.label_313:
	jmp	.label_279
.label_279:
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_237
	lea	rsi, [rbp - 0x6a0]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax + 0x20]
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 0x6a4], ecx
	mov	ecx,  dword ptr [dword ptr [inode_number_width]]
	cmp	ecx, dword ptr [rbp - 0x6a4]
	jge	.label_319
	mov	eax, dword ptr [rbp - 0x6a4]
	mov	dword ptr [dword ptr [inode_number_width]],  eax
.label_319:
	jmp	.label_237
.label_237:
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	add	rax, 1
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_312:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a50

	.globl queue_directory
	.type queue_directory, @function
queue_directory:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	edx, 0x20
	mov	ecx, edx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_323
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_324
.label_323:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_322
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_325
.label_322:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	dl, byte ptr [rbp - 0x11]
	mov	rax, qword ptr [rbp - 0x20]
	and	dl, 1
	mov	byte ptr [rax + 0x10], dl
	mov	rax,  qword ptr [word ptr [pending_dirs]]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [pending_dirs]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b20

	.globl sort_files
	.type sort_files, @function
sort_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	rax,  qword ptr [word ptr [sorted_file_alloc]]
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	rdx,  qword ptr [word ptr [cwd_n_used]]
	shr	rdx, 1
	add	rcx, rdx
	cmp	rax, rcx
	jae	.label_326
	mov	rax,  qword ptr [word ptr [sorted_file]]
	mov	rdi, rax
	call	free
	mov	ecx, 0x18
	mov	esi, ecx
	mov	rdi,  qword ptr [word ptr [cwd_n_used]]
	call	xnmalloc
	mov	qword ptr [word ptr [sorted_file]],  rax
	imul	rax,  qword ptr [word ptr [cwd_n_used]],  3
	mov	qword ptr [word ptr [sorted_file_alloc]],  rax
.label_326:
	call	initialize_ordering_vector
	cmp	dword ptr [dword ptr [sort_type]],  -1
	jne	.label_332
	jmp	.label_327
.label_332:
	movabs	rdi, OFFSET FLAT:failed_strcoll
	call	_setjmp
	cmp	eax, 0
	jne	.label_334
	mov	byte ptr [rbp - 1], 0
	jmp	.label_336
.label_334:
	mov	byte ptr [rbp - 1], 1
	cmp	dword ptr [dword ptr [sort_type]],  3
	je	.label_329
	jmp	.label_333
.label_329:
	movabs	rdi, OFFSET FLAT:label_330
	movabs	rsi, OFFSET FLAT:label_16
	mov	edx, 0xeea
	movabs	rcx, OFFSET FLAT:label_331
	call	__assert_fail
.label_333:
	call	initialize_ordering_vector
.label_336:
	mov	rdi,  qword ptr [word ptr [sorted_file]]
	mov	rsi,  qword ptr [word ptr [cwd_n_used]]
	mov	al,  byte ptr [byte ptr [directories_first]]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	al,  byte ptr [byte ptr [sort_reverse]]
	and	al, 1
	movzx	ecx, al
	mov	r8d, ecx
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	ecx, al
	mov	r9d, ecx
	mov	ecx,  dword ptr [dword ptr [sort_type]]
	cmp	dword ptr [dword ptr [sort_type]],  4
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	dword ptr [rbp - 0x34], ecx
	jne	.label_335
	mov	eax,  dword ptr [dword ptr [time_type]]
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_328
.label_335:
	xor	eax, eax
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_328
.label_328:
	mov	eax, dword ptr [rbp - 0x38]
	movabs	rcx, OFFSET FLAT:sort_functions
	mov	edx, dword ptr [rbp - 0x34]
	add	edx, eax
	mov	eax, edx
	mov	esi, eax
	shl	rsi, 6
	add	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x30]
	shl	rsi, 5
	add	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x28]
	shl	rsi, 4
	add	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rcx + rsi*8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	mpsort
.label_327:
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ce0

	.globl extract_dirs_from_files
	.type extract_dirs_from_files, @function
extract_dirs_from_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	cmp	qword ptr [rbp - 8], 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_339
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_339
	xor	eax, eax
	mov	edi, eax
	xor	edx, edx
	mov	rsi, qword ptr [rbp - 8]
	call	queue_directory
.label_339:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x18], rax
.label_348:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	je	.label_337
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	is_directory
	test	al, 1
	jne	.label_347
	jmp	.label_344
.label_347:
	test	byte ptr [rbp - 0x21], 1
	je	.label_345
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	call	basename_is_dot_or_dotdot
	test	al, 1
	jne	.label_344
.label_345:
	cmp	qword ptr [rbp - 8], 0
	je	.label_342
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_346
.label_342:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 8]
	mov	cl, byte ptr [rbp - 9]
	and	cl, 1
	movzx	edx, cl
	call	queue_directory
	jmp	.label_340
.label_346:
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	file_name_concat
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rax + 8]
	mov	r8b, byte ptr [rbp - 9]
	and	r8b, 1
	movzx	edx, r8b
	call	queue_directory
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_340:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax + 0xa8], 9
	jne	.label_341
	mov	rdi, qword ptr [rbp - 0x30]
	call	free_ent
.label_341:
	jmp	.label_344
.label_344:
	jmp	.label_348
.label_337:
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
.label_343:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_338
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0xa8], 9
	setne	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_343
.label_338:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [word ptr [cwd_n_used]],  rax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ed0

	.globl print_current_files
	.type print_current_files, @function
print_current_files:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax,  dword ptr [dword ptr [rip + format]]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x18], rdx
	ja	.label_353
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_358]]
	jmp	rcx
.label_2875:
	mov	qword ptr [rbp - 8], 0
.label_350:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_352
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rdi, rcx
	call	print_file_name_and_frills
	mov	edi, 0xa
	mov	qword ptr [rbp - 0x20], rax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x24], eax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_350
.label_352:
	jmp	.label_353
.label_2876:
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_356
	mov	edi, 0x20
	call	print_with_separator
	jmp	.label_359
.label_356:
	call	print_many_per_line
.label_359:
	jmp	.label_353
.label_2877:
	cmp	qword ptr [word ptr [line_length]],  0
	jne	.label_351
	mov	edi, 0x20
	call	print_with_separator
	jmp	.label_357
.label_351:
	call	print_horizontal
.label_357:
	jmp	.label_353
.label_2878:
	mov	edi, 0x2c
	call	print_with_separator
	jmp	.label_353
.label_2874:
	mov	qword ptr [rbp - 8], 0
.label_355:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_354
	call	set_normal_color
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rdi, rax
	call	print_long_format
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_349
.label_349:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_355
.label_354:
	jmp	.label_353
.label_353:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406040

	.globl dev_ino_pop
	.type dev_ino_pop, @function
dev_ino_pop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:dev_ino_obstack
	mov	dword ptr [rbp - 0x24], 0x10
	movsxd	rcx, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x10]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x38], rax
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_360
	jmp	.label_361
.label_360:
	movabs	rdi, OFFSET FLAT:label_363
	movabs	rsi, OFFSET FLAT:label_16
	mov	edx, 0x403
	movabs	rcx, OFFSET FLAT:label_364
	call	__assert_fail
.label_361:
	mov	eax, dword ptr [rbp - 0x24]
	neg	eax
	mov	rcx,  qword ptr [word ptr [rip + label_362]]
	movsxd	rdx, eax
	mov	rsi, rcx
	add	rsi, rdx
	mov	qword ptr [word ptr [rip + label_362]],  rsi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rsi
	movups	xmm0, xmmword ptr [rcx + rdx]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4060f0

	.globl free_pending_ent
	.type free_pending_ent, @function
free_pending_ent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406130

	.globl print_dir
	.type print_dir, @function
print_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x3f0
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x30], 0
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	call	opendir
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_387
	movabs	rdi, OFFSET FLAT:label_393
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x371], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x371]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	jmp	.label_383
.label_387:
	cmp	qword ptr [word ptr [active_dir_set]],  0
	je	.label_403
	mov	rdi, qword ptr [rbp - 0x20]
	call	dirfd
	xor	ecx, ecx
	mov	dword ptr [rbp - 0xc4], eax
	cmp	ecx, dword ptr [rbp - 0xc4]
	jg	.label_406
	lea	rsi, [rbp - 0xc0]
	mov	edi, dword ptr [rbp - 0xc4]
	call	fstat
	mov	dword ptr [rbp - 0x378], eax
	jmp	.label_391
.label_406:
	lea	rsi, [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 8]
	call	stat
	mov	dword ptr [rbp - 0x378], eax
.label_391:
	mov	eax, dword ptr [rbp - 0x378]
	cmp	eax, 0
	jge	.label_379
	movabs	rdi, OFFSET FLAT:label_374
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x379], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x379]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	mov	dword ptr [rbp - 0x380], eax
	jmp	.label_383
.label_379:
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	call	visit_dir
	test	al, 1
	jne	.label_389
	jmp	.label_404
.label_389:
	movabs	rdi, OFFSET FLAT:label_394
	call	gettext
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x388], rax
	call	quotearg_n_style_colon
	xor	esi, esi
	mov	edi, esi
	mov	rdx, qword ptr [rbp - 0x388]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	mov	edi, 1
	mov	dword ptr [rbp - 0x38c], eax
	call	set_exit_status
	jmp	.label_383
.label_404:
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rsi, qword ptr [rbp - 0xb8]
	call	dev_ino_push
.label_403:
	call	clear_files
	test	byte ptr [byte ptr [recursive]],  1
	jne	.label_411
	test	byte ptr [byte ptr [print_dir_name]],  1
	je	.label_401
.label_411:
	test	byte ptr [byte ptr [print_dir.first]],  1
	jne	.label_369
	jmp	.label_396
.label_396:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x390], eax
	jmp	.label_369
.label_369:
	mov	byte ptr [byte ptr [print_dir.first]],  0
	test	byte ptr [byte ptr [dired]],  1
	je	.label_382
	jmp	.label_384
.label_384:
	movabs	rdi, OFFSET FLAT:label_377
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x394], eax
	jmp	.label_382
.label_382:
	jmp	.label_399
.label_399:
	mov	qword ptr [rbp - 0xd0], 0
	test	byte ptr [byte ptr [print_hyperlink]],  1
	je	.label_368
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 8]
	call	canonicalize_filename_mode
	mov	qword ptr [rbp - 0xd0], rax
	cmp	qword ptr [rbp - 0xd0], 0
	jne	.label_409
	movabs	rdi, OFFSET FLAT:label_238
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x395], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x395]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_409:
	jmp	.label_368
.label_368:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_370
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x3a0], rax
	jmp	.label_373
.label_370:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x3a0], rax
.label_373:
	mov	rax, qword ptr [rbp - 0x3a0]
	mov	edx, 0xffffffff
	xor	ecx, ecx
	mov	r8d, 1
	movabs	r9, OFFSET FLAT:subdired_obstack
	mov	rsi,  qword ptr [word ptr [dirname_quoting_options]]
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x3a8], rdi
	mov	rdi, rax
	mov	rax, qword ptr [rbp - 0x3a8]
	mov	qword ptr [rsp], rax
	call	quote_name
	mov	rdi, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x3b0], rax
	call	free
	movabs	rdi, OFFSET FLAT:label_397
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x3b4], eax
	jmp	.label_401
.label_401:
	jmp	.label_398
.label_398:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x20]
	call	readdir
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_407
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x13
	mov	rdi, rax
	call	file_ignored
	test	al, 1
	jne	.label_375
	mov	dword ptr [rbp - 0xd4], 0
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax + 0x12]
	dec	ecx
	mov	eax, ecx
	sub	ecx, 0xd
	mov	qword ptr [rbp - 0x3c0], rax
	mov	dword ptr [rbp - 0x3c4], ecx
	ja	.label_365
	mov	rax, qword ptr [rbp - 0x3c0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_378]]
	jmp	rcx
.label_2931:
	mov	dword ptr [rbp - 0xd4], 4
	jmp	.label_365
.label_2929:
	mov	dword ptr [rbp - 0xd4], 2
	jmp	.label_365
.label_2930:
	mov	dword ptr [rbp - 0xd4], 3
	jmp	.label_365
.label_2928:
	mov	dword ptr [rbp - 0xd4], 1
	jmp	.label_365
.label_2933:
	mov	dword ptr [rbp - 0xd4], 6
	jmp	.label_365
.label_2932:
	mov	dword ptr [rbp - 0xd4], 5
	jmp	.label_365
.label_2934:
	mov	dword ptr [rbp - 0xd4], 7
	jmp	.label_365
.label_2935:
	mov	dword ptr [rbp - 0xd4], 8
.label_365:
	xor	eax, eax
	mov	edx, eax
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, 0x13
	mov	eax, dword ptr [rbp - 0xd4]
	mov	r8, qword ptr [rbp - 8]
	mov	rdi, rsi
	mov	esi, eax
	call	gobble_file
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [dword ptr [format]],  1
	jne	.label_367
	cmp	dword ptr [dword ptr [sort_type]],  -1
	jne	.label_367
	test	byte ptr [byte ptr [print_block_size]],  1
	jne	.label_367
	test	byte ptr [byte ptr [recursive]],  1
	jne	.label_367
	call	sort_files
	call	print_current_files
	call	clear_files
.label_367:
	jmp	.label_375
.label_375:
	jmp	.label_376
.label_407:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_371
	movabs	rdi, OFFSET FLAT:label_380
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x3c5], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x3c5]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	je	.label_390
	jmp	.label_388
.label_390:
	jmp	.label_395
.label_371:
	jmp	.label_388
.label_395:
	jmp	.label_376
.label_376:
	call	process_signals
	jmp	.label_398
.label_388:
	mov	rdi, qword ptr [rbp - 0x20]
	call	closedir
	cmp	eax, 0
	je	.label_400
	movabs	rdi, OFFSET FLAT:label_402
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x3c6], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x3c6]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_400:
	call	sort_files
	test	byte ptr [byte ptr [recursive]],  1
	je	.label_408
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 8]
	call	extract_dirs_from_files
.label_408:
	cmp	dword ptr [dword ptr [format]],  0
	je	.label_412
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_366
.label_412:
	jmp	.label_392
.label_392:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_381
	jmp	.label_410
.label_410:
	movabs	rdi, OFFSET FLAT:label_377
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x3cc], eax
	jmp	.label_381
.label_381:
	jmp	.label_385
.label_385:
	movabs	rdi, OFFSET FLAT:label_386
	call	gettext
	mov	qword ptr [rbp - 0xe0], rax
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x3d0], eax
	call	strlen
	add	rax,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rax
	jmp	.label_405
.label_405:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x3d4], eax
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x370]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0xe0], rax
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	dword ptr [rbp - 0x3d8], eax
	call	strlen
	add	rax,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rax
	jmp	.label_372
.label_372:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x3dc], eax
	jmp	.label_366
.label_366:
	cmp	qword ptr [word ptr [cwd_n_used]],  0
	je	.label_383
	call	print_current_files
.label_383:
	add	rsp, 0x3f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406890

	.globl restore_default_color
	.type restore_default_color, @function
restore_default_color:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068c0

	.globl signal_restore
	.type signal_restore, @function
signal_restore:
	push	rbp
	mov	rbp, rsp
	xor	edi, edi
	call	signal_setup
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068d0

	.globl dired_dump_obstack
	.type dired_dump_obstack, @function
dired_dump_obstack:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	shr	rsi, 3
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jbe	.label_416
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_417
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
.label_417:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x18]
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 0x38]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 8]
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 8]
	sub	rdx, rsi
	cmp	rcx, rdx
	jbe	.label_415
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x18], rax
.label_415:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x50], 0
	mov	dword ptr [rbp - 0x54], eax
.label_413:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_418
	movabs	rdi, OFFSET FLAT:label_414
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x58], eax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_413
.label_418:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x5c], eax
.label_416:
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a50

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_437
	jmp	.label_447
.label_447:
	movabs	rdi, OFFSET FLAT:label_449
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_424
.label_437:
	movabs	rdi, OFFSET FLAT:label_427
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_435
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	call	emit_mandatory_arg_note
	movabs	rdi, OFFSET FLAT:label_450
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_443
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_429
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_439
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_434
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_422
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_442
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_441
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_452
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_426
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_433
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_444
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_419
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_428
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_436
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_448
	mov	dword ptr [rbp - 0x58], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_421
	mov	dword ptr [rbp - 0x5c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_430
	mov	dword ptr [rbp - 0x60], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_438
	mov	dword ptr [rbp - 0x64], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_451
	mov	dword ptr [rbp - 0x68], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_423
	mov	dword ptr [rbp - 0x6c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_431
	mov	dword ptr [rbp - 0x70], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_440
	mov	dword ptr [rbp - 0x74], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_453
	mov	dword ptr [rbp - 0x78], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x7c], eax
	call	emit_size_note
	movabs	rdi, OFFSET FLAT:label_445
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_425
	mov	dword ptr [rbp - 0x80], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_446
	mov	dword ptr [rbp - 0x84], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	cmp	dword ptr [dword ptr [ls_mode]],  1
	mov	dword ptr [rbp - 0x88], eax
	jne	.label_420
	movabs	rax, OFFSET FLAT:label_167
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_432
.label_420:
	movabs	rax, OFFSET FLAT:label_175
	movabs	rcx, OFFSET FLAT:label_176
	cmp	dword ptr [dword ptr [ls_mode]],  2
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x90], rax
.label_432:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	emit_ancillary_info
.label_424:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x406f00

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_454
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f30

	.globl emit_size_note
	.type emit_size_note, @function
emit_size_note:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_455
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 4], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f60

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_458:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_457
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_457:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_465
	jmp	.label_468
.label_465:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_458
.label_468:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_460
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_460:
	movabs	rdi, OFFSET FLAT:label_464
	call	gettext
	movabs	rsi, OFFSET FLAT:label_74
	movabs	rdx, OFFSET FLAT:label_459
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_461
	movabs	rsi, OFFSET FLAT:label_467
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_461
	movabs	rdi, OFFSET FLAT:label_462
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_461:
	movabs	rdi, OFFSET FLAT:label_456
	call	gettext
	movabs	rsi, OFFSET FLAT:label_459
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_463
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_37
	movabs	rsi, OFFSET FLAT:label_466
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407100

	.globl put_indicator
	.type put_indicator, @function
put_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	test	byte ptr [byte ptr [used_color]],  1
	jne	.label_469
	mov	edi, 1
	mov	byte ptr [byte ptr [used_color]],  1
	call	tcgetpgrp
	xor	edi, edi
	cmp	edi, eax
	jg	.label_470
	call	signal_init
.label_470:
	call	prep_non_filename_text
.label_469:
	mov	eax, 1
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx]
	mov	rcx,  qword ptr [word ptr [stdout]]
	call	fwrite_unlocked
	mov	qword ptr [rbp - 0x10], rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407170

	.globl signal_init
	.type signal_init, @function
signal_init:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	signal_setup
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407180

	.globl prep_non_filename_text
	.type prep_non_filename_text, @function
prep_non_filename_text:
	push	rbp
	mov	rbp, rsp
	cmp	qword ptr [word ptr [label_471]],  0
	je	.label_472
	movabs	rax, OFFSET FLAT:color_indicator
	add	rax, 0x20
	mov	rdi, rax
	call	put_indicator
	jmp	.label_473
.label_472:
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x30
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
.label_473:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4071f0

	.globl signal_setup
	.type signal_setup, @function
signal_setup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 1], 1
	je	.label_483
	movabs	rdi, OFFSET FLAT:caught_signals
	call	sigemptyset
	mov	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0xa4], eax
.label_481:
	cmp	dword ptr [rbp - 8], 0xc
	jge	.label_482
	xor	eax, eax
	mov	esi, eax
	lea	rdx, [rbp - 0xa0]
	movsxd	rcx, dword ptr [rbp - 8]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	call	sigaction
	mov	edi, 1
	mov	ecx, edi
	cmp	qword ptr [rbp - 0xa0], rcx
	mov	dword ptr [rbp - 0xa8], eax
	je	.label_478
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	call	sigaddset
	mov	dword ptr [rbp - 0xac], eax
.label_478:
	jmp	.label_476
.label_476:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_481
.label_482:
	movabs	rax, OFFSET FLAT:caught_signals
	mov	ecx, 0x80
	mov	edx, ecx
	lea	rsi, [rbp - 0xa0]
	add	rsi, 8
	mov	rdi, rsi
	mov	rsi, rax
	call	memcpy
	mov	dword ptr [rbp - 0x18], 0x10000000
	mov	dword ptr [rbp - 8], 0
.label_475:
	cmp	dword ptr [rbp - 8], 0xc
	jge	.label_480
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	call	sigismember
	cmp	eax, 0
	je	.label_485
	lea	rsi, [rbp - 0xa0]
	xor	eax, eax
	mov	edx, eax
	movabs	rcx, OFFSET FLAT:sighandler
	movabs	rdi, OFFSET FLAT:stophandler
	movsxd	r8, dword ptr [rbp - 8]
	cmp	dword ptr [dword ptr [+ (r8 * 4) + signal_setup.sig]],  0x14
	cmove	rcx, rdi
	mov	qword ptr [rbp - 0xa0], rcx
	movsxd	rcx, dword ptr [rbp - 8]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	call	sigaction
	mov	dword ptr [rbp - 0xb0], eax
.label_485:
	jmp	.label_477
.label_477:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_475
.label_480:
	jmp	.label_474
.label_483:
	mov	dword ptr [rbp - 8], 0
.label_486:
	cmp	dword ptr [rbp - 8], 0xc
	jge	.label_487
	movabs	rdi, OFFSET FLAT:caught_signals
	movsxd	rax, dword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + signal_setup.sig]]
	call	sigismember
	cmp	eax, 0
	je	.label_479
	xor	eax, eax
	mov	esi, eax
	movsxd	rcx, dword ptr [rbp - 8]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + signal_setup.sig]]
	call	signal
	mov	qword ptr [rbp - 0xb8], rax
.label_479:
	jmp	.label_484
.label_484:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_486
.label_487:
	jmp	.label_474
.label_474:
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073e0

	.globl stophandler
	.type stophandler, @function
stophandler:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	cmp	edi, 0
	jne	.label_488
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	add	eax, 1
	mov	dword ptr [dword ptr [stop_signal_count]],  eax
.label_488:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407410

	.globl sighandler
	.type sighandler, @function
sighandler:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	cmp	edi, 0
	jne	.label_489
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [interrupt_signal]],  eax
.label_489:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407440

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdi, OFFSET FLAT:label_490
	call	getenv
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	je	.label_491
	movabs	rsi, OFFSET FLAT:quoting_style_args
	movabs	rax, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	call	argmatch
	xor	r8d, r8d
	mov	r9d, eax
	mov	dword ptr [rbp - 0xc], r9d
	cmp	r8d, dword ptr [rbp - 0xc]
	jg	.label_494
	xor	eax, eax
	mov	edi, eax
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	esi,  dword ptr [dword ptr [+ (rcx * 4) + quoting_style_vals]]
	call	set_quoting_style
	jmp	.label_492
.label_494:
	movabs	rdi, OFFSET FLAT:label_493
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_492:
	jmp	.label_491
.label_491:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407500

	.globl set_line_length
	.type set_line_length, @function
set_line_length:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	eax, OFFSET FLAT:label_37
	mov	r8d, eax
	xor	eax, eax
	mov	esi, eax
	lea	rcx, [rbp - 0x18]
	mov	edx, eax
	call	xstrtoumax
	mov	edx, eax
	test	eax, eax
	mov	dword ptr [rbp - 0x1c], edx
	je	.label_496
	jmp	.label_500
.label_500:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	je	.label_501
	jmp	.label_497
.label_496:
	cmp	qword ptr [rbp - 0x18], -1
	jae	.label_499
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_495
.label_499:
	mov	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_495
.label_495:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [word ptr [line_length]],  rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_498
.label_501:
	mov	qword ptr [word ptr [line_length]],  -1
	mov	byte ptr [rbp - 1], 1
	jmp	.label_498
.label_497:
	mov	byte ptr [rbp - 1], 0
.label_498:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075b0

	.globl add_ignore_pattern
	.type add_ignore_pattern, @function
add_ignore_pattern:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax,  qword ptr [word ptr [ignore_patterns]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [ignore_patterns]],  rax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407600

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407610

	.globl abformat_init
	.type abformat_init, @function
abformat_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x660
	mov	dword ptr [rbp - 0x14], 0
.label_510:
	cmp	dword ptr [rbp - 0x14], 2
	jge	.label_511
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rdi,  qword ptr [word ptr [+ (rax * 8) + long_time_format]]
	call	first_percent_b
	movsxd	rdi, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp + rdi*8 - 0x10], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_510
.label_511:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_508
	cmp	qword ptr [rbp - 8], 0
	jne	.label_508
	jmp	.label_505
.label_508:
	lea	rdi, [rbp - 0x620]
	call	abmon_init
	test	al, 1
	jne	.label_516
	jmp	.label_505
.label_516:
	mov	dword ptr [rbp - 0x624], 0
.label_504:
	cmp	dword ptr [rbp - 0x624], 2
	jge	.label_507
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rax,  qword ptr [word ptr [+ (rax * 8) + long_time_format]]
	mov	qword ptr [rbp - 0x630], rax
	mov	dword ptr [rbp - 0x634], 0
.label_514:
	cmp	dword ptr [rbp - 0x634], 0xc
	jge	.label_518
	movabs	rax, OFFSET FLAT:abformat
	movsxd	rcx, dword ptr [rbp - 0x634]
	movsxd	rdx, dword ptr [rbp - 0x624]
	imul	rdx, rdx, 0x600
	add	rax, rdx
	shl	rcx, 7
	add	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	movsxd	rax, dword ptr [rbp - 0x624]
	cmp	qword ptr [rbp + rax*8 - 0x10], 0
	jne	.label_506
	mov	eax, 0x80
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:label_253
	mov	rdi, qword ptr [rbp - 0x640]
	mov	rcx, qword ptr [rbp - 0x630]
	mov	al, 0
	call	snprintf
	mov	dword ptr [rbp - 0x644], eax
	jmp	.label_515
.label_506:
	movsxd	rax, dword ptr [rbp - 0x624]
	mov	rax, qword ptr [rbp + rax*8 - 0x10]
	mov	rcx, qword ptr [rbp - 0x630]
	sub	rax, rcx
	cmp	rax, 0x80
	jle	.label_502
	jmp	.label_505
.label_502:
	mov	eax, 0x80
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:label_513
	lea	rcx, [rbp - 0x620]
	movsxd	rdi, dword ptr [rbp - 0x624]
	mov	rdi, qword ptr [rbp + rdi*8 - 0x10]
	mov	r8, qword ptr [rbp - 0x630]
	sub	rdi, r8
	mov	eax, edi
	mov	dword ptr [rbp - 0x648], eax
	mov	rdi, qword ptr [rbp - 0x640]
	mov	eax, dword ptr [rbp - 0x648]
	mov	r8, qword ptr [rbp - 0x630]
	movsxd	r9, dword ptr [rbp - 0x634]
	shl	r9, 7
	add	rcx, r9
	movsxd	r9, dword ptr [rbp - 0x624]
	mov	r9, qword ptr [rbp + r9*8 - 0x10]
	add	r9, 2
	mov	qword ptr [rbp - 0x650], rcx
	mov	ecx, eax
	mov	r10, qword ptr [rbp - 0x650]
	mov	qword ptr [rbp - 0x658], r9
	mov	r9, r10
	mov	r11, qword ptr [rbp - 0x658]
	mov	qword ptr [rsp], r11
	mov	al, 0
	call	snprintf
	mov	dword ptr [rbp - 0x644], eax
.label_515:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x644]
	jg	.label_503
	cmp	dword ptr [rbp - 0x644], 0x80
	jl	.label_509
.label_503:
	jmp	.label_505
.label_509:
	jmp	.label_512
.label_512:
	mov	eax, dword ptr [rbp - 0x634]
	add	eax, 1
	mov	dword ptr [rbp - 0x634], eax
	jmp	.label_514
.label_518:
	jmp	.label_517
.label_517:
	mov	eax, dword ptr [rbp - 0x624]
	add	eax, 1
	mov	dword ptr [rbp - 0x624], eax
	jmp	.label_504
.label_507:
	mov	byte ptr [byte ptr [use_abformat]],  1
.label_505:
	add	rsp, 0x660
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407870

	.globl first_percent_b
	.type first_percent_b, @function
first_percent_b:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
.label_523:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	je	.label_527
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x25
	jne	.label_519
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x25
	mov	dword ptr [rbp - 0x14], ecx
	mov	dword ptr [rbp - 0x18], edx
	je	.label_526
	jmp	.label_524
.label_524:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_525
	jmp	.label_520
.label_520:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_522
.label_526:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
.label_525:
	jmp	.label_519
.label_519:
	jmp	.label_521
.label_521:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_523
.label_527:
	mov	qword ptr [rbp - 8], 0
.label_522:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407910

	.globl abmon_init
	.type abmon_init, @function
abmon_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], 0xc
.label_529:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x24], 0
.label_534:
	cmp	dword ptr [rbp - 0x24], 0xc
	jge	.label_536
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x30], rax
	mov	ecx, dword ptr [rbp - 0x24]
	add	ecx, 0x2000e
	mov	edi, ecx
	call	rpl_nl_langinfo
	mov	esi, 0x25
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	strchr
	cmp	rax, 0
	je	.label_532
	mov	byte ptr [rbp - 1], 0
	jmp	.label_530
.label_532:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	edi, 0x80
	mov	edx, edi
	lea	rcx, [rbp - 0x30]
	xor	edi, edi
	mov	esi, 1
	mov	rax, qword ptr [rax]
	mov	r8, qword ptr [rbp - 0x50]
	movzx	r9d, word ptr [rax + r8*2]
	and	r9d, 0x800
	cmp	r9d, 0
	mov	r9d, edi
	cmovne	r9d, esi
	mov	dword ptr [rbp - 0x3c], r9d
	mov	rax, qword ptr [rbp - 0x38]
	movsxd	r10, dword ptr [rbp - 0x24]
	shl	r10, 7
	add	r10, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x54], edi
	mov	rdi, rax
	mov	rsi, r10
	mov	r9d, dword ptr [rbp - 0x54]
	call	mbsalign
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0x80
	jb	.label_535
	mov	byte ptr [rbp - 1], 0
	jmp	.label_530
.label_535:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jbe	.label_533
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_528
.label_533:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_528:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x18], rax
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_534
.label_536:
	jmp	.label_531
.label_531:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	ja	.label_529
	mov	byte ptr [rbp - 1], 1
.label_530:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a70

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a80

	.globl known_term_type
	.type known_term_type, @function
known_term_type:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdi, OFFSET FLAT:label_537
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_545
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_540
.label_545:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_544
.label_540:
	movabs	rax, OFFSET FLAT:G_line
	mov	qword ptr [rbp - 0x18], rax
.label_541:
	movabs	rax, OFFSET FLAT:G_line
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, rax
	cmp	rcx, 0x10c4
	jae	.label_543
	movabs	rsi, OFFSET FLAT:label_542
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_539
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 5
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	fnmatch
	cmp	eax, 0
	jne	.label_538
	mov	byte ptr [rbp - 1], 1
	jmp	.label_544
.label_538:
	jmp	.label_539
.label_539:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_541
.label_543:
	mov	byte ptr [rbp - 1], 0
.label_544:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407b70

	.globl get_funky_string
	.type get_funky_string, @function
get_funky_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x21], 0
	mov	dword ptr [rbp - 0x34], 0
.label_547:
	cmp	dword ptr [rbp - 0x34], 5
	jae	.label_562
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x50], rcx
	mov	qword ptr [rbp - 0x58], rdx
	ja	.label_564
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_571]]
	jmp	rcx
.label_2943:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	mov	dword ptr [rbp - 0x5c], ecx
	je	.label_574
	jmp	.label_579
.label_579:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x60], eax
	je	.label_574
	jmp	.label_551
.label_551:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x64], eax
	je	.label_553
	jmp	.label_558
.label_558:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x5c
	mov	dword ptr [rbp - 0x68], eax
	je	.label_560
	jmp	.label_567
.label_567:
	mov	eax, dword ptr [rbp - 0x5c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_578
	jmp	.label_557
.label_574:
	mov	dword ptr [rbp - 0x34], 5
	jmp	.label_554
.label_560:
	mov	dword ptr [rbp - 0x34], 1
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_554
.label_578:
	mov	dword ptr [rbp - 0x34], 4
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_554
.label_553:
	test	byte ptr [rbp - 0x11], 1
	je	.label_550
	mov	dword ptr [rbp - 0x34], 5
	jmp	.label_554
.label_550:
	jmp	.label_557
.label_557:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_554:
	jmp	.label_566
.label_2944:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	mov	eax, ecx
	sub	ecx, 0x78
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x7c], ecx
	ja	.label_556
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_576]]
	jmp	rcx
.label_3138:
	mov	dword ptr [rbp - 0x34], 2
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	mov	dl, cl
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_546
.label_3140:
	mov	dword ptr [rbp - 0x34], 3
	mov	byte ptr [rbp - 0x21], 0
	jmp	.label_546
.label_3142:
	mov	byte ptr [rbp - 0x21], 7
	jmp	.label_546
.label_3143:
	mov	byte ptr [rbp - 0x21], 8
	jmp	.label_546
.label_3144:
	mov	byte ptr [rbp - 0x21], 0x1b
	jmp	.label_546
.label_3145:
	mov	byte ptr [rbp - 0x21], 0xc
	jmp	.label_546
.label_3146:
	mov	byte ptr [rbp - 0x21], 0xa
	jmp	.label_546
.label_3147:
	mov	byte ptr [rbp - 0x21], 0xd
	jmp	.label_546
.label_3148:
	mov	byte ptr [rbp - 0x21], 9
	jmp	.label_546
.label_3149:
	mov	byte ptr [rbp - 0x21], 0xb
	jmp	.label_546
.label_3139:
	mov	byte ptr [rbp - 0x21], 0x7f
	jmp	.label_546
.label_3141:
	mov	byte ptr [rbp - 0x21], 0x20
	jmp	.label_546
.label_3137:
	mov	dword ptr [rbp - 0x34], 6
	jmp	.label_546
.label_556:
	mov	rax, qword ptr [rbp - 0x40]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x21], cl
.label_546:
	cmp	dword ptr [rbp - 0x34], 1
	jne	.label_555
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
.label_555:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_566
.label_2945:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jl	.label_572
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x37
	jle	.label_575
.label_572:
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_565
.label_575:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 3
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x30
	add	eax, esi
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
.label_565:
	jmp	.label_566
.label_2946:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	add	edx, -0x30
	sub	edx, 0xa
	mov	dword ptr [rbp - 0x80], ecx
	mov	dword ptr [rbp - 0x84], edx
	jb	.label_569
	jmp	.label_559
.label_559:
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x88], eax
	jb	.label_577
	jmp	.label_549
.label_549:
	mov	eax, dword ptr [rbp - 0x80]
	add	eax, -0x61
	sub	eax, 6
	mov	dword ptr [rbp - 0x8c], eax
	jb	.label_552
	jmp	.label_573
.label_569:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x30
	add	eax, esi
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
	jmp	.label_561
.label_552:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x61
	add	eax, esi
	add	eax, 0xa
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
	jmp	.label_561
.label_577:
	movsx	eax, byte ptr [rbp - 0x21]
	shl	eax, 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x40], rdx
	movsx	esi, byte ptr [rcx]
	sub	esi, 0x41
	add	eax, esi
	add	eax, 0xa
	mov	dil, al
	mov	byte ptr [rbp - 0x21], dil
	jmp	.label_561
.label_573:
	mov	al, byte ptr [rbp - 0x21]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
.label_561:
	jmp	.label_566
.label_2947:
	mov	dword ptr [rbp - 0x34], 0
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x40
	jl	.label_570
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x7e
	jg	.label_570
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsx	edx, byte ptr [rax]
	and	edx, 0x1f
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	byte ptr [rax], sil
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_548
.label_570:
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x3f
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x48], rcx
	mov	byte ptr [rax], 0x7f
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_568
.label_563:
	mov	dword ptr [rbp - 0x34], 6
.label_568:
	jmp	.label_548
.label_548:
	jmp	.label_566
.label_564:
	call	abort
.label_566:
	jmp	.label_547
.label_562:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	cmp	dword ptr [rbp - 0x34], 6
	setne	dl
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408050

	.globl file_failure
	.type file_failure, @function
file_failure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	edi, 4
	mov	esi, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x1c], esi
	mov	rsi, rax
	mov	qword ptr [rbp - 0x28], rdx
	call	quotearg_style
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x1c]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	set_exit_status
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4080c0

	.globl visit_dir
	.type visit_dir, @function
visit_dir:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rdi,  qword ptr [word ptr [active_dir_set]]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_581
	call	xalloc_die
.label_581:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x21], cl
	test	byte ptr [rbp - 0x21], 1
	je	.label_580
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
.label_580:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408160

	.globl set_exit_status
	.type set_exit_status, @function
set_exit_status:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	test	byte ptr [rbp - 1], 1
	je	.label_582
	mov	dword ptr [dword ptr [exit_status]],  2
	jmp	.label_584
.label_582:
	cmp	dword ptr [dword ptr [exit_status]],  0
	jne	.label_583
	mov	dword ptr [dword ptr [exit_status]],  1
.label_583:
	jmp	.label_584
.label_584:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081b0

	.globl dev_ino_push
	.type dev_ino_push, @function
dev_ino_push:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:dev_ino_obstack
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x24], 0x10
	mov	qword ptr [rbp - 0x30], rax
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rsi + 0x18]
	sub	rax, rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_585
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	call	_obstack_newchunk
.label_585:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax,  qword ptr [word ptr [label_362]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408270

	.globl quote_name
	.type quote_name, @function
quote_name:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20e0
	mov	al, r8b
	mov	r10, qword ptr [rbp + 0x10]
	lea	r11, [rbp - 0x2068]
	mov	r8d, 0x2000
	mov	ebx, r8d
	xor	r8d, r8d
	mov	r14d, r8d
	lea	r15, [rbp - 0x2071]
	lea	r12, [rbp - 0x2060]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], edx
	mov	qword ptr [rbp - 0x40], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x58], r10
	mov	qword ptr [rbp - 0x2068], r12
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rdi, r11
	mov	rsi, rbx
	mov	r9, r14
	mov	qword ptr [rsp], r15
	call	quote_name_buf
	mov	qword ptr [rbp - 0x2070], rax
	test	byte ptr [rbp - 0x2071], 1
	je	.label_586
	test	byte ptr [rbp - 0x41], 1
	je	.label_586
	jmp	.label_589
.label_589:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x20cc], eax
	jmp	.label_586
.label_586:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_603
	mov	rdi, qword ptr [rbp - 0x40]
	call	print_color_indicator
	mov	byte ptr [rbp - 0x20cd], al
.label_603:
	mov	byte ptr [rbp - 0x2072], 0
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_602
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	je	.label_604
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	je	.label_604
	test	byte ptr [rbp - 0x2071], 1
	jne	.label_604
	mov	byte ptr [rbp - 0x2072], 1
	mov	rax, qword ptr [rbp - 0x2068]
	movsx	edi, byte ptr [rax]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20d4], eax
.label_604:
	xor	esi, esi
	mov	rdi,  qword ptr [word ptr [hostname]]
	call	file_escape
	mov	esi, 1
	mov	qword ptr [rbp - 0x2080], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	file_escape
	movabs	rdi, OFFSET FLAT:label_599
	movabs	rcx, OFFSET FLAT:label_600
	movabs	rdx, OFFSET FLAT:label_37
	mov	qword ptr [rbp - 0x2088], rax
	mov	rsi, qword ptr [rbp - 0x2080]
	mov	rax, qword ptr [rbp - 0x2088]
	movsx	r8d, byte ptr [rax]
	cmp	r8d, 0x2f
	cmove	rcx, rdx
	mov	rax, qword ptr [rbp - 0x2088]
	mov	rdx, rcx
	mov	rcx, rax
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x2080]
	mov	dword ptr [rbp - 0x20d8], eax
	call	free
	mov	rdi, qword ptr [rbp - 0x2088]
	call	free
.label_602:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_588
	jmp	.label_598
.label_598:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_601
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x2090], rax
	mov	qword ptr [rbp - 0x2098], 8
	mov	rax, qword ptr [rbp - 0x2090]
	mov	qword ptr [rbp - 0x20a0], rax
	mov	rax, qword ptr [rbp - 0x20a0]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x20a0]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20a8], rax
	mov	rax, qword ptr [rbp - 0x20a8]
	cmp	rax, qword ptr [rbp - 0x2098]
	jae	.label_596
	mov	rdi, qword ptr [rbp - 0x2090]
	mov	rsi, qword ptr [rbp - 0x2098]
	call	_obstack_newchunk
.label_596:
	movabs	rax, OFFSET FLAT:dired_pos
	mov	rcx, qword ptr [rbp - 0x2090]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x2098]
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x2098]
	mov	rcx, qword ptr [rbp - 0x2090]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_601:
	jmp	.label_587
.label_587:
	jmp	.label_588
.label_588:
	mov	eax, 1
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x2068]
	mov	dl, byte ptr [rbp - 0x2072]
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	add	rcx, rdi
	mov	rdi, qword ptr [rbp - 0x2070]
	mov	dl, byte ptr [rbp - 0x2072]
	and	dl, 1
	movzx	eax, dl
	shl	eax, 1
	movsxd	r8, eax
	sub	rdi, r8
	mov	r8,  qword ptr [word ptr [stdout]]
	mov	qword ptr [rbp - 0x20e0], rdi
	mov	rdi, rcx
	mov	rdx, qword ptr [rbp - 0x20e0]
	mov	rcx, r8
	call	fwrite_unlocked
	mov	rcx, qword ptr [rbp - 0x2070]
	add	rcx,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rcx
	cmp	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x20e8], rax
	je	.label_592
	jmp	.label_590
.label_590:
	test	byte ptr [byte ptr [dired]],  1
	je	.label_591
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x20b0], rax
	mov	qword ptr [rbp - 0x20b8], 8
	mov	rax, qword ptr [rbp - 0x20b0]
	mov	qword ptr [rbp - 0x20c0], rax
	mov	rax, qword ptr [rbp - 0x20c0]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x20c0]
	mov	rcx, qword ptr [rcx + 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x20c8], rax
	mov	rax, qword ptr [rbp - 0x20c8]
	cmp	rax, qword ptr [rbp - 0x20b8]
	jae	.label_593
	mov	rdi, qword ptr [rbp - 0x20b0]
	mov	rsi, qword ptr [rbp - 0x20b8]
	call	_obstack_newchunk
.label_593:
	movabs	rax, OFFSET FLAT:dired_pos
	mov	rcx, qword ptr [rbp - 0x20b0]
	mov	rdi, qword ptr [rcx + 0x18]
	mov	rdx, qword ptr [rbp - 0x20b8]
	mov	rsi, rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20b8]
	mov	rcx, qword ptr [rbp - 0x20b0]
	add	rax, qword ptr [rcx + 0x18]
	mov	qword ptr [rcx + 0x18], rax
.label_591:
	jmp	.label_597
.label_597:
	jmp	.label_592
.label_592:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_594
	movabs	rdi, OFFSET FLAT:label_605
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	test	byte ptr [rbp - 0x2072], 1
	mov	dword ptr [rbp - 0x20ec], eax
	je	.label_606
	mov	rax, qword ptr [rbp - 0x2068]
	mov	rcx, qword ptr [rbp - 0x2070]
	movsx	edi, byte ptr [rax + rcx - 1]
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20f0], eax
.label_606:
	jmp	.label_594
.label_594:
	lea	rax, [rbp - 0x2060]
	mov	rcx, qword ptr [rbp - 0x2068]
	cmp	rcx, rax
	je	.label_595
	mov	rax, qword ptr [rbp - 0x2068]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_595
	mov	rdi, qword ptr [rbp - 0x2068]
	call	free
.label_595:
	mov	rax, qword ptr [rbp - 0x2070]
	mov	cl, byte ptr [rbp - 0x2071]
	and	cl, 1
	movzx	edx, cl
	mov	esi, edx
	add	rax, rsi
	add	rsp, 0x20e0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408710

	.globl file_ignored
	.type file_ignored, @function
file_ignored:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	dword ptr [dword ptr [ignore_mode]],  2
	je	.label_607
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_607
	mov	al, 1
	cmp	dword ptr [dword ptr [ignore_mode]],  0
	mov	byte ptr [rbp - 9], al
	je	.label_608
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 8]
	cmp	byte ptr [rdi + rcx], 0
	mov	byte ptr [rbp - 9], al
	je	.label_608
.label_607:
	cmp	dword ptr [dword ptr [ignore_mode]],  0
	jne	.label_609
	mov	rdi,  qword ptr [word ptr [hide_patterns]]
	mov	rsi, qword ptr [rbp - 8]
	call	patterns_match
	mov	cl, 1
	test	al, 1
	mov	byte ptr [rbp - 9], cl
	jne	.label_608
.label_609:
	mov	rdi,  qword ptr [word ptr [ignore_patterns]]
	mov	rsi, qword ptr [rbp - 8]
	call	patterns_match
	mov	byte ptr [rbp - 9], al
.label_608:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087d0

	.globl process_signals
	.type process_signals, @function
process_signals:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
.label_612:
	mov	al, 1
	mov	ecx,  dword ptr [dword ptr [interrupt_signal]]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0x89], al
	jne	.label_616
	mov	eax,  dword ptr [dword ptr [stop_signal_count]]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_616:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_611
	jmp	.label_613
.label_611:
	test	byte ptr [byte ptr [used_color]],  1
	je	.label_615
	call	restore_default_color
.label_615:
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	fflush_unlocked
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:caught_signals
	lea	rdx, [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], eax
	call	sigprocmask
	mov	edi,  dword ptr [dword ptr [interrupt_signal]]
	mov	dword ptr [rbp - 4], edi
	mov	edi,  dword ptr [dword ptr [stop_signal_count]]
	mov	dword ptr [rbp - 8], edi
	cmp	dword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x94], eax
	je	.label_614
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	mov	dword ptr [dword ptr [stop_signal_count]],  eax
	mov	dword ptr [rbp - 4], 0x13
	jmp	.label_610
.label_614:
	xor	eax, eax
	mov	esi, eax
	mov	edi, dword ptr [rbp - 4]
	call	signal
	mov	qword ptr [rbp - 0xa0], rax
.label_610:
	mov	edi, dword ptr [rbp - 4]
	call	raise
	mov	edi, 2
	lea	rsi, [rbp - 0x88]
	xor	ecx, ecx
	mov	edx, ecx
	mov	dword ptr [rbp - 0xa4], eax
	call	sigprocmask
	mov	dword ptr [rbp - 0xa8], eax
	jmp	.label_612
.label_613:
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4088e0

	.globl quote_name_buf
	.type quote_name_buf, @function
quote_name_buf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	rdi, qword ptr [rbp - 0x20]
	call	get_quoting_style
	xor	r8d, r8d
	mov	r10b, r8b
	mov	dword ptr [rbp - 0x58], eax
	test	byte ptr [byte ptr [qmark_funny_chars]],  1
	mov	byte ptr [rbp - 0xb9], r10b
	je	.label_633
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 1
	mov	byte ptr [rbp - 0xba], al
	je	.label_641
	mov	al, 1
	cmp	dword ptr [rbp - 0x58], 2
	mov	byte ptr [rbp - 0xba], al
	je	.label_641
	cmp	dword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0xba], al
.label_641:
	mov	al, byte ptr [rbp - 0xba]
	mov	byte ptr [rbp - 0xb9], al
.label_633:
	mov	al, byte ptr [rbp - 0xb9]
	and	al, 1
	mov	byte ptr [rbp - 0x59], al
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_618
	mov	rcx, -1
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	quotearg_buffer
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_645
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	rcx, -1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	quotearg_buffer
	mov	qword ptr [rbp - 0xc8], rax
.label_645:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	esi, byte ptr [rcx]
	cmp	edx, esi
	mov	byte ptr [rbp - 0xc9], al
	jne	.label_619
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x50]
	setne	cl
	mov	byte ptr [rbp - 0xc9], cl
.label_619:
	mov	al, byte ptr [rbp - 0xc9]
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	jmp	.label_637
.label_618:
	test	byte ptr [rbp - 0x59], 1
	je	.label_642
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x50]
	ja	.label_649
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x40], rax
.label_649:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rdx, rax
	call	memcpy
	mov	byte ptr [rbp - 0x51], 0
	jmp	.label_629
.label_642:
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x51], 0
.label_629:
	jmp	.label_637
.label_637:
	test	byte ptr [rbp - 0x59], 1
	je	.label_639
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_646
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x48], 0
.label_624:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	jae	.label_654
	mov	rax, qword ptr [rbp - 0x68]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0xd8], rax
	mov	dword ptr [rbp - 0xdc], ecx
	ja	.label_621
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_634]]
	jmp	rcx
.label_3060:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x68], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_636
.label_621:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x80]
	mov	rdi, rcx
	call	memset
.label_651:
	lea	rdi, [rbp - 0x84]
	lea	rcx, [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x68]
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], -1
	jne	.label_655
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_638
.label_655:
	cmp	qword ptr [rbp - 0x90], -2
	jne	.label_620
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_638
.label_620:
	cmp	qword ptr [rbp - 0x90], 0
	jne	.label_632
	mov	qword ptr [rbp - 0x90], 1
.label_632:
	mov	edi, dword ptr [rbp - 0x84]
	call	wcwidth
	mov	dword ptr [rbp - 0x94], eax
	cmp	dword ptr [rbp - 0x94], 0
	jl	.label_643
	jmp	.label_650
.label_650:
	cmp	qword ptr [rbp - 0x90], 0
	jbe	.label_640
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x68], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, -1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_650
.label_640:
	movsxd	rax, dword ptr [rbp - 0x94]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_627
.label_643:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x78], rcx
	mov	byte ptr [rax], 0x3f
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_627:
	jmp	.label_653
.label_653:
	lea	rdi, [rbp - 0x80]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_651
.label_638:
	jmp	.label_636
.label_636:
	jmp	.label_624
.label_654:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_626
.label_646:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xa8], rax
.label_631:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_617
	mov	rax, qword ptr [rbp - 0xa0]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xe8], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe8]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	jne	.label_652
	mov	rax, qword ptr [rbp - 0xa0]
	mov	byte ptr [rax], 0x3f
.label_652:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_631
.label_617:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rax
.label_626:
	jmp	.label_628
.label_639:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_625
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_647
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x50]
	call	mbsnwidth
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x48], rsi
	jmp	.label_623
.label_647:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0xb8], rax
	mov	qword ptr [rbp - 0x48], 0
.label_635:
	mov	rax, qword ptr [rbp - 0xb0]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_622
	mov	rax, qword ptr [rbp - 0xb0]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0xf0], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x4000
	cmp	edi, 0
	je	.label_644
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_644:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_635
.label_622:
	jmp	.label_623
.label_623:
	jmp	.label_625
.label_625:
	jmp	.label_628
.label_628:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [align_variable_outer_quotes]],  1
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_630
	xor	eax, eax
	mov	cl, al
	test	byte ptr [byte ptr [cwd_some_quoted]],  1
	mov	byte ptr [rbp - 0xf1], cl
	je	.label_630
	mov	al, byte ptr [rbp - 0x51]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xf1], al
.label_630:
	mov	al, byte ptr [rbp - 0xf1]
	mov	rcx, qword ptr [rbp - 0x38]
	and	al, 1
	mov	byte ptr [rcx], al
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_648
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
.label_648:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408f20

	.globl print_color_indicator
	.type print_color_indicator, @function
print_color_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_656
	mov	edi, 4
	call	is_colored
	test	al, 1
	jne	.label_657
	jmp	.label_658
.label_657:
	call	restore_default_color
.label_658:
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	mov	rdi, qword ptr [rbp - 8]
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
.label_656:
	cmp	qword ptr [rbp - 8], 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408fa0

	.globl file_escape
	.type file_escape, @function
file_escape:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, sil
	mov	esi, 3
	mov	ecx, esi
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rcx
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	xnmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
.label_659:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_661
	test	byte ptr [rbp - 9], 1
	je	.label_663
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_663
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_660
.label_663:
	mov	rax, qword ptr [rbp - 8]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	mov	ecx, edi
	cmp	byte ptr [byte ptr [+ (rcx * 1) + RFC3986]],  0
	je	.label_665
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	byte ptr [rax], dl
	jmp	.label_662
.label_665:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	movsx	edx, byte ptr [rax]
	mov	qword ptr [rbp - 0x30], rdi
	mov	edi, edx
	call	to_uchar
	movabs	rsi, OFFSET FLAT:label_664
	movzx	edx, al
	mov	rdi, qword ptr [rbp - 0x30]
	mov	al, 0
	call	sprintf
	mov	rcx, qword ptr [rbp - 0x20]
	movsxd	rsi, eax
	add	rcx, rsi
	mov	qword ptr [rbp - 0x20], rcx
.label_662:
	jmp	.label_660
.label_660:
	jmp	.label_659
.label_661:
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4090e0

	.globl patterns_match
	.type patterns_match, @function
patterns_match:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
.label_670:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_667
	mov	edx, 4
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	call	fnmatch
	cmp	eax, 0
	jne	.label_669
	mov	byte ptr [rbp - 1], 1
	jmp	.label_666
.label_669:
	jmp	.label_668
.label_668:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_670
.label_667:
	mov	byte ptr [rbp - 1], 0
.label_666:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409160

	.globl free_ent
	.type free_ent, @function
free_ent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	movabs	rdi, OFFSET FLAT:UNKNOWN_SECURITY_CONTEXT
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0xb0], rdi
	je	.label_671
	call	is_smack_enabled
	test	al, 1
	jne	.label_673
	jmp	.label_674
.label_673:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	call	free
	jmp	.label_672
.label_674:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	call	freecon
.label_672:
	jmp	.label_671
.label_671:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4091f0

	.globl is_smack_enabled
	.type is_smack_enabled, @function
is_smack_enabled:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409200

	.globl needs_quoting
	.type needs_quoting, @function
needs_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 2
	mov	esi, eax
	mov	rcx, -1
	lea	rdx, [rbp - 0xa]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8,  qword ptr [word ptr [filename_quoting_options]]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0x20]
	call	quotearg_buffer
	mov	r9b, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	movsx	r10d, byte ptr [rax]
	movsx	r11d, byte ptr [rbp - 0xa]
	cmp	r10d, r11d
	mov	byte ptr [rbp - 0x21], r9b
	jne	.label_675
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x18]
	setne	cl
	mov	byte ptr [rbp - 0x21], cl
.label_675:
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409280

	.globl attach
	.type attach, @function
attach:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x2e
	jne	.label_676
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_678
.label_676:
	jmp	.label_680
.label_680:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_682
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x20], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_680
.label_682:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_677
	mov	rax, qword ptr [rbp - 0x20]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_677
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x2f
.label_677:
	jmp	.label_678
.label_678:
	jmp	.label_679
.label_679:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_681
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_679
.label_681:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409370

	.globl has_capability_cache
	.type has_capability_cache, @function
has_capability_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	cmp	rsi,  qword ptr [word ptr [has_capability_cache.unsupported_device]]
	jne	.label_684
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	byte ptr [rbp - 1], 0
	jmp	.label_686
.label_684:
	mov	rdi, qword ptr [rbp - 0x10]
	call	has_capability
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	test	byte ptr [rbp - 0x19], 1
	jne	.label_685
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_683
	jmp	.label_685
.label_683:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [has_capability_cache.unsupported_device]],  rax
.label_685:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	mov	byte ptr [rbp - 1], al
.label_686:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409410

	.globl getfilecon_cache
	.type getfilecon_cache, @function
getfilecon_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	cmp	rsi,  qword ptr [word ptr [getfilecon_cache.unsupported_device]]
	jne	.label_689
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_688
.label_689:
	mov	dword ptr [rbp - 0x20], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_691
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xb0
	mov	rsi, rax
	call	getfilecon
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_690
.label_691:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0xb0
	mov	rsi, rax
	call	lgetfilecon
	mov	dword ptr [rbp - 0x24], eax
.label_690:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	jge	.label_687
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_692
	jmp	.label_687
.label_692:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [getfilecon_cache.unsupported_device]],  rax
.label_687:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
.label_688:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4094f0

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x5f
	mov	byte ptr [rbp - 5], al
	je	.label_693
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 5], cl
	jmp	.label_693
.label_693:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409520

	.globl file_has_acl_cache
	.type file_has_acl_cache, @function
file_has_acl_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	cmp	rsi,  qword ptr [word ptr [file_has_acl_cache.unsupported_device]]
	jne	.label_694
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	dword ptr [rbp - 4], 0
	jmp	.label_695
.label_694:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x18
	mov	rsi, rax
	call	file_has_acl
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	jg	.label_696
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, 1
	jne	.label_697
	jmp	.label_696
.label_697:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [word ptr [file_has_acl_cache.unsupported_device]],  rax
.label_696:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_695:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4095d0

	.globl get_link_name
	.type get_link_name, @function
get_link_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x48]
	call	areadlink_with_size
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_698
	movabs	rdi, OFFSET FLAT:label_699
	mov	al, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0x12], al
	call	gettext
	mov	rdx, qword ptr [rbp - 8]
	mov	cl, byte ptr [rbp - 0x12]
	and	cl, 1
	movzx	edi, cl
	mov	rsi, rax
	call	file_failure
.label_698:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409640

	.globl make_link_name
	.type make_link_name, @function
make_link_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_700
	mov	qword ptr [rbp - 8], 0
	jmp	.label_701
.label_700:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_702
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrdup
	mov	qword ptr [rbp - 8], rax
	jmp	.label_701
.label_702:
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_703
	mov	rdi, qword ptr [rbp - 0x18]
	call	xstrdup
	mov	qword ptr [rbp - 8], rax
	jmp	.label_701
.label_703:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x30]
	add	rdi, rax
	add	rdi, 1
	call	xmalloc
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x2f
	je	.label_704
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
.label_704:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	stpncpy
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	stpcpy
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdx
	mov	qword ptr [rbp - 0x38], rax
.label_701:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409740

	.globl format_user_width
	.type format_user_width, @function
format_user_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_705
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_706
.label_705:
	mov	edi, dword ptr [rbp - 4]
	call	getuser
	mov	qword ptr [rbp - 0x10], rax
.label_706:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	rdi, rax
	call	format_user_or_group_width
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409790

	.globl format_group_width
	.type format_group_width, @function
format_group_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_707
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rcx
	jmp	.label_708
.label_707:
	mov	edi, dword ptr [rbp - 4]
	call	getgroup
	mov	qword ptr [rbp - 0x10], rax
.label_708:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	rdi, rax
	call	format_user_or_group_width
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4097e0

	.globl unsigned_file_size
	.type unsigned_file_size, @function
unsigned_file_size:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rbp - 8], 0
	setl	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	imul	rdx, rdx, 0
	add	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409810

	.globl has_capability
	.type has_capability, @function
has_capability:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rax], 0x5f
	and	dl, 1
	movzx	eax, dl
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409840

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x16
	mov	byte ptr [rbp - 5], al
	je	.label_709
	mov	al, 1
	cmp	dword ptr [rbp - 4], 0x26
	mov	byte ptr [rbp - 5], al
	je	.label_709
	mov	edi, dword ptr [rbp - 4]
	call	is_ENOTSUP
	mov	byte ptr [rbp - 5], al
.label_709:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409890

	.globl format_user_or_group_width
	.type format_user_or_group_width, @function
format_user_or_group_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_710
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gnu_mbswidth
	xor	esi, esi
	mov	dword ptr [rbp - 0x1c], eax
	cmp	esi, dword ptr [rbp - 0x1c]
	jle	.label_712
	xor	eax, eax
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_713
.label_712:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
.label_713:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_711
.label_710:
	movabs	rsi, OFFSET FLAT:label_714
	lea	rdi, [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, 0
	call	sprintf
	lea	rdi, [rbp - 0x40]
	mov	dword ptr [rbp - 0x48], eax
	call	strlen
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_711:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409920

	.globl is_directory
	.type is_directory, @function
is_directory:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0xa8], 3
	mov	byte ptr [rbp - 9], al
	je	.label_715
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xa8], 9
	sete	cl
	mov	byte ptr [rbp - 9], cl
.label_715:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409960

	.globl basename_is_dot_or_dotdot
	.type basename_is_dot_or_dotdot, @function
basename_is_dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	dot_or_dotdot
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409990

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x2e
	jne	.label_716
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + 1]
	cmp	edx, 0x2e
	sete	sil
	and	sil, 1
	movzx	edx, sil
	add	edx, 1
	movsxd	rcx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdi + rcx]
	mov	byte ptr [rbp - 0x11], sil
	cmp	byte ptr [rbp - 0x11], 0
	mov	byte ptr [rbp - 0x12], al
	je	.label_717
	movsx	eax, byte ptr [rbp - 0x11]
	cmp	eax, 0x2f
	sete	cl
	mov	byte ptr [rbp - 0x12], cl
.label_717:
	mov	al, byte ptr [rbp - 0x12]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_718
.label_716:
	mov	byte ptr [rbp - 1], 0
.label_718:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a10

	.globl initialize_ordering_vector
	.type initialize_ordering_vector, @function
initialize_ordering_vector:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], 0
.label_720:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_719
	mov	rax, qword ptr [rbp - 8]
	imul	rax, rax, 0xc8
	add	rax,  qword ptr [word ptr [cwd_file]]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [sorted_file]]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_720
.label_719:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a70

	.globl xstrcoll_name
	.type xstrcoll_name, @function
xstrcoll_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ab0

	.globl xstrcoll_df_name
	.type xstrcoll_df_name, @function
xstrcoll_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_723
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_723
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_722
.label_723:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_721
	test	byte ptr [rbp - 0x1a], 1
	je	.label_721
	mov	dword ptr [rbp - 4], 1
	jmp	.label_722
.label_721:
	jmp	.label_724
.label_724:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_722:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409b50

	.globl rev_xstrcoll_name
	.type rev_xstrcoll_name, @function
rev_xstrcoll_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409b90

	.globl rev_xstrcoll_df_name
	.type rev_xstrcoll_df_name, @function
rev_xstrcoll_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_727
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_727
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_726
.label_727:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_725
	test	byte ptr [rbp - 0x1a], 1
	je	.label_725
	mov	dword ptr [rbp - 4], 1
	jmp	.label_726
.label_725:
	jmp	.label_728
.label_728:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_726:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c30

	.globl strcmp_name
	.type strcmp_name, @function
strcmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c70

	.globl strcmp_df_name
	.type strcmp_df_name, @function
strcmp_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_731
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_731
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_729
.label_731:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_730
	test	byte ptr [rbp - 0x1a], 1
	je	.label_730
	mov	dword ptr [rbp - 4], 1
	jmp	.label_729
.label_730:
	jmp	.label_732
.label_732:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_729:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d10

	.globl rev_strcmp_name
	.type rev_strcmp_name, @function
rev_strcmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_name
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d50

	.globl rev_strcmp_df_name
	.type rev_strcmp_df_name, @function
rev_strcmp_df_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_735
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_735
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_734
.label_735:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_733
	test	byte ptr [rbp - 0x1a], 1
	je	.label_733
	mov	dword ptr [rbp - 4], 1
	jmp	.label_734
.label_733:
	jmp	.label_736
.label_736:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_name
	mov	dword ptr [rbp - 4], eax
.label_734:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409df0

	.globl xstrcoll_extension
	.type xstrcoll_extension, @function
xstrcoll_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e30

	.globl xstrcoll_df_extension
	.type xstrcoll_df_extension, @function
xstrcoll_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_739
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_739
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_738
.label_739:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_737
	test	byte ptr [rbp - 0x1a], 1
	je	.label_737
	mov	dword ptr [rbp - 4], 1
	jmp	.label_738
.label_737:
	jmp	.label_740
.label_740:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_738:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ed0

	.globl rev_xstrcoll_extension
	.type rev_xstrcoll_extension, @function
rev_xstrcoll_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f10

	.globl rev_xstrcoll_df_extension
	.type rev_xstrcoll_df_extension, @function
rev_xstrcoll_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_743
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_743
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_742
.label_743:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_741
	test	byte ptr [rbp - 0x1a], 1
	je	.label_741
	mov	dword ptr [rbp - 4], 1
	jmp	.label_742
.label_741:
	jmp	.label_744
.label_744:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_742:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fb0

	.globl strcmp_extension
	.type strcmp_extension, @function
strcmp_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ff0

	.globl strcmp_df_extension
	.type strcmp_df_extension, @function
strcmp_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_747
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_747
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_745
.label_747:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_746
	test	byte ptr [rbp - 0x1a], 1
	je	.label_746
	mov	dword ptr [rbp - 4], 1
	jmp	.label_745
.label_746:
	jmp	.label_748
.label_748:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_745:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a090

	.globl rev_strcmp_extension
	.type rev_strcmp_extension, @function
rev_strcmp_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_extension
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0d0

	.globl rev_strcmp_df_extension
	.type rev_strcmp_df_extension, @function
rev_strcmp_df_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_751
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_751
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_749
.label_751:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_750
	test	byte ptr [rbp - 0x1a], 1
	je	.label_750
	mov	dword ptr [rbp - 4], 1
	jmp	.label_749
.label_750:
	jmp	.label_752
.label_752:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_extension
	mov	dword ptr [rbp - 4], eax
.label_749:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a170

	.globl xstrcoll_size
	.type xstrcoll_size, @function
xstrcoll_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a1b0

	.globl xstrcoll_df_size
	.type xstrcoll_df_size, @function
xstrcoll_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_755
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_755
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_754
.label_755:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_753
	test	byte ptr [rbp - 0x1a], 1
	je	.label_753
	mov	dword ptr [rbp - 4], 1
	jmp	.label_754
.label_753:
	jmp	.label_756
.label_756:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_754:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a250

	.globl rev_xstrcoll_size
	.type rev_xstrcoll_size, @function
rev_xstrcoll_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a290

	.globl rev_xstrcoll_df_size
	.type rev_xstrcoll_df_size, @function
rev_xstrcoll_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_759
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_759
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_758
.label_759:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_757
	test	byte ptr [rbp - 0x1a], 1
	je	.label_757
	mov	dword ptr [rbp - 4], 1
	jmp	.label_758
.label_757:
	jmp	.label_760
.label_760:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_758:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a330

	.globl strcmp_size
	.type strcmp_size, @function
strcmp_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a370

	.globl strcmp_df_size
	.type strcmp_df_size, @function
strcmp_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_763
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_763
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_762
.label_763:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_761
	test	byte ptr [rbp - 0x1a], 1
	je	.label_761
	mov	dword ptr [rbp - 4], 1
	jmp	.label_762
.label_761:
	jmp	.label_764
.label_764:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_762:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a410

	.globl rev_strcmp_size
	.type rev_strcmp_size, @function
rev_strcmp_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_size
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a450

	.globl rev_strcmp_df_size
	.type rev_strcmp_df_size, @function
rev_strcmp_df_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_767
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_767
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_765
.label_767:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_766
	test	byte ptr [rbp - 0x1a], 1
	je	.label_766
	mov	dword ptr [rbp - 4], 1
	jmp	.label_765
.label_766:
	jmp	.label_768
.label_768:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_size
	mov	dword ptr [rbp - 4], eax
.label_765:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a4f0

	.globl xstrcoll_version
	.type xstrcoll_version, @function
xstrcoll_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_version
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a520

	.globl xstrcoll_df_version
	.type xstrcoll_df_version, @function
xstrcoll_df_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_770
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_770
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_769
.label_770:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_772
	test	byte ptr [rbp - 0x1a], 1
	je	.label_772
	mov	dword ptr [rbp - 4], 1
	jmp	.label_769
.label_772:
	jmp	.label_771
.label_771:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_version
	mov	dword ptr [rbp - 4], eax
.label_769:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5c0

	.globl rev_xstrcoll_version
	.type rev_xstrcoll_version, @function
rev_xstrcoll_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_version
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a5f0

	.globl rev_xstrcoll_df_version
	.type rev_xstrcoll_df_version, @function
rev_xstrcoll_df_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_775
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_775
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_774
.label_775:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_773
	test	byte ptr [rbp - 0x1a], 1
	je	.label_773
	mov	dword ptr [rbp - 4], 1
	jmp	.label_774
.label_773:
	jmp	.label_776
.label_776:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_version
	mov	dword ptr [rbp - 4], eax
.label_774:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a690

	.globl xstrcoll_mtime
	.type xstrcoll_mtime, @function
xstrcoll_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a6d0

	.globl xstrcoll_df_mtime
	.type xstrcoll_df_mtime, @function
xstrcoll_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_779
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_779
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_778
.label_779:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_777
	test	byte ptr [rbp - 0x1a], 1
	je	.label_777
	mov	dword ptr [rbp - 4], 1
	jmp	.label_778
.label_777:
	jmp	.label_780
.label_780:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_778:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a770

	.globl rev_xstrcoll_mtime
	.type rev_xstrcoll_mtime, @function
rev_xstrcoll_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a7b0

	.globl rev_xstrcoll_df_mtime
	.type rev_xstrcoll_df_mtime, @function
rev_xstrcoll_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_783
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_783
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_782
.label_783:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_781
	test	byte ptr [rbp - 0x1a], 1
	je	.label_781
	mov	dword ptr [rbp - 4], 1
	jmp	.label_782
.label_781:
	jmp	.label_784
.label_784:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_782:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a850

	.globl strcmp_mtime
	.type strcmp_mtime, @function
strcmp_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a890

	.globl strcmp_df_mtime
	.type strcmp_df_mtime, @function
strcmp_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_787
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_787
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_785
.label_787:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_786
	test	byte ptr [rbp - 0x1a], 1
	je	.label_786
	mov	dword ptr [rbp - 4], 1
	jmp	.label_785
.label_786:
	jmp	.label_788
.label_788:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_785:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a930

	.globl rev_strcmp_mtime
	.type rev_strcmp_mtime, @function
rev_strcmp_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_mtime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a970

	.globl rev_strcmp_df_mtime
	.type rev_strcmp_df_mtime, @function
rev_strcmp_df_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_791
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_791
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_790
.label_791:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_789
	test	byte ptr [rbp - 0x1a], 1
	je	.label_789
	mov	dword ptr [rbp - 4], 1
	jmp	.label_790
.label_789:
	jmp	.label_792
.label_792:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_mtime
	mov	dword ptr [rbp - 4], eax
.label_790:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa10

	.globl xstrcoll_ctime
	.type xstrcoll_ctime, @function
xstrcoll_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aa50

	.globl xstrcoll_df_ctime
	.type xstrcoll_df_ctime, @function
xstrcoll_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_795
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_795
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_794
.label_795:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_793
	test	byte ptr [rbp - 0x1a], 1
	je	.label_793
	mov	dword ptr [rbp - 4], 1
	jmp	.label_794
.label_793:
	jmp	.label_796
.label_796:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_794:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aaf0

	.globl rev_xstrcoll_ctime
	.type rev_xstrcoll_ctime, @function
rev_xstrcoll_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ab30

	.globl rev_xstrcoll_df_ctime
	.type rev_xstrcoll_df_ctime, @function
rev_xstrcoll_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_799
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_799
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_798
.label_799:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_797
	test	byte ptr [rbp - 0x1a], 1
	je	.label_797
	mov	dword ptr [rbp - 4], 1
	jmp	.label_798
.label_797:
	jmp	.label_800
.label_800:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_798:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40abd0

	.globl strcmp_ctime
	.type strcmp_ctime, @function
strcmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ac10

	.globl strcmp_df_ctime
	.type strcmp_df_ctime, @function
strcmp_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_803
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_803
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_801
.label_803:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_802
	test	byte ptr [rbp - 0x1a], 1
	je	.label_802
	mov	dword ptr [rbp - 4], 1
	jmp	.label_801
.label_802:
	jmp	.label_804
.label_804:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_801:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40acb0

	.globl rev_strcmp_ctime
	.type rev_strcmp_ctime, @function
rev_strcmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_ctime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40acf0

	.globl rev_strcmp_df_ctime
	.type rev_strcmp_df_ctime, @function
rev_strcmp_df_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_807
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_807
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_806
.label_807:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_805
	test	byte ptr [rbp - 0x1a], 1
	je	.label_805
	mov	dword ptr [rbp - 4], 1
	jmp	.label_806
.label_805:
	jmp	.label_808
.label_808:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_ctime
	mov	dword ptr [rbp - 4], eax
.label_806:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad90

	.globl xstrcoll_atime
	.type xstrcoll_atime, @function
xstrcoll_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40add0

	.globl xstrcoll_df_atime
	.type xstrcoll_df_atime, @function
xstrcoll_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_811
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_811
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_810
.label_811:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_809
	test	byte ptr [rbp - 0x1a], 1
	je	.label_809
	mov	dword ptr [rbp - 4], 1
	jmp	.label_810
.label_809:
	jmp	.label_812
.label_812:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_810:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ae70

	.globl rev_xstrcoll_atime
	.type rev_xstrcoll_atime, @function
rev_xstrcoll_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40aeb0

	.globl rev_xstrcoll_df_atime
	.type rev_xstrcoll_df_atime, @function
rev_xstrcoll_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_815
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_815
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_814
.label_815:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_813
	test	byte ptr [rbp - 0x1a], 1
	je	.label_813
	mov	dword ptr [rbp - 4], 1
	jmp	.label_814
.label_813:
	jmp	.label_816
.label_816:
	movabs	rdx, OFFSET FLAT:xstrcoll
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_814:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af50

	.globl strcmp_atime
	.type strcmp_atime, @function
strcmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40af90

	.globl strcmp_df_atime
	.type strcmp_df_atime, @function
strcmp_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_819
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_819
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_818
.label_819:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_817
	test	byte ptr [rbp - 0x1a], 1
	je	.label_817
	mov	dword ptr [rbp - 4], 1
	jmp	.label_818
.label_817:
	jmp	.label_820
.label_820:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_818:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b030

	.globl rev_strcmp_atime
	.type rev_strcmp_atime, @function
rev_strcmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rdx, OFFSET FLAT:strcmp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rsi
	mov	rsi, qword ptr [rbp - 0x18]
	call	cmp_atime
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b070

	.globl rev_strcmp_df_atime
	.type rev_strcmp_df_atime, @function
rev_strcmp_df_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rdi, qword ptr [rbp - 0x18]
	call	is_linked_directory
	and	al, 1
	mov	byte ptr [rbp - 0x1a], al
	test	byte ptr [rbp - 0x19], 1
	je	.label_823
	test	byte ptr [rbp - 0x1a], 1
	jne	.label_823
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_821
.label_823:
	test	byte ptr [rbp - 0x19], 1
	jne	.label_822
	test	byte ptr [rbp - 0x1a], 1
	je	.label_822
	mov	dword ptr [rbp - 4], 1
	jmp	.label_821
.label_822:
	jmp	.label_824
.label_824:
	movabs	rdx, OFFSET FLAT:strcmp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rsi, rcx
	call	cmp_atime
	mov	dword ptr [rbp - 4], eax
.label_821:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b110

	.globl cmp_name
	.type cmp_name, @function
cmp_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	call	rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b140

	.globl xstrcoll
	.type xstrcoll, @function
xstrcoll:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcoll
	mov	dword ptr [rbp - 0x14], eax
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_825
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_826
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x18], esi
	call	gettext
	xor	edi, edi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quote_n
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	quote_n
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	mov	al, 0
	call	error
	xor	edi, edi
	call	set_exit_status
	movabs	rdi, OFFSET FLAT:failed_strcoll
	mov	esi, 1
	call	longjmp
.label_825:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b1f0

	.globl is_linked_directory
	.type is_linked_directory, @function
is_linked_directory:
	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi + 0xa8], 3
	mov	byte ptr [rbp - 9], al
	je	.label_827
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	cmp	dword ptr [rcx + 0xa8], 9
	mov	byte ptr [rbp - 9], al
	je	.label_827
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xac]
	and	ecx, 0xf000
	cmp	ecx, 0x4000
	sete	dl
	mov	byte ptr [rbp - 9], dl
.label_827:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b250

	.globl cmp_extension
	.type cmp_extension, @function
cmp_extension:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	eax, 0x2e
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx]
	mov	esi, eax
	call	strrchr
	mov	esi, 0x2e
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	call	strrchr
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x38], rax
	je	.label_831
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_828
.label_831:
	movabs	rax, OFFSET FLAT:label_37
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_828
.label_828:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x48], rax
	je	.label_833
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_829
.label_833:
	movabs	rax, OFFSET FLAT:label_37
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_829
.label_829:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x38]
	call	rax
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	je	.label_830
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_832
.label_830:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x54], eax
.label_832:
	mov	eax, dword ptr [rbp - 0x54]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b340

	.globl cmp_size
	.type cmp_size, @function
cmp_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rdx, qword ptr [rsi + 0x48]
	jge	.label_834
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_836
.label_834:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x48]
	setg	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x20], esi
.label_836:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_835
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_837
.label_835:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x24], eax
.label_837:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b3d0

	.globl cmp_version
	.type cmp_version, @function
cmp_version:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	call	filevercmp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b400

	.globl cmp_mtime
	.type cmp_mtime, @function
cmp_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rdx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	call	timespec_cmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_839
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_838
.label_839:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x44], eax
.label_838:
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b4a0

	.globl cmp_ctime
	.type cmp_ctime, @function
cmp_ctime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rdx
	call	get_stat_ctime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_ctime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	call	timespec_cmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_841
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_840
.label_841:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x44], eax
.label_840:
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b540

	.globl cmp_atime
	.type cmp_atime, @function
cmp_atime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x18
	mov	rdi, rdx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x28], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	call	timespec_cmp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_843
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_842
.label_843:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rcx]
	call	rax
	mov	dword ptr [rbp - 0x44], eax
.label_842:
	mov	eax, dword ptr [rbp - 0x44]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b5e0

	.globl print_file_name_and_frills
	.type print_file_name_and_frills, @function
print_file_name_and_frills:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2e0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	set_normal_color
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_856
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_847
	xor	eax, eax
	mov	dword ptr [rbp - 0x2ac], eax
	jmp	.label_851
.label_847:
	mov	eax,  dword ptr [dword ptr [inode_number_width]]
	mov	dword ptr [rbp - 0x2ac], eax
.label_851:
	mov	eax, dword ptr [rbp - 0x2ac]
	mov	ecx, 0x28c
	mov	esi, ecx
	lea	rdi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2b0], eax
	call	format_inode
	movabs	rdi, OFFSET FLAT:label_848
	mov	esi, dword ptr [rbp - 0x2b0]
	mov	rdx, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2b4], eax
.label_856:
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_854
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_857
	xor	eax, eax
	mov	dword ptr [rbp - 0x2b8], eax
	jmp	.label_849
.label_857:
	mov	eax,  dword ptr [dword ptr [block_size_width]]
	mov	dword ptr [rbp - 0x2b8], eax
.label_849:
	mov	eax, dword ptr [rbp - 0x2b8]
	mov	rcx, qword ptr [rbp - 8]
	test	byte ptr [rcx + 0xb8], 1
	mov	dword ptr [rbp - 0x2bc], eax
	jne	.label_853
	movabs	rax, OFFSET FLAT:label_845
	mov	qword ptr [rbp - 0x2c8], rax
	jmp	.label_846
.label_853:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0x2c8], rax
.label_846:
	mov	rax, qword ptr [rbp - 0x2c8]
	movabs	rdi, OFFSET FLAT:label_848
	mov	esi, dword ptr [rbp - 0x2bc]
	mov	rdx, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2cc], eax
.label_854:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_855
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_844
	xor	eax, eax
	mov	dword ptr [rbp - 0x2d0], eax
	jmp	.label_850
.label_844:
	mov	eax,  dword ptr [dword ptr [scontext_width]]
	mov	dword ptr [rbp - 0x2d0], eax
.label_850:
	mov	eax, dword ptr [rbp - 0x2d0]
	movabs	rdi, OFFSET FLAT:label_848
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx + 0xb0]
	mov	esi, eax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x2d4], eax
.label_855:
	xor	esi, esi
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	call	print_name_with_quoting
	mov	qword ptr [rbp - 0x2a8], rax
	cmp	dword ptr [dword ptr [indicator_style]],  0
	je	.label_852
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa8]
	and	cl, 1
	movzx	edi, cl
	call	print_type_indicator
	and	al, 1
	movzx	edx, al
	mov	r8d, edx
	add	r8, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rbp - 0x2a8], r8
.label_852:
	mov	rax, qword ptr [rbp - 0x2a8]
	add	rsp, 0x2e0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b810

	.globl print_with_separator
	.type print_with_separator, @function
print_with_separator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x10], 0
.label_863:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_862
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [word ptr [line_length]],  0
	je	.label_858
	mov	rdi, qword ptr [rbp - 0x20]
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_861
.label_858:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_861
.label_861:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_859
	cmp	qword ptr [word ptr [line_length]],  0
	je	.label_865
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	cmp	rax,  qword ptr [word ptr [line_length]]
	jae	.label_860
	mov	rax, -1
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rbp - 0x28]
	sub	rax, 2
	cmp	rcx, rax
	ja	.label_860
.label_865:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 2
	mov	qword ptr [rbp - 0x18], rax
	mov	byte ptr [rbp - 0x29], 0x20
	jmp	.label_864
.label_860:
	mov	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], 0xa
.label_864:
	movsx	edi, byte ptr [rbp - 1]
	call	putchar_unlocked
	movsx	edi, byte ptr [rbp - 0x29]
	mov	dword ptr [rbp - 0x3c], eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x40], eax
.label_859:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	call	print_file_name_and_frills
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_863
.label_862:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b960

	.globl print_many_per_line
	.type print_many_per_line, @function
print_many_per_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	edi, 1
	call	calculate_columns
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, rcx
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rcx, edi
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, rcx
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 8], 0
.label_866:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_870
	mov	qword ptr [rbp - 0x28], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_868:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	call	print_file_name_and_frills
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x60], rax
	jb	.label_867
	jmp	.label_869
.label_867:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, qword ptr [rbp - 0x50]
	mov	rdi, rax
	mov	rsi, rcx
	call	indent
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_868
.label_869:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x64], eax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_866
.label_870:
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bad0

	.globl print_horizontal
	.type print_horizontal, @function
print_horizontal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	edi, edi
	mov	qword ptr [rbp - 0x10], 0
	call	calculate_columns
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	length_of_file_name_and_frills
	xor	ecx, ecx
	mov	esi, ecx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	print_file_name_and_frills
	mov	qword ptr [rbp - 8], 1
	mov	qword ptr [rbp - 0x48], rax
.label_872:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_871
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x40], rdx
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_873
	mov	edi, 0xa
	call	putchar_unlocked
	mov	qword ptr [rbp - 0x10], 0
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_874
.label_873:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rsi, rcx
	call	indent
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_874:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	call	print_file_name_and_frills
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rax
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_872
.label_871:
	mov	edi, 0xa
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x5c], eax
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc20

	.globl set_normal_color
	.type set_normal_color, @function
set_normal_color:
	push	rbp
	mov	rbp, rsp
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_875
	mov	edi, 4
	call	is_colored
	test	al, 1
	jne	.label_876
	jmp	.label_875
.label_876:
	movabs	rdi, OFFSET FLAT:color_indicator
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x40
	call	put_indicator
	movabs	rdi, OFFSET FLAT:color_indicator
	add	rdi, 0x10
	call	put_indicator
.label_875:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bc80

	.globl print_long_format
	.type print_long_format, @function
print_long_format:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1590
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xb8], 1
	je	.label_913
	lea	rsi, [rbp - 0x14]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	filemodestring
	jmp	.label_929
.label_913:
	mov	esi, 0x3f
	mov	eax, 0xa
	mov	edx, eax
	lea	rcx, [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0xa8]
	mov	edi, eax
	mov	r8b,  byte ptr [byte ptr [+ (rdi * 1) + filetype_letter]]
	mov	byte ptr [rbp - 0x14], r8b
	add	rcx, 1
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 9], 0
.label_929:
	test	byte ptr [byte ptr [any_has_acl]],  1
	jne	.label_938
	mov	byte ptr [rbp - 0xa], 0
	jmp	.label_905
.label_938:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xbc], 1
	jne	.label_880
	mov	byte ptr [rbp - 0xa], 0x2e
	jmp	.label_885
.label_880:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xbc], 2
	jne	.label_888
	mov	byte ptr [rbp - 0xa], 0x2b
.label_888:
	jmp	.label_885
.label_885:
	jmp	.label_905
.label_905:
	mov	eax,  dword ptr [dword ptr [rip + time_type]]
	test	eax, eax
	mov	dword ptr [rbp - 0x14cc], eax
	je	.label_916
	jmp	.label_900
.label_900:
	mov	eax, dword ptr [rbp - 0x14cc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x14d0], eax
	je	.label_902
	jmp	.label_907
.label_907:
	mov	eax, dword ptr [rbp - 0x14cc]
	sub	eax, 2
	mov	dword ptr [rbp - 0x14d4], eax
	je	.label_909
	jmp	.label_918
.label_902:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_ctime
	mov	qword ptr [rbp - 0xeb8], rax
	mov	qword ptr [rbp - 0xeb0], rdx
	mov	rax, qword ptr [rbp - 0xeb8]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rax, qword ptr [rbp - 0xeb0]
	mov	qword ptr [rbp - 0xe68], rax
	jmp	.label_886
.label_916:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xec8], rax
	mov	qword ptr [rbp - 0xec0], rdx
	mov	rax, qword ptr [rbp - 0xec8]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rax, qword ptr [rbp - 0xec0]
	mov	qword ptr [rbp - 0xe68], rax
	jmp	.label_886
.label_909:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rdi, rax
	call	get_stat_atime
	mov	qword ptr [rbp - 0xed8], rax
	mov	qword ptr [rbp - 0xed0], rdx
	mov	rax, qword ptr [rbp - 0xed8]
	mov	qword ptr [rbp - 0xe70], rax
	mov	rax, qword ptr [rbp - 0xed0]
	mov	qword ptr [rbp - 0xe68], rax
	jmp	.label_886
.label_918:
	call	abort
.label_886:
	lea	rax, [rbp - 0xe50]
	mov	qword ptr [rbp - 0xe60], rax
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_898
	mov	eax, 0x15
	mov	esi, eax
	lea	rdi, [rbp - 0xef0]
	mov	rcx, qword ptr [rbp - 0xe60]
	mov	edx,  dword ptr [dword ptr [inode_number_width]]
	mov	r8, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x14d8], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x14e0], rcx
	call	format_inode
	movabs	rsi, OFFSET FLAT:label_848
	mov	rdi, qword ptr [rbp - 0x14e0]
	mov	edx, dword ptr [rbp - 0x14d8]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	dword ptr [rbp - 0x14e4], eax
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
.label_898:
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_935
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_937
	movabs	rax, OFFSET FLAT:label_845
	mov	qword ptr [rbp - 0x14f0], rax
	jmp	.label_877
.label_937:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x1180]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0x14f0], rax
.label_877:
	mov	rax, qword ptr [rbp - 0x14f0]
	xor	esi, esi
	mov	qword ptr [rbp - 0x1188], rax
	mov	ecx,  dword ptr [dword ptr [block_size_width]]
	mov	rdi, qword ptr [rbp - 0x1188]
	mov	dword ptr [rbp - 0x14f4], ecx
	call	gnu_mbswidth
	mov	ecx, dword ptr [rbp - 0x14f4]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x118c], ecx
.label_920:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x118c]
	jge	.label_912
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], 0x20
	mov	eax, dword ptr [rbp - 0x118c]
	add	eax, -1
	mov	dword ptr [rbp - 0x118c], eax
	jmp	.label_920
.label_912:
	jmp	.label_901
.label_901:
	mov	rax, qword ptr [rbp - 0x1188]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1188], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], dl
	cmp	dl, 0
	je	.label_930
	jmp	.label_901
.label_930:
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax - 1], 0x20
.label_935:
	lea	rdx, [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	ecx,  dword ptr [dword ptr [nlink_width]]
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	mov	qword ptr [rbp - 0x1500], rdx
	mov	qword ptr [rbp - 0x1508], rdi
	mov	dword ptr [rbp - 0x150c], ecx
	jne	.label_879
	movabs	rax, OFFSET FLAT:label_845
	mov	qword ptr [rbp - 0x1518], rax
	jmp	.label_893
.label_879:
	lea	rsi, [rbp - 0x11b0]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x28]
	call	umaxtostr
	mov	qword ptr [rbp - 0x1518], rax
.label_893:
	mov	rax, qword ptr [rbp - 0x1518]
	movabs	rsi, OFFSET FLAT:label_906
	mov	rdi, qword ptr [rbp - 0x1508]
	mov	rdx, qword ptr [rbp - 0x1500]
	mov	ecx, dword ptr [rbp - 0x150c]
	mov	r8, rax
	mov	al, 0
	call	sprintf
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	dword ptr [rbp - 0x151c], eax
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
	test	byte ptr [byte ptr [dired]],  1
	je	.label_926
	jmp	.label_931
.label_931:
	movabs	rdi, OFFSET FLAT:label_377
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 2
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x1520], eax
	jmp	.label_926
.label_926:
	jmp	.label_887
.label_887:
	test	byte ptr [byte ptr [print_owner]],  1
	jne	.label_882
	test	byte ptr [byte ptr [print_group]],  1
	jne	.label_882
	test	byte ptr [byte ptr [print_author]],  1
	jne	.label_882
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_891
.label_882:
	jmp	.label_932
.label_932:
	lea	rdi, [rbp - 0xe50]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rsi, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 0xe60]
	sub	rdi, rsi
	add	rdi,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rdi
	mov	dword ptr [rbp - 0x1524], eax
	test	byte ptr [byte ptr [print_owner]],  1
	je	.label_903
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x34]
	mov	esi,  dword ptr [dword ptr [owner_width]]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	movzx	edx, cl
	call	format_user
.label_903:
	test	byte ptr [byte ptr [print_group]],  1
	je	.label_928
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x38]
	mov	esi,  dword ptr [dword ptr [group_width]]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	movzx	edx, cl
	call	format_group
.label_928:
	test	byte ptr [byte ptr [print_author]],  1
	je	.label_936
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 0x34]
	mov	esi,  dword ptr [dword ptr [author_width]]
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	and	cl, 1
	movzx	edx, cl
	call	format_user
.label_936:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_883
	xor	eax, eax
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0xb0]
	mov	edx,  dword ptr [dword ptr [scontext_width]]
	call	format_user_or_group
.label_883:
	lea	rax, [rbp - 0xe50]
	mov	qword ptr [rbp - 0xe60], rax
.label_891:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	je	.label_896
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x2000
	je	.label_904
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xf000
	cmp	ecx, 0x6000
	jne	.label_896
.label_904:
	xor	eax, eax
	mov	ecx,  dword ptr [dword ptr [file_size_width]]
	mov	edx,  dword ptr [dword ptr [major_device_number_width]]
	add	edx, 2
	add	edx,  dword ptr [dword ptr [minor_device_number_width]]
	sub	ecx, edx
	mov	dword ptr [rbp - 0x11f4], ecx
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	ecx,  dword ptr [dword ptr [major_device_number_width]]
	cmp	eax, dword ptr [rbp - 0x11f4]
	mov	dword ptr [rbp - 0x1528], ecx
	mov	qword ptr [rbp - 0x1530], rdi
	jle	.label_921
	xor	eax, eax
	mov	dword ptr [rbp - 0x1534], eax
	jmp	.label_933
.label_921:
	mov	eax, dword ptr [rbp - 0x11f4]
	mov	dword ptr [rbp - 0x1534], eax
.label_933:
	mov	eax, dword ptr [rbp - 0x1534]
	mov	ecx, dword ptr [rbp - 0x1528]
	add	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x40]
	mov	dword ptr [rbp - 0x1538], ecx
	call	gnu_dev_major
	lea	rsi, [rbp - 0x11d0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	mov	r8d,  dword ptr [dword ptr [minor_device_number_width]]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x40]
	mov	qword ptr [rbp - 0x1540], rax
	mov	dword ptr [rbp - 0x1544], r8d
	call	gnu_dev_minor
	lea	rsi, [rbp - 0x11f0]
	mov	eax, eax
	mov	edi, eax
	call	umaxtostr
	movabs	rsi, OFFSET FLAT:label_884
	mov	rdi, qword ptr [rbp - 0x1530]
	mov	edx, dword ptr [rbp - 0x1538]
	mov	rcx, qword ptr [rbp - 0x1540]
	mov	r8d, dword ptr [rbp - 0x1544]
	mov	r9, rax
	mov	al, 0
	call	sprintf
	mov	edx,  dword ptr [dword ptr [file_size_width]]
	add	edx, 1
	mov	rcx, qword ptr [rbp - 0xe60]
	movsxd	rsi, edx
	add	rcx, rsi
	mov	qword ptr [rbp - 0xe60], rcx
	mov	dword ptr [rbp - 0x1548], eax
	jmp	.label_915
.label_896:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_925
	movabs	rax, OFFSET FLAT:label_845
	mov	qword ptr [rbp - 0x1550], rax
	jmp	.label_910
.label_925:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x48]
	call	unsigned_file_size
	mov	ecx, 1
	lea	rsi, [rbp - 0x1480]
	mov	edx,  dword ptr [dword ptr [file_human_output_opts]]
	mov	r8,  qword ptr [word ptr [file_output_block_size]]
	mov	rdi, rax
	call	human_readable
	mov	qword ptr [rbp - 0x1550], rax
.label_910:
	mov	rax, qword ptr [rbp - 0x1550]
	xor	esi, esi
	mov	qword ptr [rbp - 0x1488], rax
	mov	ecx,  dword ptr [dword ptr [file_size_width]]
	mov	rdi, qword ptr [rbp - 0x1488]
	mov	dword ptr [rbp - 0x1554], ecx
	call	gnu_mbswidth
	mov	ecx, dword ptr [rbp - 0x1554]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x148c], ecx
.label_917:
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x148c]
	jge	.label_894
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], 0x20
	mov	eax, dword ptr [rbp - 0x148c]
	add	eax, -1
	mov	dword ptr [rbp - 0x148c], eax
	jmp	.label_917
.label_894:
	jmp	.label_911
.label_911:
	mov	rax, qword ptr [rbp - 0x1488]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x1488], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], dl
	cmp	dl, 0
	je	.label_914
	jmp	.label_911
.label_914:
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax - 1], 0x20
.label_915:
	mov	qword ptr [rbp - 0xe58], 0
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	je	.label_881
	lea	rdx, [rbp - 0xea8]
	lea	rsi, [rbp - 0xe70]
	mov	rdi,  qword ptr [word ptr [localtz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_881
	mov	rdi,  qword ptr [word ptr [current_time]]
	mov	rsi,  qword ptr [word ptr [label_39]]
	mov	rdx, qword ptr [rbp - 0xe70]
	mov	rcx, qword ptr [rbp - 0xe68]
	call	timespec_cmp
	cmp	eax, 0
	jge	.label_890
	movabs	rdi, OFFSET FLAT:current_time
	call	gettime
.label_890:
	mov	rax,  qword ptr [word ptr [current_time]]
	sub	rax, 0xf0c2ac
	mov	qword ptr [rbp - 0x14a0], rax
	mov	rax,  qword ptr [word ptr [label_39]]
	mov	qword ptr [rbp - 0x1498], rax
	mov	rdi, qword ptr [rbp - 0x14a0]
	mov	rsi, qword ptr [rbp - 0x1498]
	mov	rdx, qword ptr [rbp - 0xe70]
	mov	rcx, qword ptr [rbp - 0xe68]
	call	timespec_cmp
	xor	r8d, r8d
	mov	r9b, r8b
	cmp	eax, 0
	mov	byte ptr [rbp - 0x1555], r9b
	jge	.label_908
	mov	rdi, qword ptr [rbp - 0xe70]
	mov	rsi, qword ptr [rbp - 0xe68]
	mov	rdx,  qword ptr [word ptr [current_time]]
	mov	rcx,  qword ptr [word ptr [label_39]]
	call	timespec_cmp
	cmp	eax, 0
	setl	r8b
	mov	byte ptr [rbp - 0x1555], r8b
.label_908:
	mov	al, byte ptr [rbp - 0x1555]
	mov	ecx, 0x3e9
	mov	esi, ecx
	lea	rcx, [rbp - 0xea8]
	and	al, 1
	mov	byte ptr [rbp - 0x14a1], al
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	al, byte ptr [rbp - 0x14a1]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	rdx, qword ptr [rbp - 0xe68]
	mov	r9d, edx
	and	al, 1
	movzx	edx, al
	call	align_nstrftime
	mov	qword ptr [rbp - 0xe58], rax
.label_881:
	cmp	qword ptr [rbp - 0xe58], 0
	jne	.label_924
	mov	rax, qword ptr [rbp - 0xe60]
	cmp	byte ptr [rax], 0
	jne	.label_897
.label_924:
	mov	rax, qword ptr [rbp - 0xe58]
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
	mov	rax, qword ptr [rbp - 0xe60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xe60], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0xe60]
	mov	byte ptr [rax], 0
	jmp	.label_895
.label_897:
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0x1560], rdi
	call	long_time_expected_width
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xb8], 1
	mov	dword ptr [rbp - 0x1564], eax
	jne	.label_922
	movabs	rax, OFFSET FLAT:label_845
	mov	qword ptr [rbp - 0x1570], rax
	jmp	.label_923
.label_922:
	lea	rsi, [rbp - 0x14c0]
	mov	rdi, qword ptr [rbp - 0xe70]
	call	timetostr
	mov	qword ptr [rbp - 0x1570], rax
.label_923:
	mov	rax, qword ptr [rbp - 0x1570]
	movabs	rsi, OFFSET FLAT:label_848
	mov	rdi, qword ptr [rbp - 0x1560]
	mov	edx, dword ptr [rbp - 0x1564]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	rdi, qword ptr [rbp - 0xe60]
	mov	dword ptr [rbp - 0x1574], eax
	call	strlen
	add	rax, qword ptr [rbp - 0xe60]
	mov	qword ptr [rbp - 0xe60], rax
.label_895:
	jmp	.label_892
.label_892:
	lea	rdi, [rbp - 0xe50]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	lea	rsi, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 0xe60]
	sub	rdi, rsi
	add	rdi,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rdi
	mov	dword ptr [rbp - 0x1578], eax
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:dired_obstack
	lea	rax, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0xe60]
	sub	rcx, rax
	call	print_name_with_quoting
	mov	qword ptr [rbp - 0x14c8], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0xa8], 6
	jne	.label_889
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 8], 0
	je	.label_878
	jmp	.label_927
.label_927:
	movabs	rdi, OFFSET FLAT:label_934
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rsi,  qword ptr [word ptr [dired_pos]]
	add	rsi, 4
	mov	qword ptr [word ptr [dired_pos]],  rsi
	mov	dword ptr [rbp - 0x157c], eax
	mov	esi, 1
	xor	eax, eax
	mov	edx, eax
	lea	rcx, [rbp - 0xe50]
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0xe60]
	sub	r8, rcx
	add	r8, qword ptr [rbp - 0x14c8]
	add	r8, 4
	mov	rcx, r8
	call	print_name_with_quoting
	cmp	dword ptr [dword ptr [indicator_style]],  0
	mov	qword ptr [rbp - 0x1588], rax
	je	.label_939
	mov	edi, 1
	xor	edx, edx
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0xac]
	call	print_type_indicator
	mov	byte ptr [rbp - 0x1589], al
.label_939:
	jmp	.label_878
.label_878:
	jmp	.label_919
.label_889:
	cmp	dword ptr [dword ptr [indicator_style]],  0
	je	.label_899
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa8]
	and	cl, 1
	movzx	edi, cl
	call	print_type_indicator
	mov	byte ptr [rbp - 0x158a], al
.label_899:
	jmp	.label_919
.label_919:
	add	rsp, 0x1590
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c8a0

	.globl format_inode
	.type format_inode, @function
format_inode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x15
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	rcx, qword ptr [rbp - 0x10]
	ja	.label_940
	jmp	.label_942
.label_940:
	movabs	rdi, OFFSET FLAT:label_944
	movabs	rsi, OFFSET FLAT:label_16
	mov	edx, 0xfac
	movabs	rcx, OFFSET FLAT:label_945
	call	__assert_fail
.label_942:
	mov	rax, qword ptr [rbp - 0x18]
	test	byte ptr [rax + 0xb8], 1
	je	.label_941
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_941
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x20]
	mov	rsi, qword ptr [rbp - 8]
	call	umaxtostr
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_943
.label_941:
	movabs	rax, OFFSET FLAT:label_845
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_943
.label_943:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c950

	.globl print_name_with_quoting
	.type print_name_with_quoting, @function
print_name_with_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	test	byte ptr [rbp - 9], 1
	je	.label_950
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_952
.label_950:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_952:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x28], rax
	test	byte ptr [byte ptr [print_with_color]],  1
	je	.label_951
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	esi, al
	call	get_color_indicator
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_947
.label_951:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_947
.label_947:
	mov	rax, qword ptr [rbp - 0x50]
	xor	ecx, ecx
	mov	dl, cl
	mov	qword ptr [rbp - 0x30], rax
	test	byte ptr [byte ptr [print_with_color]],  1
	mov	byte ptr [rbp - 0x51], dl
	je	.label_953
	mov	al, 1
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x52], al
	jne	.label_949
	mov	edi, 4
	call	is_colored
	mov	byte ptr [rbp - 0x52], al
.label_949:
	mov	al, byte ptr [rbp - 0x52]
	mov	byte ptr [rbp - 0x51], al
.label_953:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi,  qword ptr [word ptr [filename_quoting_options]]
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0xc4]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rbp - 9]
	xor	al, 0xff
	mov	r9, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 8]
	mov	r8, qword ptr [r8 + 0x10]
	mov	r10, rsp
	mov	qword ptr [r10], r8
	and	al, 1
	movzx	r8d, al
	call	quote_name
	mov	qword ptr [rbp - 0x40], rax
	call	process_signals
	test	byte ptr [rbp - 0x31], 1
	je	.label_946
	call	prep_non_filename_text
	cmp	qword ptr [word ptr [line_length]],  0
	je	.label_948
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [line_length]]
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, qword ptr [rbp - 0x40]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [line_length]]
	mov	rsi, qword ptr [rbp - 0x60]
	cmp	rsi, rax
	je	.label_948
	movabs	rax, OFFSET FLAT:color_indicator
	add	rax, 0x170
	mov	rdi, rax
	call	put_indicator
.label_948:
	jmp	.label_946
.label_946:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cae0

	.globl print_type_indicator
	.type print_type_indicator, @function
print_type_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], edx
	mov	al, byte ptr [rbp - 1]
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 0xc]
	and	al, 1
	movzx	edi, al
	call	get_type_indicator
	mov	byte ptr [rbp - 0xd], al
	cmp	byte ptr [rbp - 0xd], 0
	je	.label_954
	jmp	.label_955
.label_955:
	movsx	edi, byte ptr [rbp - 0xd]
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [dired_pos]]
	add	rcx, 1
	mov	qword ptr [word ptr [dired_pos]],  rcx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_954
.label_954:
	cmp	byte ptr [rbp - 0xd], 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cb60

	.globl get_color_indicator
	.type get_color_indicator, @function
get_color_indicator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	je	.label_979
	mov	eax, 0xffffffff
	xor	ecx, ecx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	esi, dword ptr [rdx + 0xac]
	mov	dword ptr [rbp - 0x2c], esi
	mov	rdx, qword ptr [rbp - 8]
	mov	dil, byte ptr [rdx + 0xb9]
	test	dil, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_989
.label_979:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	je	.label_1004
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb9], 1
	je	.label_1004
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xac]
	mov	dword ptr [rbp - 0x3c], ecx
	jmp	.label_1009
.label_1004:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	dword ptr [rbp - 0x3c], ecx
.label_1009:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0xb9]
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x30], eax
.label_989:
	cmp	dword ptr [rbp - 0x30], -1
	jne	.label_961
	mov	edi, 0xc
	call	is_colored
	test	al, 1
	jne	.label_970
	jmp	.label_961
.label_970:
	mov	dword ptr [rbp - 0x10], 0xc
	jmp	.label_973
.label_961:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_996
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0xa8]
	mov	eax, ecx
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + get_color_indicator.filetype_indicator]]
	mov	dword ptr [rbp - 0x10], ecx
	jmp	.label_972
.label_996:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_998
	mov	dword ptr [rbp - 0x10], 5
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x800
	cmp	eax, 0
	je	.label_991
	mov	edi, 0x10
	call	is_colored
	test	al, 1
	jne	.label_1000
	jmp	.label_991
.label_1000:
	mov	dword ptr [rbp - 0x10], 0x10
	jmp	.label_997
.label_991:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_1005
	mov	edi, 0x11
	call	is_colored
	test	al, 1
	jne	.label_1008
	jmp	.label_1005
.label_1008:
	mov	dword ptr [rbp - 0x10], 0x11
	jmp	.label_995
.label_1005:
	mov	edi, 0x15
	call	is_colored
	test	al, 1
	jne	.label_1012
	jmp	.label_958
.label_1012:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xc0], 1
	je	.label_958
	mov	dword ptr [rbp - 0x10], 0x15
	jmp	.label_980
.label_958:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x49
	cmp	eax, 0
	je	.label_967
	mov	edi, 0xe
	call	is_colored
	test	al, 1
	jne	.label_987
	jmp	.label_967
.label_987:
	mov	dword ptr [rbp - 0x10], 0xe
	jmp	.label_975
.label_967:
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	cmp	rcx, qword ptr [rdx + 0x28]
	jae	.label_977
	mov	edi, 0x16
	call	is_colored
	test	al, 1
	jne	.label_986
	jmp	.label_977
.label_986:
	mov	dword ptr [rbp - 0x10], 0x16
.label_977:
	jmp	.label_975
.label_975:
	jmp	.label_980
.label_980:
	jmp	.label_995
.label_995:
	jmp	.label_997
.label_997:
	jmp	.label_971
.label_998:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_999
	mov	dword ptr [rbp - 0x10], 6
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_1003
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_1003
	mov	edi, 0x14
	call	is_colored
	test	al, 1
	jne	.label_1010
	jmp	.label_1003
.label_1010:
	mov	dword ptr [rbp - 0x10], 0x14
	jmp	.label_982
.label_1003:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_957
	mov	edi, 0x13
	call	is_colored
	test	al, 1
	jne	.label_963
	jmp	.label_957
.label_963:
	mov	dword ptr [rbp - 0x10], 0x13
	jmp	.label_981
.label_957:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_983
	mov	edi, 0x12
	call	is_colored
	test	al, 1
	jne	.label_976
	jmp	.label_983
.label_976:
	mov	dword ptr [rbp - 0x10], 0x12
.label_983:
	jmp	.label_981
.label_981:
	jmp	.label_982
.label_982:
	jmp	.label_968
.label_999:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_1001
	mov	dword ptr [rbp - 0x10], 7
	jmp	.label_965
.label_1001:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_994
	mov	dword ptr [rbp - 0x10], 8
	jmp	.label_964
.label_994:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_1002
	mov	dword ptr [rbp - 0x10], 9
	jmp	.label_962
.label_1002:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_1007
	mov	dword ptr [rbp - 0x10], 0xa
	jmp	.label_960
.label_1007:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1011
	mov	dword ptr [rbp - 0x10], 0xb
	jmp	.label_956
.label_1011:
	mov	dword ptr [rbp - 0x10], 0xd
.label_956:
	jmp	.label_960
.label_960:
	jmp	.label_962
.label_962:
	jmp	.label_964
.label_964:
	jmp	.label_965
.label_965:
	jmp	.label_968
.label_968:
	jmp	.label_971
.label_971:
	jmp	.label_972
.label_972:
	jmp	.label_973
.label_973:
	mov	qword ptr [rbp - 0x18], 0
	cmp	dword ptr [rbp - 0x10], 5
	jne	.label_974
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax,  qword ptr [word ptr [color_ext_list]]
	mov	qword ptr [rbp - 0x18], rax
.label_992:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_984
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_988
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rsi]
	add	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rdx
	mov	rdx, rcx
	call	c_strncasecmp
	cmp	eax, 0
	jne	.label_988
	jmp	.label_984
.label_988:
	jmp	.label_1006
.label_1006:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_992
.label_984:
	jmp	.label_974
.label_974:
	cmp	dword ptr [rbp - 0x10], 7
	jne	.label_966
	cmp	dword ptr [rbp - 0x30], 0
	jne	.label_966
	test	byte ptr [byte ptr [color_symlink_as_referent]],  1
	jne	.label_959
	mov	edi, 0xd
	call	is_colored
	test	al, 1
	jne	.label_959
	jmp	.label_993
.label_959:
	mov	dword ptr [rbp - 0x10], 0xd
.label_993:
	jmp	.label_966
.label_966:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_969
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_990
.label_969:
	movabs	rax, OFFSET FLAT:color_indicator
	mov	ecx, dword ptr [rbp - 0x10]
	mov	edx, ecx
	shl	rdx, 4
	add	rax, rdx
	mov	qword ptr [rbp - 0x48], rax
.label_990:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_978
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_985
.label_978:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_985
.label_985:
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d0a0

	.globl get_type_indicator
	.type get_type_indicator, @function
get_type_indicator:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], edx
	test	byte ptr [rbp - 1], 1
	je	.label_1022
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_1029
	jmp	.label_1032
.label_1022:
	cmp	dword ptr [rbp - 0xc], 5
	jne	.label_1032
.label_1029:
	test	byte ptr [rbp - 1], 1
	je	.label_1035
	cmp	dword ptr [dword ptr [indicator_style]],  3
	jne	.label_1035
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0x49
	cmp	eax, 0
	je	.label_1035
	mov	byte ptr [rbp - 0xd], 0x2a
	jmp	.label_1015
.label_1035:
	mov	byte ptr [rbp - 0xd], 0
.label_1015:
	jmp	.label_1018
.label_1032:
	test	byte ptr [rbp - 1], 1
	je	.label_1020
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1023
	jmp	.label_1027
.label_1020:
	cmp	dword ptr [rbp - 0xc], 3
	je	.label_1023
	cmp	dword ptr [rbp - 0xc], 9
	jne	.label_1027
.label_1023:
	mov	byte ptr [rbp - 0xd], 0x2f
	jmp	.label_1031
.label_1027:
	cmp	dword ptr [dword ptr [indicator_style]],  1
	jne	.label_1033
	mov	byte ptr [rbp - 0xd], 0
	jmp	.label_1021
.label_1033:
	test	byte ptr [rbp - 1], 1
	je	.label_1037
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_1039
	jmp	.label_1016
.label_1037:
	cmp	dword ptr [rbp - 0xc], 6
	jne	.label_1016
.label_1039:
	mov	byte ptr [rbp - 0xd], 0x40
	jmp	.label_1013
.label_1016:
	test	byte ptr [rbp - 1], 1
	je	.label_1024
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	je	.label_1026
	jmp	.label_1030
.label_1024:
	cmp	dword ptr [rbp - 0xc], 1
	jne	.label_1030
.label_1026:
	mov	byte ptr [rbp - 0xd], 0x7c
	jmp	.label_1028
.label_1030:
	test	byte ptr [rbp - 1], 1
	je	.label_1034
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	je	.label_1036
	jmp	.label_1038
.label_1034:
	cmp	dword ptr [rbp - 0xc], 7
	jne	.label_1038
.label_1036:
	mov	byte ptr [rbp - 0xd], 0x3d
	jmp	.label_1014
.label_1038:
	test	byte ptr [rbp - 1], 1
	je	.label_1017
	xor	eax, eax
	mov	cl, al
	test	cl, 1
	jne	.label_1019
	jmp	.label_1017
.label_1019:
	mov	byte ptr [rbp - 0xd], 0x3e
	jmp	.label_1025
.label_1017:
	mov	byte ptr [rbp - 0xd], 0
.label_1025:
	jmp	.label_1014
.label_1014:
	jmp	.label_1028
.label_1028:
	jmp	.label_1013
.label_1013:
	jmp	.label_1021
.label_1021:
	jmp	.label_1031
.label_1031:
	jmp	.label_1018
.label_1018:
	movsx	eax, byte ptr [rbp - 0xd]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d260

	.globl length_of_file_name_and_frills
	.type length_of_file_name_and_frills, @function
length_of_file_name_and_frills:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2d0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	test	byte ptr [byte ptr [print_inode]],  1
	je	.label_1044
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1040
	lea	rsi, [rbp - 0x2a0]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x20]
	call	umaxtostr
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x2b0], rax
	jmp	.label_1048
.label_1040:
	movsxd	rax,  dword ptr [dword ptr [inode_number_width]]
	mov	qword ptr [rbp - 0x2b0], rax
.label_1048:
	mov	rax, qword ptr [rbp - 0x2b0]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1044:
	test	byte ptr [byte ptr [print_block_size]],  1
	je	.label_1043
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1047
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax + 0xb8], 1
	jne	.label_1049
	movabs	rax, OFFSET FLAT:label_845
	mov	qword ptr [rbp - 0x2b8], rax
	jmp	.label_1051
.label_1049:
	mov	eax, 0x200
	mov	ecx, eax
	lea	rsi, [rbp - 0x2a0]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdx + 0x58]
	mov	edx,  dword ptr [dword ptr [human_output_opts]]
	mov	r8,  qword ptr [word ptr [output_block_size]]
	call	human_readable
	mov	qword ptr [rbp - 0x2b8], rax
.label_1051:
	mov	rax, qword ptr [rbp - 0x2b8]
	mov	rdi, rax
	call	strlen
	mov	qword ptr [rbp - 0x2c0], rax
	jmp	.label_1045
.label_1047:
	movsxd	rax,  dword ptr [dword ptr [block_size_width]]
	mov	qword ptr [rbp - 0x2c0], rax
.label_1045:
	mov	rax, qword ptr [rbp - 0x2c0]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1043:
	test	byte ptr [byte ptr [print_scontext]],  1
	je	.label_1041
	cmp	dword ptr [dword ptr [format]],  4
	jne	.label_1042
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0xb0]
	call	strlen
	mov	qword ptr [rbp - 0x2c8], rax
	jmp	.label_1050
.label_1042:
	movsxd	rax,  dword ptr [dword ptr [scontext_width]]
	mov	qword ptr [rbp - 0x2c8], rax
.label_1050:
	mov	rax, qword ptr [rbp - 0x2c8]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
.label_1041:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rsi,  qword ptr [word ptr [filename_quoting_options]]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xc4]
	call	quote_name_width
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rax
	cmp	dword ptr [dword ptr [indicator_style]],  0
	je	.label_1046
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0xb8]
	mov	rax, qword ptr [rbp - 8]
	mov	esi, dword ptr [rax + 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa8]
	and	cl, 1
	movzx	edi, cl
	call	get_type_indicator
	mov	byte ptr [rbp - 0x2a1], al
	movsx	edx, byte ptr [rbp - 0x2a1]
	cmp	edx, 0
	setne	al
	and	al, 1
	movzx	edx, al
	movsxd	r8, edx
	add	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], r8
.label_1046:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x2d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d480

	.globl quote_name_width
	.type quote_name_width, @function
quote_name_width:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x2048
	lea	rax, [rbp - 0x2028]
	mov	ecx, 0x2000
	mov	r8d, ecx
	lea	r9, [rbp - 0x2030]
	lea	r10, [rbp - 0x2031]
	lea	r11, [rbp - 0x2020]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x2028], r11
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	ebx, dword ptr [rbp - 0x1c]
	mov	rdi, rax
	mov	rsi, r8
	mov	r8d, ebx
	mov	qword ptr [rsp], r10
	call	quote_name_buf
	lea	rcx, [rbp - 0x2020]
	mov	rdx, qword ptr [rbp - 0x2028]
	cmp	rdx, rcx
	mov	qword ptr [rbp - 0x2040], rax
	je	.label_1052
	mov	rax, qword ptr [rbp - 0x2028]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_1052
	mov	rdi, qword ptr [rbp - 0x2028]
	call	free
.label_1052:
	mov	al, byte ptr [rbp - 0x2031]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	add	rdx, qword ptr [rbp - 0x2030]
	mov	qword ptr [rbp - 0x2030], rdx
	mov	rax, qword ptr [rbp - 0x2030]
	add	rsp, 0x2048
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d550

	.globl calculate_columns
	.type calculate_columns, @function
calculate_columns:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	rcx,  qword ptr [word ptr [max_idx]]
	cmp	rcx,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1056
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1067
.label_1056:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x50], rax
.label_1067:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x20], rax
	call	init_column_info
	mov	qword ptr [rbp - 0x10], 0
.label_1066:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1063
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [sorted_file]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	length_of_file_name_and_frills
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_1061:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_1060
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	test	byte ptr [rax], 1
	je	.label_1062
	test	byte ptr [rbp - 1], 1
	je	.label_1054
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [cwd_n_used]]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, rcx
	xor	esi, esi
	mov	qword ptr [rbp - 0x60], rdx
	mov	edx, esi
	mov	rcx, qword ptr [rbp - 0x60]
	div	rcx
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, rdi
	xor	esi, esi
	mov	edx, esi
	mov	r8, qword ptr [rbp - 0x68]
	div	r8
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1057
.label_1054:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	add	rcx, 1
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x70], rdx
.label_1057:
	mov	rax, qword ptr [rbp - 0x70]
	mov	ecx, 2
	xor	edx, edx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	cmp	rsi, qword ptr [rbp - 0x38]
	cmove	ecx, edx
	movsxd	rsi, ecx
	add	rax, rsi
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	imul	rsi, rsi, 0x18
	add	rsi,  qword ptr [word ptr [column_info]]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rax, qword ptr [rsi + rax*8]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_1053
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rdx, rdx, 0x18
	add	rdx,  qword ptr [word ptr [column_info]]
	mov	rdx, qword ptr [rdx + 0x10]
	sub	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	imul	rdx, rdx, 0x18
	add	rdx,  qword ptr [word ptr [column_info]]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	rax, qword ptr [rax + 8]
	cmp	rax,  qword ptr [word ptr [line_length]]
	setb	sil
	mov	rax, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	and	sil, 1
	mov	byte ptr [rax], sil
.label_1053:
	jmp	.label_1062
.label_1062:
	jmp	.label_1058
.label_1058:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1061
.label_1060:
	jmp	.label_1064
.label_1064:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1066
.label_1063:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_1059:
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x18]
	jae	.label_1055
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	test	byte ptr [rax], 1
	je	.label_1065
	jmp	.label_1055
.label_1065:
	jmp	.label_1068
.label_1068:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1059
.label_1055:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d7e0

	.globl indent
	.type indent, @function
indent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
.label_1070:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1069
	cmp	qword ptr [word ptr [tabsize]],  0
	je	.label_1072
	mov	rax, qword ptr [rbp - 0x10]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [tabsize]]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [word ptr [tabsize]]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, rax
	jbe	.label_1072
	mov	edi, 9
	call	putchar_unlocked
	mov	rcx,  qword ptr [word ptr [tabsize]]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rax, rdx
	xor	edi, edi
	mov	edx, edi
	div	qword ptr [word ptr [tabsize]]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_1071
.label_1072:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	dword ptr [rbp - 0x20], eax
.label_1071:
	jmp	.label_1070
.label_1069:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d8b0

	.globl init_column_info
	.type init_column_info, @function
init_column_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax,  qword ptr [word ptr [max_idx]]
	cmp	rax,  qword ptr [word ptr [cwd_n_used]]
	jae	.label_1083
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1076
.label_1083:
	mov	rax,  qword ptr [word ptr [cwd_n_used]]
	mov	qword ptr [rbp - 0x48], rax
.label_1076:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1080
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [max_idx]]
	shr	rcx, 1
	cmp	rax, rcx
	jae	.label_1078
	mov	eax, 0x30
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [column_info]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	call	xnrealloc
	mov	qword ptr [word ptr [column_info]],  rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1085
.label_1078:
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx,  qword ptr [word ptr [column_info]]
	mov	rsi,  qword ptr [word ptr [max_idx]]
	mov	rdi, rcx
	call	xnrealloc
	mov	qword ptr [word ptr [column_info]],  rax
	mov	rax,  qword ptr [word ptr [max_idx]]
	mov	qword ptr [rbp - 0x18], rax
.label_1085:
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	add	rax, 1
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	imul	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_1074
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_1073
.label_1074:
	call	xalloc_die
.label_1073:
	mov	eax, 8
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	shr	rcx, 1
	mov	rdi, rcx
	call	xnmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax,  qword ptr [word ptr [init_column_info.column_info_alloc]]
	mov	qword ptr [rbp - 8], rax
.label_1077:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1075
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	shl	rax, 3
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1077
.label_1075:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [init_column_info.column_info_alloc]],  rax
.label_1080:
	mov	qword ptr [rbp - 8], 0
.label_1084:
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_1079
	mov	rax, qword ptr [rbp - 8]
	imul	rax, rax, 0x18
	add	rax,  qword ptr [word ptr [column_info]]
	mov	byte ptr [rax], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	imul	rax, rax, 3
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp - 0x40], 0
.label_1086:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 8]
	ja	.label_1082
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x18
	add	rcx,  qword ptr [word ptr [column_info]]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rax*8], 3
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1086
.label_1082:
	jmp	.label_1081
.label_1081:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1084
.label_1079:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db10

	.globl format_user
	.type format_user, @function
format_user:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	jne	.label_1087
	movabs	rax, OFFSET FLAT:label_845
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1090
.label_1087:
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_1088
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1089
.label_1088:
	mov	edi, dword ptr [rbp - 4]
	call	getuser
	mov	qword ptr [rbp - 0x20], rax
.label_1089:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_1090:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	edx, dword ptr [rbp - 8]
	mov	rdi, rax
	call	format_user_or_group
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db90

	.globl format_group
	.type format_group, @function
format_group:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	and	al, 1
	mov	byte ptr [rbp - 9], al
	test	byte ptr [rbp - 9], 1
	jne	.label_1091
	movabs	rax, OFFSET FLAT:label_845
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1094
.label_1091:
	test	byte ptr [byte ptr [numeric_ids]],  1
	je	.label_1092
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], rcx
	jmp	.label_1093
.label_1092:
	mov	edi, dword ptr [rbp - 4]
	call	getgroup
	mov	qword ptr [rbp - 0x20], rax
.label_1093:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
.label_1094:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 4]
	mov	esi, ecx
	mov	edx, dword ptr [rbp - 8]
	mov	rdi, rax
	call	format_user_or_group
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dc10

	.globl format_user_or_group
	.type format_user_or_group, @function
format_user_or_group:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	cmp	qword ptr [rbp - 8], 0
	je	.label_1095
	xor	esi, esi
	mov	eax, dword ptr [rbp - 0x14]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x2c], eax
	call	gnu_mbswidth
	xor	esi, esi
	mov	ecx, dword ptr [rbp - 0x2c]
	sub	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	cmp	esi, dword ptr [rbp - 0x24]
	jle	.label_1100
	xor	eax, eax
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_1097
.label_1100:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x30], eax
.label_1097:
	mov	eax, dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x28], eax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x34], eax
	call	strlen
	movsxd	rsi, dword ptr [rbp - 0x28]
	add	rax, rsi
	mov	qword ptr [rbp - 0x20], rax
.label_1099:
	mov	edi, 0x20
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x38], eax
	mov	eax, dword ptr [rbp - 0x28]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x28], ecx
	cmp	eax, 0
	jne	.label_1099
	jmp	.label_1096
.label_1095:
	movabs	rdi, OFFSET FLAT:label_1098
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	al, 0
	call	printf
	movsxd	rdx, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x3c], eax
.label_1096:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	add	rax,  qword ptr [word ptr [dired_pos]]
	mov	qword ptr [word ptr [dired_pos]],  rax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dd00

	.globl align_nstrftime
	.type align_nstrftime, @function
align_nstrftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, dl
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	test	byte ptr [byte ptr [use_abformat]],  1
	je	.label_1101
	movabs	rax, OFFSET FLAT:abformat
	mov	rcx, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rcx + 0x10]
	mov	dl, byte ptr [rbp - 0x11]
	and	dl, 1
	movzx	esi, dl
	mov	edi, esi
	imul	rdi, rdi, 0x600
	add	rax, rdi
	shl	rcx, 7
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1102
.label_1101:
	mov	al, byte ptr [rbp - 0x11]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rdx,  qword ptr [word ptr [+ (rdx * 8) + long_time_format]]
	mov	qword ptr [rbp - 0x40], rdx
.label_1102:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9d, dword ptr [rbp - 0x2c]
	call	nstrftime
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ddb0

	.globl long_time_expected_width
	.type long_time_expected_width, @function
long_time_expected_width:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x440
	cmp	dword ptr [dword ptr [long_time_expected_width.width]],  0
	jge	.label_1103
	lea	rsi, [rbp - 8]
	lea	rdx, [rbp - 0x40]
	mov	qword ptr [rbp - 8], 0
	mov	rdi,  qword ptr [word ptr [localtz]]
	call	localtime_rz
	cmp	rax, 0
	je	.label_1104
	mov	eax, 0x3e9
	mov	esi, eax
	xor	eax, eax
	lea	rcx, [rbp - 0x40]
	lea	rdi, [rbp - 0x430]
	mov	r8,  qword ptr [word ptr [localtz]]
	mov	edx, eax
	mov	r9d, eax
	call	align_nstrftime
	mov	qword ptr [rbp - 0x438], rax
	cmp	qword ptr [rbp - 0x438], 0
	je	.label_1106
	xor	edx, edx
	lea	rdi, [rbp - 0x430]
	mov	rsi, qword ptr [rbp - 0x438]
	call	mbsnwidth
	mov	dword ptr [dword ptr [long_time_expected_width.width]],  eax
.label_1106:
	jmp	.label_1104
.label_1104:
	cmp	dword ptr [dword ptr [long_time_expected_width.width]],  0
	jge	.label_1105
	mov	dword ptr [dword ptr [long_time_expected_width.width]],  0
.label_1105:
	jmp	.label_1103
.label_1103:
	mov	eax,  dword ptr [dword ptr [long_time_expected_width.width]]
	add	rsp, 0x440
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40de80

	.globl timetostr
	.type timetostr, @function
timetostr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40deb0

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0x400
	mov	qword ptr [rbp - 0x28], 0x2000
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jae	.label_1116
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1117
.label_1116:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
.label_1117:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1109
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1110
.label_1109:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
.label_1110:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x38], rax
.label_1112:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1118
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1108
.label_1118:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	call	readlink
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_1107
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_1107
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	ecx, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 0x6c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1108
.label_1107:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x38]
	jae	.label_1119
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1108
.label_1119:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	movabs	rdi, 0x3fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rdi
	ja	.label_1115
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1111
.label_1115:
	movabs	rax, 0x7fffffffffffffff
	cmp	qword ptr [rbp - 0x38], rax
	jae	.label_1113
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1114
.label_1113:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1108
.label_1114:
	jmp	.label_1111
.label_1111:
	jmp	.label_1112
.label_1108:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e070

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	usage
	.section	.text
	.align	32
	#Procedure 0x40e080

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x40], -1
	mov	byte ptr [rbp - 0x41], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x30], 0
.label_1121:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1129
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	strncmp
	cmp	eax, 0
	jne	.label_1127
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx + rax*8]
	call	strlen
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1131
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1126
.label_1131:
	cmp	qword ptr [rbp - 0x40], -1
	jne	.label_1123
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1125
.label_1123:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1122
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x40]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	imul	rdx, qword ptr [rbp - 0x30]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_1128
.label_1122:
	mov	byte ptr [rbp - 0x41], 1
.label_1128:
	jmp	.label_1125
.label_1125:
	jmp	.label_1130
.label_1130:
	jmp	.label_1127
.label_1127:
	jmp	.label_1120
.label_1120:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1121
.label_1129:
	test	byte ptr [rbp - 0x41], 1
	je	.label_1124
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1126
.label_1124:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1126:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e1d0

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], -1
	jne	.label_1132
	movabs	rdi, OFFSET FLAT:label_1135
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1134
.label_1132:
	movabs	rdi, OFFSET FLAT:label_1133
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
.label_1134:
	mov	rax, qword ptr [rbp - 0x28]
	xor	edi, edi
	mov	esi, 8
	mov	qword ptr [rbp - 0x20], rax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, rax
	call	quotearg_n_style
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quote_n
	xor	edi, edi
	mov	dword ptr [rbp - 0x3c], edi
	mov	esi, dword ptr [rbp - 0x3c]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e270

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1139
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, rax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [rbp - 0x2c], eax
.label_1144:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1143
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1137
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rcx, qword ptr [rbp - 0x20]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	je	.label_1141
.label_1137:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1136
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rdx, qword ptr [rbp - 0x20]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1142
.label_1141:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rax
	call	quote
	movabs	rsi, OFFSET FLAT:label_1140
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
.label_1142:
	jmp	.label_1138
.label_1138:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1144
.label_1143:
	mov	edi, 0xa
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	putc_unlocked
	mov	dword ptr [rbp - 0x50], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e3c0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	call	argmatch
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_1146
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1145
.label_1146:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	argmatch_invalid
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	argmatch_valid
	call	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], -1
.label_1145:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e450
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_1149:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1147
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, qword ptr [rbp - 0x30]
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_1148
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1151
.label_1148:
	jmp	.label_1150
.label_1150:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1149
.label_1147:
	mov	qword ptr [rbp - 8], 0
.label_1151:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e4f0

	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1152
	jmp	.label_1154
.label_1154:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1152
	jmp	.label_1153
.label_1153:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1155
	jmp	.label_1152
.label_1152:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1156
.label_1155:
	mov	byte ptr [rbp - 1], 0
.label_1156:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e560

	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1157
	jmp	.label_1160
.label_1160:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_1158
	jmp	.label_1157
.label_1157:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1159
.label_1158:
	mov	byte ptr [rbp - 1], 0
.label_1159:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e5b0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1161
	jmp	.label_1162
.label_1162:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1163
.label_1161:
	mov	byte ptr [rbp - 1], 0
.label_1163:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e5e0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_1164
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_1164:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e610
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_1165
	jmp	.label_1167
.label_1167:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1168
	jmp	.label_1165
.label_1165:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1166
.label_1168:
	mov	byte ptr [rbp - 1], 0
.label_1166:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e660

	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1169
	jmp	.label_1171
.label_1171:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1170
.label_1169:
	mov	byte ptr [rbp - 1], 0
.label_1170:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e6a0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1172
	jmp	.label_1174
.label_1174:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1173
.label_1172:
	mov	byte ptr [rbp - 1], 0
.label_1173:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e6e0
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1175
	jmp	.label_1177
.label_1177:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1176
.label_1175:
	mov	byte ptr [rbp - 1], 0
.label_1176:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e720
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1178
	jmp	.label_1180
.label_1180:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1179
.label_1178:
	mov	byte ptr [rbp - 1], 0
.label_1179:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e760
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_1181
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1183]]
	jmp	rcx
.label_3012:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1182
.label_1181:
	mov	byte ptr [rbp - 1], 0
.label_1182:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e7b0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1184
	jmp	.label_1186
.label_1186:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_1187
	jmp	.label_1184
.label_1184:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1185
.label_1187:
	mov	byte ptr [rbp - 1], 0
.label_1185:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e800
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1188
	jmp	.label_1190
.label_1190:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1189
.label_1188:
	mov	byte ptr [rbp - 1], 0
.label_1189:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e840
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_1191
	jmp	.label_1194
.label_1194:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_1191
	jmp	.label_1192
.label_1192:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_1193
	jmp	.label_1191
.label_1191:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1195
.label_1193:
	mov	byte ptr [rbp - 1], 0
.label_1195:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e8b0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1196
	jmp	.label_1198
.label_1198:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1197
.label_1196:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1197:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e8f0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_1199
	jmp	.label_1201
.label_1201:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1200
.label_1199:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_1200:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e930

	.globl c_strncasecmp
	.type c_strncasecmp, @function
c_strncasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	je	.label_1206
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1202
.label_1206:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1205
.label_1202:
	jmp	.label_1204
.label_1204:
	mov	rax, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x31], cl
	mov	rdx, qword ptr [rbp - 0x30]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x32], cl
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, -1
	mov	qword ptr [rbp - 0x20], rdx
	cmp	rdx, 0
	je	.label_1208
	movzx	eax, byte ptr [rbp - 0x31]
	cmp	eax, 0
	jne	.label_1207
.label_1208:
	jmp	.label_1203
.label_1207:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	movzx	eax, byte ptr [rbp - 0x31]
	movzx	ecx, byte ptr [rbp - 0x32]
	cmp	eax, ecx
	je	.label_1204
.label_1203:
	movzx	eax, byte ptr [rbp - 0x31]
	movzx	ecx, byte ptr [rbp - 0x32]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_1205:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ea10

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x170
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 0xfffffffc
	mov	dword ptr [rbp - 0x60], esi
	mov	esi, dword ptr [rbp - 0x60]
	and	esi, 4
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	esi, dword ptr [rbp - 0x14]
	and	esi, 3
	mov	dword ptr [rbp - 0x14], esi
	mov	esi, dword ptr [rbp - 0x14]
	mov	ecx, dword ptr [rbp - 0x14]
	sub	ecx, 1
	and	esi, ecx
	cmp	esi, 0
	je	.label_1217
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1209
.label_1217:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1251
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1209
.label_1251:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_1215
	call	__errno_location
	mov	dword ptr [rax], 2
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1209
.label_1215:
	mov	qword ptr [rbp - 0x70], 0
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_1270
	call	xgetcwd
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1276
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1209
.label_1276:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x20]
	call	strchr
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rax, rdi
	cmp	rax, 0x1000
	jge	.label_1222
	mov	eax, 0x1000
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	xrealloc
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x20]
	sub	rsi, rdi
	add	rax, rsi
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1232
.label_1222:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
.label_1232:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x70], 0
	jmp	.label_1249
.label_1270:
	mov	eax, 0x1000
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_1260
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x70]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x70]
	add	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rdx
.label_1260:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
.label_1249:
	jmp	.label_1210
.label_1210:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax], 0
	je	.label_1213
	jmp	.label_1218
.label_1218:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1253
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1218
.label_1253:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
.label_1228:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x40]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x139], cl
	je	.label_1230
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x139], dl
.label_1230:
	mov	al, byte ptr [rbp - 0x139]
	test	al, 1
	jne	.label_1263
	jmp	.label_1248
.label_1263:
	jmp	.label_1250
.label_1250:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1228
.label_1248:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 0
	jne	.label_1256
	jmp	.label_1213
.label_1256:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 1
	jne	.label_1265
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1265
	jmp	.label_1271
.label_1265:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	cmp	rax, 2
	jne	.label_1211
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1211
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2e
	jne	.label_1211
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_1219
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_1244:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x13a], cl
	jbe	.label_1236
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x13a], dl
.label_1236:
	mov	al, byte ptr [rbp - 0x13a]
	test	al, 1
	jne	.label_1241
	jmp	.label_1245
.label_1241:
	jmp	.label_1247
.label_1247:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1244
.label_1245:
	jmp	.label_1219
.label_1219:
	jmp	.label_1254
.label_1211:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	je	.label_1257
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
.label_1257:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x48]
	jb	.label_1268
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	add	rax, 1
	cmp	rax, 0x1000
	jle	.label_1272
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	sub	rax, rcx
	add	rax, 1
	add	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rax
	jmp	.label_1223
.label_1272:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, 0x1000
	mov	qword ptr [rbp - 0x118], rax
.label_1223:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x118]
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x28], rax
.label_1268:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	mov	rdi, rax
	mov	rdx, rcx
	mov	qword ptr [rbp - 0x148], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x28], rax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x38]
	sub	rcx, rdx
	add	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx], 0
	test	byte ptr [rbp - 0x61], 1
	je	.label_1262
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_1262
	mov	dword ptr [rbp - 0xf0], 0
	jmp	.label_1258
.label_1262:
	test	byte ptr [rbp - 0x61], 1
	je	.label_1275
	lea	rsi, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x20]
	call	stat
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1214
.label_1275:
	lea	rsi, [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x20]
	call	lstat
	mov	dword ptr [rbp - 0x14c], eax
.label_1214:
	mov	eax, dword ptr [rbp - 0x14c]
	cmp	eax, 0
	je	.label_1277
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	cmp	dword ptr [rbp - 0x14], 0
	jne	.label_1229
	jmp	.label_1233
.label_1229:
	cmp	dword ptr [rbp - 0x14], 1
	jne	.label_1274
	movabs	rsi, OFFSET FLAT:label_600
	mov	rdi, qword ptr [rbp - 0x40]
	call	strspn
	mov	rsi, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rsi + rax]
	cmp	ecx, 0
	jne	.label_1243
	cmp	dword ptr [rbp - 0x5c], 2
	je	.label_1279
.label_1243:
	jmp	.label_1233
.label_1279:
	jmp	.label_1227
.label_1274:
	mov	dword ptr [rbp - 0xf0], 0
.label_1277:
	jmp	.label_1258
.label_1258:
	mov	eax, dword ptr [rbp - 0xf0]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_1261
	lea	rdi, [rbp - 0x58]
	lea	rdx, [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x10]
	call	seen_triple
	test	al, 1
	jne	.label_1269
	jmp	.label_1278
.label_1269:
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_1221
	jmp	.label_1227
.label_1221:
	mov	dword ptr [rbp - 0x5c], 0x28
	jmp	.label_1233
.label_1278:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0xd8]
	call	areadlink_with_size
	mov	qword ptr [rbp - 0x120], rax
	cmp	qword ptr [rbp - 0x120], 0
	jne	.label_1212
	cmp	dword ptr [rbp - 0x14], 2
	jne	.label_1235
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_1235
	jmp	.label_1227
.label_1235:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], ecx
	jmp	.label_1233
.label_1212:
	mov	rdi, qword ptr [rbp - 0x120]
	call	strlen
	mov	qword ptr [rbp - 0x128], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	strlen
	mov	qword ptr [rbp - 0x130], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1238
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	cmp	rax, 0x1000
	jbe	.label_1280
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_1224
.label_1280:
	mov	eax, 0x1000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_1224
.label_1224:
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x50]
	call	xmalloc
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1225
.label_1238:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x50]
	jbe	.label_1264
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x130]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x50]
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
.label_1264:
	jmp	.label_1225
.label_1225:
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x130]
	add	rcx, 1
	mov	rdi, rax
	mov	rdx, rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x128]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x160], rax
	mov	qword ptr [rbp - 0x168], rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x10], rax
	mov	rcx, qword ptr [rbp - 0x120]
	movsx	r8d, byte ptr [rcx]
	cmp	r8d, 0x2f
	jne	.label_1267
	mov	qword ptr [rbp - 0x138], 0
	cmp	qword ptr [rbp - 0x138], 0
	je	.label_1255
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x120]
	mov	rdx, qword ptr [rbp - 0x138]
	call	memcpy
.label_1255:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	byte ptr [rax], 0x2f
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1220
.label_1267:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_1237
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_1239:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x169], cl
	jbe	.label_1266
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	sete	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x169], dl
.label_1266:
	mov	al, byte ptr [rbp - 0x169]
	test	al, 1
	jne	.label_1234
	jmp	.label_1231
.label_1234:
	jmp	.label_1246
.label_1246:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1239
.label_1231:
	jmp	.label_1237
.label_1237:
	jmp	.label_1220
.label_1220:
	mov	rdi, qword ptr [rbp - 0x120]
	call	free
	jmp	.label_1252
.label_1261:
	mov	eax, dword ptr [rbp - 0xf0]
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_1240
	mov	rax, qword ptr [rbp - 0x40]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1240
	cmp	dword ptr [rbp - 0x14], 2
	je	.label_1240
	mov	dword ptr [rbp - 0x5c], 0x14
	jmp	.label_1233
.label_1240:
	jmp	.label_1252
.label_1252:
	jmp	.label_1254
.label_1254:
	jmp	.label_1271
.label_1271:
	jmp	.label_1273
.label_1273:
	jmp	.label_1227
.label_1227:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1210
.label_1213:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, qword ptr [rbp - 0x70]
	add	rcx, 1
	cmp	rax, rcx
	jbe	.label_1216
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x2f
	jne	.label_1216
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_1216:
	mov	rax, qword ptr [rbp - 0x28]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_1226
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	sub	rax, rcx
	add	rax, 1
	mov	rsi, rax
	call	xrealloc
	mov	qword ptr [rbp - 0x20], rax
.label_1226:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1242
	mov	rdi, qword ptr [rbp - 0x58]
	call	hash_free
.label_1242:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1209
.label_1233:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_1259
	mov	rdi, qword ptr [rbp - 0x58]
	call	hash_free
.label_1259:
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x170], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x170]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
.label_1209:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x170
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f3e0

	.globl seen_triple
	.type seen_triple, @function
seen_triple:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdx], 0
	jne	.label_1281
	xor	eax, eax
	mov	esi, eax
	movabs	rdx, OFFSET FLAT:triple_hash
	movabs	rcx, OFFSET FLAT:triple_compare_ino_str
	movabs	r8, OFFSET FLAT:triple_free
	mov	qword ptr [rbp - 0x28], 7
	mov	rdi, qword ptr [rbp - 0x28]
	call	hash_initialize
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	jne	.label_1284
	call	xalloc_die
.label_1284:
	jmp	.label_1281
.label_1281:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	seen_file
	test	al, 1
	jne	.label_1282
	jmp	.label_1283
.label_1282:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1285
.label_1283:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	record_file
	mov	byte ptr [rbp - 1], 0
.label_1285:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f4b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f4d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f4f0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_1287
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_1290
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_1287
.label_1290:
	movabs	rdi, OFFSET FLAT:label_1289
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_1291
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_144
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_1286
.label_1291:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_253
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_1286:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1287:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_1288
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_1288:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f5e0

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1292
	xor	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1297
.label_1292:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x2f
	cmove	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_1297:
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x10], rcx
	mov	rdi, qword ptr [rbp - 8]
	call	last_component
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x18], rax
.label_1294:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1293
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_1295
	jmp	.label_1293
.label_1295:
	jmp	.label_1296
.label_1296:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1294
.label_1293:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f690

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_len
	mov	cl, 1
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1298
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	jmp	.label_1298
.label_1298:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edx, al
	mov	esi, edx
	add	rcx, rsi
	add	rcx, 1
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1300
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1299
.label_1300:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	test	byte ptr [rbp - 0x19], 1
	je	.label_1301
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0x2e
.label_1301:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1299:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f760

	.globl last_component
	.type last_component, @function
last_component:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
.label_1303:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1306
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1303
.label_1306:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1305:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_1308
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1304
	mov	byte ptr [rbp - 0x19], 1
	jmp	.label_1307
.label_1304:
	test	byte ptr [rbp - 0x19], 1
	je	.label_1302
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rax
	mov	byte ptr [rbp - 0x19], 0
.label_1302:
	jmp	.label_1307
.label_1307:
	jmp	.label_1309
.label_1309:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1305
.label_1308:
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f800

	.globl base_len
	.type base_len, @function
base_len:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	mov	qword ptr [rbp - 0x10], rax
.label_1313:
	xor	eax, eax
	mov	cl, al
	mov	eax, 1
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1310
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	sete	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1310:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1311
	jmp	.label_1314
.label_1311:
	jmp	.label_1312
.label_1312:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, -1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1313
.label_1314:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f890

	.globl file_has_acl
	.type file_has_acl, @function
file_has_acl:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f8a0

	.globl record_file
	.type record_file, @function
record_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_1315
	jmp	.label_1317
.label_1315:
	mov	eax, 0x18
	mov	edi, eax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	xstrdup
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rdi + 0x10], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	hash_insert
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1316
	call	xalloc_die
.label_1316:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	je	.label_1317
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	triple_free
.label_1317:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f950

	.globl seen_file
	.type seen_file, @function
seen_file:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1318
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1319
.label_1318:
	lea	rax, [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	hash_lookup
	cmp	rax, 0
	setne	dl
	xor	dl, 0xff
	xor	dl, 0xff
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_1319:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f9d0

	.globl strmode
	.type strmode, @function
strmode:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	call	ftypelet
	mov	edi, 0x2d
	mov	ecx, 0x77
	mov	edx, 0x72
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi], al
	mov	r8d, dword ptr [rbp - 4]
	and	r8d, 0x100
	cmp	r8d, 0
	mov	r8d, edi
	cmovne	r8d, edx
	mov	al, r8b
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 1], al
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x80
	cmp	edx, 0
	cmovne	edi, ecx
	mov	al, dil
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + 2], al
	mov	ecx, dword ptr [rbp - 4]
	and	ecx, 0x800
	cmp	ecx, 0
	je	.label_1323
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1322
.label_1323:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 0x40
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x14], eax
.label_1322:
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 3], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x20
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 4], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x10
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 5], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x400
	cmp	eax, 0
	je	.label_1325
	mov	eax, 0x53
	mov	ecx, 0x73
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
	jmp	.label_1324
.label_1325:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 8
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x18], eax
.label_1324:
	mov	eax, dword ptr [rbp - 0x18]
	mov	ecx, 0x2d
	mov	edx, 0x77
	mov	esi, 0x72
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 6], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 4
	cmp	eax, 0
	mov	eax, ecx
	cmovne	eax, esi
	mov	dil, al
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 7], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 2
	cmp	eax, 0
	cmovne	ecx, edx
	mov	dil, cl
	mov	r8, qword ptr [rbp - 0x10]
	mov	byte ptr [r8 + 8], dil
	mov	eax, dword ptr [rbp - 4]
	and	eax, 0x200
	cmp	eax, 0
	je	.label_1321
	mov	eax, 0x54
	mov	ecx, 0x74
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1320
.label_1321:
	mov	eax, 0x2d
	mov	ecx, 0x78
	mov	edx, dword ptr [rbp - 4]
	and	edx, 1
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x1c], eax
.label_1320:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 9], cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xa], 0x20
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0xb], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fbd0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	edi, dword ptr [rbp - 8]
	and	edi, 0xf000
	cmp	edi, 0x8000
	jne	.label_1331
	mov	byte ptr [rbp - 1], 0x2d
	jmp	.label_1326
.label_1331:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_1333
	mov	byte ptr [rbp - 1], 0x64
	jmp	.label_1326
.label_1333:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_1332
	mov	byte ptr [rbp - 1], 0x62
	jmp	.label_1326
.label_1332:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x2000
	jne	.label_1330
	mov	byte ptr [rbp - 1], 0x63
	jmp	.label_1326
.label_1330:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_1329
	mov	byte ptr [rbp - 1], 0x6c
	jmp	.label_1326
.label_1329:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0x1000
	jne	.label_1327
	mov	byte ptr [rbp - 1], 0x70
	jmp	.label_1326
.label_1327:
	mov	eax, dword ptr [rbp - 8]
	and	eax, 0xf000
	cmp	eax, 0xc000
	jne	.label_1328
	mov	byte ptr [rbp - 1], 0x73
	jmp	.label_1326
.label_1328:
	mov	byte ptr [rbp - 1], 0x3f
.label_1326:
	movsx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fcb0

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strmode
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rbp - 8]
	sub	edi, dword ptr [rsi + 0x18]
	cmp	edi, 0
	je	.label_1334
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x46
	jmp	.label_1335
.label_1334:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1336
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x51
	jmp	.label_1339
.label_1336:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 0x18]
	mov	rax, qword ptr [rbp - 8]
	sub	ecx, dword ptr [rax + 0x18]
	cmp	ecx, 0
	je	.label_1337
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], 0x53
	jmp	.label_1338
.label_1337:
	jmp	.label_1338
.label_1338:
	jmp	.label_1339
.label_1339:
	jmp	.label_1335
.label_1335:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fd50

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	mfile_name_concat
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1340
	call	xalloc_die
.label_1340:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fda0

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	add	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x41], 0
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1343
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x2f
	je	.label_1346
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	je	.label_1346
	mov	byte ptr [rbp - 0x41], 0x2f
.label_1346:
	jmp	.label_1342
.label_1343:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2f
	jne	.label_1344
	mov	byte ptr [rbp - 0x41], 0x2e
.label_1344:
	jmp	.label_1342
.label_1342:
	mov	rax, qword ptr [rbp - 0x38]
	movsx	ecx, byte ptr [rbp - 0x41]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rsi, ecx
	add	rax, rsi
	add	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1345
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1341
.label_1345:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x38]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	cl, byte ptr [rbp - 0x41]
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], cl
	movsx	r8d, byte ptr [rbp - 0x41]
	cmp	r8d, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	mov	rax, qword ptr [rbp - 0x58]
	movsxd	rdx, r8d
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1347
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1347:
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	mempcpy
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1341:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ff20

	.globl filevercmp
	.type filevercmp, @function
filevercmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	strcmp
	mov	dword ptr [rbp - 0x50], eax
	cmp	dword ptr [rbp - 0x50], 0
	jne	.label_1358
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1349
.label_1358:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_1363
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1349
.label_1363:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_1366
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1349
.label_1366:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_36
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x54]
	cmp	ecx, eax
	jne	.label_1354
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1349
.label_1354:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_36
	mov	edi, ecx
	mov	dword ptr [rbp - 0x58], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x58]
	cmp	ecx, eax
	jne	.label_1361
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1349
.label_1361:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, OFFSET FLAT:label_1351
	mov	edi, ecx
	mov	dword ptr [rbp - 0x5c], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x5c]
	cmp	ecx, eax
	jne	.label_1367
.label_3170:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1349
.label_1367:
	xor	eax, eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_1351
	mov	edi, ecx
	mov	dword ptr [rbp - 0x60], eax
	call	strcmp
	mov	ecx, dword ptr [rbp - 0x60]
	cmp	ecx, eax
	jne	.label_1355
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1349
.label_1355:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1357
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1357
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1349
.label_1357:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	je	.label_1364
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1364
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1349
.label_1364:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1352
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2e
	jne	.label_1352
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1352:
	lea	rdi, [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	call	match_suffix
	lea	rdi, [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	call	match_suffix
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1365
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_1348
.label_1365:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
.label_1348:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1353
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_1356
.label_1353:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
.label_1356:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_1359
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1350
.label_1359:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_1350
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	call	strncmp
	xor	ecx, ecx
	cmp	ecx, eax
	jne	.label_1350
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x48], rax
.label_1350:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	call	verrevcmp
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_1360
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1362
.label_1360:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x74], eax
.label_1362:
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 4], eax
.label_1349:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410200

	.globl match_suffix
	.type match_suffix, @function
match_suffix:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 0
.label_1373:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	je	.label_1376
	test	byte ptr [rbp - 0x11], 1
	je	.label_1371
	mov	byte ptr [rbp - 0x11], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalpha
	test	al, 1
	jne	.label_1369
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1369
	mov	qword ptr [rbp - 0x10], 0
.label_1369:
	jmp	.label_1372
.label_1371:
	mov	eax, 0x2e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	jne	.label_1370
	mov	byte ptr [rbp - 0x11], 1
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1374
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1374:
	jmp	.label_1368
.label_1370:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	movsx	edi, byte ptr [rax]
	call	c_isalnum
	test	al, 1
	jne	.label_1375
	mov	eax, 0x7e
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movsx	edx, byte ptr [rcx]
	cmp	eax, edx
	je	.label_1375
	mov	qword ptr [rbp - 0x10], 0
.label_1375:
	jmp	.label_1368
.label_1368:
	jmp	.label_1372
.label_1372:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax]
	add	rcx, 1
	mov	qword ptr [rax], rcx
	jmp	.label_1373
.label_1376:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410310

	.globl verrevcmp
	.type verrevcmp, @function
verrevcmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
.label_1397:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rbp - 0x45], al
	jb	.label_1392
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	setb	cl
	mov	byte ptr [rbp - 0x45], cl
.label_1392:
	mov	al, byte ptr [rbp - 0x45]
	test	al, 1
	jne	.label_1398
	jmp	.label_1402
.label_1398:
	mov	dword ptr [rbp - 0x3c], 0
.label_1400:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_1380
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	dl, 1
	test	al, 1
	mov	byte ptr [rbp - 0x46], dl
	jne	.label_1380
	jmp	.label_1384
.label_1380:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rbp - 0x47], cl
	jae	.label_1386
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	al, 0xff
	mov	byte ptr [rbp - 0x47], al
.label_1386:
	mov	al, byte ptr [rbp - 0x47]
	mov	byte ptr [rbp - 0x46], al
.label_1384:
	mov	al, byte ptr [rbp - 0x46]
	test	al, 1
	jne	.label_1403
	jmp	.label_1399
.label_1403:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1401
	xor	eax, eax
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_1404
.label_1401:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x4c], eax
.label_1404:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_1379
	xor	eax, eax
	mov	dword ptr [rbp - 0x50], eax
	jmp	.label_1387
.label_1379:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rcx + rax]
	call	order
	mov	dword ptr [rbp - 0x50], eax
.label_1387:
	mov	eax, dword ptr [rbp - 0x50]
	mov	dword ptr [rbp - 0x44], eax
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_1394
	mov	eax, dword ptr [rbp - 0x40]
	sub	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1378
.label_1394:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1400
.label_1399:
	jmp	.label_1383
.label_1383:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1377
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1383
.label_1377:
	jmp	.label_1389
.label_1389:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1391
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1389
.label_1391:
	jmp	.label_1395
.label_1395:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	xor	edi, edi
	mov	dl, dil
	test	al, 1
	mov	byte ptr [rbp - 0x51], dl
	jne	.label_1405
	jmp	.label_1406
.label_1405:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	mov	byte ptr [rbp - 0x51], al
.label_1406:
	mov	al, byte ptr [rbp - 0x51]
	test	al, 1
	jne	.label_1382
	jmp	.label_1385
.label_1382:
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_1396
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	esi, byte ptr [rcx + rax]
	sub	edx, esi
	mov	dword ptr [rbp - 0x3c], edx
.label_1396:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1395
.label_1385:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1388
	jmp	.label_1407
.label_1388:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1378
.label_1407:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	movsx	edi, byte ptr [rcx + rax]
	call	c_isdigit
	test	al, 1
	jne	.label_1381
	jmp	.label_1390
.label_1381:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1378
.label_1390:
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_1393
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1378
.label_1393:
	jmp	.label_1397
.label_1402:
	mov	dword ptr [rbp - 4], 0
.label_1378:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4105f0

	.globl order
	.type order, @function
order:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 5], al
	movzx	edi, byte ptr [rbp - 5]
	call	c_isdigit
	test	al, 1
	jne	.label_1409
	jmp	.label_1413
.label_1409:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1411
.label_1413:
	movzx	edi, byte ptr [rbp - 5]
	call	c_isalpha
	test	al, 1
	jne	.label_1410
	jmp	.label_1412
.label_1410:
	movzx	eax, byte ptr [rbp - 5]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1411
.label_1412:
	movzx	eax, byte ptr [rbp - 5]
	cmp	eax, 0x7e
	jne	.label_1408
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1411
.label_1408:
	movzx	eax, byte ptr [rbp - 5]
	add	eax, 0xff
	add	eax, 1
	mov	dword ptr [rbp - 4], eax
.label_1411:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410680

	.globl gettime
	.type gettime, @function
gettime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	clock_gettime
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4106b0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rbp - 0x20]
	call	gettime
	movups	xmm0, xmmword ptr [rbp - 0x20]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4106e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1414
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1417
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1418
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_1415
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1416
.label_1418:
	mov	byte ptr [rbp - 5], 0
.label_1416:
	jmp	.label_1414
.label_1414:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410760

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410780

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4107a0

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4107c0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1419:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1420
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1421
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], 1
.label_1423:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1422
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1423
.label_1422:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_1425
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
.label_1425:
	jmp	.label_1421
.label_1421:
	jmp	.label_1424
.label_1424:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1419
.label_1420:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410870
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
.label_1433:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1431
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1427
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1430:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1428
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1430
.label_1428:
	jmp	.label_1427
.label_1427:
	jmp	.label_1426
.label_1426:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1433
.label_1431:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_1429
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_1429
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1432
.label_1429:
	mov	byte ptr [rbp - 1], 0
.label_1432:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410960
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, OFFSET FLAT:label_1434
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x38], rax
	call	hash_get_n_entries
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_n_buckets_used
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 8]
	call	hash_get_max_bucket_length
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, OFFSET FLAT:label_1440
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	al, r8b
	mov	byte ptr [rbp - 0x39], r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, OFFSET FLAT:label_1435
	mov	esi, ecx
	mov	r8b, byte ptr [rbp - 0x39]
	mov	dword ptr [rbp - 0x40], eax
	mov	al, r8b
	call	fprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	movq	xmm0, rdx
	movaps	xmm1,  xmmword ptr [word ptr [rip + label_1436]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_1437]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movsd	xmm0,  qword ptr [word ptr [rip + label_1438]]
	mulsd	xmm3, xmm0
	movq	xmm0, qword ptr [rbp - 0x20]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	divsd	xmm3, xmm1
	mov	rsi, qword ptr [rbp - 0x38]
	movaps	xmm0, xmm3
	mov	dword ptr [rbp - 0x44], eax
	mov	al, 1
	call	fprintf
	movabs	rsi, OFFSET FLAT:label_1439
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x48], eax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x4c], eax
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410a80

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_1447
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1441
.label_1447:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1446:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_1443
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	je	.label_1444
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1444
	jmp	.label_1442
.label_1444:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1441
.label_1442:
	jmp	.label_1445
.label_1445:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1446
.label_1443:
	mov	qword ptr [rbp - 8], 0
.label_1441:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410b40

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x20]
	call	rax
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rsi + 0x10]
	jb	.label_1448
	call	abort
.label_1448:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 4
	add	rax, rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410bb0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rdi + 0x20], 0
	jne	.label_1449
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1450
.label_1449:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x18], rax
.label_1451:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jb	.label_1455
	call	abort
.label_1455:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1453
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1450
.label_1453:
	jmp	.label_1452
.label_1452:
	jmp	.label_1454
.label_1454:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1451
.label_1450:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410c40
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rax
.label_1457:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1460
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1460
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1456
.label_1460:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1457
	jmp	.label_1458
.label_1458:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x20], rax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1461
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1459
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1456
.label_1459:
	jmp	.label_1458
.label_1461:
	mov	qword ptr [rbp - 8], 0
.label_1456:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410d10
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1468:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1465
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1462
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1464:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1469
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_1463
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1466
.label_1463:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1464
.label_1469:
	jmp	.label_1462
.label_1462:
	jmp	.label_1467
.label_1467:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1468
.label_1465:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1466:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410de0
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x30], rdx
.label_1474:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1473
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1477
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1472:
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_1475
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx]
	mov	rsi, qword ptr [rbp - 0x20]
	call	rax
	test	al, 1
	jne	.label_1471
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1476
.label_1471:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1472
.label_1475:
	jmp	.label_1477
.label_1477:
	jmp	.label_1470
.label_1470:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1474
.label_1473:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1476:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410eb0
	.globl hash_string
	.type hash_string, @function
hash_string:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
.label_1479:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x19], cl
	cmp	cl, 0
	je	.label_1478
	imul	rax, qword ptr [rbp - 0x18], 0x1f
	movzx	ecx, byte ptr [rbp - 0x19]
	mov	edx, ecx
	add	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rax, qword ptr [rbp - 8]
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1479
.label_1478:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410f10
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax,  qword ptr [word ptr [default_tuning]]
	mov	qword ptr [rdi], rax
	mov	rax,  qword ptr [word ptr [label_1480]]
	mov	qword ptr [rdi + 8], rax
	mov	ecx,  dword ptr [dword ptr [label_1481]]
	mov	dword ptr [rdi + 0x10], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410f40

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1482
	movabs	rax, OFFSET FLAT:raw_hasher
	mov	qword ptr [rbp - 0x20], rax
.label_1482:
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1488
	movabs	rax, OFFSET FLAT:raw_comparator
	mov	qword ptr [rbp - 0x28], rax
.label_1488:
	mov	eax, 0x50
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1485
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1484
.label_1485:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1489
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x18], rax
.label_1489:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	call	check_tuning
	test	al, 1
	jne	.label_1486
	jmp	.label_1483
.label_1486:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	compute_bucket_size
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_1490
	jmp	.label_1483
.label_1490:
	mov	eax, 0x10
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rcx + 0x10]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_1487
	jmp	.label_1483
.label_1487:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x48], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1484
.label_1483:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
.label_1484:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4110e0

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 3
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, eax
	call	rotr_sz
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411120

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	sete	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411140

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	push	rbp
	mov	rbp, rsp
	movabs	rax, OFFSET FLAT:default_tuning
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	qword ptr [rbp - 0x18], rdi
	cmp	qword ptr [rbp - 0x18], rax
	jne	.label_1491
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1494
.label_1491:
	movss	xmm0,  dword ptr [dword ptr [rip + label_1495]]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1493
	movss	xmm0,  dword ptr [dword ptr [rip + label_1492]]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	subss	xmm0, dword ptr [rbp - 0x1c]
	ucomiss	xmm0, xmm1
	jbe	.label_1493
	movss	xmm0,  dword ptr [dword ptr [rip + label_1492]]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 0xc]
	ucomiss	xmm1, xmm0
	jbe	.label_1493
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jb	.label_1493
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 4]
	ucomiss	xmm1, xmm0
	jbe	.label_1493
	movss	xmm0,  dword ptr [dword ptr [rip + label_1492]]
	mov	rax, qword ptr [rbp - 0x18]
	ucomiss	xmm0, dword ptr [rax + 4]
	jb	.label_1493
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm0, dword ptr [rax]
	addss	xmm0, dword ptr [rbp - 0x1c]
	mov	rax, qword ptr [rbp - 0x18]
	movss	xmm1, dword ptr [rax + 8]
	ucomiss	xmm1, xmm0
	jbe	.label_1493
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1494
.label_1493:
	movabs	rax, OFFSET FLAT:default_tuning
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	byte ptr [rbp - 1], 0
.label_1494:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411270

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	test	byte ptr [rsi + 0x10], 1
	jne	.label_1496
	movss	xmm0,  dword ptr [dword ptr [rip + label_1501]]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm1, rsi
	addss	xmm1, xmm1
	cvtsi2ss	xmm2, rax
	test	rax, rax
	movss	dword ptr [rbp - 0x20], xmm0
	movss	dword ptr [rbp - 0x24], xmm2
	movss	dword ptr [rbp - 0x28], xmm1
	js	.label_1502
	movss	xmm0, dword ptr [rbp - 0x24]
	movss	dword ptr [rbp - 0x28], xmm0
.label_1502:
	movss	xmm0, dword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	divss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0x1c], xmm0
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1, dword ptr [rbp - 0x20]
	ucomiss	xmm0, xmm1
	jb	.label_1498
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1497
.label_1498:
	movss	xmm0, dword ptr [rbp - 0x1c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1500]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	qword ptr [rbp - 0x10], rax
.label_1496:
	mov	rdi, qword ptr [rbp - 0x10]
	call	next_prime
	movabs	rdi, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rax
	cmp	rdi, qword ptr [rbp - 0x10]
	jae	.label_1499
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1497
.label_1499:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_1497:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411390
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
.label_1507:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1503
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1506
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1504:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1505
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1509
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1509:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1504
.label_1505:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_1508
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx]
	call	rax
.label_1508:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_1506:
	jmp	.label_1510
.label_1510:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1507
.label_1503:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4114b0

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x40], 0
	je	.label_1513
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_1513
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1512:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1521
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_1517
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_1520:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1514
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rcx]
	call	rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1520
.label_1514:
	jmp	.label_1517
.label_1517:
	jmp	.label_1524
.label_1524:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1512
.label_1521:
	jmp	.label_1513
.label_1513:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
.label_1523:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1518
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
.label_1519:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1511
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1519
.label_1511:
	jmp	.label_1522
.label_1522:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1523
.label_1518:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x18], rax
.label_1515:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1516
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1515
.label_1516:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411630

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	call	compute_bucket_size
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_1526
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1530
.label_1526:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1531
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1530
.label_1531:
	mov	eax, 0x10
	mov	esi, eax
	lea	rcx, [rbp - 0x68]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rdi, qword ptr [rbp - 0x78]
	call	calloc
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x70]
	cmp	qword ptr [rax], 0
	jne	.label_1528
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1530
.label_1528:
	xor	edx, edx
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x10]
	call	transfer_entries
	test	al, 1
	jne	.label_1527
	jmp	.label_1529
.label_1527:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x48], rax
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1530
.label_1529:
	mov	edx, 1
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1532
	jmp	.label_1533
.label_1532:
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x70]
	call	transfer_entries
	test	al, 1
	jne	.label_1525
.label_1533:
	call	abort
.label_1525:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	byte ptr [rbp - 1], 0
.label_1530:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411840

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
.label_1545:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jae	.label_1541
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_1544
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
.label_1547:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1536
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1543
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1537
.label_1543:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x30]
	call	free_entry
.label_1537:
	jmp	.label_1538
.label_1538:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1547
.label_1536:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax + 8], 0
	test	byte ptr [rbp - 0x19], 1
	je	.label_1542
	jmp	.label_1535
.label_1542:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	safe_hasher
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax], 0
	je	.label_1539
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1546
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1534
.label_1546:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1540
.label_1539:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
.label_1540:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, -1
	mov	qword ptr [rax + 0x18], rcx
.label_1544:
	jmp	.label_1535
.label_1535:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1545
.label_1541:
	mov	byte ptr [rbp - 1], 1
.label_1534:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411a20

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1560
	call	abort
.label_1560:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	je	.label_1556
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1563
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1563:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1552
.label_1556:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1553
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1553:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1558
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1558:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm0, xmm1
	jbe	.label_1565
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1557
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1557:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1566
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1566:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm0, xmm1
	jbe	.label_1551
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	test	byte ptr [rax + 0x10], 1
	je	.label_1562
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1559
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1559:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1550
.label_1562:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1561
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1561:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 0x38]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1550:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1501]]
	movss	dword ptr [rbp - 0x3c], xmm0
	movss	xmm0, dword ptr [rbp - 0x3c]
	ucomiss	xmm0, xmm1
	jb	.label_1554
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1552
.label_1554:
	mov	rdi, qword ptr [rbp - 0x10]
	movss	xmm0, dword ptr [rbp - 0x3c]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1500]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm1, xmm0
	cmova	rax, rcx
	mov	rsi, rax
	call	hash_rehash
	test	al, 1
	jne	.label_1549
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1552
.label_1549:
	lea	rdx, [rbp - 0x30]
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	cmp	rax, 0
	je	.label_1564
	call	abort
.label_1564:
	jmp	.label_1551
.label_1551:
	jmp	.label_1565
.label_1565:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	je	.label_1548
	mov	rdi, qword ptr [rbp - 0x10]
	call	allocate_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1555
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1552
.label_1555:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1552
.label_1548:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	add	rcx, 1
	mov	qword ptr [rax + 0x18], rcx
	mov	dword ptr [rbp - 4], 1
.label_1552:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411ec0

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, cl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	safe_hasher
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_1579
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1569
.label_1579:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx]
	je	.label_1573
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1573
	jmp	.label_1567
.label_1573:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1577
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1575
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rax], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	call	free_entry
	jmp	.label_1574
.label_1575:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_1574:
	jmp	.label_1577
.label_1577:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1569
.label_1567:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_1578:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 8], 0
	je	.label_1568
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rcx]
	je	.label_1572
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsi, qword ptr [rcx]
	call	rax
	test	al, 1
	jne	.label_1572
	jmp	.label_1570
.label_1572:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	test	byte ptr [rbp - 0x21], 1
	je	.label_1571
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x58]
	call	free_entry
.label_1571:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1569
.label_1570:
	jmp	.label_1576
.label_1576:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1578
.label_1568:
	mov	qword ptr [rbp - 8], 0
.label_1569:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412090

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x48], 0
	je	.label_1580
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x48], rax
	jmp	.label_1581
.label_1580:
	mov	eax, 0x10
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
.label_1581:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4120f0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdx, [rbp - 0x18]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_insert_if_absent
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_1582
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1585
.label_1582:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_1584
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1583
.label_1584:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
.label_1583:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1585:
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412160

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rdx, [rbp - 0x28]
	mov	ecx, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	hash_find_entry
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1588
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1593
.label_1588:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, -1
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1597
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x18]
	dec	rcx
	mov	qword ptr [rax + 0x18], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	edi, edx
	and	edi, 1
	mov	r8d, edi
	or	r8, rsi
	cvtsi2ss	xmm0, r8
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x58], rcx
	movss	dword ptr [rbp - 0x5c], xmm1
	movss	dword ptr [rbp - 0x60], xmm0
	js	.label_1586
	movss	xmm0, dword ptr [rbp - 0x5c]
	movss	dword ptr [rbp - 0x60], xmm0
.label_1586:
	movss	xmm0, dword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x58]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x58]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x64], xmm0
	movss	dword ptr [rbp - 0x68], xmm1
	movss	dword ptr [rbp - 0x6c], xmm3
	movss	dword ptr [rbp - 0x70], xmm2
	js	.label_1596
	movss	xmm0, dword ptr [rbp - 0x6c]
	movss	dword ptr [rbp - 0x70], xmm0
.label_1596:
	movss	xmm0, dword ptr [rbp - 0x70]
	movss	xmm1, dword ptr [rbp - 0x68]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x64]
	ucomiss	xmm1, xmm0
	jbe	.label_1600
	mov	rdi, qword ptr [rbp - 0x10]
	call	check_tuning
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, rdx
	shr	rsi, 1
	mov	r8d, edx
	and	r8d, 1
	mov	r9d, r8d
	or	r9, rsi
	cvtsi2ss	xmm0, r9
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rdx
	test	rdx, rdx
	mov	byte ptr [rbp - 0x71], al
	mov	qword ptr [rbp - 0x80], rdi
	mov	qword ptr [rbp - 0x88], rcx
	movss	dword ptr [rbp - 0x8c], xmm1
	movss	dword ptr [rbp - 0x90], xmm0
	js	.label_1590
	movss	xmm0, dword ptr [rbp - 0x8c]
	movss	dword ptr [rbp - 0x90], xmm0
.label_1590:
	movss	xmm0, dword ptr [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rax + 0x28]
	movss	xmm1, dword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x88]
	shr	rcx, 1
	mov	rdx, qword ptr [rbp - 0x88]
	mov	esi, edx
	and	esi, 1
	mov	edi, esi
	or	rdi, rcx
	cvtsi2ss	xmm2, rdi
	addss	xmm2, xmm2
	cvtsi2ss	xmm3, rdx
	test	rdx, rdx
	movss	dword ptr [rbp - 0x94], xmm0
	movss	dword ptr [rbp - 0x98], xmm1
	movss	dword ptr [rbp - 0x9c], xmm3
	movss	dword ptr [rbp - 0xa0], xmm2
	js	.label_1591
	movss	xmm0, dword ptr [rbp - 0x9c]
	movss	dword ptr [rbp - 0xa0], xmm0
.label_1591:
	movss	xmm0, dword ptr [rbp - 0xa0]
	movss	xmm1, dword ptr [rbp - 0x98]
	mulss	xmm1, xmm0
	movss	xmm0, dword ptr [rbp - 0x94]
	ucomiss	xmm1, xmm0
	jbe	.label_1599
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	test	byte ptr [rax + 0x10], 1
	je	.label_1595
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xa4], xmm1
	movss	dword ptr [rbp - 0xa8], xmm0
	js	.label_1601
	movss	xmm0, dword ptr [rbp - 0xa4]
	movss	dword ptr [rbp - 0xa8], xmm0
.label_1601:
	movss	xmm0, dword ptr [rbp - 0xa8]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	movss	dword ptr [rbp - 0xac], xmm0
	jmp	.label_1589
.label_1595:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, rax
	shr	rcx, 1
	mov	edx, eax
	and	edx, 1
	mov	esi, edx
	or	rsi, rcx
	cvtsi2ss	xmm0, rsi
	addss	xmm0, xmm0
	cvtsi2ss	xmm1, rax
	test	rax, rax
	movss	dword ptr [rbp - 0xb0], xmm1
	movss	dword ptr [rbp - 0xb4], xmm0
	js	.label_1598
	movss	xmm0, dword ptr [rbp - 0xb0]
	movss	dword ptr [rbp - 0xb4], xmm0
.label_1598:
	movss	xmm0, dword ptr [rbp - 0xb4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	mulss	xmm0, dword ptr [rax + 8]
	movss	dword ptr [rbp - 0xac], xmm0
.label_1589:
	movss	xmm0, dword ptr [rbp - 0xac]
	movss	xmm1,  dword ptr [dword ptr [rip + label_1500]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rax, rcx
	cvttss2si	rcx, xmm0
	ucomiss	xmm0, xmm1
	cmovb	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	hash_rehash
	test	al, 1
	jne	.label_1594
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1592:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1587
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1592
.label_1587:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
.label_1594:
	jmp	.label_1599
.label_1599:
	jmp	.label_1600
.label_1600:
	jmp	.label_1597
.label_1597:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_1593:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412560

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0xa
	jae	.label_1602
	mov	qword ptr [rbp - 8], 0xa
.label_1602:
	mov	rax, qword ptr [rbp - 8]
	or	rax, 1
	mov	qword ptr [rbp - 8], rax
.label_1604:
	xor	eax, eax
	mov	cl, al
	mov	rdx, -1
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 9], cl
	je	.label_1606
	mov	rdi, qword ptr [rbp - 8]
	call	is_prime
	xor	al, 0xff
	mov	byte ptr [rbp - 9], al
.label_1606:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_1603
	jmp	.label_1605
.label_1603:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 2
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1604
.label_1605:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4125e0

	.globl is_prime
	.type is_prime, @function
is_prime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 3
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdi
.label_1607:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rbp - 0x19], cl
	jae	.label_1610
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	setne	sil
	mov	byte ptr [rbp - 0x19], sil
.label_1610:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1609
	jmp	.label_1608
.label_1609:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1607
.label_1608:
	xor	eax, eax
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	rax, rdx
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x10]
	cmp	rdx, 0
	mov	esi, dword ptr [rbp - 0x20]
	cmovne	esi, ecx
	cmp	esi, 0
	setne	dil
	and	dil, 1
	movzx	ecx, dil
	mov	eax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4126a0

	.globl free_entry
	.type free_entry, @function
free_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x48], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4126e0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	hash_pjw
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	xor	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412730
	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rsi + 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412760
	.globl triple_compare
	.type triple_compare, @function
triple_compare:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1611
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1611
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	same_name
	mov	byte ptr [rbp - 0x21], al
.label_1611:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4127f0

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rdi + 8]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1612
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x21], cl
	jne	.label_1612
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x21], cl
.label_1612:
	mov	al, byte ptr [rbp - 0x21]
	xor	ecx, ecx
	mov	edx, 1
	test	al, 1
	cmovne	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412890

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4128c0

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1f0
	movabs	rax, OFFSET FLAT:label_37
	movabs	r9, OFFSET FLAT:label_36
	mov	r10d, 0x3e8
	mov	r11d, 0x400
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 3
	mov	dword ptr [rbp - 0x2c], edx
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x20
	cmp	edx, 0
	cmovne	r10d, r11d
	mov	dword ptr [rbp - 0x30], r10d
	mov	dword ptr [rbp - 0x40], 0xffffffff
	mov	dword ptr [rbp - 0x44], 8
	mov	qword ptr [rbp - 0x70], r9
	mov	qword ptr [rbp - 0x78], 1
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], rax
	call	localeconv
	xor	edx, edx
	mov	ecx, edx
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax]
	mov	qword ptr [rbp - 0x148], rcx
	call	strlen
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0x98]
	jae	.label_1637
	cmp	qword ptr [rbp - 0x98], 0x10
	ja	.label_1637
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x78], rax
.label_1637:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 0x10
	ja	.label_1659
	mov	rax, qword ptr [rbp - 0x90]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
.label_1659:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x28b
	add	rax, -1
	add	rax, -3
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_1653
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	cmp	rdx, 0
	jne	.label_1617
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 8]
	jne	.label_1623
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x64], 0
	jmp	.label_1636
.label_1623:
	jmp	.label_1617
.label_1617:
	jmp	.label_1642
.label_1653:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1643
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	cmp	rdx, 0
	jne	.label_1643
	mov	rax, qword ptr [rbp - 0x28]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 8]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	imul	rdx, rdx, 0xa
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	shl	rdx, 1
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0xb0]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x3c], ecx
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xa8]
	jae	.label_1655
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0xb8]
	setb	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x14c], eax
	jmp	.label_1625
.label_1655:
	mov	rax, qword ptr [rbp - 0xa8]
	cmp	rax, qword ptr [rbp - 0xb8]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	add	edx, 2
	mov	dword ptr [rbp - 0x14c], edx
.label_1625:
	mov	eax, dword ptr [rbp - 0x14c]
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_1636
.label_1643:
	jmp	.label_1642
.label_1642:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x130], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1644]]
	fild	qword ptr [rbp - 0x130]
	faddp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xd0]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x120], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1644]]
	fild	qword ptr [rbp - 0x120]
	faddp	st(1)
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x128], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1644]]
	fild	qword ptr [rbp - 0x128]
	faddp	st(1)
	fdivrp	st(2)
	fmulp	st(1)
	fstp	xword ptr [rbp - 0xe0]
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 0x10
	cmp	edx, 0
	jne	.label_1645
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x158], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:label_1626
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_1626
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x158]
	mov	al, r8b
	mov	qword ptr [rbp - 0x160], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x164], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
	jmp	.label_1638
.label_1645:
	fld1	
	fstp	xword ptr [rbp - 0x100]
	mov	dword ptr [rbp - 0x40], 0
.label_1614:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x138], rcx
	fild	qword ptr [rbp - 0x138]
	fld	xword ptr [rbp - 0x100]
	fmulp	st(1)
	fstp	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	fld	xword ptr [rbp - 0x100]
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x140], rcx
	fild	qword ptr [rbp - 0x140]
	fmulp	st(1)
	fld	xword ptr [rbp - 0xe0]
	xor	eax, eax
	mov	dl, al
	fucomip	st(1)
	fstp	st(0)
	mov	byte ptr [rbp - 0x165], dl
	jb	.label_1651
	jmp	.label_1654
.label_1654:
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x165], cl
.label_1651:
	mov	al, byte ptr [rbp - 0x165]
	test	al, 1
	jne	.label_1614
	fld	xword ptr [rbp - 0x100]
	fld	xword ptr [rbp - 0xe0]
	fdivrp	st(1)
	fld	st(0)
	fstp	xword ptr [rbp - 0xe0]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rcx, rsp
	fstp	xword ptr [rcx]
	mov	qword ptr [rbp - 0x170], rdi
	mov	edi, eax
	call	adjust_value
	movabs	rcx, OFFSET FLAT:label_1632
	mov	rdx, rsp
	fstp	xword ptr [rdx]
	mov	eax, OFFSET FLAT:label_1632
	mov	esi, eax
	xor	eax, eax
	mov	r8b, al
	mov	rdi, qword ptr [rbp - 0x170]
	mov	al, r8b
	mov	qword ptr [rbp - 0x178], rcx
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x17c], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	r9d, dword ptr [rbp - 0x14]
	and	r9d, 0x20
	cmp	r9d, 0
	setne	r8b
	xor	r8b, 0xff
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rcx, r9d
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0xe8]
	jb	.label_1647
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	je	.label_1662
	mov	rax, qword ptr [rbp - 0xe8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x30
	jne	.label_1662
.label_1647:
	movabs	rax, OFFSET FLAT:label_1626
	mov	ecx, 0xa
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x2c]
	fld	xword ptr [rbp - 0xe0]
	fld	dword ptr [dword ptr [rip + label_1666]]
	fmul	st(1), st(0)
	mov	rsi, rsp
	fxch	st(1)
	fstp	xword ptr [rsi]
	mov	qword ptr [rbp - 0x188], rdi
	mov	edi, ecx
	mov	qword ptr [rbp - 0x190], rax
	mov	qword ptr [rbp - 0x198], rdx
	fstp	xword ptr [rbp - 0x1a4]
	call	adjust_value
	fld	st(0)
	fld	xword ptr [rbp - 0x1a4]
	fdivp	st(2)
	mov	rax, rsp
	fxch	st(1)
	fstp	xword ptr [rax]
	mov	ecx, OFFSET FLAT:label_1626
	mov	esi, ecx
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdi, qword ptr [rbp - 0x188]
	mov	al, r8b
	fstp	xword ptr [rbp - 0x1b0]
	call	sprintf
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x1b4], eax
	call	strlen
	mov	qword ptr [rbp - 0xe8], rax
	mov	qword ptr [rbp - 0xf0], 0
.label_1662:
	jmp	.label_1638
.label_1638:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rcx
	sub	rsi, qword ptr [rbp - 0xe8]
	add	rdx, rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x1c0], rcx
	call	memmove
	mov	rcx, qword ptr [rbp - 0x50]
	add	rcx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	sub	rdx, qword ptr [rbp - 0xf0]
	add	rcx, rdx
	mov	qword ptr [rbp - 0x60], rcx
	mov	qword ptr [rbp - 0x1c8], rax
	jmp	.label_1648
.label_1636:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1619
	mov	dword ptr [rbp - 0x40], 0
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x38]
	ja	.label_1618
	jmp	.label_1616
.label_1616:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x1d0]
	div	rsi
	imul	rdx, rdx, 0xa
	movsxd	rdi, dword ptr [rbp - 0x3c]
	add	rdx, rdi
	mov	ecx, edx
	mov	dword ptr [rbp - 0x104], ecx
	mov	ecx, dword ptr [rbp - 0x104]
	mov	eax, ecx
	xor	edx, edx
	div	dword ptr [rbp - 0x30]
	shl	edx, 1
	mov	ecx, dword ptr [rbp - 0x64]
	sar	ecx, 1
	add	edx, ecx
	mov	dword ptr [rbp - 0x108], edx
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edi, ecx
	mov	r8, qword ptr [rbp - 0x38]
	mov	rax, r8
	xor	ecx, ecx
	mov	edx, ecx
	div	rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	eax, dword ptr [rbp - 0x104]
	xor	ecx, ecx
	mov	edx, ecx
	div	dword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x108]
	cmp	eax, dword ptr [rbp - 0x30]
	jae	.label_1627
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, dword ptr [rbp - 0x64]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1d4], eax
	jmp	.label_1656
.label_1627:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x108]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	setb	dl
	and	dl, 1
	movzx	eax, dl
	add	eax, 2
	mov	dword ptr [rbp - 0x1d4], eax
.label_1656:
	mov	eax, dword ptr [rbp - 0x1d4]
	mov	dword ptr [rbp - 0x64], eax
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x30]
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x1d5], cl
	ja	.label_1665
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	setl	cl
	mov	byte ptr [rbp - 0x1d5], cl
.label_1665:
	mov	al, byte ptr [rbp - 0x1d5]
	test	al, 1
	jne	.label_1616
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_1630
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_1633
	mov	eax, 2
	mov	ecx, dword ptr [rbp - 0x64]
	mov	edx, dword ptr [rbp - 0x3c]
	and	edx, 1
	add	ecx, edx
	cmp	eax, ecx
	jl	.label_1634
	jmp	.label_1620
.label_1633:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_1620
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x64]
	jge	.label_1620
.label_1634:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x64], 0
	cmp	dword ptr [rbp - 0x3c], 0xa
	jne	.label_1615
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x3c], 0
.label_1615:
	jmp	.label_1620
.label_1620:
	cmp	qword ptr [rbp - 0x38], 0xa
	jae	.label_1657
	cmp	dword ptr [rbp - 0x3c], 0
	jne	.label_1641
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_1657
.label_1641:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 0x30
	mov	dl, al
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rsi
	add	rdi, -1
	mov	qword ptr [rbp - 0x50], rdi
	mov	byte ptr [rsi - 1], dl
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x50]
	sub	rcx, rsi
	add	rdi, rcx
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
	mov	dword ptr [rbp - 0x64], 0
	mov	dword ptr [rbp - 0x3c], 0
.label_1657:
	jmp	.label_1630
.label_1630:
	jmp	.label_1618
.label_1618:
	jmp	.label_1619
.label_1619:
	cmp	dword ptr [rbp - 0x2c], 1
	jne	.label_1629
	mov	eax, 5
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 0x3c]
	movsxd	rsi, dword ptr [rbp - 0x64]
	mov	rdi, qword ptr [rbp - 0x38]
	and	rdi, 1
	add	rsi, rdi
	cmp	rdx, rsi
	setb	r8b
	and	r8b, 1
	movzx	r9d, r8b
	add	ecx, r9d
	cmp	eax, ecx
	jl	.label_1631
	jmp	.label_1624
.label_1629:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_1624
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x3c]
	add	ecx, dword ptr [rbp - 0x64]
	cmp	eax, ecx
	jge	.label_1624
.label_1631:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x10
	cmp	ecx, 0
	je	.label_1652
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rbp - 0x30]
	mov	edx, ecx
	cmp	rax, rdx
	jne	.label_1652
	mov	eax, dword ptr [rbp - 0x40]
	cmp	eax, dword ptr [rbp - 0x44]
	jge	.label_1652
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 8
	cmp	eax, 0
	jne	.label_1660
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x50], rsi
	mov	byte ptr [rdx - 1], 0x30
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x50]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x50], rsi
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	call	memcpy
.label_1660:
	mov	qword ptr [rbp - 0x38], 1
.label_1652:
	jmp	.label_1624
.label_1624:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x60], rax
.label_1628:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x10c], esi
	mov	esi, dword ptr [rbp - 0x10c]
	add	esi, 0x30
	mov	dil, sil
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x50], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x38]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jne	.label_1628
	jmp	.label_1648
.label_1648:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 4
	cmp	eax, 0
	je	.label_1650
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, rcx
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	group_number
	mov	qword ptr [rbp - 0x50], rax
.label_1650:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_1658
	cmp	dword ptr [rbp - 0x40], 0
	jge	.label_1663
	mov	dword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x118], 1
.label_1622:
	mov	rax, qword ptr [rbp - 0x118]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1639
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	cmp	eax, dword ptr [rbp - 0x44]
	jne	.label_1613
	jmp	.label_1639
.label_1613:
	jmp	.label_1621
.label_1621:
	mov	eax, dword ptr [rbp - 0x30]
	mov	ecx, eax
	imul	rcx, qword ptr [rbp - 0x118]
	mov	qword ptr [rbp - 0x118], rcx
	jmp	.label_1622
.label_1639:
	jmp	.label_1663
.label_1663:
	mov	eax, dword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 0x100
	or	eax, ecx
	cmp	eax, 0
	je	.label_1635
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_1635
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x20
.label_1635:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1640
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	jne	.label_1649
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_1649
	mov	eax, 0x6b
	mov	dword ptr [rbp - 0x1dc], eax
	jmp	.label_1646
.label_1649:
	movsxd	rax, dword ptr [rbp - 0x40]
	movsx	ecx,  byte ptr [byte ptr [+ (rax * 1) + power_letter]]
	mov	dword ptr [rbp - 0x1dc], ecx
.label_1646:
	mov	eax, dword ptr [rbp - 0x1dc]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rdx], cl
.label_1640:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_1661
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_1664
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_1664
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x69
.label_1664:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	byte ptr [rax], 0x42
.label_1661:
	jmp	.label_1658
.label_1658:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x1f0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413440

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	push	rbp
	mov	rbp, rsp
	fld	xword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 4], edi
	fstp	xword ptr [rbp - 0x20]
	cmp	dword ptr [rbp - 4], 1
	je	.label_1667
	fld	xword ptr [rbp - 0x20]
	fld	xword ptr [word ptr [rip + label_1668]]
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_1667
	jmp	.label_1669
.label_1669:
	xor	eax, eax
	mov	cl, al
	fld	xword ptr [rbp - 0x20]
	fld	dword ptr [dword ptr [rip + label_1500]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rbp - 0x4a]
	mov	dx, word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], 0xc7f
	fldcw	word ptr [rbp - 0x4a]
	mov	word ptr [rbp - 0x4a], dx
	fistp	qword ptr [rbp - 0x30]
	fldcw	word ptr [rbp - 0x4a]
	fnstcw	word ptr [rbp - 0x4c]
	mov	dx, word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], 0xc7f
	fldcw	word ptr [rbp - 0x4c]
	mov	word ptr [rbp - 0x4c], dx
	fld	st(1)
	fistp	qword ptr [rbp - 0x38]
	fldcw	word ptr [rbp - 0x4c]
	mov	rsi, qword ptr [rbp - 0x30]
	movabs	rdi, 0x8000000000000000
	xor	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x38]
	fucomip	st(1)
	fstp	st(0)
	cmova	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	dword ptr [rbp - 4], 0
	mov	qword ptr [rbp - 0x58], rsi
	mov	byte ptr [rbp - 0x59], cl
	jne	.label_1670
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	test	rax, rax
	setns	cl
	movzx	edx, cl
	mov	eax, edx
	fld	dword ptr [dword ptr [+ (rax * 4) + label_1644]]
	fild	qword ptr [rbp - 0x40]
	faddp	st(1)
	fld	xword ptr [rbp - 0x20]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	setp	cl
	setne	sil
	or	sil, cl
	mov	byte ptr [rbp - 0x59], sil
.label_1670:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, rdx
	mov	qword ptr [rbp - 0x48], rsi
	setns	al
	movzx	ecx, al
	mov	edx, ecx
	fld	dword ptr [dword ptr [+ (rdx * 4) + label_1644]]
	fild	qword ptr [rbp - 0x48]
	faddp	st(1)
	fstp	xword ptr [rbp - 0x20]
.label_1667:
	fld	xword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413560

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 0x80]
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1671:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x71], cl
	cmp	byte ptr [rbp - 0x71], 0
	je	.label_1675
	movzx	eax, byte ptr [rbp - 0x71]
	cmp	eax, 0x7f
	jge	.label_1674
	movzx	eax, byte ptr [rbp - 0x71]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_1676
.label_1674:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x88], rax
.label_1676:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
.label_1675:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1673
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x30], rax
.label_1673:
	lea	rax, [rbp - 0x70]
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x28]
	sub	rdx, rsi
	add	rdi, rdx
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x40]
	sub	rsi, rdx
	mov	qword ptr [rbp - 0x40], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	memcpy
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1672
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x90
	pop	rbp
	ret	
.label_1672:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	sub	rcx, rdx
	add	rsi, rcx
	mov	qword ptr [rbp - 0x28], rsi
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x38]
	call	memcpy
	jmp	.label_1671
	.section	.text
	.align	32
	#Procedure 0x4136b0

	.globl human_options
	.type human_options, @function
human_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	call	humblock
	mov	dword ptr [rbp - 0x1c], eax
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	jne	.label_1677
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 0x1c], 4
.label_1677:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413710

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x28], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1686
	movabs	rdi, OFFSET FLAT:label_115
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_1686
	movabs	rdi, OFFSET FLAT:label_1687
	call	getenv
	mov	qword ptr [rbp - 0x10], rax
	cmp	rax, 0
	jne	.label_1686
	call	default_block_size
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_1678
.label_1686:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x27
	jne	.label_1679
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 4
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
.label_1679:
	movabs	rsi, OFFSET FLAT:block_size_args
	movabs	rax, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	argmatch
	xor	r8d, r8d
	mov	r9d, eax
	mov	dword ptr [rbp - 0x24], r9d
	cmp	r8d, r9d
	jg	.label_1684
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	ecx,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	or	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x28], ecx
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], 1
	jmp	.label_1682
.label_1684:
	lea	rsi, [rbp - 0x30]
	xor	edx, edx
	movabs	r8, OFFSET FLAT:label_1695
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	xstrtoumax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_1689
	mov	rax, qword ptr [rbp - 0x20]
	mov	dword ptr [rax], 0
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_1692
.label_1689:
	jmp	.label_1694
.label_1694:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x30
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	eax, esi
	mov	byte ptr [rbp - 0x35], cl
	jg	.label_1680
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x39
	setle	dl
	mov	byte ptr [rbp - 0x35], dl
.label_1680:
	mov	al, byte ptr [rbp - 0x35]
	xor	al, 0xff
	test	al, 1
	jne	.label_1693
	jmp	.label_1690
.label_1693:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1683
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x80
	mov	dword ptr [rbp - 0x28], eax
	mov	rcx, qword ptr [rbp - 0x30]
	movsx	eax, byte ptr [rcx - 1]
	cmp	eax, 0x42
	jne	.label_1685
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x100
	mov	dword ptr [rbp - 0x28], eax
.label_1685:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x42
	jne	.label_1688
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax - 2]
	cmp	ecx, 0x69
	jne	.label_1681
.label_1688:
	mov	eax, dword ptr [rbp - 0x28]
	or	eax, 0x20
	mov	dword ptr [rbp - 0x28], eax
.label_1681:
	jmp	.label_1690
.label_1683:
	jmp	.label_1691
.label_1691:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1694
.label_1690:
	jmp	.label_1682
.label_1682:
	jmp	.label_1678
.label_1678:
	mov	eax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
	mov	dword ptr [rbp - 4], 0
.label_1692:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413920

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_1696
	call	getenv
	mov	ecx, 0x400
	mov	edx, 0x200
	cmp	rax, 0
	cmovne	ecx, edx
	movsxd	rax, ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413950

	.globl getuser
	.type getuser, @function
getuser:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], 0
	mov	rax,  qword ptr [word ptr [user_alist]]
	mov	qword ptr [rbp - 0x10], rax
.label_1704:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1698
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 4]
	jne	.label_1703
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1698
.label_1703:
	jmp	.label_1702
.label_1702:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1704
.label_1698:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1700
	mov	edi, dword ptr [rbp - 4]
	call	getpwuid
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1705
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1701
.label_1705:
	movabs	rax, OFFSET FLAT:label_37
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1701
.label_1701:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	strcpy
	mov	rsi,  qword ptr [word ptr [user_alist]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [user_alist]],  rsi
	mov	qword ptr [rbp - 0x38], rax
.label_1700:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	cmp	ecx, 0
	je	.label_1699
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1697
.label_1699:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1697
.label_1697:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413a90
	.globl getuidbyname
	.type getuidbyname, @function
getuidbyname:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [user_alist]]
	mov	qword ptr [rbp - 0x18], rdi
.label_1714:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1711
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1709
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1709
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1706
.label_1709:
	jmp	.label_1713
.label_1713:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1714
.label_1711:
	mov	rax,  qword ptr [word ptr [nouser_alist]]
	mov	qword ptr [rbp - 0x18], rax
.label_1712:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1708
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1707
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1707
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1706
.label_1707:
	jmp	.label_1710
.label_1710:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1712
.label_1708:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getpwnam
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcpy
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	je	.label_1715
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax,  qword ptr [word ptr [user_alist]]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [user_alist]],  rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1706
.label_1715:
	mov	rax,  qword ptr [word ptr [nouser_alist]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [nouser_alist]],  rax
	mov	qword ptr [rbp - 8], 0
.label_1706:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413c30

	.globl getgroup
	.type getgroup, @function
getgroup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x18], 0
	mov	rax,  qword ptr [word ptr [group_alist]]
	mov	qword ptr [rbp - 0x10], rax
.label_1723:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1717
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 4]
	jne	.label_1722
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1717
.label_1722:
	jmp	.label_1721
.label_1721:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1723
.label_1717:
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_1719
	mov	edi, dword ptr [rbp - 4]
	call	getgrgid
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1724
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1720
.label_1724:
	movabs	rax, OFFSET FLAT:label_37
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1720
.label_1720:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 4]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	strcpy
	mov	rsi,  qword ptr [word ptr [group_alist]]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [group_alist]],  rsi
	mov	qword ptr [rbp - 0x38], rax
.label_1719:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	cmp	ecx, 0
	je	.label_1718
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1716
.label_1718:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1716
.label_1716:
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413d70
	.globl getgidbyname
	.type getgidbyname, @function
getgidbyname:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [group_alist]]
	mov	qword ptr [rbp - 0x18], rdi
.label_1731:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1728
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1729
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1729
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1727
.label_1729:
	jmp	.label_1730
.label_1730:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1731
.label_1728:
	mov	rax,  qword ptr [word ptr [nogroup_alist]]
	mov	qword ptr [rbp - 0x18], rax
.label_1733:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1734
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rax]
	cmp	ecx, edx
	jne	.label_1725
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_1725
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1727
.label_1725:
	jmp	.label_1726
.label_1726:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1733
.label_1734:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getgrnam
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	add	rax, 1
	add	rax, 0x17
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	strcpy
	cmp	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	je	.label_1732
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], ecx
	mov	rax,  qword ptr [word ptr [group_alist]]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [group_alist]],  rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1727
.label_1732:
	mov	rax,  qword ptr [word ptr [nogroup_alist]]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [word ptr [nogroup_alist]],  rax
	mov	qword ptr [rbp - 8], 0
.label_1727:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413f10

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jge	.label_1735
	jmp	.label_1738
.label_1738:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1738
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1736
.label_1735:
	jmp	.label_1737
.label_1737:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1737
	jmp	.label_1736
.label_1736:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414010

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_1739
	jmp	.label_1742
.label_1742:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1742
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_1741
.label_1739:
	jmp	.label_1740
.label_1740:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_1740
	jmp	.label_1741
.label_1741:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414110

	.globl mbsalign
	.type mbsalign, @function
mbsalign:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x24], r8d
	mov	dword ptr [rbp - 0x28], r9d
	mov	qword ptr [rbp - 0x30], -1
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	mov	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0x69], 0
	mov	byte ptr [rbp - 0x6a], 0
	mov	r8d, dword ptr [rbp - 0x28]
	and	r8d, 2
	cmp	r8d, 0
	jne	.label_1751
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1751
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rcx
	mov	rdx, rcx
	call	mbstowcs
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	jne	.label_1759
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_1766
	jmp	.label_1750
.label_1766:
	jmp	.label_1752
.label_1759:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 2
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_1743
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_1747
	jmp	.label_1750
.label_1747:
	jmp	.label_1752
.label_1743:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x78]
	call	mbstowcs
	cmp	rax, 0
	je	.label_1758
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rcx + rax*4], 0
	mov	byte ptr [rbp - 0x6a], 1
	mov	rdi, qword ptr [rbp - 0x48]
	call	wc_ensure_printable
	and	al, 1
	mov	byte ptr [rbp - 0x69], al
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x78]
	call	wcswidth
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x58], rcx
.label_1758:
	jmp	.label_1751
.label_1751:
	test	byte ptr [rbp - 0x6a], 1
	je	.label_1744
	test	byte ptr [rbp - 0x69], 1
	jne	.label_1746
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_1744
.label_1746:
	test	byte ptr [rbp - 0x69], 1
	je	.label_1768
	xor	eax, eax
	mov	ecx, eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	mov	rdx, rcx
	call	wcstombs
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1768:
	mov	rdi, qword ptr [rbp - 0x38]
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1763
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_1767
	jmp	.label_1750
.label_1767:
	jmp	.label_1752
.label_1763:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax]
	call	wc_truncate
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x38]
	call	wcstombs
	mov	qword ptr [rbp - 0x60], rax
.label_1744:
	jmp	.label_1750
.label_1750:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jbe	.label_1756
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
.label_1756:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x58]
	jbe	.label_1764
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	sub	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x68], rax
.label_1764:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	test	edx, edx
	mov	dword ptr [rbp - 0x9c], edx
	je	.label_1769
	jmp	.label_1748
.label_1748:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 1
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1749
	jmp	.label_1754
.label_1754:
	mov	eax, dword ptr [rbp - 0x9c]
	sub	eax, 2
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_1755
	jmp	.label_1761
.label_1769:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1762
.label_1749:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x88], 0
	jmp	.label_1762
.label_1755:
	jmp	.label_1761
.label_1761:
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	rcx, qword ptr [rbp - 0x68]
	and	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x68]
	shr	rax, 1
	mov	qword ptr [rbp - 0x88], rax
.label_1762:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 4
	cmp	eax, 0
	je	.label_1753
	mov	qword ptr [rbp - 0x80], 0
.label_1753:
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	je	.label_1760
	mov	qword ptr [rbp - 0x88], 0
.label_1760:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1765
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	qword ptr [rbp - 0x98], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x10]
	sub	rax, rdx
	mov	qword ptr [rbp - 0x90], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xb0], rdi
	mov	qword ptr [rbp - 0xb8], rsi
	jae	.label_1745
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1757
.label_1745:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_1757:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rdi, qword ptr [rbp - 0xb0]
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdx, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x88]
	call	mbs_align_pad
	mov	qword ptr [rbp - 0xc8], rax
.label_1765:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, qword ptr [rbp - 0x88]
	shl	rcx, 0
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
.label_1752:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414570

	.globl wc_ensure_printable
	.type wc_ensure_printable, @function
wc_ensure_printable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
.label_1771:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax], 0
	je	.label_1772
	mov	rax, qword ptr [rbp - 0x18]
	mov	edi, dword ptr [rax]
	call	iswprint
	cmp	eax, 0
	jne	.label_1770
	mov	rax, qword ptr [rbp - 0x18]
	mov	dword ptr [rax], 0xfffd
	mov	byte ptr [rbp - 9], 1
.label_1770:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 4
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1771
.label_1772:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4145e0

	.globl wc_truncate
	.type wc_truncate, @function
wc_truncate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	dword ptr [rbp - 0x1c], 0
.label_1776:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax], 0
	je	.label_1775
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax]
	call	wcwidth
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_1774
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xfffd
	mov	dword ptr [rbp - 0x1c], 1
.label_1774:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x10]
	jbe	.label_1773
	jmp	.label_1775
.label_1773:
	movsxd	rax, dword ptr [rbp - 0x1c]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1776
.label_1775:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414680

	.globl mbs_align_pad
	.type mbs_align_pad, @function
mbs_align_pad:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_1780:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x19], cl
	je	.label_1777
	mov	rax, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x19], cl
.label_1777:
	mov	al, byte ptr [rbp - 0x19]
	test	al, 1
	jne	.label_1778
	jmp	.label_1779
.label_1778:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], 0x20
	jmp	.label_1780
.label_1779:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414700
	.globl ambsalign
	.type ambsalign, @function
ambsalign:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	dword ptr [rbp - 0x18], ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], 0
.label_1784:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jb	.label_1782
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1781
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1782
.label_1781:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8d, dword ptr [rbp - 0x14]
	mov	r9d, dword ptr [rbp - 0x18]
	call	mbsalign
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_1783
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	mov	qword ptr [rbp - 0x38], 0
	jmp	.label_1782
.label_1783:
	jmp	.label_1784
.label_1782:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4147f0

	.globl gnu_mbswidth
	.type gnu_mbswidth, @function
gnu_mbswidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	call	strlen
	mov	edx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	mbsnwidth
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414830

	.globl mbsnwidth
	.type mbsnwidth, @function
mbsnwidth:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	dword ptr [rbp - 0x34], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_1810
	jmp	.label_1804
.label_1804:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1812
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x20
	mov	eax, ecx
	sub	ecx, 0x5e
	mov	qword ptr [rbp - 0x60], rax
	mov	dword ptr [rbp - 0x64], ecx
	ja	.label_1785
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1795]]
	jmp	rcx
.label_2763:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1800
.label_1785:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rdi, rcx
	call	memset
.label_1801:
	lea	rdi, [rbp - 0x44]
	lea	rcx, [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	sub	rax, rdx
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], -1
	jne	.label_1809
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1789
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1794
.label_1789:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1788
.label_1809:
	cmp	qword ptr [rbp - 0x50], -2
	jne	.label_1803
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1806
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_1794
.label_1806:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1788
.label_1803:
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_1814
	mov	qword ptr [rbp - 0x50], 1
.label_1814:
	mov	edi, dword ptr [rbp - 0x44]
	call	wcwidth
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	jl	.label_1792
	mov	eax, 0x7fffffff
	mov	ecx, dword ptr [rbp - 0x54]
	sub	eax, dword ptr [rbp - 0x34]
	cmp	ecx, eax
	jle	.label_1796
	jmp	.label_1802
.label_1796:
	mov	eax, dword ptr [rbp - 0x54]
	add	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1791
.label_1792:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1805
	mov	edi, dword ptr [rbp - 0x44]
	call	iswcntrl
	cmp	eax, 0
	jne	.label_1808
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1813
	jmp	.label_1802
.label_1813:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1808:
	jmp	.label_1786
.label_1805:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1788
.label_1786:
	jmp	.label_1791
.label_1791:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rbp - 0x40]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_1801
.label_1794:
	jmp	.label_1800
.label_1800:
	jmp	.label_1804
.label_1812:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1788
.label_1810:
	jmp	.label_1787
.label_1787:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_1807
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	dl, byte ptr [rax]
	mov	byte ptr [rbp - 0x55], dl
	movzx	esi, byte ptr [rbp - 0x55]
	movsxd	rax, esi
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 0x4000
	cmp	esi, 0
	je	.label_1790
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1797
	jmp	.label_1802
.label_1797:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_1798
.label_1790:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	jne	.label_1799
	movzx	eax, byte ptr [rbp - 0x55]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	jne	.label_1811
	cmp	dword ptr [rbp - 0x34], 0x7fffffff
	jne	.label_1815
	jmp	.label_1802
.label_1815:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
.label_1811:
	jmp	.label_1793
.label_1799:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_1788
.label_1793:
	jmp	.label_1798
.label_1798:
	jmp	.label_1787
.label_1807:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1788
.label_1802:
	mov	dword ptr [rbp - 4], 0x7fffffff
.label_1788:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414b60

	.globl mpsort
	.type mpsort, @function
mpsort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	shl	rax, 3
	add	rdx, rax
	mov	rcx, qword ptr [rbp - 0x18]
	call	mpsort_with_tmp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414ba0

	.globl mpsort_with_tmp
	.type mpsort_with_tmp, @function
mpsort_with_tmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	cmp	qword ptr [rbp - 0x10], 2
	ja	.label_1818
	cmp	qword ptr [rbp - 0x10], 2
	jne	.label_1817
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	call	rax
	cmp	eax, 0
	jle	.label_1825
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
.label_1825:
	jmp	.label_1817
.label_1817:
	jmp	.label_1816
.label_1818:
	mov	rax, qword ptr [rbp - 0x10]
	shr	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 0
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	mpsort_with_tmp
	cmp	qword ptr [rbp - 0x38], 2
	jae	.label_1826
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	jmp	.label_1822
.label_1826:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mpsort_into_tmp
.label_1822:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x48], 0
.label_1820:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x70]
	call	rax
	cmp	eax, 0
	jg	.label_1821
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	jne	.label_1824
	jmp	.label_1819
.label_1824:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1823
.label_1821:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	jne	.label_1827
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x58]
	sub	rdx, qword ptr [rbp - 0x50]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_1819
.label_1827:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
.label_1823:
	jmp	.label_1820
.label_1819:
	jmp	.label_1816
.label_1816:
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414dd0

	.globl mpsort_into_tmp
	.type mpsort_into_tmp, @function
mpsort_into_tmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	shr	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 3
	add	rcx, rdx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rdi
	mov	rdi, rcx
	mov	rcx, qword ptr [rbp - 0x68]
	call	mpsort_with_tmp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	mpsort_with_tmp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x60], rcx
.label_1831:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	call	rax
	cmp	eax, 0
	jg	.label_1829
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	jne	.label_1832
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1828
.label_1832:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1833
.label_1829:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, 8
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_1830
	jmp	.label_1828
.label_1830:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
.label_1833:
	jmp	.label_1831
.label_1828:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x40]
	sub	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414f70

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	xor	eax, eax
	mov	r10d, 0xffffffff
	lea	r11, [rbp - 0x2d]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	byte ptr [rbp - 0x2d], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x38], r8
	mov	r8d, eax
	mov	dword ptr [rbp - 0x3c], r9d
	mov	r9d, eax
	mov	dword ptr [rsp], 0xffffffff
	mov	qword ptr [rsp + 8], r11
	mov	r11, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp + 0x10], r11
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rbp - 0x40], r10d
	call	__strftime_internal
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415000

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x938
	mov	al, r8b
	mov	r8d, dword ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	ebx, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x28], rdi
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x38], rdx
	mov	qword ptr [rbp - 0x40], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x48], r9d
	mov	dword ptr [rbp - 0x4c], ebx
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	mov	dword ptr [rbp - 0x64], r8d
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8d, dword ptr [rcx + 8]
	mov	dword ptr [rbp - 0x68], r8d
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x70], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rbp - 0x70], rcx
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_1834
	movabs	rax, OFFSET FLAT:label_37
	mov	qword ptr [rbp - 0x70], rax
.label_1834:
	cmp	dword ptr [rbp - 0x68], 0xc
	jle	.label_2140
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 0xc
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1902
.label_2140:
	cmp	dword ptr [rbp - 0x68], 0
	jne	.label_1906
	mov	dword ptr [rbp - 0x68], 0xc
.label_1906:
	jmp	.label_1902
.label_1902:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x88], rax
.label_2113:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_1920
	mov	dword ptr [rbp - 0x8c], 0
	mov	dword ptr [rbp - 0x94], 0
	mov	byte ptr [rbp - 0xe1], 0
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0xe2], al
	mov	byte ptr [rbp - 0xf1], 0
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x25
	je	.label_1929
	jmp	.label_1966
.label_1966:
	mov	qword ptr [rbp - 0x108], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1957
	xor	eax, eax
	mov	dword ptr [rbp - 0x75c], eax
	jmp	.label_1961
.label_1957:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x75c], eax
.label_1961:
	mov	eax, dword ptr [rbp - 0x75c]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x110], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	cmp	rcx, qword ptr [rbp - 0x110]
	jae	.label_1970
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rbp - 0x768], rax
	jmp	.label_1985
.label_1970:
	mov	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x768], rax
.label_1985:
	mov	rax, qword ptr [rbp - 0x768]
	mov	qword ptr [rbp - 0x118], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1997
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_1997:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2013
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2018
	mov	rax, qword ptr [rbp - 0x108]
	cmp	rax, qword ptr [rbp - 0x110]
	jae	.label_2018
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x120], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2027
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2036
.label_2027:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2046
.label_2036:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x120]
	call	memset
	mov	rdx, qword ptr [rbp - 0x120]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2046:
	jmp	.label_2018
.label_2018:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x108]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_2013:
	mov	rax, qword ptr [rbp - 0x118]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1955
.label_1929:
	jmp	.label_1911
.label_1911:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x23
	mov	dword ptr [rbp - 0x76c], edx
	mov	dword ptr [rbp - 0x770], esi
	je	.label_2090
	jmp	.label_2105
.label_2105:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x774], eax
	je	.label_2107
	jmp	.label_2002
.label_2002:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x778], eax
	je	.label_2107
	jmp	.label_2116
.label_2116:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x30
	mov	dword ptr [rbp - 0x77c], eax
	je	.label_2107
	jmp	.label_2121
.label_2121:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x780], eax
	je	.label_2124
	jmp	.label_2142
.label_2142:
	mov	eax, dword ptr [rbp - 0x76c]
	sub	eax, 0x5f
	mov	dword ptr [rbp - 0x784], eax
	jne	.label_2128
	jmp	.label_2107
.label_2107:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x8c], ecx
	jmp	.label_1911
.label_2124:
	mov	byte ptr [rbp - 0xe2], 1
	jmp	.label_1911
.label_2090:
	mov	byte ptr [rbp - 0xf1], 1
	jmp	.label_1911
.label_2128:
	jmp	.label_1935
.label_1935:
	jmp	.label_1977
.label_1977:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_1855
	mov	dword ptr [rbp - 0x4c], 0
.label_1836:
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jg	.label_2156
	cmp	dword ptr [rbp - 0x4c], 0xccccccc
	jne	.label_2161
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 7
	jle	.label_2161
.label_2156:
	mov	dword ptr [rbp - 0x4c], 0x7fffffff
	jmp	.label_2168
.label_2161:
	imul	eax, dword ptr [rbp - 0x4c], 0xa
	mov	dword ptr [rbp - 0x4c], eax
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rcx]
	sub	eax, 0x30
	add	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
.label_2168:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_1836
	jmp	.label_1855
.label_1855:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x788], ecx
	mov	dword ptr [rbp - 0x78c], edx
	je	.label_1860
	jmp	.label_1875
.label_1875:
	mov	eax, dword ptr [rbp - 0x788]
	sub	eax, 0x4f
	mov	dword ptr [rbp - 0x790], eax
	jne	.label_1877
	jmp	.label_1860
.label_1860:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x88], rcx
	movsx	edx, byte ptr [rax]
	mov	dword ptr [rbp - 0x90], edx
	jmp	.label_1887
.label_1877:
	mov	dword ptr [rbp - 0x90], 0
.label_1887:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0xf8], ecx
	mov	ecx, dword ptr [rbp - 0xf8]
	mov	eax, ecx
	mov	rdx, rax
	sub	rdx, 0x7a
	mov	qword ptr [rbp - 0x798], rax
	mov	qword ptr [rbp - 0x7a0], rdx
	ja	.label_1904
	mov	rax, qword ptr [rbp - 0x798]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1925]]
	jmp	rcx
.label_2830:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1931
	jmp	.label_1843
.label_1931:
	jmp	.label_1940
.label_1940:
	mov	qword ptr [rbp - 0x128], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1942
	xor	eax, eax
	mov	dword ptr [rbp - 0x7a4], eax
	jmp	.label_1950
.label_1942:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7a4], eax
.label_1950:
	mov	eax, dword ptr [rbp - 0x7a4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x130], rcx
	mov	rcx, qword ptr [rbp - 0x128]
	cmp	rcx, qword ptr [rbp - 0x130]
	jae	.label_1959
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x7b0], rax
	jmp	.label_1967
.label_1959:
	mov	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x7b0], rax
.label_1967:
	mov	rax, qword ptr [rbp - 0x7b0]
	mov	qword ptr [rbp - 0x138], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1983
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_1983:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2000
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2005
	mov	rax, qword ptr [rbp - 0x128]
	cmp	rax, qword ptr [rbp - 0x130]
	jae	.label_2005
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x140], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2016
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2144
.label_2016:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1863
.label_2144:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x140]
	call	memset
	mov	rdx, qword ptr [rbp - 0x140]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1863:
	jmp	.label_2005
.label_2005:
	mov	rax, qword ptr [rbp - 0x88]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rbp - 0x128]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_2000:
	mov	rax, qword ptr [rbp - 0x138]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1885
.label_2851:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_2076
	jmp	.label_1843
.label_2076:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_2082
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_2082:
	jmp	.label_1969
.label_2832:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_2091
	jmp	.label_1843
.label_2091:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_2097
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_2097:
	jmp	.label_1969
.label_2852:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_2110
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_2110:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2114
	jmp	.label_1843
.label_2114:
	jmp	.label_1969
.label_2833:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2069
	jmp	.label_1843
.label_2069:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_2106
	mov	byte ptr [rbp - 0xe2], 1
	mov	byte ptr [rbp - 0xe1], 0
.label_2106:
	jmp	.label_1969
.label_2853:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1914
	jmp	.label_1843
.label_1914:
	jmp	.label_1969
.label_1980:
	mov	dword ptr [rbp - 0xfc], 0xffffffff
.label_2067:
	xor	eax, eax
	mov	edi, eax
	mov	rsi, -1
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	r8b, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	eax, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	r8b, 1
	movzx	r8d, r8b
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	qword ptr [rbp - 0x148], rax
	mov	rax, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2173
	xor	eax, eax
	mov	dword ptr [rbp - 0x7b4], eax
	jmp	.label_2028
.label_2173:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7b4], eax
.label_2028:
	mov	eax, dword ptr [rbp - 0x7b4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x158], rcx
	mov	rcx, qword ptr [rbp - 0x150]
	cmp	rcx, qword ptr [rbp - 0x158]
	jae	.label_2170
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 0x7c0], rax
	jmp	.label_1840
.label_2170:
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x7c0], rax
.label_1840:
	mov	rax, qword ptr [rbp - 0x7c0]
	mov	qword ptr [rbp - 0x160], rax
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1857
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_1857:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1884
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1891
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0x158]
	jae	.label_1891
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x168], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2137
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1984
.label_2137:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1923
.label_1984:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x168]
	call	memset
	mov	rdx, qword ptr [rbp - 0x168]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1923:
	jmp	.label_1891
.label_1891:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	sil, byte ptr [rbp - 0xe2]
	mov	r9d, dword ptr [rbp - 0x8c]
	mov	r8d, dword ptr [rbp - 0xfc]
	mov	r10, qword ptr [rbp - 0x58]
	mov	r11, qword ptr [rbp - 0x60]
	mov	ebx, dword ptr [rbp - 0x64]
	and	sil, 1
	mov	byte ptr [rbp - 0x7c1], sil
	mov	rsi, rax
	mov	r14b, byte ptr [rbp - 0x7c1]
	movzx	r15d, r14b
	mov	dword ptr [rbp - 0x7c8], r8d
	mov	r8d, r15d
	mov	r15d, dword ptr [rbp - 0x7c8]
	mov	dword ptr [rsp], r15d
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], ebx
	call	__strftime_internal
	mov	rcx, qword ptr [rbp - 0x150]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
	mov	qword ptr [rbp - 0x7d0], rax
.label_1884:
	mov	rax, qword ptr [rbp - 0x160]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1885
.label_1969:
	lea	rax, [rbp - 0x16d]
	mov	qword ptr [rbp - 0x178], rax
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x20
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x178], rcx
	mov	byte ptr [rax], 0x25
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_2043
	mov	eax, dword ptr [rbp - 0x90]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rbp - 0x178], rsi
	mov	byte ptr [rdx], cl
.label_2043:
	mov	eax, 0x400
	mov	esi, eax
	lea	rdx, [rbp - 0x16d]
	lea	rdi, [rbp - 0x580]
	mov	eax, dword ptr [rbp - 0xf8]
	mov	cl, al
	mov	r8, qword ptr [rbp - 0x178]
	mov	r9, r8
	add	r9, 1
	mov	qword ptr [rbp - 0x178], r9
	mov	byte ptr [r8], cl
	mov	r8, qword ptr [rbp - 0x178]
	mov	byte ptr [r8], 0
	mov	rcx, qword ptr [rbp - 0x40]
	call	strftime
	mov	qword ptr [rbp - 0x588], rax
	cmp	qword ptr [rbp - 0x588], 0
	je	.label_1868
	jmp	.label_1945
.label_1945:
	mov	rax, qword ptr [rbp - 0x588]
	sub	rax, 1
	mov	qword ptr [rbp - 0x590], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2078
	xor	eax, eax
	mov	dword ptr [rbp - 0x7d4], eax
	jmp	.label_2086
.label_2078:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x7d4], eax
.label_2086:
	mov	eax, dword ptr [rbp - 0x7d4]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x598], rcx
	mov	rcx, qword ptr [rbp - 0x590]
	cmp	rcx, qword ptr [rbp - 0x598]
	jae	.label_1849
	mov	rax, qword ptr [rbp - 0x598]
	mov	qword ptr [rbp - 0x7e0], rax
	jmp	.label_2102
.label_1849:
	mov	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x7e0], rax
.label_2102:
	mov	rax, qword ptr [rbp - 0x7e0]
	mov	qword ptr [rbp - 0x5a0], rax
	mov	rax, qword ptr [rbp - 0x5a0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2148
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_2148:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2122
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2115
	mov	rax, qword ptr [rbp - 0x590]
	cmp	rax, qword ptr [rbp - 0x598]
	jae	.label_2115
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x590]
	mov	qword ptr [rbp - 0x5a8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2174
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1992
.label_2174:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1990
.label_1992:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5a8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5a8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1990:
	jmp	.label_2115
.label_2115:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_2165
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x7e8], rax
	jmp	.label_2047
.label_2165:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1861
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x7f0], rax
	jmp	.label_1943
.label_1861:
	lea	rax, [rbp - 0x580]
	mov	rdi, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	rdx, qword ptr [rbp - 0x590]
	mov	rsi, rax
	call	memcpy
.label_1943:
	jmp	.label_2047
.label_2047:
	mov	rax, qword ptr [rbp - 0x590]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_2122:
	mov	rax, qword ptr [rbp - 0x5a0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1868
.label_1868:
	jmp	.label_1885
.label_2834:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1894
	jmp	.label_1969
.label_1894:
	xor	eax, eax
	mov	cl, al
	mov	eax, 0x64
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	dword ptr [rbp - 0x7f4], eax
	mov	eax, esi
	cdq	
	mov	esi, dword ptr [rbp - 0x7f4]
	idiv	esi
	add	eax, 0x13
	mov	dword ptr [rbp - 0x5ac], eax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdi + 0x14]
	cdq	
	idiv	esi
	cmp	edx, 0
	mov	byte ptr [rbp - 0x7f5], cl
	jge	.label_2155
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 0x5ac]
	setl	cl
	mov	byte ptr [rbp - 0x7f5], cl
.label_2155:
	mov	al, byte ptr [rbp - 0x7f5]
	and	al, 1
	movzx	ecx, al
	mov	edx, dword ptr [rbp - 0x5ac]
	sub	edx, ecx
	mov	dword ptr [rbp - 0x5ac], edx
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	edx, dword ptr [rbp - 0x5ac]
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_1937
.label_2868:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_1963
	jmp	.label_1843
.label_1963:
	jmp	.label_1969
.label_2835:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_1973
	jmp	.label_1843
.label_1973:
	movabs	rax, OFFSET FLAT:label_1979
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1980
.label_2854:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1987
	jmp	.label_1843
.label_1987:
	jmp	.label_1993
.label_1993:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1896
.label_2855:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2007
	jmp	.label_1843
.label_2007:
	jmp	.label_2010
.label_2010:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1971
.label_1870:
	mov	byte ptr [rbp - 0x9e], 1
	jmp	.label_2020
.label_1937:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_2025
	mov	eax, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x8c], eax
.label_2025:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x8c], 0x2b
	mov	byte ptr [rbp - 0x7f6], cl
	jne	.label_2031
	mov	al, 1
	mov	ecx, 0x270f
	mov	edx, 0x63
	cmp	dword ptr [rbp - 0x94], 2
	cmove	ecx, edx
	cmp	ecx, dword ptr [rbp - 0x9c]
	mov	byte ptr [rbp - 0x7f7], al
	jb	.label_2040
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	setl	cl
	mov	byte ptr [rbp - 0x7f7], cl
.label_2040:
	mov	al, byte ptr [rbp - 0x7f7]
	mov	byte ptr [rbp - 0x7f6], al
.label_2031:
	mov	al, byte ptr [rbp - 0x7f6]
	and	al, 1
	mov	byte ptr [rbp - 0x9e], al
	jmp	.label_2063
.label_1971:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_2071
	mov	dword ptr [rbp - 0x8c], 0x5f
.label_2071:
	jmp	.label_1896
.label_1896:
	cmp	dword ptr [rbp - 0x98], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x9c], ecx
.label_2060:
	mov	byte ptr [rbp - 0x9e], 0
.label_2063:
	mov	dword ptr [rbp - 0xa4], 0
.label_2020:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_2095
	test	byte ptr [rbp - 0x9d], 1
	jne	.label_2095
	jmp	.label_1969
.label_2095:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	qword ptr [rbp - 0xc0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_2108
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x9c], eax
.label_2108:
	jmp	.label_2068
.label_2068:
	mov	eax, dword ptr [rbp - 0xa4]
	and	eax, 1
	cmp	eax, 0
	je	.label_2117
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xc0], rcx
	mov	byte ptr [rax - 1], 0x3a
.label_2117:
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0xa4]
	sar	ecx, 1
	mov	dword ptr [rbp - 0xa4], ecx
	mov	ecx, dword ptr [rbp - 0x9c]
	mov	dword ptr [rbp - 0x7fc], eax
	mov	eax, ecx
	xor	edx, edx
	mov	ecx, dword ptr [rbp - 0x7fc]
	div	ecx
	add	edx, 0x30
	mov	sil, dl
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	r8, rdi
	add	r8, -1
	mov	qword ptr [rbp - 0xc0], r8
	mov	byte ptr [rdi - 1], sil
	mov	edx, dword ptr [rbp - 0x9c]
	mov	eax, edx
	xor	edx, edx
	div	ecx
	mov	dword ptr [rbp - 0x9c], eax
	mov	al, 1
	cmp	dword ptr [rbp - 0x9c], 0
	mov	byte ptr [rbp - 0x7fd], al
	jne	.label_2126
	cmp	dword ptr [rbp - 0xa4], 0
	setne	al
	mov	byte ptr [rbp - 0x7fd], al
.label_2126:
	mov	al, byte ptr [rbp - 0x7fd]
	test	al, 1
	jne	.label_2068
	jmp	.label_1910
.label_1910:
	mov	eax, dword ptr [rbp - 0x94]
	cmp	eax, dword ptr [rbp - 0x4c]
	jge	.label_2163
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
.label_2163:
	test	byte ptr [rbp - 0x9d], 1
	je	.label_2138
	mov	eax, 0x2d
	mov	dword ptr [rbp - 0x804], eax
	jmp	.label_1886
.label_2138:
	xor	eax, eax
	mov	ecx, 0x2b
	mov	dl, byte ptr [rbp - 0x9e]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 0x804], eax
.label_1886:
	mov	eax, dword ptr [rbp - 0x804]
	mov	cl, al
	mov	byte ptr [rbp - 0xb1], cl
	cmp	dword ptr [rbp - 0x8c], 0x2d
	jne	.label_1846
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_1862
	jmp	.label_1999
.label_1999:
	mov	qword ptr [rbp - 0x5b8], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1871
	xor	eax, eax
	mov	dword ptr [rbp - 0x808], eax
	jmp	.label_2049
.label_1871:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x808], eax
.label_2049:
	mov	eax, dword ptr [rbp - 0x808]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5c0], rcx
	mov	rcx, qword ptr [rbp - 0x5b8]
	cmp	rcx, qword ptr [rbp - 0x5c0]
	jae	.label_2096
	mov	rax, qword ptr [rbp - 0x5c0]
	mov	qword ptr [rbp - 0x810], rax
	jmp	.label_1901
.label_2096:
	mov	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x810], rax
.label_1901:
	mov	rax, qword ptr [rbp - 0x810]
	mov	qword ptr [rbp - 0x5c8], rax
	mov	rax, qword ptr [rbp - 0x5c8]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1926
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_1926:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1995
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1933
	mov	rax, qword ptr [rbp - 0x5b8]
	cmp	rax, qword ptr [rbp - 0x5c0]
	jae	.label_1933
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5b8]
	mov	qword ptr [rbp - 0x5d0], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2176
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2169
.label_2176:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1974
.label_2169:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5d0]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5d0]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1974:
	jmp	.label_1933
.label_1933:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5b8]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1995:
	mov	rax, qword ptr [rbp - 0x5c8]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1862
.label_1862:
	jmp	.label_2012
.label_1846:
	lea	rax, [rbp - 0xe0]
	movsxd	rcx, dword ptr [rbp - 0x94]
	add	rax, 0x17
	mov	rdx, qword ptr [rbp - 0xc0]
	sub	rax, rdx
	sub	rcx, rax
	cmp	byte ptr [rbp - 0xb1], 0
	setne	sil
	xor	sil, 0xff
	xor	sil, 0xff
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	sub	rcx, rax
	mov	edi, ecx
	mov	dword ptr [rbp - 0x5d4], edi
	cmp	dword ptr [rbp - 0x5d4], 0
	jle	.label_2015
	cmp	dword ptr [rbp - 0x8c], 0x5f
	jne	.label_2081
	movsxd	rax, dword ptr [rbp - 0x5d4]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2044
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_2044:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2056
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_2056:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	ecx, dword ptr [rbp - 0x4c]
	cmp	ecx, dword ptr [rbp - 0x5d4]
	jle	.label_2062
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, dword ptr [rbp - 0x5d4]
	mov	dword ptr [rbp - 0x814], eax
	jmp	.label_2089
.label_2062:
	xor	eax, eax
	mov	dword ptr [rbp - 0x814], eax
	jmp	.label_2089
.label_2089:
	mov	eax, dword ptr [rbp - 0x814]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_2100
	jmp	.label_1956
.label_1956:
	mov	qword ptr [rbp - 0x5e0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1976
	xor	eax, eax
	mov	dword ptr [rbp - 0x818], eax
	jmp	.label_2166
.label_1976:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x818], eax
.label_2166:
	mov	eax, dword ptr [rbp - 0x818]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x5e8], rcx
	mov	rcx, qword ptr [rbp - 0x5e0]
	cmp	rcx, qword ptr [rbp - 0x5e8]
	jae	.label_1838
	mov	rax, qword ptr [rbp - 0x5e8]
	mov	qword ptr [rbp - 0x820], rax
	jmp	.label_1989
.label_1838:
	mov	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x820], rax
.label_1989:
	mov	rax, qword ptr [rbp - 0x820]
	mov	qword ptr [rbp - 0x5f0], rax
	mov	rax, qword ptr [rbp - 0x5f0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2131
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_2131:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1951
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1852
	mov	rax, qword ptr [rbp - 0x5e0]
	cmp	rax, qword ptr [rbp - 0x5e8]
	jae	.label_1852
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x5e0]
	mov	qword ptr [rbp - 0x5f8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1898
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2103
.label_1898:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2171
.label_2103:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x5f8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x5f8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2171:
	jmp	.label_1852
.label_1852:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x5e0]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1951:
	mov	rax, qword ptr [rbp - 0x5f0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2100
.label_2100:
	jmp	.label_1878
.label_2081:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1882
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_1882:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_2030
	jmp	.label_1883
.label_1883:
	mov	qword ptr [rbp - 0x600], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1941
	xor	eax, eax
	mov	dword ptr [rbp - 0x824], eax
	jmp	.label_1908
.label_1941:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x824], eax
.label_1908:
	mov	eax, dword ptr [rbp - 0x824]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x608], rcx
	mov	rcx, qword ptr [rbp - 0x600]
	cmp	rcx, qword ptr [rbp - 0x608]
	jae	.label_2033
	mov	rax, qword ptr [rbp - 0x608]
	mov	qword ptr [rbp - 0x830], rax
	jmp	.label_1932
.label_2033:
	mov	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x830], rax
.label_1932:
	mov	rax, qword ptr [rbp - 0x830]
	mov	qword ptr [rbp - 0x610], rax
	mov	rax, qword ptr [rbp - 0x610]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1946
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_1946:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1962
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1978
	mov	rax, qword ptr [rbp - 0x600]
	cmp	rax, qword ptr [rbp - 0x608]
	jae	.label_1978
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x600]
	mov	qword ptr [rbp - 0x618], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2017
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2146
.label_2017:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2003
.label_2146:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x618]
	call	memset
	mov	rdx, qword ptr [rbp - 0x618]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2003:
	jmp	.label_1978
.label_1978:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x600]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1962:
	mov	rax, qword ptr [rbp - 0x610]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2030
.label_2030:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2038
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	movsxd	rdx, dword ptr [rbp - 0x5d4]
	call	memset
	mov	esi, dword ptr [rbp - 0x5d4]
	mov	rdx, qword ptr [rbp - 0x80]
	movsxd	rdi, esi
	add	rdx, rdi
	mov	qword ptr [rbp - 0x80], rdx
.label_2038:
	movsxd	rax, dword ptr [rbp - 0x5d4]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x4c], 0
.label_1878:
	jmp	.label_2061
.label_2015:
	cmp	byte ptr [rbp - 0xb1], 0
	je	.label_2064
	jmp	.label_2070
.label_2070:
	mov	qword ptr [rbp - 0x620], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2073
	xor	eax, eax
	mov	dword ptr [rbp - 0x834], eax
	jmp	.label_2136
.label_2073:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x834], eax
.label_2136:
	mov	eax, dword ptr [rbp - 0x834]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x628], rcx
	mov	rcx, qword ptr [rbp - 0x620]
	cmp	rcx, qword ptr [rbp - 0x628]
	jae	.label_2088
	mov	rax, qword ptr [rbp - 0x628]
	mov	qword ptr [rbp - 0x840], rax
	jmp	.label_2099
.label_2088:
	mov	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x840], rax
.label_2099:
	mov	rax, qword ptr [rbp - 0x840]
	mov	qword ptr [rbp - 0x630], rax
	mov	rax, qword ptr [rbp - 0x630]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2094
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_2094:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1839
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_2101
	mov	rax, qword ptr [rbp - 0x620]
	cmp	rax, qword ptr [rbp - 0x628]
	jae	.label_2101
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x620]
	mov	qword ptr [rbp - 0x638], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2157
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2135
.label_2157:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2145
.label_2135:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x638]
	call	memset
	mov	rdx, qword ptr [rbp - 0x638]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2145:
	jmp	.label_2101
.label_2101:
	mov	al, byte ptr [rbp - 0xb1]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	byte ptr [rcx], al
	mov	rcx, qword ptr [rbp - 0x620]
	add	rcx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rcx
.label_1839:
	mov	rax, qword ptr [rbp - 0x630]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2064
.label_2064:
	jmp	.label_2061
.label_2061:
	jmp	.label_2012
.label_2012:
	jmp	.label_2175
.label_2175:
	lea	rax, [rbp - 0xe0]
	add	rax, 0x17
	mov	rcx, qword ptr [rbp - 0xc0]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x640], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2129
	xor	eax, eax
	mov	dword ptr [rbp - 0x844], eax
	jmp	.label_1850
.label_2129:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x844], eax
.label_1850:
	mov	eax, dword ptr [rbp - 0x844]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x648], rcx
	mov	rcx, qword ptr [rbp - 0x640]
	cmp	rcx, qword ptr [rbp - 0x648]
	jae	.label_2055
	mov	rax, qword ptr [rbp - 0x648]
	mov	qword ptr [rbp - 0x850], rax
	jmp	.label_1881
.label_2055:
	mov	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x850], rax
.label_1881:
	mov	rax, qword ptr [rbp - 0x850]
	mov	qword ptr [rbp - 0x650], rax
	mov	rax, qword ptr [rbp - 0x650]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1892
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_1892:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1912
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1916
	mov	rax, qword ptr [rbp - 0x640]
	cmp	rax, qword ptr [rbp - 0x648]
	jae	.label_1916
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x640]
	mov	qword ptr [rbp - 0x658], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1845
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1960
.label_1845:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2050
.label_1960:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x658]
	call	memset
	mov	rdx, qword ptr [rbp - 0x658]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2050:
	jmp	.label_1916
.label_1916:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1874
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x858], rax
	jmp	.label_1947
.label_1874:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1994
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x860], rax
	jmp	.label_1930
.label_1994:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x640]
	call	memcpy
.label_1930:
	jmp	.label_1947
.label_1947:
	mov	rax, qword ptr [rbp - 0x640]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1912:
	mov	rax, qword ptr [rbp - 0x650]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1885
.label_2836:
	cmp	dword ptr [rbp - 0x90], 0
	je	.label_2029
	jmp	.label_1843
.label_2029:
	cmp	dword ptr [rbp - 0x8c], 0
	jne	.label_2035
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2035
	mov	dword ptr [rbp - 0x8c], 0x2b
	mov	dword ptr [rbp - 0xfc], 4
	jmp	.label_2042
.label_2035:
	mov	eax, dword ptr [rbp - 0x4c]
	sub	eax, 6
	mov	dword ptr [rbp - 0xfc], eax
	cmp	dword ptr [rbp - 0xfc], 0
	jge	.label_2051
	mov	dword ptr [rbp - 0xfc], 0
.label_2051:
	jmp	.label_2042
.label_2042:
	movabs	rax, OFFSET FLAT:label_2066
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_2067
.label_2838:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2077
	jmp	.label_1843
.label_2077:
	jmp	.label_2083
.label_2083:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1896
.label_2839:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2092
	jmp	.label_1843
.label_2092:
	jmp	.label_1895
.label_1895:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1896
.label_2857:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2109
	jmp	.label_1843
.label_2109:
	jmp	.label_2112
.label_2112:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1971
.label_2858:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2118
	jmp	.label_1843
.label_2118:
	jmp	.label_2120
.label_2120:
	mov	dword ptr [rbp - 0x94], 2
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1971
.label_2856:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2127
	jmp	.label_1843
.label_2127:
	jmp	.label_2132
.label_2132:
	mov	dword ptr [rbp - 0x94], 3
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x1c], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x1c]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_2060
.label_2840:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1965
	jmp	.label_1843
.label_1965:
	jmp	.label_2152
.label_2152:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1896
.label_2859:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2160
	jmp	.label_1843
.label_2160:
	jmp	.label_2164
.label_2164:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x10], -1
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x10]
	add	edx, 1
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_2060
.label_2841:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1856
	jmp	.label_1843
.label_1856:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x98], eax
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_1844
	mov	dword ptr [rbp - 0x4c], 9
	jmp	.label_1854
.label_1844:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x65c], eax
.label_1872:
	cmp	dword ptr [rbp - 0x65c], 9
	jge	.label_1866
	mov	eax, 0xa
	mov	ecx, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x864], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x864]
	idiv	ecx
	mov	dword ptr [rbp - 0x98], eax
	mov	eax, dword ptr [rbp - 0x65c]
	add	eax, 1
	mov	dword ptr [rbp - 0x65c], eax
	jmp	.label_1872
.label_1866:
	jmp	.label_1854
.label_1854:
	jmp	.label_1893
.label_1893:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x94], eax
	mov	eax, dword ptr [rbp - 0x98]
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1896
.label_2860:
	jmp	.label_1905
.label_1905:
	mov	qword ptr [rbp - 0x668], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1909
	xor	eax, eax
	mov	dword ptr [rbp - 0x868], eax
	jmp	.label_1918
.label_1909:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x868], eax
.label_1918:
	mov	eax, dword ptr [rbp - 0x868]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x670], rcx
	mov	rcx, qword ptr [rbp - 0x668]
	cmp	rcx, qword ptr [rbp - 0x670]
	jae	.label_1928
	mov	rax, qword ptr [rbp - 0x670]
	mov	qword ptr [rbp - 0x870], rax
	jmp	.label_2026
.label_1928:
	mov	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x870], rax
.label_2026:
	mov	rax, qword ptr [rbp - 0x870]
	mov	qword ptr [rbp - 0x678], rax
	mov	rax, qword ptr [rbp - 0x678]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1954
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_1954:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1972
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1975
	mov	rax, qword ptr [rbp - 0x668]
	cmp	rax, qword ptr [rbp - 0x670]
	jae	.label_1975
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x668]
	mov	qword ptr [rbp - 0x680], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1988
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2004
.label_1988:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2009
.label_2004:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x680]
	call	memset
	mov	rdx, qword ptr [rbp - 0x680]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2009:
	jmp	.label_1975
.label_1975:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0xa
	mov	rax, qword ptr [rbp - 0x668]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1972:
	mov	rax, qword ptr [rbp - 0x678]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1885
.label_2842:
	mov	byte ptr [rbp - 0xe1], 1
	mov	dword ptr [rbp - 0xf8], 0x70
.label_2861:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_2048
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_2048:
	jmp	.label_1969
.label_2862:
	jmp	.label_2058
.label_2058:
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9d], 0
	mov	rax, qword ptr [rbp - 0x40]
	imul	ecx, dword ptr [rax + 0x10], 0xb
	sar	ecx, 5
	add	ecx, 1
	mov	dword ptr [rbp - 0x9c], ecx
	jmp	.label_2060
.label_2843:
	movabs	rax, OFFSET FLAT:label_2079
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1980
.label_2863:
	jmp	.label_1969
.label_2844:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2087
	jmp	.label_1843
.label_2087:
	jmp	.label_2093
.label_2093:
	mov	dword ptr [rbp - 0x94], 2
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1896
.label_2864:
	lea	rax, [rbp - 0x6b8]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x878], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x878]
	call	mktime_z
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x6c0], rax
	add	rdx, 0x17
	mov	qword ptr [rbp - 0xc0], rdx
	cmp	qword ptr [rbp - 0x6c0], 0
	setl	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x9d], r8b
.label_2147:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x6c0]
	cqo	
	idiv	rcx
	mov	esi, edx
	mov	dword ptr [rbp - 0x6c4], esi
	mov	rdx, qword ptr [rbp - 0x6c0]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x6c0], rax
	test	byte ptr [rbp - 0x9d], 1
	je	.label_2125
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x87c], eax
	jmp	.label_2139
.label_2125:
	mov	eax, dword ptr [rbp - 0x6c4]
	mov	dword ptr [rbp - 0x87c], eax
.label_2139:
	mov	eax, dword ptr [rbp - 0x87c]
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0xc0], rsi
	mov	byte ptr [rdx - 1], cl
	cmp	qword ptr [rbp - 0x6c0], 0
	jne	.label_2147
	mov	dword ptr [rbp - 0x94], 1
	mov	byte ptr [rbp - 0x9e], 0
	jmp	.label_1910
.label_2848:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_2167
	jmp	.label_1843
.label_2167:
	jmp	.label_1969
.label_2845:
	movabs	rax, OFFSET FLAT:label_1982
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_1980
.label_2865:
	jmp	.label_1835
.label_1835:
	mov	qword ptr [rbp - 0x6d0], 1
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1837
	xor	eax, eax
	mov	dword ptr [rbp - 0x880], eax
	jmp	.label_1847
.label_1837:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x880], eax
.label_1847:
	mov	eax, dword ptr [rbp - 0x880]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x6d8], rcx
	mov	rcx, qword ptr [rbp - 0x6d0]
	cmp	rcx, qword ptr [rbp - 0x6d8]
	jae	.label_1859
	mov	rax, qword ptr [rbp - 0x6d8]
	mov	qword ptr [rbp - 0x888], rax
	jmp	.label_1876
.label_1859:
	mov	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x888], rax
.label_1876:
	mov	rax, qword ptr [rbp - 0x888]
	mov	qword ptr [rbp - 0x6e0], rax
	mov	rax, qword ptr [rbp - 0x6e0]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1889
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_1889:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1907
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1913
	mov	rax, qword ptr [rbp - 0x6d0]
	cmp	rax, qword ptr [rbp - 0x6d8]
	jae	.label_1913
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x6d0]
	mov	qword ptr [rbp - 0x6e8], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_1927
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1939
.label_1927:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1952
.label_1939:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x6e8]
	call	memset
	mov	rdx, qword ptr [rbp - 0x6e8]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1952:
	jmp	.label_1913
.label_1913:
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 9
	mov	rax, qword ptr [rbp - 0x6d0]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1907:
	mov	rax, qword ptr [rbp - 0x6e0]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1885
.label_2866:
	jmp	.label_1991
.label_1991:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x18]
	sub	edx, 1
	add	edx, 7
	mov	dword ptr [rbp - 0x88c], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x88c]
	idiv	esi
	add	edx, 1
	mov	dword ptr [rbp - 0x98], edx
	jmp	.label_1896
.label_2846:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_1842
	jmp	.label_1843
.label_1842:
	jmp	.label_2045
.label_2045:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	edx, dword ptr [rcx + 0x18]
	add	edx, 7
	mov	dword ptr [rbp - 0x890], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x890]
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1896
.label_2837:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2037
	jmp	.label_1843
.label_2037:
	mov	eax, 0xffffff9c
	mov	ecx, 0x12c
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x14]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	dword ptr [rdx + 0x14], 0
	cmovl	eax, ecx
	add	esi, eax
	mov	dword ptr [rbp - 0x6ec], esi
	mov	dword ptr [rbp - 0x6f0], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	edi, dword ptr [rdx + 0x1c]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x18]
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	cmp	dword ptr [rbp - 0x6f4], 0
	jge	.label_2065
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	dword ptr [rbp - 0x6f0], 0xffffffff
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	sub	edi, 1
	mov	dword ptr [rbp - 0x894], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x894]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x898], esi
	mov	byte ptr [rbp - 0x899], cl
	jne	.label_2074
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	sub	edx, 1
	mov	byte ptr [rbp - 0x89a], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x89a]
	mov	byte ptr [rbp - 0x89b], sil
	jne	.label_2098
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	sub	ecx, 1
	mov	dword ptr [rbp - 0x8a0], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8a0]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x89b], sil
.label_2098:
	mov	al, byte ptr [rbp - 0x89b]
	mov	byte ptr [rbp - 0x899], al
.label_2074:
	mov	al, byte ptr [rbp - 0x899]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x898]
	add	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	mov	dword ptr [rbp - 0x6f4], eax
	jmp	.label_1873
.label_2065:
	xor	eax, eax
	mov	cl, al
	mov	eax, 4
	mov	rdx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rdx + 0x1c]
	mov	edi, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x8a4], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x8a4]
	idiv	edi
	cmp	edx, 0
	mov	dword ptr [rbp - 0x8a8], esi
	mov	byte ptr [rbp - 0x8a9], cl
	jne	.label_2134
	mov	al, 1
	mov	ecx, 0x64
	mov	edx, dword ptr [rbp - 0x6ec]
	mov	byte ptr [rbp - 0x8aa], al
	mov	eax, edx
	cdq	
	idiv	ecx
	cmp	edx, 0
	mov	sil, byte ptr [rbp - 0x8aa]
	mov	byte ptr [rbp - 0x8ab], sil
	jne	.label_2151
	mov	eax, 0x190
	mov	ecx, dword ptr [rbp - 0x6ec]
	mov	dword ptr [rbp - 0x8b0], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8b0]
	idiv	ecx
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 0x8ab], sil
.label_2151:
	mov	al, byte ptr [rbp - 0x8ab]
	mov	byte ptr [rbp - 0x8a9], al
.label_2134:
	mov	al, byte ptr [rbp - 0x8a9]
	and	al, 1
	movzx	ecx, al
	add	ecx, 0x16d
	mov	edx, dword ptr [rbp - 0x8a8]
	sub	edx, ecx
	mov	rsi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rsi + 0x18]
	mov	edi, edx
	call	iso_week_days
	xor	ecx, ecx
	mov	dword ptr [rbp - 0x6f8], eax
	cmp	ecx, dword ptr [rbp - 0x6f8]
	jg	.label_1851
	mov	dword ptr [rbp - 0x6f0], 1
	mov	eax, dword ptr [rbp - 0x6f8]
	mov	dword ptr [rbp - 0x6f4], eax
.label_1851:
	jmp	.label_1873
.label_1873:
	mov	rax, qword ptr [rbp - 0x88]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x47
	mov	dword ptr [rbp - 0x8b4], ecx
	mov	dword ptr [rbp - 0x8b8], edx
	je	.label_2032
	jmp	.label_1888
.label_1888:
	mov	eax, dword ptr [rbp - 0x8b4]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x8bc], eax
	jne	.label_1890
	jmp	.label_1897
.label_1897:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x8c0], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8c0]
	idiv	esi
	add	edx, dword ptr [rbp - 0x6f0]
	mov	eax, edx
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x6fc], edx
	xor	eax, eax
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	cmp	eax, dword ptr [rbp - 0x6fc]
	jg	.label_1900
	mov	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x8c4], eax
	jmp	.label_2054
.label_1900:
	mov	eax, 0xfffff894
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	jge	.label_1938
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x6fc]
	mov	dword ptr [rbp - 0x8c8], eax
	jmp	.label_1948
.label_1938:
	mov	eax, dword ptr [rbp - 0x6fc]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x8c8], eax
.label_1948:
	mov	eax, dword ptr [rbp - 0x8c8]
	mov	dword ptr [rbp - 0x8c4], eax
.label_2054:
	mov	eax, dword ptr [rbp - 0x8c4]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1937
.label_2032:
	jmp	.label_1968
.label_1968:
	mov	eax, 0xfffff894
	mov	dword ptr [rbp - 0x94], 4
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	sub	eax, dword ptr [rbp - 0x6f0]
	cmp	edx, eax
	setl	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x9d], sil
	mov	rcx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rcx + 0x14]
	add	eax, 0x76c
	add	eax, dword ptr [rbp - 0x6f0]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1937
.label_1890:
	jmp	.label_1998
.label_1998:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	ecx, dword ptr [rbp - 0x6f4]
	mov	dword ptr [rbp - 0x8cc], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x8cc]
	idiv	ecx
	add	eax, 1
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1896
.label_2847:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2019
	jmp	.label_1843
.label_2019:
	jmp	.label_2022
.label_2022:
	mov	eax, 7
	mov	dword ptr [rbp - 0x94], 2
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x1c]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rcx + 0x18]
	sub	esi, 1
	add	esi, 7
	mov	dword ptr [rbp - 0x8d0], eax
	mov	eax, esi
	mov	dword ptr [rbp - 0x8d4], edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8d0]
	idiv	esi
	mov	edi, dword ptr [rbp - 0x8d4]
	sub	edi, edx
	add	edi, 7
	mov	eax, edi
	cdq	
	idiv	esi
	mov	dword ptr [rbp - 0x98], eax
	jmp	.label_1896
.label_2867:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2052
	jmp	.label_1843
.label_2052:
	jmp	.label_2057
.label_2057:
	mov	dword ptr [rbp - 0x94], 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x18]
	mov	dword ptr [rbp - 0x98], ecx
	jmp	.label_1896
.label_2849:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2072
	jmp	.label_1969
.label_2072:
	cmp	dword ptr [rbp - 0x90], 0x4f
	jne	.label_2080
	jmp	.label_1843
.label_2080:
	jmp	.label_2085
.label_2085:
	mov	dword ptr [rbp - 0x94], 4
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	setl	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x9d], cl
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 0x14]
	add	edx, 0x76c
	mov	dword ptr [rbp - 0x9c], edx
	jmp	.label_1937
.label_2869:
	cmp	dword ptr [rbp - 0x90], 0x45
	jne	.label_2104
	jmp	.label_1969
.label_2104:
	mov	eax, 0x64
	mov	rcx, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rcx + 0x14]
	mov	dword ptr [rbp - 0x8d8], eax
	mov	eax, edx
	cdq	
	mov	esi, dword ptr [rbp - 0x8d8]
	idiv	esi
	mov	dword ptr [rbp - 0x700], edx
	cmp	dword ptr [rbp - 0x700], 0
	jge	.label_2111
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x14], 0xfffff894
	jge	.label_2119
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x8dc], eax
	jmp	.label_2123
.label_2119:
	mov	eax, dword ptr [rbp - 0x700]
	add	eax, 0x64
	mov	dword ptr [rbp - 0x8dc], eax
.label_2123:
	mov	eax, dword ptr [rbp - 0x8dc]
	mov	dword ptr [rbp - 0x700], eax
.label_2111:
	jmp	.label_2133
.label_2133:
	mov	dword ptr [rbp - 0x94], 2
	mov	byte ptr [rbp - 0x9d], 0
	mov	eax, dword ptr [rbp - 0x700]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1937
.label_2850:
	test	byte ptr [rbp - 0xf1], 1
	je	.label_2143
	mov	byte ptr [rbp - 0xe2], 0
	mov	byte ptr [rbp - 0xe1], 1
.label_2143:
	jmp	.label_2150
.label_2150:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x708], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_2024
	xor	eax, eax
	mov	dword ptr [rbp - 0x8e0], eax
	jmp	.label_2158
.label_2024:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x8e0], eax
.label_2158:
	mov	eax, dword ptr [rbp - 0x8e0]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x710], rcx
	mov	rcx, qword ptr [rbp - 0x708]
	cmp	rcx, qword ptr [rbp - 0x710]
	jae	.label_2162
	mov	rax, qword ptr [rbp - 0x710]
	mov	qword ptr [rbp - 0x8e8], rax
	jmp	.label_2172
.label_2162:
	mov	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x8e8], rax
.label_2172:
	mov	rax, qword ptr [rbp - 0x8e8]
	mov	qword ptr [rbp - 0x718], rax
	mov	rax, qword ptr [rbp - 0x718]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_1841
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_1841:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1869
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1879
	mov	rax, qword ptr [rbp - 0x708]
	cmp	rax, qword ptr [rbp - 0x710]
	jae	.label_1879
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x708]
	mov	qword ptr [rbp - 0x720], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2039
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_1919
.label_2039:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_1858
.label_1919:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x720]
	call	memset
	mov	rdx, qword ptr [rbp - 0x720]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_1858:
	jmp	.label_1879
.label_1879:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_1936
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x8f0], rax
	jmp	.label_1949
.label_1936:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_1953
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x8f8], rax
	jmp	.label_1964
.label_1953:
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x708]
	call	memcpy
.label_1964:
	jmp	.label_1949
.label_1949:
	mov	rax, qword ptr [rbp - 0x708]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1869:
	mov	rax, qword ptr [rbp - 0x718]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1885
.label_2831:
	mov	qword ptr [rbp - 0xf0], 1
.label_2008:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x3a
	jne	.label_1996
	jmp	.label_2006
.label_2006:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_2008
.label_1996:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0x88]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x7a
	je	.label_2014
	jmp	.label_1843
.label_2014:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_2023
.label_2870:
	mov	qword ptr [rbp - 0xf0], 0
.label_2023:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0x20], 0
	jge	.label_2034
	jmp	.label_1885
.label_2034:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x724], edx
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x8f9], al
	jl	.label_1917
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x724], 0
	mov	byte ptr [rbp - 0x8fa], cl
	jne	.label_2053
	mov	rax, qword ptr [rbp - 0x70]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	mov	byte ptr [rbp - 0x8fa], dl
.label_2053:
	mov	al, byte ptr [rbp - 0x8fa]
	mov	byte ptr [rbp - 0x8f9], al
.label_1917:
	mov	al, byte ptr [rbp - 0x8f9]
	and	al, 1
	mov	byte ptr [rbp - 0x9d], al
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 5
	add	edx, esi
	mov	dword ptr [rbp - 0x728], edx
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edx, esi
	shr	edx, 0x1f
	sar	esi, 5
	add	esi, edx
	movsxd	rcx, esi
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	edx, ecx
	add	edx, esi
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	sub	esi, edx
	mov	dword ptr [rbp - 0x72c], esi
	movsxd	rcx, dword ptr [rbp - 0x724]
	mov	edx, ecx
	imul	rcx, rcx, -0x77777777
	shr	rcx, 0x20
	mov	esi, ecx
	add	esi, edx
	mov	edi, esi
	shr	edi, 0x1f
	sar	esi, 5
	add	esi, edi
	imul	esi, esi, 0x3c
	sub	edx, esi
	mov	dword ptr [rbp - 0x730], edx
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	r8, rcx
	sub	r8, 3
	mov	qword ptr [rbp - 0x908], rcx
	mov	qword ptr [rbp - 0x910], r8
	ja	.label_2075
	mov	rax, qword ptr [rbp - 0x908]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1880]]
	jmp	rcx
.label_2883:
	jmp	.label_2141
.label_2141:
	mov	dword ptr [rbp - 0x94], 5
	mov	dword ptr [rbp - 0xa4], 0
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1870
.label_2884:
	jmp	.label_1864
.label_1864:
	jmp	.label_2154
.label_2154:
	mov	dword ptr [rbp - 0x94], 6
	mov	dword ptr [rbp - 0xa4], 4
	imul	eax, dword ptr [rbp - 0x728], 0x64
	add	eax, dword ptr [rbp - 0x72c]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1870
.label_2885:
	jmp	.label_1853
.label_1853:
	jmp	.label_2130
.label_2130:
	mov	dword ptr [rbp - 0x94], 9
	mov	dword ptr [rbp - 0xa4], 0x14
	imul	eax, dword ptr [rbp - 0x728], 0x2710
	imul	ecx, dword ptr [rbp - 0x72c], 0x64
	add	eax, ecx
	add	eax, dword ptr [rbp - 0x730]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1870
.label_2886:
	cmp	dword ptr [rbp - 0x730], 0
	je	.label_1848
	jmp	.label_1853
.label_1848:
	cmp	dword ptr [rbp - 0x72c], 0
	je	.label_1958
	jmp	.label_1864
.label_1958:
	jmp	.label_1867
.label_1867:
	mov	dword ptr [rbp - 0x94], 3
	mov	dword ptr [rbp - 0xa4], 0
	mov	eax, dword ptr [rbp - 0x728]
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_1870
.label_2075:
	jmp	.label_1843
.label_2829:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, -1
	mov	qword ptr [rbp - 0x88], rax
.label_1904:
	jmp	.label_1843
.label_1843:
	mov	dword ptr [rbp - 0x734], 1
.label_1915:
	mov	eax, 1
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x88]
	movsx	eax, byte ptr [rdx + rcx]
	cmp	eax, 0x25
	je	.label_1899
	jmp	.label_1865
.label_1865:
	mov	eax, dword ptr [rbp - 0x734]
	add	eax, 1
	mov	dword ptr [rbp - 0x734], eax
	jmp	.label_1915
.label_1899:
	jmp	.label_1921
.label_1921:
	movsxd	rax, dword ptr [rbp - 0x734]
	mov	qword ptr [rbp - 0x740], rax
	cmp	dword ptr [rbp - 0x4c], 0
	jge	.label_1924
	xor	eax, eax
	mov	dword ptr [rbp - 0x914], eax
	jmp	.label_1934
.label_1924:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x914], eax
.label_1934:
	mov	eax, dword ptr [rbp - 0x914]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x748], rcx
	mov	rcx, qword ptr [rbp - 0x740]
	cmp	rcx, qword ptr [rbp - 0x748]
	jae	.label_1944
	mov	rax, qword ptr [rbp - 0x748]
	mov	qword ptr [rbp - 0x920], rax
	jmp	.label_2159
.label_1944:
	mov	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x920], rax
.label_2159:
	mov	rax, qword ptr [rbp - 0x920]
	mov	qword ptr [rbp - 0x750], rax
	mov	rax, qword ptr [rbp - 0x750]
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x78]
	cmp	rax, rcx
	jb	.label_2153
	mov	qword ptr [rbp - 0x20], 0
	jmp	.label_1903
.label_2153:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_1986
	cmp	dword ptr [rbp - 0x94], 0
	jne	.label_1981
	mov	rax, qword ptr [rbp - 0x740]
	cmp	rax, qword ptr [rbp - 0x748]
	jae	.label_1981
	movsxd	rax, dword ptr [rbp - 0x4c]
	sub	rax, qword ptr [rbp - 0x740]
	mov	qword ptr [rbp - 0x758], rax
	cmp	dword ptr [rbp - 0x8c], 0x30
	je	.label_2001
	cmp	dword ptr [rbp - 0x8c], 0x2b
	jne	.label_2011
.label_2001:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
	jmp	.label_2021
.label_2011:
	mov	esi, 0x20
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x758]
	call	memset
	mov	rdx, qword ptr [rbp - 0x758]
	add	rdx, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rdx
.label_2021:
	jmp	.label_1981
.label_1981:
	test	byte ptr [rbp - 0xe1], 1
	je	.label_2041
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_lowcase
	mov	qword ptr [rbp - 0x928], rax
	jmp	.label_1922
.label_2041:
	test	byte ptr [rbp - 0xe2], 1
	je	.label_2059
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy_uppcase
	mov	qword ptr [rbp - 0x930], rax
	jmp	.label_2149
.label_2059:
	mov	eax, 1
	mov	rdi, qword ptr [rbp - 0x80]
	sub	eax, dword ptr [rbp - 0x734]
	movsxd	rcx, eax
	add	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x740]
	mov	rsi, rcx
	call	memcpy
.label_2149:
	jmp	.label_1922
.label_1922:
	mov	rax, qword ptr [rbp - 0x740]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
.label_1986:
	mov	rax, qword ptr [rbp - 0x750]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_1885
.label_1885:
	jmp	.label_1955
.label_1955:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_2113
.label_1920:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2084
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2084
	mov	rax, qword ptr [rbp - 0x80]
	mov	byte ptr [rax], 0
.label_2084:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x20], rax
.label_1903:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x938
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417f50

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_2178:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_2177
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	tolower
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_2178
.label_2177:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417fb0

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
.label_2180:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	rax, 0
	jbe	.label_2179
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rcx], dl
	jmp	.label_2180
.label_2179:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418010

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	push	rbp
	mov	rbp, rsp
	mov	eax, 7
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	dword ptr [rbp - 0xc], 0x17a
	mov	esi, dword ptr [rbp - 4]
	mov	edi, dword ptr [rbp - 4]
	sub	edi, dword ptr [rbp - 8]
	add	edi, 4
	add	edi, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, edi
	cdq	
	mov	edi, dword ptr [rbp - 0x10]
	idiv	edi
	sub	esi, edx
	add	esi, 4
	sub	esi, 1
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418050

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2185
	movabs	rdi, OFFSET FLAT:label_2184
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_2185:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2187
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2181
.label_2187:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_2181:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_2182
	movabs	rsi, OFFSET FLAT:label_2188
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_2182
	movabs	rsi, OFFSET FLAT:label_2186
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_2183
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_2183:
	jmp	.label_2182
.label_2182:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418170

	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_2189
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2190
.label_2189:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2190
.label_2190:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4181f0

	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2191
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2192
.label_2191:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2192
.label_2192:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418230

	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_2193
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2194
.label_2193:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2194
.label_2194:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418280

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_2195
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2196
.label_2195:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2196
.label_2196:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418330
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2197
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_2197:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418370

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2198
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_2198:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2200
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2199
.label_2200:
	call	abort
.label_2199:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4183e0

	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2201
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2202
.label_2201:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2202
.label_2202:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4184b0

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_2359:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_2264
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2216]]
	jmp	rcx
.label_2892:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_2891:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2278
	jmp	.label_2281
.label_2281:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2282
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_2282:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2278
.label_2278:
	movabs	rax, OFFSET FLAT:label_2329
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_2300
.label_2893:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_2300
.label_2894:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_2248
	movabs	rdi, OFFSET FLAT:label_2307
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_2310
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_2248:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2316
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_2336:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_2320
	jmp	.label_2322
.label_2322:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2324
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_2324:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2331
.label_2331:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2336
.label_2320:
	jmp	.label_2316
.label_2316:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2300
.label_2889:
	mov	byte ptr [rbp - 0x79], 1
.label_2888:
	mov	byte ptr [rbp - 0x7b], 1
.label_2890:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2345
	mov	byte ptr [rbp - 0x79], 1
.label_2345:
	jmp	.label_2346
.label_2346:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2347
	jmp	.label_2349
.label_2349:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2350
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2350:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2347
.label_2347:
	movabs	rax, OFFSET FLAT:label_2310
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_2300
.label_2887:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_2300
.label_2264:
	call	abort
.label_2300:
	mov	qword ptr [rbp - 0x58], 0
.label_2334:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2361
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_2366
.label_2361:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_2366:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_2379
	jmp	.label_2270
.label_2379:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_2207
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_2207
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2207
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_2394
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_2394
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_2403
.label_2394:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_2403:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_2207
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_2207
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2214
	jmp	.label_2219
.label_2214:
	mov	byte ptr [rbp - 0x81], 1
.label_2207:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_2333
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2226]]
	jmp	rcx
.label_2896:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2227
	jmp	.label_2232
.label_2232:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2233
	jmp	.label_2219
.label_2233:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2241
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_2241
	jmp	.label_2243
.label_2243:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2244
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2244:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2246
.label_2246:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2250
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_2250:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2353
.label_2353:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2261
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2261:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2241:
	jmp	.label_2271
.label_2271:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2273
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2273:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2280
.label_2280:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_2284
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2284
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_2284
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_2284
	jmp	.label_2301
.label_2301:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2303
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_2303:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2309
.label_2309:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2313
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_2313:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2284
.label_2284:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_2323
.label_2227:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_2326
	jmp	.label_2328
.label_2326:
	jmp	.label_2323
.label_2323:
	jmp	.label_2213
.label_2907:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_2332
	jmp	.label_2339
.label_2339:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_2340
	jmp	.label_2341
.label_2332:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2343
	jmp	.label_2219
.label_2343:
	jmp	.label_2221
.label_2340:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_2218
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2218
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_2218
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_2239
	jmp	.label_2358
.label_2358:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_2239
	jmp	.label_2362
.label_2362:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_2239
	jmp	.label_2367
.label_2367:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_2239
	jmp	.label_2373
.label_2373:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_2374
	jmp	.label_2239
.label_2239:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2381
	jmp	.label_2219
.label_2381:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2385
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_2385:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2393
.label_2393:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2396
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_2396:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2401
.label_2401:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2406
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_2406:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2206
.label_2206:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2253
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_2253:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2212
.label_2374:
	jmp	.label_2212
.label_2212:
	jmp	.label_2218
.label_2218:
	jmp	.label_2221
.label_2341:
	jmp	.label_2221
.label_2221:
	jmp	.label_2213
.label_2897:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_2223
.label_2898:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_2223
.label_2902:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_2223
.label_2900:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_2225
.label_2903:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_2225
.label_2899:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_2225
.label_2901:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_2223
.label_2908:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2230
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2235
	jmp	.label_2219
.label_2235:
	jmp	.label_2211
.label_2230:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2238
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2238
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2238
	jmp	.label_2211
.label_2238:
	jmp	.label_2225
.label_2225:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2245
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2245
	jmp	.label_2219
.label_2245:
	jmp	.label_2223
.label_2223:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2252
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_2234
.label_2252:
	jmp	.label_2213
.label_2909:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2259
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_2262
	jmp	.label_2267
.label_2259:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_2262
.label_2267:
	jmp	.label_2213
.label_2262:
	jmp	.label_2299
.label_2299:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_2272
	jmp	.label_2213
.label_2272:
	jmp	.label_2276
.label_2276:
	mov	byte ptr [rbp - 0x83], 1
.label_2904:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2279
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2279
	jmp	.label_2219
.label_2279:
	jmp	.label_2213
.label_2906:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2287
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2293
	jmp	.label_2219
.label_2293:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2342
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_2342
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_2342:
	jmp	.label_2305
.label_2305:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2387
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2387:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2312
.label_2312:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2315
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2315:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2321
.label_2321:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2327
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2327:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2287:
	jmp	.label_2213
.label_2905:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_2213
.label_2333:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_2356
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_2268
.label_2356:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_2352
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_2352:
	jmp	.label_2263
.label_2263:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_2371
	jmp	.label_2204
.label_2371:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_2378
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_2204
.label_2378:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_2383
	mov	byte ptr [rbp - 0x91], 0
.label_2402:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_2386
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_2386:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_2399
	jmp	.label_2400
.label_2399:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2402
.label_2400:
	jmp	.label_2204
.label_2383:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2205
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2205
	mov	qword ptr [rbp - 0xb8], 1
.label_2242:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_2209
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_2210
	jmp	.label_2224
.label_2224:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_2210
	jmp	.label_2274
.label_2274:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_2210
	jmp	.label_2229
.label_2229:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_2289
	jmp	.label_2210
.label_2210:
	jmp	.label_2219
.label_2289:
	jmp	.label_2398
.label_2398:
	jmp	.label_2265
.label_2265:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_2242
.label_2209:
	jmp	.label_2205
.label_2205:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_2247
	mov	byte ptr [rbp - 0x91], 0
.label_2247:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2330
.label_2330:
	jmp	.label_2256
.label_2256:
	jmp	.label_2258
.label_2258:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_2263
.label_2204:
	jmp	.label_2268
.label_2268:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_2269
	test	byte ptr [rbp - 0x79], 1
	je	.label_2251
	test	byte ptr [rbp - 0x91], 1
	jne	.label_2251
.label_2269:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_2231:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2288
	test	byte ptr [rbp - 0x91], 1
	jne	.label_2288
	jmp	.label_2294
.label_2294:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2295
	jmp	.label_2219
.label_2295:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2298
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_2298
	jmp	.label_2304
.label_2304:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2306
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2306:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2311
.label_2311:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2314
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_2314:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2257
.label_2257:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2325
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2325:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2298:
	jmp	.label_2335
.label_2335:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2337
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2337:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2369
.label_2369:
	jmp	.label_2391
.label_2391:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2344
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_2344:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2348
.label_2348:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2351
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_2351:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_2355
.label_2288:
	test	byte ptr [rbp - 0x81], 1
	je	.label_2360
	jmp	.label_2363
.label_2363:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2365
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2365:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_2360:
	jmp	.label_2355
.label_2355:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_2376
	jmp	.label_2380
.label_2376:
	jmp	.label_2382
.label_2382:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_2384
	test	byte ptr [rbp - 0x82], 1
	jne	.label_2384
	jmp	.label_2388
.label_2388:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2389
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2389:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2392
.label_2392:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2395
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2395:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2384:
	jmp	.label_2404
.label_2404:
	jmp	.label_2405
.label_2405:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2203
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_2203:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_2231
.label_2380:
	jmp	.label_2211
.label_2251:
	jmp	.label_2213
.label_2213:
	test	byte ptr [rbp - 0x79], 1
	je	.label_2215
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2220
.label_2215:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2222
.label_2220:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2222
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_2228
.label_2222:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_2228
	jmp	.label_2211
.label_2228:
	jmp	.label_2234
.label_2234:
	jmp	.label_2236
.label_2236:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2237
	jmp	.label_2219
.label_2237:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2240
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_2240
	jmp	.label_2285
.label_2285:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2292
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2292:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2249
.label_2249:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2254
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_2254:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2260
.label_2260:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2266
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2266:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_2240:
	jmp	.label_2275
.label_2275:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2277
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_2277:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2283
.label_2283:
	jmp	.label_2211
.label_2211:
	jmp	.label_2290
.label_2290:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_2291
	test	byte ptr [rbp - 0x82], 1
	jne	.label_2291
	jmp	.label_2296
.label_2296:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2297
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2297:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2302
.label_2302:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2308
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_2308:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_2291:
	jmp	.label_2317
.label_2317:
	jmp	.label_2318
.label_2318:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2319
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_2319:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_2286
	mov	byte ptr [rbp - 0x7e], 0
.label_2286:
	jmp	.label_2328
.label_2328:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2334
.label_2270:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_2338
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2338
	test	byte ptr [rbp - 0x7b], 1
	je	.label_2338
	jmp	.label_2219
.label_2338:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2208
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2208
	test	byte ptr [rbp - 0x7d], 1
	je	.label_2208
	test	byte ptr [rbp - 0x7e], 1
	je	.label_2217
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2354
.label_2217:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2357
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2357
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_2359
.label_2357:
	jmp	.label_2364
.label_2364:
	jmp	.label_2208
.label_2208:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_2368
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_2368
	jmp	.label_2370
.label_2370:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_2372
	jmp	.label_2375
.label_2375:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2377
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_2377:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2255
.label_2255:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2370
.label_2372:
	jmp	.label_2368
.label_2368:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2390
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_2390:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2354
.label_2219:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_2397
	test	byte ptr [rbp - 0x79], 1
	je	.label_2397
	mov	dword ptr [rbp - 0x34], 4
.label_2397:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_2354:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419850
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419890

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2407
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2408
.label_2407:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2408
.label_2408:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2409
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_2409:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4199f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_2412:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_2413
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2412
.label_2413:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_2414
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_2411]],  rax
.label_2414:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_2410
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_2410:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ad0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419b10

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_2420
	call	abort
.label_2420:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_2418
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_2415
	call	xalloc_die
.label_2415:
	test	byte ptr [rbp - 0x31], 1
	je	.label_2417
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_2419
.label_2417:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_2419:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_2422
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_2411]]
	mov	qword ptr [rax + 8], rcx
.label_2422:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_2418:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_2421
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_2416
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_2416:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_2421:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419d90

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419dd0
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419df0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e20

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e60

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_2423
	call	abort
.label_2423:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ed0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419f10

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419f40
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419f70

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ff0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a020

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a040
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a070

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a120

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a160

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a1e0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a210
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a250

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a290
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a2c0

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a2f0

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a310

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_2425
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2430
.label_2425:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_2426
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_2424
	movabs	rax, OFFSET FLAT:label_2428
	movabs	rcx, OFFSET FLAT:label_2429
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2430
.label_2424:
	movabs	rsi, OFFSET FLAT:label_2433
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_2427
	movabs	rax, OFFSET FLAT:label_2431
	movabs	rcx, OFFSET FLAT:label_2432
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2430
.label_2427:
	movabs	rax, OFFSET FLAT:label_2310
	movabs	rcx, OFFSET FLAT:label_2329
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_2430:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a410

	.globl same_name
	.type same_name, @function
same_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffff9c
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	edx, eax
	call	same_nameat
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a450

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x190
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	call	last_component
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	last_component
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	base_len
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	base_len
	xor	edx, edx
	mov	r8b, dl
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x181], r8b
	jne	.label_2436
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0x181], cl
.label_2436:
	mov	al, byte ptr [rbp - 0x181]
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	mov	byte ptr [rbp - 0x42], al
	mov	byte ptr [rbp - 0x43], 0
	test	byte ptr [rbp - 0x42], 1
	je	.label_2435
	mov	rdi, qword ptr [rbp - 0x10]
	call	dir_name
	lea	rdx, [rbp - 0xd8]
	mov	qword ptr [rbp - 0x170], rax
	mov	dword ptr [rbp - 0x174], 0x100
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_2437
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_253
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	al, 0
	call	error
.label_2437:
	mov	rdi, qword ptr [rbp - 0x170]
	call	free
	mov	rdi, qword ptr [rbp - 0x20]
	call	dir_name
	lea	rdx, [rbp - 0x168]
	mov	qword ptr [rbp - 0x180], rax
	mov	edi, dword ptr [rbp - 0x14]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	ecx, dword ptr [rbp - 0x174]
	call	fstatat
	cmp	eax, 0
	je	.label_2434
	call	__errno_location
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_253
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	al, 0
	call	error
.label_2434:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xd0]
	cmp	rdx, qword ptr [rbp - 0x160]
	mov	byte ptr [rbp - 0x182], cl
	jne	.label_2438
	mov	rax, qword ptr [rbp - 0xd8]
	cmp	rax, qword ptr [rbp - 0x168]
	sete	cl
	mov	byte ptr [rbp - 0x182], cl
.label_2438:
	mov	al, byte ptr [rbp - 0x182]
	and	al, 1
	mov	byte ptr [rbp - 0x43], al
	mov	rdi, qword ptr [rbp - 0x180]
	call	free
.label_2435:
	mov	al, byte ptr [rbp - 0x43]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x190
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a620
	.globl getcon
	.type getcon, @function
getcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a650

	.globl freecon
	.type freecon, @function
freecon:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a660
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a690
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a6c0
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a6f0

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a720

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a750
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a780
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a7b0
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a7e0
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a810
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a840
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a870
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a8a0
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ax, dx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a8e0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dx, cx
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a910
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a940
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a960
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a980
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x60]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a9a0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a9b0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a9d0

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a9f0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x58]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aa10
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aa40
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aa50
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aa80

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_2439
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2440
.label_2439:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2443
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2440
.label_2443:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_2441
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_2441
	jmp	.label_2441
.label_2441:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_2442
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_2442
	jmp	.label_2442
.label_2442:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_2440:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ab30
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_2444
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2446
.label_2444:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	jne	.label_2445
	cmp	qword ptr [rbp - 8], 0
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_2445:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x14], ecx
.label_2446:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ab80
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [rip + label_2447]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	movaps	xmm0, xmm1
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41abb0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2450
	movabs	rsi, OFFSET FLAT:label_2459
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2449
.label_2450:
	movabs	rsi, OFFSET FLAT:label_2454
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_2449:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_2460
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_2452
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_2465
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2455]]
	jmp	rcx
.label_2948:
	jmp	.label_2451
.label_2949:
	movabs	rdi, OFFSET FLAT:label_2464
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_2451
.label_2950:
	movabs	rdi, OFFSET FLAT:label_2458
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_2451
.label_2951:
	movabs	rdi, OFFSET FLAT:label_2457
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_2451
.label_2952:
	movabs	rdi, OFFSET FLAT:label_2461
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_2451
.label_2953:
	movabs	rdi, OFFSET FLAT:label_2453
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_2451
.label_2954:
	movabs	rdi, OFFSET FLAT:label_2462
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_2451
.label_2955:
	movabs	rdi, OFFSET FLAT:label_2466
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_2451
.label_2956:
	movabs	rdi, OFFSET FLAT:label_2456
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_2451
.label_2957:
	movabs	rdi, OFFSET FLAT:label_2448
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_2451
.label_2465:
	movabs	rdi, OFFSET FLAT:label_2463
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_2451:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b170
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_2469:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2467
	jmp	.label_2468
.label_2468:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2469
.label_2467:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b1e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_2473:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_2470
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_2475
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_2474
.label_2475:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_2474:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_2470:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_2476
	jmp	.label_2471
.label_2476:
	jmp	.label_2472
.label_2472:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2473
.label_2471:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b2f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_2477
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_2477:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b460
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_2478
	call	gettext
	movabs	rsi, OFFSET FLAT:label_2480
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_2479
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_74
	movabs	rdx, OFFSET FLAT:label_459
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_2481
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b4f0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_2482
	call	xalloc_die
.label_2482:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b540

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2483
	cmp	qword ptr [rbp - 8], 0
	je	.label_2483
	call	xalloc_die
.label_2483:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b580

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_2484
	call	xalloc_die
.label_2484:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b5d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2485
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2485
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2487
.label_2485:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2486
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2486
	call	xalloc_die
.label_2486:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_2487:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b650

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2488
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2491
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_2491:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2489
	call	xalloc_die
.label_2489:
	jmp	.label_2490
.label_2488:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2492
	call	xalloc_die
.label_2492:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_2490:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b740

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b760

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b790
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b7d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_2493
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_2494
.label_2493:
	call	xalloc_die
.label_2494:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b830

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b870

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b8b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_2495
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_253
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x41b8f0

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x58
	mov	eax, dword ptr [rbp + 0x10]
	xor	r10d, r10d
	mov	r11d, r10d
	lea	rbx, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rbp - 0x14]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsi, r11
	mov	rcx, rbx
	call	xstrtoumax
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	jne	.label_2507
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_2496
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x48]
	jae	.label_2499
.label_2496:
	mov	dword ptr [rbp - 0x40], 1
	cmp	qword ptr [rbp - 0x48], 0x3fffffff
	jbe	.label_2503
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_2509
.label_2503:
	call	__errno_location
	mov	dword ptr [rax], 0x22
.label_2509:
	jmp	.label_2499
.label_2499:
	jmp	.label_2498
.label_2507:
	cmp	dword ptr [rbp - 0x40], 1
	jne	.label_2501
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_2497
.label_2501:
	cmp	dword ptr [rbp - 0x40], 3
	jne	.label_2506
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2506:
	jmp	.label_2497
.label_2497:
	jmp	.label_2498
.label_2498:
	cmp	dword ptr [rbp - 0x40], 0
	je	.label_2500
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2502
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2504
.label_2502:
	mov	eax, 1
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_2504
.label_2504:
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x50], eax
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_2508
	xor	eax, eax
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2505
.label_2508:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x54], ecx
.label_2505:
	mov	eax, dword ptr [rbp - 0x54]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rcx
	call	quote
	movabs	rdx, OFFSET FLAT:label_144
	mov	edi, dword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, rax
	mov	al, 0
	call	error
.label_2500:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x58
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ba70
	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0xa
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	dword ptr [rbp - 0x2c], r9d
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	mov	r10d, dword ptr [rbp - 0x2c]
	mov	esi, eax
	mov	dword ptr [rsp], r10d
	call	xnumtoumax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bac0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, rcx
	mov	rsi, rcx
	call	getcwd
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2510
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_2510
	call	xalloc_die
.label_2510:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bb10

	.globl xgethostname
	.type xgethostname, @function
xgethostname:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], 0
	mov	qword ptr [rbp - 0x18], 0x22
.label_2511:
	lea	rsi, [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	call	x2realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi + rax], 0
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gethostname
	cmp	eax, 0
	jne	.label_2516
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rcx + rax], 0
	jne	.label_2517
	jmp	.label_2513
.label_2517:
	jmp	.label_2514
.label_2516:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2512
	call	__errno_location
	cmp	dword ptr [rax], 0x24
	je	.label_2512
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	je	.label_2512
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_2512
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2515
.label_2512:
	jmp	.label_2514
.label_2514:
	jmp	.label_2511
.label_2513:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_2515:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bc20

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2526
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_2526
	jmp	.label_2535
.label_2526:
	movabs	rdi, OFFSET FLAT:label_2536
	movabs	rsi, OFFSET FLAT:label_2537
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_2538
	call	__assert_fail
.label_2535:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2542
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2545
.label_2542:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2545
.label_2545:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2556:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2558
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_2556
.label_2558:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_2524
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2527
.label_2524:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_2531
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2533
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2533
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_2533
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2544
.label_2533:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2527
.label_2544:
	jmp	.label_2548
.label_2531:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2549
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_2552
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2527
.label_2552:
	mov	dword ptr [rbp - 0x4c], 1
.label_2549:
	jmp	.label_2548
.label_2548:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2557
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2527
.label_2557:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2518
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_2530
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2527
.label_2530:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_2519
	jmp	.label_2539
.label_2539:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_2519
	jmp	.label_2543
.label_2543:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2519
	jmp	.label_2547
.label_2547:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_2519
	jmp	.label_2551
.label_2551:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_2519
	jmp	.label_2555
.label_2555:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2519
	jmp	.label_2559
.label_2559:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_2519
	jmp	.label_2560
.label_2560:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2519
	jmp	.label_2525
.label_2525:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2519
	jmp	.label_2553
.label_2553:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_2519
	jmp	.label_2532
.label_2532:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2521
	jmp	.label_2519
.label_2519:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_2520
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_2541
	jmp	.label_2546
.label_2546:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2541
	jmp	.label_2550
.label_2550:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_2534
	jmp	.label_2554
.label_2554:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_2528
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2528:
	jmp	.label_2534
.label_2541:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2534:
	jmp	.label_2520
.label_2520:
	jmp	.label_2521
.label_2521:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_2523
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2529]]
	jmp	rcx
.label_2968:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2522
.label_2959:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2522
.label_2969:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2522
.label_2960:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2522
.label_2961:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2522
.label_2962:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2522
.label_2963:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2522
.label_2964:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2522
.label_2965:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2522
.label_2970:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2522
.label_2966:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2522
.label_2967:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2522
.label_2523:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2527
.label_2522:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_2540
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_2540:
	jmp	.label_2518
.label_2518:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_2527:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c1d0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_2561
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2562
.label_2561:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2562:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c230

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_2564:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2563
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2564
.label_2563:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c280

	.globl xstrtol_fatal
	.type xstrtol_fatal, @function
xstrtol_fatal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	al, byte ptr [rbp - 9]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9d,  dword ptr [dword ptr [exit_failure]]
	movsx	edx, al
	call	xstrtol_error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x41c2d0

	.globl xstrtol_error
	.type xstrtol_error, @function
xstrtol_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dl
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	byte ptr [rbp - 9], al
	mov	qword ptr [rbp - 0x18], rcx
	mov	qword ptr [rbp - 0x20], r8
	mov	dword ptr [rbp - 0x24], r9d
	mov	qword ptr [word ptr [rbp - 48]], OFFSET FLAT:label_2572
	mov	edx, dword ptr [rbp - 4]
	mov	esi, edx
	sub	esi, 1
	mov	dword ptr [rbp - 0x48], edx
	mov	dword ptr [rbp - 0x4c], esi
	je	.label_2573
	jmp	.label_2571
.label_2571:
	mov	eax, dword ptr [rbp - 0x48]
	add	eax, -2
	sub	eax, 2
	mov	dword ptr [rbp - 0x50], eax
	jb	.label_2567
	jmp	.label_2568
.label_2568:
	mov	eax, dword ptr [rbp - 0x48]
	sub	eax, 4
	mov	dword ptr [rbp - 0x54], eax
	je	.label_2570
	jmp	.label_2576
.label_2576:
	call	abort
.label_2570:
	movabs	rax, OFFSET FLAT:label_2565
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2566
.label_2567:
	movabs	rax, OFFSET FLAT:label_2574
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2566
.label_2573:
	movabs	rax, OFFSET FLAT:label_2569
	mov	qword ptr [rbp - 0x38], rax
.label_2566:
	cmp	dword ptr [rbp - 8], 0
	jge	.label_2575
	lea	rax, [rbp - 0x42]
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	movsxd	rdi, ecx
	sub	rdx, rdi
	add	rsi, rdx
	mov	qword ptr [rbp - 0x30], rsi
	mov	r8b, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x42], r8b
	mov	byte ptr [rbp - 0x41], 0
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2577
.label_2575:
	movsxd	rax, dword ptr [rbp - 8]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_2577:
	mov	edi, dword ptr [rbp - 0x24]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x58], edi
	mov	rdi, rax
	call	gettext
	xor	esi, esi
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rbp - 0x58]
	mov	rdx, rax
	mov	al, 0
	call	error
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c400

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_2578
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_2578
	jmp	.label_2589
.label_2578:
	movabs	rdi, OFFSET FLAT:label_2536
	movabs	rsi, OFFSET FLAT:label_2537
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_2590
	call	__assert_fail
.label_2589:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2597
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2600
.label_2597:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2600
.label_2600:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_2611:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_2613
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_2611
.label_2613:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_2617
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2579
.label_2617:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoumax
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_2585
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2588
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2588
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_2588
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_2599
.label_2588:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2579
.label_2599:
	jmp	.label_2604
.label_2585:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_2606
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_2608
	mov	dword ptr [rbp - 4], 4
	jmp	.label_2579
.label_2608:
	mov	dword ptr [rbp - 0x4c], 1
.label_2606:
	jmp	.label_2604
.label_2604:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_2612
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2579
.label_2612:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_2605
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_2583
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2579
.label_2583:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_2582
	jmp	.label_2593
.label_2593:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_2582
	jmp	.label_2598
.label_2598:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_2582
	jmp	.label_2603
.label_2603:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_2582
	jmp	.label_2615
.label_2615:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_2582
	jmp	.label_2584
.label_2584:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_2582
	jmp	.label_2581
.label_2581:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_2582
	jmp	.label_2614
.label_2614:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_2582
	jmp	.label_2618
.label_2618:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_2582
	jmp	.label_2592
.label_2592:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_2582
	jmp	.label_2586
.label_2586:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_2587
	jmp	.label_2582
.label_2582:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_2591
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_2595
	jmp	.label_2602
.label_2602:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_2595
	jmp	.label_2607
.label_2607:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_2596
	jmp	.label_2610
.label_2610:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_2609
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_2609:
	jmp	.label_2596
.label_2595:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_2596:
	jmp	.label_2591
.label_2591:
	jmp	.label_2587
.label_2587:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_2616
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2601]]
	jmp	rcx
.label_2920:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2580
.label_2911:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2580
.label_2921:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_2580
.label_2912:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2580
.label_2913:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2580
.label_2914:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2580
.label_2915:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2580
.label_2916:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2580
.label_2917:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2580
.label_2922:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2580
.label_2918:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2580
.label_2919:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power_0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2580
.label_2616:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_2579
.label_2580:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_2594
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_2594:
	jmp	.label_2605
.label_2605:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_2579:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c9b0

	.globl bkm_scale_0
	.type bkm_scale_0, @function
bkm_scale_0:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_2619
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2620
.label_2619:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2620:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ca10

	.globl bkm_scale_by_power_0
	.type bkm_scale_by_power_0, @function
bkm_scale_by_power_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_2622:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_2621
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale_0
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2622
.label_2621:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ca60

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2623
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_2623:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_2624
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2624
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_2624
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_2625
.label_2624:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2625:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cb10

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_2626
	jmp	.label_2628
.label_2628:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2627
.label_2626:
	jmp	.label_2627
.label_2627:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cb60

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cbc0

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_2629
	mov	qword ptr [rbp - 0x18], 0x10
.label_2629:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2631
	mov	eax, 0x1000
	mov	dword ptr [rbp - 0x24], 0x20
	sub	eax, dword ptr [rbp - 0x24]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x10], rcx
.label_2631:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rax]
	call	call_chunkfun
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2630
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2630:
	mov	eax, 1
	xor	ecx, ecx
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x20]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	add	rsi, rdi
	mov	rdi, qword ptr [rbp - 0x18]
	sub	rdi, 1
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rdx, rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx + 8], 0
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfd
	mov	byte ptr [rdx + 0x50], r8b
	mov	rdx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rdx + 0x50]
	and	r8b, 0xfb
	mov	byte ptr [rdx + 0x50], r8b
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cce0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	al, byte ptr [rcx + 0x50]
	and	al, 0xfe
	or	al, 1
	mov	byte ptr [rcx + 0x50], al
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	_obstack_begin_worker
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cd50

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	sub	rsi, rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	shr	rdi, 3
	add	rsi, rdi
	add	rsi, 0x64
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, qword ptr [rbp - 0x48]
	cmp	rsi, qword ptr [rbp - 0x40]
	jae	.label_2634
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_2634:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jae	.label_2635
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rax
.label_2635:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	ja	.label_2632
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x40]
	ja	.label_2632
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x48]
	call	call_chunkfun
	mov	qword ptr [rbp - 0x20], rax
.label_2632:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2636
	call	qword ptr [word ptr [obstack_alloc_failed_handler]]
.label_2636:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rsi + 0x20], rdx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x10
	sub	rdx, 0
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi + 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x30]
	xor	rsi, 0xffffffffffffffff
	and	rdx, rsi
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	memcpy
	mov	rcx, qword ptr [rbp - 8]
	mov	r8b, byte ptr [rcx + 0x50]
	shr	r8b, 1
	and	r8b, 1
	movzx	eax, r8b
	cmp	eax, 0
	jne	.label_2633
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 0x10
	sub	rsi, 0
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x30]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	xor	rdi, 0xffffffffffffffff
	and	rsi, rdi
	add	rcx, rsi
	cmp	rdx, rcx
	jne	.label_2633
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
.label_2633:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	dl, byte ptr [rax + 0x50]
	and	dl, 0xfd
	mov	byte ptr [rax + 0x50], dl
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cf50

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_2637
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2638
.label_2637:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rbp - 0x18]
	call	rax
	mov	qword ptr [rbp - 8], rax
.label_2638:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cfb0

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	al, byte ptr [rsi + 0x50]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_2639
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	call	rax
	jmp	.label_2640
.label_2639:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rax
.label_2640:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d010

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2643:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2642
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2644
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_2644:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2642:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_2641
	jmp	.label_2645
.label_2641:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2643
.label_2645:
	cmp	qword ptr [rbp - 0x18], 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d0a0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2647:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x18], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_2653
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x22], al
	jae	.label_2650
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	setb	cl
	mov	byte ptr [rbp - 0x22], cl
.label_2650:
	mov	al, byte ptr [rbp - 0x22]
	mov	byte ptr [rbp - 0x21], al
.label_2653:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_2652
	jmp	.label_2646
.label_2652:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	call_freefun
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x50]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0x50], cl
	jmp	.label_2647
.label_2646:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2648
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_2649
.label_2648:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2651
	call	abort
.label_2651:
	jmp	.label_2649
.label_2649:
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d1a0

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_2655:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2654
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2655
.label_2654:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d200

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_2495
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 8], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_2656
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, rax
	mov	al, 0
	call	fprintf
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 0xc], eax
	call	exit
	.section	.text
	.align	32
	#Procedure 0x41d250

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2661
	mov	rdi, qword ptr [rbp - 8]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2657
.label_2661:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_2657
.label_2657:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0x77
	jae	.label_2659
	mov	eax, 0x77
	mov	ecx, eax
	mov	qword ptr [rbp - 0x30], rcx
	jmp	.label_2660
.label_2659:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_2660:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff8
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2662
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rax], 0
	cmp	qword ptr [rbp - 8], 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	mov	cl, dl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 8], cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	byte ptr [rax + 9], 0
	cmp	qword ptr [rbp - 8], 0
	je	.label_2658
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	extend_abbrs
.label_2658:
	jmp	.label_2662
.label_2662:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d350

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	mov	byte ptr [rsi + rdx], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d390

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	je	.label_2663
	jmp	.label_2665
.label_2665:
	cmp	qword ptr [rbp - 8], 0
	je	.label_2664
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2665
.label_2664:
	jmp	.label_2663
.label_2663:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d3f0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2670
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	gmtime_r
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2671
.label_2670:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_2666
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	localtime_r
	xor	ecx, ecx
	mov	dl, cl
	cmp	rax, 0
	mov	byte ptr [rbp - 0x2a], dl
	je	.label_2669
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	save_abbr
	mov	byte ptr [rbp - 0x2a], al
.label_2669:
	mov	al, byte ptr [rbp - 0x2a]
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rdi, qword ptr [rbp - 0x28]
	call	revert_tz
	test	al, 1
	jne	.label_2668
	jmp	.label_2667
.label_2668:
	test	byte ptr [rbp - 0x29], 1
	je	.label_2667
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2671
.label_2667:
	jmp	.label_2666
.label_2666:
	mov	qword ptr [rbp - 8], 0
.label_2671:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d4c0

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	call	getenv_TZ
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2676
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	je	.label_2675
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	je	.label_2672
	jmp	.label_2675
.label_2676:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 8], 0
	jne	.label_2675
.label_2672:
	mov	rax,  qword ptr [word ptr [local_tz]]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2673
.label_2675:
	mov	rdi, qword ptr [rbp - 0x18]
	call	tzalloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_2677
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2673
.label_2677:
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	test	al, 1
	jne	.label_2674
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzfree
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x28], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2673
.label_2674:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2673:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d5b0

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_37
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2687
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_2682
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 0x38
	cmp	rax, rcx
	jae	.label_2682
.label_2687:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2679
.label_2682:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax], 0
	je	.label_2686
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2678:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	call	strcmp
	cmp	eax, 0
	je	.label_2689
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2681
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 9
	cmp	rax, rcx
	jne	.label_2685
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 8]
	cmp	ecx, 0
	jne	.label_2681
.label_2685:
	mov	rax, -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 9
	sub	rax, rdi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_2683
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2679
.label_2683:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x30]
	cmp	rax, 0x77
	jae	.label_2684
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	call	extend_abbrs
	jmp	.label_2688
.label_2684:
	mov	rdi, qword ptr [rbp - 0x20]
	call	tzalloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rax
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2690
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2679
.label_2690:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2688:
	jmp	.label_2689
.label_2681:
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_2680
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax], 0
	je	.label_2680
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x28], rax
.label_2680:
	jmp	.label_2678
.label_2689:
	jmp	.label_2686
.label_2686:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x30], rax
	mov	byte ptr [rbp - 1], 1
.label_2679:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d7b0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rdi,  qword ptr [word ptr [local_tz]]
	jne	.label_2691
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2693
.label_2691:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
	mov	rdi, qword ptr [rbp - 0x10]
	call	change_env
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	test	byte ptr [rbp - 0x15], 1
	jne	.label_2692
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2692:
	mov	rdi, qword ptr [rbp - 0x10]
	call	tzfree
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x1c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rax], ecx
	mov	dl, byte ptr [rbp - 0x15]
	and	dl, 1
	mov	byte ptr [rbp - 1], dl
.label_2693:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d840

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2694
	mov	rdi, qword ptr [rbp - 0x18]
	call	timegm
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2696
.label_2694:
	mov	rdi, qword ptr [rbp - 0x10]
	call	set_tz
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2698
	mov	rdi, qword ptr [rbp - 0x18]
	call	mktime
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], -1
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_2699
	lea	rdi, [rbp - 0x28]
	lea	rsi, [rbp - 0x68]
	call	localtime_r
	cmp	rax, 0
	je	.label_2697
	lea	rsi, [rbp - 0x68]
	mov	rdi, qword ptr [rbp - 0x18]
	call	equal_tm
	cmp	eax, 0
	je	.label_2697
.label_2699:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	save_abbr
	test	al, 1
	jne	.label_2697
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2697:
	mov	rdi, qword ptr [rbp - 0x20]
	call	revert_tz
	test	al, 1
	jne	.label_2695
	jmp	.label_2700
.label_2695:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2696
.label_2700:
	jmp	.label_2698
.label_2698:
	mov	qword ptr [rbp - 8], -1
.label_2696:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d930

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	eax, dword ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 4]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 4]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 8]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0xc]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0xc]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x10]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x10]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rsi + 0x14]
	mov	rsi, qword ptr [rbp - 0x10]
	xor	ecx, dword ptr [rsi + 0x14]
	or	eax, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, dword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rsi + 0x20]
	mov	dword ptr [rbp - 0x14], eax
	call	isdst_differ
	and	al, 1
	movzx	ecx, al
	mov	esi, dword ptr [rbp - 0x14]
	or	esi, ecx
	cmp	esi, 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d9d0

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	push	rbp
	mov	rbp, rsp
	movabs	rdi, OFFSET FLAT:label_30
	call	getenv
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d9f0

	.globl change_env
	.type change_env, @function
change_env:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 8]
	cmp	eax, 0
	je	.label_2701
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 9
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2704
.label_2701:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x18], rcx
	jmp	.label_2704
.label_2704:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	setenv_TZ
	cmp	eax, 0
	je	.label_2703
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2702
.label_2703:
	call	tzset
	mov	byte ptr [rbp - 1], 1
.label_2702:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41da60

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2705
	movabs	rdi, OFFSET FLAT:label_30
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 8]
	call	setenv
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_2706
.label_2705:
	movabs	rdi, OFFSET FLAT:label_30
	call	unsetenv
	mov	dword ptr [rbp - 0xc], eax
.label_2706:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dac0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cmp	dword ptr [rbp - 4], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	eax, dl
	cmp	dword ptr [rbp - 8], 0
	setne	dl
	xor	dl, 0xff
	and	dl, 1
	movzx	esi, dl
	cmp	eax, esi
	mov	byte ptr [rbp - 9], cl
	je	.label_2707
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 4]
	mov	byte ptr [rbp - 9], cl
	jg	.label_2707
	xor	eax, eax
	cmp	eax, dword ptr [rbp - 8]
	setle	cl
	mov	byte ptr [rbp - 9], cl
.label_2707:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41db20
	.globl rotl64
	.type rotl64, @function
rotl64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41db60
	.globl rotr64
	.type rotr64, @function
rotr64:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	ecx, esi
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	sub	eax, dword ptr [rbp - 0xc]
	mov	eax, eax
	mov	ecx, eax
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dba0
	.globl rotl32
	.type rotl32, @function
rotl32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shr	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dbd0
	.globl rotr32
	.type rotr32, @function
rotr32:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	esi, dword ptr [rbp - 4]
	mov	ecx, dword ptr [rbp - 8]
	shr	esi, cl
	mov	edi, dword ptr [rbp - 4]
	sub	eax, dword ptr [rbp - 8]
	mov	ecx, eax
	shl	edi, cl
	or	esi, edi
	mov	eax, esi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dc00
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shl	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shr	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dc50

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rbp - 0xc]
	mov	edx, eax
	mov	qword ptr [rbp - 0x18], rcx
	mov	rcx, rdx
	shr	rdi, cl
	mov	rdx, qword ptr [rbp - 8]
	movsxd	r8, dword ptr [rbp - 0xc]
	mov	r9, qword ptr [rbp - 0x18]
	sub	r9, r8
	mov	rcx, r9
	shl	rdx, cl
	or	rdi, rdx
	mov	rax, rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dca0
	.globl rotl16
	.type rotl16, @function
rotl16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dce0
	.globl rotr16
	.type rotr16, @function
rotr16:

	push	rbp
	mov	rbp, rsp
	mov	ax, di
	mov	edi, 0x10
	mov	word ptr [rbp - 2], ax
	mov	dword ptr [rbp - 8], esi
	movzx	esi, word ptr [rbp - 2]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, word ptr [rbp - 2]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xffff
	mov	ax, si
	movzx	eax, ax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dd20
	.globl rotl8
	.type rotl8, @function
rotl8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	shl	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	sar	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dd60
	.globl rotr8
	.type rotr8, @function
rotr8:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	edi, 8
	mov	byte ptr [rbp - 1], al
	mov	dword ptr [rbp - 8], esi
	movzx	esi, byte ptr [rbp - 1]
	mov	ecx, dword ptr [rbp - 8]
	sar	esi, cl
	movzx	edx, byte ptr [rbp - 1]
	sub	edi, dword ptr [rbp - 8]
	mov	ecx, edi
	shl	edx, cl
	or	esi, edx
	and	esi, 0xff
	mov	al, sil
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dda0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_2708
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2712
.label_2708:
	jmp	.label_2709
.label_2709:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_2711
	jmp	.label_2710
.label_2711:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_2709
.label_2710:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2712:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41de60

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_2713
	test	byte ptr [rbp - 0x13], 1
	je	.label_2715
	test	byte ptr [rbp - 0x11], 1
	jne	.label_2713
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_2715
.label_2713:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_2716
	call	__errno_location
	mov	dword ptr [rax], 0
.label_2716:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2714
.label_2715:
	mov	dword ptr [rbp - 4], 0
.label_2714:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41df10

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	mdir_name
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_2717
	call	xalloc_die
.label_2717:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41df50

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
.label_2719:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	byte ptr [rax], 0
	je	.label_2718
	mov	rax, qword ptr [rbp - 0x18]
	movsx	rax, byte ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 9
	mov	rdx, qword ptr [rbp - 0x20]
	shr	rdx, 0x37
	or	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2719
.label_2718:
	mov	rax, qword ptr [rbp - 0x20]
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	mov	rax, rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41dfc0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_2720
	movabs	rax, OFFSET FLAT:label_37
	mov	qword ptr [rbp - 8], rax
.label_2720:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_2721
	movabs	rax, OFFSET FLAT:label_2722
	mov	qword ptr [rbp - 8], rax
.label_2721:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e020

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_2723
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2726
.label_2723:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_2724
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_2725
.label_2724:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_2725
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_2725:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_2727
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_2727:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_2726:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e0f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_2728
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_2729
.label_2728:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2730
.label_2729:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_2730:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e150

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_2731
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_2731:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e190

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_2732
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_2732
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2732
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_2734
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2733
.label_2734:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2733
.label_2732:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_2733:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e310

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x41e320

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	.section	.text
	.align	32
	#Procedure 0x41e330

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	32
	#Procedure 0x41e340

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
