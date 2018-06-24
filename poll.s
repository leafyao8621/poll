	.file	"poll.c"
	.text
	.globl	users
	.section	.rodata
.LC0:
	.string	"Yao"
.LC1:
	.string	"Yang"
.LC2:
	.string	"Xiao"
.LC3:
	.string	"Paley"
	.section	.data.rel.local,"aw",@progbits
	.align 32
	.type	users, @object
	.size	users, 32
users:
	.quad	.LC0
	.quad	.LC1
	.quad	.LC2
	.quad	.LC3
	.globl	tit
	.section	.rodata
	.align 16
	.type	tit, @object
	.size	tit, 25
tit:
	.string	"Q: A I 1 2 3 4 5 6 7 8 C"
	.text
	.globl	validate_user
	.type	validate_user, @function
validate_user:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L2
.L4:
	addl	$1, -4(%rbp)
.L2:
	cmpl	$3, -4(%rbp)
	jg	.L3
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	leaq	users(%rip), %rax
	movq	(%rdx,%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
.L3:
	cmpl	$4, -4(%rbp)
	setne	%al
	movzbl	%al, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	validate_user, .-validate_user
	.section	.rodata
.LC4:
	.string	""
.LC5:
	.string	"a"
.LC6:
	.string	"temp"
.LC7:
	.string	"User Name"
.LC8:
	.string	"%s\n"
.LC9:
	.string	"%c"
.LC10:
	.string	"%s"
.LC11:
	.string	"%20c"
.LC12:
	.string	"prev"
.LC13:
	.string	"left arrow"
.LC14:
	.string	"%-11s %-6s"
.LC15:
	.string	"next"
.LC16:
	.string	"right arrow"
.LC17:
	.string	"commit"
.LC18:
	.string	"enter"
.LC19:
	.string	"quit"
.LC20:
	.string	"esc"
.LC21:
	.string	"A: "
	.align 4
.LC22:
	.string	"P"
	.string	""
	.string	""
	.string	":"
	.string	""
	.string	""
	.string	"\345\377"
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
.LC23:
	.string	"KM"
.LC24:
	.string	"R:%25s"
.LC25:
	.string	" "
.LC26:
	.string	"%15s"
.LC27:
	.string	"%25s"
.LC28:
	.string	"         "
.LC29:
	.string	"                         "
	.align 8
.LC30:
	.string	"INSERT INTO Ans VALUES(\"%s\", default"
.LC31:
	.string	", %d"
.LC32:
	.string	", %d, %d, %d, \""
.LC33:
	.string	"%25c"
.LC34:
	.string	"Question %2d\n"
.LC35:
	.string	"Country Code"
.LC36:
	.string	"%10c"
.LC37:
	.string	"%12c"
.LC38:
	.string	"%d"
.LC39:
	.string	"  "
.LC40:
	.string	"Yen Amount"
.LC41:
	.string	"%'20d"
.LC42:
	.string	"KM Range"
.LC43:
	.string	"%8c"
.LC44:
	.string	"ETC"
.LC45:
	.string	"%3c"
	.align 8
.LC46:
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	" "
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
	.string	""
.LC47:
	.string	"Incomplete data"
.LC48:
	.string	"Press any key to continue"
.LC49:
	.string	"Committed"
.LC50:
	.string	"key pressed %3d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1344, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC4(%rip), %rsi
	movl	$6, %edi
	call	setlocale@PLT
	movq	$0, -1264(%rbp)
	movq	$0, -1256(%rbp)
	movq	$0, -1248(%rbp)
	movq	$0, -1240(%rbp)
	movq	$0, -1232(%rbp)
	leaq	.LC5(%rip), %rsi
	leaq	.LC6(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -1280(%rbp)
	call	initscr@PLT
	movq	%rax, -1272(%rbp)
	movl	$0, -1336(%rbp)
	cmpq	$0, -1272(%rbp)
	je	.L7
	movq	-1272(%rbp), %rax
	movzwl	4(%rax), %eax
	cwtl
	addl	$1, %eax
	jmp	.L8
.L7:
	movl	$-1, %eax
.L8:
	movl	%eax, -1296(%rbp)
	cmpq	$0, -1272(%rbp)
	je	.L9
	movq	-1272(%rbp), %rax
	movzwl	6(%rax), %eax
	cwtl
	addl	$1, %eax
	jmp	.L10
.L9:
	movl	$-1, %eax
.L10:
	movl	%eax, -1292(%rbp)
	movl	-1292(%rbp), %eax
	subl	$9, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	leaq	.LC7(%rip), %rcx
	leaq	.LC8(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	leal	-1(%rax), %edx
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	2(%rax), %ecx
	movq	stdscr(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	wmove@PLT
	cmpl	$-1, %eax
	je	.L12
	movq	960+acs_map(%rip), %rcx
	movq	stdscr(%rip), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	wvline@PLT
.L12:
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	leal	20(%rax), %edx
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	2(%rax), %ecx
	movq	stdscr(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	wmove@PLT
	cmpl	$-1, %eax
	je	.L14
	movq	960+acs_map(%rip), %rcx
	movq	stdscr(%rip), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	wvline@PLT
.L14:
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	leal	-1(%rax), %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$1, %eax
	movl	$43, %ecx
	leaq	.LC9(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	leal	20(%rax), %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$1, %eax
	movl	$43, %ecx
	leaq	.LC9(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	leal	-1(%rax), %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$3, %eax
	movl	$43, %ecx
	leaq	.LC9(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	leal	20(%rax), %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$3, %eax
	movl	$43, %ecx
	leaq	.LC9(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	1(%rax), %ecx
	movq	stdscr(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	wmove@PLT
	cmpl	$-1, %eax
	je	.L16
	movq	904+acs_map(%rip), %rcx
	movq	stdscr(%rip), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	whline@PLT
.L16:
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	movl	%eax, %edx
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	3(%rax), %ecx
	movq	stdscr(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	wmove@PLT
	cmpl	$-1, %eax
	je	.L21
	movq	904+acs_map(%rip), %rcx
	movq	stdscr(%rip), %rax
	movl	$20, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	whline@PLT
.L21:
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	2(%rax), %edi
	leaq	-1216(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rdx
	movl	$0, %eax
	call	mvscanw@PLT
	leaq	-1216(%rbp), %rax
	movq	%rax, %rdi
	call	validate_user
	movl	%eax, -1288(%rbp)
	cmpl	$0, -1288(%rbp)
	jne	.L19
	call	beep@PLT
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$2, %eax
	movl	$10, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	leal	20(%rax), %edx
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	2(%rax), %ecx
	movq	stdscr(%rip), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	wmove@PLT
	cmpl	$-1, %eax
	je	.L19
	movq	960+acs_map(%rip), %rcx
	movq	stdscr(%rip), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	wvline@PLT
.L19:
	cmpl	$0, -1288(%rbp)
	je	.L21
	movl	$0, %edi
	call	curs_set@PLT
	call	noecho@PLT
	movq	stdscr(%rip), %rax
	movq	%rax, %rdi
	call	wclear@PLT
	movq	stdscr(%rip), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	keypad@PLT
	call	cbreak@PLT
	movl	$1, -1332(%rbp)
	movl	-1292(%rbp), %eax
	subl	$25, %eax
	movl	%eax, -1328(%rbp)
	movl	-1292(%rbp), %eax
	leal	-21(%rax), %esi
	movl	-1296(%rbp), %eax
	subl	$4, %eax
	leaq	.LC12(%rip), %r8
	leaq	.LC13(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	leal	-21(%rax), %esi
	movl	-1296(%rbp), %eax
	subl	$3, %eax
	leaq	.LC15(%rip), %r8
	leaq	.LC16(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	leal	-21(%rax), %esi
	movl	-1296(%rbp), %eax
	subl	$2, %eax
	leaq	.LC17(%rip), %r8
	leaq	.LC18(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	leal	-21(%rax), %esi
	movl	-1296(%rbp), %eax
	subl	$1, %eax
	leaq	.LC19(%rip), %r8
	leaq	.LC20(%rip), %rcx
	leaq	.LC14(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$28, %eax
	leaq	tit(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$28, %eax
	leaq	.LC21(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	leal	-28(%rax), %edx
	movq	stdscr(%rip), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	wmove@PLT
	cmpl	$-1, %eax
	je	.L23
	movq	stdscr(%rip), %rax
	movl	$-1, %edx
	leaq	.LC22(%rip), %rsi
	movq	%rax, %rdi
	call	waddnwstr@PLT
.L23:
	movl	-1292(%rbp), %eax
	subl	$28, %eax
	leaq	.LC23(%rip), %rcx
	leaq	.LC24(%rip), %rdx
	movl	%eax, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	$0, -1324(%rbp)
	movl	$0, -1320(%rbp)
	movl	$0, -1316(%rbp)
.L78:
	movl	-1332(%rbp), %eax
	cmpl	$2, %eax
	je	.L25
	cmpl	$3, %eax
	jne	.L24
	movl	-1292(%rbp), %eax
	subl	$15, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	subl	$1, %eax
	leaq	.LC25(%rip), %rcx
	leaq	.LC26(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$25, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$1, %eax
	leaq	.LC25(%rip), %rcx
	leaq	.LC27(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	$1, -1332(%rbp)
	jmp	.L24
.L25:
	movl	-1292(%rbp), %eax
	subl	$9, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	subl	$1, %eax
	leaq	.LC28(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$25, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$1, %eax
	leaq	.LC29(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	leaq	-1216(%rbp), %rdx
	leaq	-1008(%rbp), %rax
	leaq	.LC30(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	movl	$0, -1312(%rbp)
	jmp	.L27
.L28:
	movl	-1312(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1312(%rbp)
	cltq
	movl	-1264(%rbp,%rax,4), %edx
	leaq	-1184(%rbp), %rax
	leaq	.LC31(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-1184(%rbp), %rdx
	leaq	-1008(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
.L27:
	cmpl	$9, -1312(%rbp)
	jle	.L28
	movl	-1316(%rbp), %esi
	movl	-1320(%rbp), %ecx
	movl	-1324(%rbp), %edx
	leaq	-1184(%rbp), %rax
	movl	%esi, %r8d
	leaq	.LC32(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	sprintf@PLT
	leaq	-1184(%rbp), %rdx
	leaq	-1008(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-1120(%rbp), %rdx
	leaq	-1008(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcat@PLT
	leaq	-1008(%rbp), %rax
	movq	$-1, %rcx
	movq	%rax, %rdx
	movl	$0, %eax
	movq	%rdx, %rdi
	repnz scasb
	movq	%rcx, %rax
	notq	%rax
	leaq	-1(%rax), %rdx
	leaq	-1008(%rbp), %rax
	addq	%rdx, %rax
	movl	$3877154, (%rax)
	leaq	-1008(%rbp), %rdx
	movq	-1280(%rbp), %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movl	$0, -1308(%rbp)
	jmp	.L29
.L30:
	movl	-1308(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -1308(%rbp)
	cltq
	movl	$0, -1264(%rbp,%rax,4)
.L29:
	cmpl	$9, -1308(%rbp)
	jle	.L30
	movl	-1292(%rbp), %eax
	subl	$25, %eax
	movl	$32, %ecx
	leaq	.LC33(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$24, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$24, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$25, %eax
	movl	%eax, -1328(%rbp)
	movl	$1, -1332(%rbp)
	movl	$0, -1324(%rbp)
	movl	$0, -1320(%rbp)
	movl	$0, -1316(%rbp)
	movb	$0, -1120(%rbp)
.L24:
	movl	-1328(%rbp), %eax
	movl	$94, %ecx
	leaq	.LC9(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1336(%rbp), %eax
	leal	1(%rax), %edx
	movl	-1292(%rbp), %eax
	subl	$11, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	movl	%edx, %ecx
	leaq	.LC34(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movq	stdscr(%rip), %rax
	movq	%rax, %rdi
	call	wgetch@PLT
	movl	%eax, -1284(%rbp)
	movl	$1, -1300(%rbp)
	movl	-1284(%rbp), %eax
	cmpl	$57, %eax
	jg	.L32
	cmpl	$49, %eax
	jge	.L33
	cmpl	$10, %eax
	je	.L34
	cmpl	$27, %eax
	je	.L35
	jmp	.L31
.L32:
	cmpl	$100, %eax
	je	.L36
	cmpl	$100, %eax
	jg	.L37
	cmpl	$97, %eax
	je	.L38
	jmp	.L31
.L37:
	cmpl	$260, %eax
	je	.L38
	cmpl	$261, %eax
	je	.L36
	jmp	.L31
.L33:
	cmpl	$9, -1336(%rbp)
	ja	.L39
	movl	-1336(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L41(%rip), %rax
	movl	(%rdx,%rax), %eax
	movslq	%eax, %rdx
	leaq	.L41(%rip), %rax
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L41:
	.long	.L40-.L41
	.long	.L42-.L41
	.long	.L43-.L41
	.long	.L44-.L41
	.long	.L45-.L41
	.long	.L44-.L41
	.long	.L46-.L41
	.long	.L44-.L41
	.long	.L44-.L41
	.long	.L47-.L41
	.text
.L42:
	cmpl	$49, -1284(%rbp)
	jne	.L48
	movl	-1292(%rbp), %eax
	subl	$12, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$2, %eax
	leaq	.LC35(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	call	echo@PLT
	movl	$1, %edi
	call	curs_set@PLT
.L51:
	movl	-1292(%rbp), %eax
	subl	$2, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	3(%rax), %edi
	leaq	-1184(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rdx
	movl	$0, %eax
	call	mvscanw@PLT
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1324(%rbp)
	cmpl	$0, -1324(%rbp)
	je	.L49
	cmpl	$88, -1324(%rbp)
	jle	.L50
.L49:
	call	beep@PLT
	movl	-1292(%rbp), %eax
	subl	$2, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$3, %eax
	movl	$32, %ecx
	leaq	.LC36(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
.L50:
	cmpl	$0, -1324(%rbp)
	je	.L51
	cmpl	$88, -1324(%rbp)
	jg	.L51
	movl	$0, %edi
	call	curs_set@PLT
	call	noecho@PLT
	movl	-1292(%rbp), %eax
	subl	$12, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$2, %eax
	movl	$32, %ecx
	leaq	.LC37(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$2, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$3, %eax
	movl	$32, %ecx
	leaq	.LC36(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	leal	-5(%rax), %esi
	movl	-1324(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC38(%rip), %rdx
	movl	$1, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	jmp	.L39
.L48:
	cmpl	$50, -1284(%rbp)
	jne	.L44
	movl	-1292(%rbp), %eax
	subl	$5, %eax
	leaq	.LC39(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	jmp	.L39
.L44:
	cmpl	$50, -1284(%rbp)
	jle	.L81
	movl	$0, -1300(%rbp)
	jmp	.L81
.L40:
	cmpl	$54, -1284(%rbp)
	jle	.L82
	movl	$0, -1300(%rbp)
	jmp	.L82
.L47:
	movl	-1284(%rbp), %eax
	cmpl	$50, %eax
	je	.L54
	cmpl	$50, %eax
	jg	.L55
	cmpl	$49, %eax
	je	.L56
	jmp	.L43
.L55:
	cmpl	$51, %eax
	je	.L57
	cmpl	$52, %eax
	je	.L58
	jmp	.L43
.L56:
	movl	-1292(%rbp), %eax
	subl	$24, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$10, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$2, %eax
	leaq	.LC40(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	call	echo@PLT
	movl	$1, %edi
	call	curs_set@PLT
.L60:
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	3(%rax), %edi
	leaq	-1184(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rdx
	movl	$0, %eax
	call	mvscanw@PLT
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1320(%rbp)
	cmpl	$0, -1320(%rbp)
	jg	.L59
	call	beep@PLT
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$3, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
.L59:
	cmpl	$0, -1320(%rbp)
	jle	.L60
	movl	$0, %edi
	call	curs_set@PLT
	call	noecho@PLT
	movl	-1292(%rbp), %eax
	leal	-24(%rax), %esi
	movl	-1320(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC41(%rip), %rdx
	movl	$3, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$10, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$2, %eax
	movl	$32, %ecx
	leaq	.LC36(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$3, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	jmp	.L43
.L54:
	movl	-1292(%rbp), %eax
	subl	$24, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$24, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	jmp	.L43
.L57:
	movl	-1292(%rbp), %eax
	subl	$24, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$8, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$2, %eax
	leaq	.LC42(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	call	echo@PLT
	movl	$1, %edi
	call	curs_set@PLT
.L62:
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	3(%rax), %edi
	leaq	-1184(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rdx
	movl	$0, %eax
	call	mvscanw@PLT
	leaq	-1184(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, -1316(%rbp)
	cmpl	$0, -1316(%rbp)
	jg	.L61
	call	beep@PLT
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$3, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
.L61:
	cmpl	$0, -1316(%rbp)
	jle	.L62
	movl	$0, %edi
	call	curs_set@PLT
	call	noecho@PLT
	movl	-1292(%rbp), %eax
	leal	-24(%rax), %esi
	movl	-1316(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC41(%rip), %rdx
	movl	$4, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$8, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$2, %eax
	movl	$32, %ecx
	leaq	.LC43(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$20, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$3, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	jmp	.L43
.L58:
	movl	-1292(%rbp), %eax
	subl	$3, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$2, %eax
	leaq	.LC44(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$24, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movl	$3, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$24, %eax
	movl	$32, %ecx
	leaq	.LC11(%rip), %rdx
	movl	%eax, %esi
	movl	$4, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	call	echo@PLT
	movl	$1, %edi
	call	curs_set@PLT
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	3(%rax), %edi
	leaq	-1120(%rbp), %rax
	movq	%rax, %rcx
	leaq	.LC10(%rip), %rdx
	movl	$5, %esi
	movl	$0, %eax
	call	mvscanw@PLT
	movl	$0, %edi
	call	curs_set@PLT
	call	noecho@PLT
	movl	-1292(%rbp), %eax
	subl	$3, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$2, %eax
	movl	$32, %ecx
	leaq	.LC45(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	3(%rax), %ecx
	movq	stdscr(%rip), %rax
	movl	$5, %edx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	wmove@PLT
	cmpl	$-1, %eax
	je	.L83
	movq	stdscr(%rip), %rax
	movl	$-1, %edx
	leaq	.LC46(%rip), %rsi
	movq	%rax, %rdi
	call	waddnwstr@PLT
.L83:
	nop
.L43:
	cmpl	$52, -1284(%rbp)
	jle	.L84
	movl	$0, -1300(%rbp)
	jmp	.L84
.L45:
	cmpl	$56, -1284(%rbp)
	jle	.L85
	movl	$0, -1300(%rbp)
	jmp	.L85
.L46:
	cmpl	$51, -1284(%rbp)
	jle	.L86
	movl	$0, -1300(%rbp)
	jmp	.L86
.L81:
	nop
	jmp	.L39
.L82:
	nop
	jmp	.L39
.L84:
	nop
	jmp	.L39
.L85:
	nop
	jmp	.L39
.L86:
	nop
.L39:
	cmpl	$0, -1300(%rbp)
	jne	.L68
	call	beep@PLT
	movl	$1, -1300(%rbp)
	jmp	.L69
.L68:
	movl	-1284(%rbp), %eax
	leal	-48(%rax), %edx
	movl	-1336(%rbp), %eax
	cltq
	movl	%edx, -1264(%rbp,%rax,4)
	movl	-1292(%rbp), %eax
	subl	$1, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	leal	1(%rax), %edi
	movl	-1284(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC9(%rip), %rdx
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1284(%rbp), %edx
	movl	-1328(%rbp), %eax
	movl	%edx, %ecx
	leaq	.LC9(%rip), %rdx
	movl	%eax, %esi
	movl	$1, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	jmp	.L69
.L36:
	cmpl	$8, -1336(%rbp)
	setle	%al
	movzbl	%al, %eax
	addl	%eax, -1336(%rbp)
	movl	-1336(%rbp), %eax
	cltq
	movl	-1264(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L70
	movl	-1336(%rbp), %eax
	cltq
	movl	-1264(%rbp,%rax,4), %eax
	addl	$48, %eax
	jmp	.L71
.L70:
	movl	$32, %eax
.L71:
	movl	-1292(%rbp), %edx
	subl	$1, %edx
	sarl	%edx
	movl	%edx, %esi
	movl	-1296(%rbp), %edx
	sarl	%edx
	leal	1(%rdx), %edi
	movl	%eax, %ecx
	leaq	.LC9(%rip), %rdx
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1328(%rbp), %eax
	movl	$32, %ecx
	leaq	.LC9(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	leal	-25(%rax), %edx
	movl	-1336(%rbp), %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -1328(%rbp)
	jmp	.L69
.L38:
	cmpl	$0, -1336(%rbp)
	setne	%al
	movzbl	%al, %eax
	subl	%eax, -1336(%rbp)
	movl	-1336(%rbp), %eax
	cltq
	movl	-1264(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L72
	movl	-1336(%rbp), %eax
	cltq
	movl	-1264(%rbp,%rax,4), %eax
	addl	$48, %eax
	jmp	.L73
.L72:
	movl	$32, %eax
.L73:
	movl	-1292(%rbp), %edx
	subl	$1, %edx
	sarl	%edx
	movl	%edx, %esi
	movl	-1296(%rbp), %edx
	sarl	%edx
	leal	1(%rdx), %edi
	movl	%eax, %ecx
	leaq	.LC9(%rip), %rdx
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1328(%rbp), %eax
	movl	$32, %ecx
	leaq	.LC9(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	leal	-25(%rax), %edx
	movl	-1336(%rbp), %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	%eax, -1328(%rbp)
	jmp	.L69
.L34:
	movl	$0, -1304(%rbp)
	jmp	.L74
.L76:
	addl	$1, -1304(%rbp)
.L74:
	movl	-1304(%rbp), %eax
	cltq
	movl	-1264(%rbp,%rax,4), %eax
	testl	%eax, %eax
	je	.L75
	cmpl	$9, -1304(%rbp)
	jle	.L76
.L75:
	cmpl	$9, -1304(%rbp)
	jg	.L77
	call	beep@PLT
	movl	-1292(%rbp), %eax
	subl	$15, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	subl	$1, %eax
	leaq	.LC47(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$25, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$1, %eax
	leaq	.LC48(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	$3, -1332(%rbp)
	movq	stdscr(%rip), %rax
	movq	%rax, %rdi
	call	wgetch@PLT
	jmp	.L69
.L77:
	movl	-1292(%rbp), %eax
	leal	-25(%rax), %edx
	movl	-1336(%rbp), %eax
	addl	%eax, %eax
	addl	%edx, %eax
	movl	$32, %ecx
	leaq	.LC9(%rip), %rdx
	movl	%eax, %esi
	movl	$2, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	$0, -1336(%rbp)
	movl	-1292(%rbp), %eax
	subl	$9, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	subl	$1, %eax
	leaq	.LC49(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movl	-1292(%rbp), %eax
	subl	$25, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	addl	$1, %eax
	leaq	.LC48(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movq	stdscr(%rip), %rax
	movq	%rax, %rdi
	call	wgetch@PLT
	movl	$2, -1332(%rbp)
	jmp	.L69
.L35:
	movl	$0, -1332(%rbp)
	jmp	.L69
.L31:
	call	beep@PLT
.L69:
	movl	-1284(%rbp), %eax
	movl	%eax, %ecx
	leaq	.LC50(%rip), %rdx
	movl	$0, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	cmpl	$0, -1332(%rbp)
	jne	.L78
	movq	-1280(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	stdscr(%rip), %rax
	movq	%rax, %rdi
	call	wclear@PLT
	movl	-1292(%rbp), %eax
	subl	$25, %eax
	sarl	%eax
	movl	%eax, %esi
	movl	-1296(%rbp), %eax
	sarl	%eax
	leaq	.LC48(%rip), %rcx
	leaq	.LC10(%rip), %rdx
	movl	%eax, %edi
	movl	$0, %eax
	call	mvprintw@PLT
	movq	stdscr(%rip), %rax
	movq	%rax, %rdi
	call	wgetch@PLT
	call	endwin@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L80
	call	__stack_chk_fail@PLT
.L80:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 7.3.0-16ubuntu3) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
