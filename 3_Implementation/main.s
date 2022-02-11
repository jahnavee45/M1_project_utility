	.file	"main.c"
	.text
	.comm	item,28,16
	.section	.rodata
.LC0:
	.string	"   Calculate Bill"
.LC1:
	.string	"   Add Goods"
.LC2:
	.string	"   Edit Goods"
.LC3:
	.string	"   Display All  "
.LC4:
	.string	"   Search Goods"
.LC5:
	.string	"   Delete Goods"
.LC6:
	.string	"   Exit"
.LC7:
	.string	"cls"
.LC8:
	.string	" NEW TOWN "
.LC9:
	.string	"\n"
.LC10:
	.string	"DEPARTMENTAL STORE"
.LC11:
	.string	"MAIN MENU"
.LC12:
	.string	"%s\n\n\n"
	.text
	.globl	mainmenu
	.type	mainmenu, @function
mainmenu:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, -64(%rbp)
	leaq	.LC1(%rip), %rax
	movq	%rax, -56(%rbp)
	leaq	.LC2(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC3(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC4(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC5(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC6(%rip), %rax
	movq	%rax, -16(%rbp)
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	movl	$1, -68(%rbp)
	jmp	.L2
.L3:
	movl	$45, %edi
	call	putchar@PLT
	addl	$1, -68(%rbp)
.L2:
	cmpl	$10, -68(%rbp)
	jle	.L3
	leaq	.LC8(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -68(%rbp)
	jmp	.L4
.L5:
	movl	$45, %edi
	call	putchar@PLT
	addl	$1, -68(%rbp)
.L4:
	cmpl	$10, -68(%rbp)
	jle	.L5
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC11(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -68(%rbp)
	jmp	.L6
.L7:
	movl	-68(%rbp), %eax
	cltq
	movq	-64(%rbp,%rax,8), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -68(%rbp)
.L6:
	cmpl	$6, -68(%rbp)
	jle	.L7
	movl	$7, %edi
	call	cursor
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	mainmenu, .-mainmenu
	.section	.rodata
.LC13:
	.string	"   By Code"
.LC14:
	.string	"   By Rate"
.LC15:
	.string	"   By Quantity"
.LC16:
	.string	"   Back to main menu"
.LC17:
	.string	"SEARCH MENU"
	.text
	.globl	dis_search
	.type	dis_search, @function
dis_search:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC13(%rip), %rax
	movq	%rax, -48(%rbp)
	leaq	.LC14(%rip), %rax
	movq	%rax, -40(%rbp)
	leaq	.LC15(%rip), %rax
	movq	%rax, -32(%rbp)
	leaq	.LC16(%rip), %rax
	movq	%rax, -24(%rbp)
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	leaq	.LC17(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -52(%rbp)
	jmp	.L10
.L11:
	movl	-52(%rbp), %eax
	cltq
	movq	-48(%rbp,%rax,8), %rax
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -52(%rbp)
.L10:
	cmpl	$3, -52(%rbp)
	jle	.L11
	movl	$4, %edi
	call	cursor
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L12
	call	__stack_chk_fail@PLT
.L12:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	dis_search, .-dis_search
	.globl	cursor
	.type	cursor, @function
cursor:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -20(%rbp)
	movl	$1, -4(%rbp)
	call	getchar@PLT
	movb	%al, -5(%rbp)
	movl	-4(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%edx, %esi
	movl	%eax, %edi
	call	highlight
	cmpb	$13, -5(%rbp)
	jne	.L25
	cmpl	$7, -20(%rbp)
	jne	.L15
	cmpl	$1, -4(%rbp)
	jne	.L16
	movl	$0, %eax
	call	bill
	jmp	.L15
.L16:
	cmpl	$2, -4(%rbp)
	jne	.L17
	movl	$0, %eax
	call	add
	jmp	.L15
.L17:
	cmpl	$3, -4(%rbp)
	jne	.L18
	movl	$0, %eax
	call	edit
	jmp	.L15
.L18:
	cmpl	$4, -4(%rbp)
	jne	.L19
	movl	$0, %eax
	call	all
	jmp	.L15
.L19:
	cmpl	$5, -4(%rbp)
	jne	.L20
	movl	$0, %eax
	call	dis_search
	jmp	.L15
.L20:
	cmpl	$6, -4(%rbp)
	jne	.L21
	movl	$0, %eax
	call	del
	jmp	.L15
.L21:
	movl	$0, %edi
	call	exit@PLT
.L15:
	cmpl	$4, -20(%rbp)
	jne	.L25
	cmpl	$1, -4(%rbp)
	jne	.L22
	movl	$0, %eax
	call	dis_code
	jmp	.L25
.L22:
	cmpl	$2, -4(%rbp)
	jne	.L23
	movl	$0, %eax
	call	dis_rate
	jmp	.L25
.L23:
	cmpl	$3, -4(%rbp)
	jne	.L24
	movl	$0, %eax
	call	dis_quan
	jmp	.L25
.L24:
	movl	$0, %eax
	call	mainmenu
.L25:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	cursor, .-cursor
	.section	.rodata
.LC18:
	.string	"   By Code          "
.LC19:
	.string	"   By Rate          "
.LC20:
	.string	"   By Quantity      "
.LC21:
	.string	"   Back to main menu "
.LC22:
	.string	" - By Code          "
.LC23:
	.string	" - By Rate          "
.LC24:
	.string	" - By Quantity      "
.LC25:
	.string	" - Back to main menu"
.LC26:
	.string	"   Calculate Bill "
.LC27:
	.string	"   Add Goods      "
.LC28:
	.string	"   Edit Goods     "
.LC29:
	.string	"   Display All    "
.LC30:
	.string	"   Search         "
.LC31:
	.string	"   Delete Goods   "
.LC32:
	.string	"   Exit           "
.LC33:
	.string	" - Calculate Bill "
.LC34:
	.string	" - Add Goods      "
.LC35:
	.string	" - Edit Goods     "
.LC36:
	.string	" - Display All    "
.LC37:
	.string	" - Search         "
.LC38:
	.string	" - Delete Goods   "
.LC39:
	.string	" - Exit           "
	.text
	.globl	highlight
	.type	highlight, @function
highlight:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$4, -4(%rbp)
	jne	.L41
	leaq	.LC18(%rip), %rdi
	call	puts@PLT
	leaq	.LC19(%rip), %rdi
	call	puts@PLT
	leaq	.LC20(%rip), %rdi
	call	puts@PLT
	leaq	.LC21(%rip), %rdi
	call	puts@PLT
	cmpl	$4, -8(%rbp)
	je	.L28
	cmpl	$4, -8(%rbp)
	jg	.L27
	cmpl	$3, -8(%rbp)
	je	.L29
	cmpl	$3, -8(%rbp)
	jg	.L27
	cmpl	$1, -8(%rbp)
	je	.L30
	cmpl	$2, -8(%rbp)
	je	.L31
	jmp	.L27
.L30:
	leaq	.LC22(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L31:
	leaq	.LC23(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L29:
	leaq	.LC24(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L28:
	leaq	.LC25(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L27
.L41:
	nop
.L27:
	cmpl	$7, -4(%rbp)
	jne	.L42
	leaq	.LC26(%rip), %rdi
	call	puts@PLT
	leaq	.LC27(%rip), %rdi
	call	puts@PLT
	leaq	.LC28(%rip), %rdi
	call	puts@PLT
	leaq	.LC29(%rip), %rdi
	call	puts@PLT
	leaq	.LC30(%rip), %rdi
	call	puts@PLT
	leaq	.LC31(%rip), %rdi
	call	puts@PLT
	leaq	.LC32(%rip), %rdi
	call	puts@PLT
	cmpl	$7, -8(%rbp)
	ja	.L43
	movl	-8(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L34(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L34(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L34:
	.long	.L43-.L34
	.long	.L40-.L34
	.long	.L39-.L34
	.long	.L38-.L34
	.long	.L37-.L34
	.long	.L36-.L34
	.long	.L35-.L34
	.long	.L33-.L34
	.text
.L40:
	leaq	.LC33(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L32
.L39:
	leaq	.LC34(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L32
.L38:
	leaq	.LC35(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L32
.L37:
	leaq	.LC36(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L32
.L36:
	leaq	.LC37(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L32
.L35:
	leaq	.LC38(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L32
.L33:
	leaq	.LC39(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L32
.L42:
	nop
.L32:
.L43:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	highlight, .-highlight
	.section	.rodata
.LC41:
	.string	"r+b"
.LC42:
	.string	"record.txt"
.LC43:
	.string	"Enter  \"end\" to finish input"
.LC44:
	.string	"                    "
.LC45:
	.string	"Enter Item Code:"
.LC46:
	.string	"%s"
.LC47:
	.string	"end"
.LC48:
	.string	"Enter Quantity:"
.LC49:
	.string	"%d"
.LC50:
	.string	"%4d"
.LC51:
	.string	"%9s"
.LC52:
	.string	"%13d"
.LC53:
	.string	"%15.2f"
.LC54:
	.string	"%13.2f"
.LC55:
	.string	"TOTAL AMOUNT = NRs. %6.2f"
	.text
	.globl	bill
	.type	bill, @function
bill:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -12(%rbp)
	movl	$29, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -32(%rbp)
	movl	$1, -40(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -28(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -36(%rbp)
	leaq	.LC41(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	movl	$0, %eax
	call	bill
	leaq	.LC43(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L50:
	leaq	.LC44(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC44(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC45(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-12(%rbp), %rax
	leaq	.LC47(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L56
	leaq	.LC48(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	jmp	.L47
.L49:
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	15+item(%rip), %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L47
	movss	20+item(%rip), %xmm1
	movl	-48(%rbp), %eax
	cvtsi2ssl	%eax, %xmm0
	mulss	%xmm1, %xmm0
	movss	%xmm0, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	item(%rip), %rsi
	leaq	.LC51(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-48(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC52(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movss	20+item(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC53(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	cvtss2sd	-28(%rbp), %xmm0
	leaq	.LC54(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movss	-36(%rbp), %xmm0
	addss	-28(%rbp), %xmm0
	movss	%xmm0, -36(%rbp)
	movl	$28, -32(%rbp)
	movl	24+item(%rip), %edx
	movl	-48(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, 24+item(%rip)
	addl	$2, -44(%rbp)
	addl	$1, -40(%rbp)
	movl	-32(%rbp), %eax
	negl	%eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fwrite@PLT
	jmp	.L48
.L47:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L49
.L48:
	jmp	.L50
.L56:
	nop
	pxor	%xmm0, %xmm0
	ucomiss	-36(%rbp), %xmm0
	jp	.L54
	pxor	%xmm0, %xmm0
	ucomiss	-36(%rbp), %xmm0
	je	.L51
.L54:
	cvtss2sd	-36(%rbp), %xmm0
	leaq	.LC55(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
.L51:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
	call	mainmenu
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L53
	call	__stack_chk_fail@PLT
.L53:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	bill, .-bill
	.section	.rodata
.LC56:
	.string	" OLD TOWN "
.LC57:
	.string	"CUSTOMER'S BILL"
	.align 8
.LC58:
	.string	"SN.   Item Name     Quantity     Rate          Total"
	.text
	.globl	dis_bill
	.type	dis_bill, @function
dis_bill:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -4(%rbp)
	jmp	.L58
.L59:
	movl	$45, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L58:
	cmpl	$10, -4(%rbp)
	jle	.L59
	leaq	.LC56(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -4(%rbp)
	jmp	.L60
.L61:
	movl	$45, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L60:
	cmpl	$10, -4(%rbp)
	jle	.L61
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC57(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC58(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	dis_bill, .-dis_bill
	.section	.rodata
.LC59:
	.string	"Enter New Record(Y/N)?"
.LC60:
	.string	"ab"
.LC61:
	.string	"Enter Rate Of The Item:"
.LC62:
	.string	"%f"
.LC63:
	.string	"Enter Quantity Of The Item:"
.LC64:
	.string	"Enter Name Of The Item:"
	.text
	.globl	add
	.type	add, @function
add:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	leaq	.LC59(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L63
.L64:
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	leaq	.LC60(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -32(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	c_code
	leaq	-20(%rbp), %rax
	movq	%rax, %rsi
	leaq	15+item(%rip), %rdi
	call	strcpy@PLT
	leaq	.LC61(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	20+item(%rip), %rsi
	leaq	.LC62(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC63(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	24+item(%rip), %rsi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC64(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	item(%rip), %rsi
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-32(%rbp), %rax
	movl	$2, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fwrite@PLT
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	leaq	.LC59(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L63:
	call	getchar@PLT
	movl	%eax, %edi
	call	toupper@PLT
	cmpl	$89, %eax
	je	.L64
	movl	$0, %eax
	call	mainmenu
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L65
	call	__stack_chk_fail@PLT
.L65:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
	.size	add, .-add
	.section	.rodata
.LC65:
	.string	"rb"
.LC66:
	.string	" ADD ARTICLES "
	.align 8
.LC67:
	.string	"Enter New Code Of The Article:"
.LC68:
	.string	" %[^\n]"
.LC69:
	.string	"Code Already Exists"
.LC70:
	.string	"Enter Again"
	.text
	.globl	c_code
	.type	c_code, @function
c_code:
.LFB13:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	leaq	.LC65(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
.L72:
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	leaq	.LC66(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -12(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	leaq	.LC67(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC68(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	jmp	.L67
.L69:
	movq	-24(%rbp), %rax
	leaq	15+item(%rip), %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L67
	movl	$0, -12(%rbp)
	leaq	.LC69(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC70(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L68
.L67:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fread@PLT
	cmpq	$1, %rax
	je	.L69
.L68:
	cmpl	$1, -12(%rbp)
	je	.L74
	jmp	.L72
.L74:
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE13:
	.size	c_code, .-c_code
	.section	.rodata
.LC71:
	.string	"EDIT RECORDS"
.LC72:
	.string	"Enter Item Code: "
.LC73:
	.string	"\nname       = %s"
.LC74:
	.string	"\ncode       = %s"
.LC75:
	.string	"\nrate       = %g"
.LC76:
	.string	"\nquantity   = %d"
	.align 8
.LC77:
	.string	"\nDo You Want To Edit This Record?(y/n):"
.LC78:
	.string	"1- Edit Name "
.LC79:
	.string	"2- Edit Code "
.LC80:
	.string	"3- Edit Rate "
.LC81:
	.string	"4- Edit Quantity "
	.align 8
.LC82:
	.string	" Enter Your Choice(1, 2, 3, 4) "
.LC83:
	.string	" Enter New Name: "
.LC84:
	.string	" Enter New Rate: "
.LC85:
	.string	" Enter New Quantity: "
.LC86:
	.string	"--- Item Edited---"
.LC87:
	.string	"Item Does Not Exist."
.LC88:
	.string	"TRY AGAIN"
	.text
	.globl	edit
	.type	edit, @function
edit:
.LFB14:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -32(%rbp)
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	leaq	.LC71(%rip), %rdi
	call	puts@PLT
	leaq	.LC72(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	check
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	.L76
	leaq	.LC41(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	jmp	.L77
.L83:
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	leaq	15+item(%rip), %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L77
	leaq	item(%rip), %rsi
	leaq	.LC73(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	15+item(%rip), %rsi
	leaq	.LC74(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movss	20+item(%rip), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC75(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	24+item(%rip), %eax
	movl	%eax, %esi
	leaq	.LC76(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC77(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	call	getchar@PLT
	movl	%eax, %edi
	call	toupper@PLT
	cmpl	$89, %eax
	jne	.L77
	leaq	.LC78(%rip), %rdi
	call	puts@PLT
	leaq	.LC79(%rip), %rdi
	call	puts@PLT
	leaq	.LC80(%rip), %rdi
	call	puts@PLT
	leaq	.LC81(%rip), %rdi
	call	puts@PLT
	leaq	.LC82(%rip), %rdi
	call	puts@PLT
	leaq	-36(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-36(%rbp), %eax
	cmpl	$4, %eax
	je	.L78
	cmpl	$4, %eax
	jg	.L79
	cmpl	$3, %eax
	je	.L80
	cmpl	$3, %eax
	jg	.L79
	cmpl	$1, %eax
	je	.L81
	cmpl	$2, %eax
	je	.L82
	jmp	.L79
.L81:
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	leaq	.LC71(%rip), %rdi
	call	puts@PLT
	leaq	.LC83(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	item(%rip), %rsi
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$28, -28(%rbp)
	movl	-28(%rbp), %eax
	negl	%eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fwrite@PLT
	jmp	.L79
.L82:
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	leaq	.LC71(%rip), %rdi
	call	puts@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rdi
	call	c_code
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	15+item(%rip), %rdi
	call	strcpy@PLT
	movl	$28, -28(%rbp)
	movl	-28(%rbp), %eax
	negl	%eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fwrite@PLT
	jmp	.L79
.L80:
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	leaq	.LC71(%rip), %rdi
	call	puts@PLT
	leaq	.LC84(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	20+item(%rip), %rsi
	leaq	.LC62(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$28, -28(%rbp)
	movl	-28(%rbp), %eax
	negl	%eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fwrite@PLT
	jmp	.L79
.L78:
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	leaq	.LC71(%rip), %rdi
	call	puts@PLT
	leaq	.LC85(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	24+item(%rip), %rsi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	$28, -28(%rbp)
	movl	-28(%rbp), %eax
	negl	%eax
	movslq	%eax, %rcx
	movq	-24(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fwrite@PLT
	nop
.L79:
	leaq	.LC86(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L76
.L77:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L83
.L76:
	cmpl	$1, -32(%rbp)
	jne	.L84
	leaq	.LC87(%rip), %rdi
	call	puts@PLT
	leaq	.LC88(%rip), %rdi
	call	puts@PLT
.L84:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
	call	mainmenu
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L85
	call	__stack_chk_fail@PLT
.L85:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE14:
	.size	edit, .-edit
	.section	.rodata
	.align 8
.LC89:
	.string	"\nPress Any Key To See More..........."
.LC90:
	.string	"-- No Articles Found --"
	.text
	.globl	all
	.type	all, @function
all:
.LFB15:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$1, -12(%rbp)
	movl	$0, %eax
	call	dis_con
	leaq	.LC65(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movl	$26, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	jmp	.L87
.L88:
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	item(%rip), %rdi
	call	display
	addl	$1, -16(%rbp)
	addl	$1, -12(%rbp)
	movl	-12(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L87
	leaq	.LC89(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	movl	$0, %eax
	call	dis_con
	movl	$26, -16(%rbp)
	nop
.L87:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L88
	cmpl	$26, -16(%rbp)
	jne	.L89
	leaq	.LC90(%rip), %rdi
	call	puts@PLT
.L89:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
	call	mainmenu
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE15:
	.size	all, .-all
	.section	.rodata
.LC91:
	.string	"\nEnter Lower Range: "
.LC92:
	.string	"Enter Upper Range:"
	.align 8
.LC93:
	.string	"\nPress Any Key To See More......"
.LC94:
	.string	" No Items Found."
	.text
	.globl	dis_quan
	.type	dis_quan, @function
dis_quan:
.LFB16:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -20(%rbp)
	movl	$0, %eax
	call	dis_con
	leaq	.LC65(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movl	$26, -24(%rbp)
	leaq	.LC91(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC92(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC49(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	jmp	.L91
.L92:
	movl	24+item(%rip), %edx
	movl	-32(%rbp), %eax
	cmpl	%eax, %edx
	jl	.L91
	movl	24+item(%rip), %edx
	movl	-28(%rbp), %eax
	cmpl	%eax, %edx
	jg	.L91
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	item(%rip), %rdi
	call	display
	addl	$1, -24(%rbp)
	addl	$1, -20(%rbp)
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L91
	leaq	.LC93(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	movl	$0, %eax
	call	dis_con
	movl	$26, -24(%rbp)
	nop
.L91:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L92
	cmpl	$26, -24(%rbp)
	jne	.L93
	leaq	.LC94(%rip), %rdi
	call	puts@PLT
.L93:
	movl	$0, %eax
	call	dis_search
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L94
	call	__stack_chk_fail@PLT
.L94:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE16:
	.size	dis_quan, .-dis_quan
	.section	.rodata
.LC95:
	.string	"Enter Lower Range: "
.LC96:
	.string	"Enter Upper Range: "
	.align 8
.LC97:
	.string	"\nPress Any Key To See More....."
.LC98:
	.string	" No Item Found "
	.text
	.globl	dis_rate
	.type	dis_rate, @function
dis_rate:
.LFB17:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -20(%rbp)
	movl	$0, %eax
	call	dis_con
	leaq	.LC65(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movl	$26, -24(%rbp)
	leaq	.LC95(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC62(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC96(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-28(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC62(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	jmp	.L96
.L99:
	movss	20+item(%rip), %xmm0
	movss	-32(%rbp), %xmm1
	comiss	%xmm1, %xmm0
	jnb	.L102
	jmp	.L96
.L102:
	movss	20+item(%rip), %xmm1
	movss	-28(%rbp), %xmm0
	comiss	%xmm1, %xmm0
	jnb	.L103
	jmp	.L96
.L103:
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %eax
	movl	%eax, %esi
	leaq	item(%rip), %rdi
	call	display
	addl	$1, -24(%rbp)
	addl	$1, -20(%rbp)
	movl	-20(%rbp), %ecx
	movslq	%ecx, %rax
	imulq	$1717986919, %rax, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	sarl	$3, %edx
	movl	%ecx, %eax
	sarl	$31, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$2, %eax
	subl	%eax, %ecx
	movl	%ecx, %edx
	testl	%edx, %edx
	jne	.L96
	leaq	.LC97(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	movl	$0, %eax
	call	dis_con
	movl	$26, -24(%rbp)
	nop
.L96:
	movq	-16(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L99
	cmpl	$26, -24(%rbp)
	jne	.L100
	leaq	.LC98(%rip), %rdi
	call	puts@PLT
.L100:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
	call	dis_search
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L101
	call	__stack_chk_fail@PLT
.L101:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE17:
	.size	dis_rate, .-dis_rate
	.section	.rodata
.LC99:
	.string	"\nNo Item Found"
	.text
	.globl	dis_code
	.type	dis_code, @function
dis_code:
.LFB18:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -28(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, %eax
	call	dis_con
	leaq	.LC65(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	movl	$26, -32(%rbp)
	leaq	.LC72(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fflush@PLT
	jmp	.L105
.L107:
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	leaq	15+item(%rip), %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L105
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %eax
	movl	%eax, %esi
	leaq	item(%rip), %rdi
	call	display
	addl	$1, -32(%rbp)
	addl	$1, -28(%rbp)
	jmp	.L106
.L105:
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L107
.L106:
	cmpl	$26, -32(%rbp)
	jne	.L108
	leaq	.LC99(%rip), %rdi
	call	puts@PLT
.L108:
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
	call	dis_search
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L109
	call	__stack_chk_fail@PLT
.L109:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE18:
	.size	dis_code, .-dis_code
	.section	.rodata
.LC100:
	.string	"RECORDS"
	.align 8
.LC101:
	.string	"\nSN.   Item Name   Item Code      Rate     Quantity"
	.text
	.globl	dis_con
	.type	dis_con, @function
dis_con:
.LFB19:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	movl	$1, -4(%rbp)
	jmp	.L111
.L112:
	movl	$45, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L111:
	cmpl	$10, -4(%rbp)
	jle	.L112
	leaq	.LC56(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1, -4(%rbp)
	jmp	.L113
.L114:
	movl	$45, %edi
	call	putchar@PLT
	addl	$1, -4(%rbp)
.L113:
	cmpl	$10, -4(%rbp)
	jle	.L114
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC10(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC100(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	.LC9(%rip), %rdi
	call	puts@PLT
	leaq	.LC101(%rip), %rdi
	call	puts@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE19:
	.size	dis_con, .-dis_con
	.section	.rodata
.LC102:
	.string	"%12s"
.LC103:
	.string	"%14.2f"
.LC104:
	.string	"%11d"
	.text
	.globl	display
	.type	display, @function
display:
.LFB20:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC50(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC51(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	addq	$15, %rax
	movq	%rax, %rsi
	leaq	.LC102(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movss	20(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	leaq	.LC103(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movq	-8(%rbp), %rax
	movl	24(%rax), %eax
	movl	%eax, %esi
	leaq	.LC104(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE20:
	.size	display, .-display
	.section	.rodata
.LC105:
	.string	"DELETE ARTICLES"
.LC106:
	.string	"record1.txt"
.LC107:
	.string	"---Item Deleted---"
.LC108:
	.string	"---Item Does Not Exist---"
	.text
	.globl	del
	.type	del, @function
del:
.LFB21:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC7(%rip), %rdi
	call	system@PLT
	leaq	.LC105(%rip), %rdi
	call	puts@PLT
	leaq	.LC72(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-23(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC46(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-23(%rbp), %rax
	movq	%rax, %rdi
	call	check
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jne	.L117
	leaq	.LC60(%rip), %rsi
	leaq	.LC106(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -32(%rbp)
	leaq	.LC65(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	jmp	.L118
.L119:
	leaq	-23(%rbp), %rax
	movq	%rax, %rsi
	leaq	15+item(%rip), %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	je	.L118
	movq	-32(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fwrite@PLT
.L118:
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L119
	leaq	.LC107(%rip), %rdi
	call	puts@PLT
	leaq	.LC42(%rip), %rdi
	call	remove@PLT
	leaq	.LC42(%rip), %rsi
	leaq	.LC106(%rip), %rdi
	call	rename@PLT
.L117:
	cmpl	$1, -44(%rbp)
	jne	.L120
	leaq	.LC108(%rip), %rdi
	call	puts@PLT
	leaq	.LC88(%rip), %rdi
	call	puts@PLT
.L120:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	$0, %eax
	call	mainmenu
	nop
	movq	-8(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L121
	call	__stack_chk_fail@PLT
.L121:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE21:
	.size	del, .-del
	.globl	check
	.type	check, @function
check:
.LFB22:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$1, -12(%rbp)
	leaq	.LC65(%rip), %rsi
	leaq	.LC42(%rip), %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	rewind@PLT
	jmp	.L123
.L125:
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	leaq	15+item(%rip), %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L123
	movl	$0, -12(%rbp)
	jmp	.L124
.L123:
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	movl	$1, %edx
	movl	$28, %esi
	leaq	item(%rip), %rdi
	call	fread@PLT
	testq	%rax, %rax
	jne	.L125
.L124:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-12(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE22:
	.size	check, .-check
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
