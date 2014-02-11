	.file	"DisplayText.cpp"
	.text
	.align 2
	.align 16
	.globl	_ZN11DisplayText9MakeColorENS_14Display_ColorsES0_
	.type	_ZN11DisplayText9MakeColorENS_14Display_ColorsES0_, @function
_ZN11DisplayText9MakeColorENS_14Display_ColorsES0_:
.LFB0:
	.cfi_startproc
	movl	8(%esp), %eax
	sall	$4, %eax
	orb	4(%esp), %al
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN11DisplayText9MakeColorENS_14Display_ColorsES0_, .-_ZN11DisplayText9MakeColorENS_14Display_ColorsES0_
	.align 2
	.align 16
	.globl	_ZN11DisplayText12MakeVGAEntryEch
	.type	_ZN11DisplayText12MakeVGAEntryEch, @function
_ZN11DisplayText12MakeVGAEntryEch:
.LFB1:
	.cfi_startproc
	movzbl	8(%esp), %edx
	movsbw	4(%esp), %ax
	sall	$8, %edx
	orl	%edx, %eax
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN11DisplayText12MakeVGAEntryEch, .-_ZN11DisplayText12MakeVGAEntryEch
	.align 16
	.globl	_Z6strlenPKc
	.type	_Z6strlenPKc, @function
_Z6strlenPKc:
.LFB2:
	.cfi_startproc
	movl	4(%esp), %edx
	xorl	%eax, %eax
	cmpb	$0, (%edx)
	je	.L6
	.align 16
.L5:
	addl	$1, %eax
	cmpb	$0, (%edx,%eax)
	jne	.L5
	rep ret
.L6:
	.p2align 4,,4
	rep ret
	.cfi_endproc
.LFE2:
	.size	_Z6strlenPKc, .-_Z6strlenPKc
	.align 2
	.align 16
	.globl	_ZN11DisplayText10InitializeEv
	.type	_ZN11DisplayText10InitializeEv, @function
_ZN11DisplayText10InitializeEv:
.LFB3:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$24, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	xorl	%ebx, %ebx
	movl	$0, row
	movl	$0, column
	movzwl	1098, %ecx
	movb	$7, color
	movl	$753664, buffer
	movl	%ecx, _ZL9VGA_WIDTH
	.align 16
.L9:
	testl	%ecx, %ecx
	je	.L12
	xorl	%eax, %eax
	.align 16
.L13:
	leal	(%ebx,%eax), %edx
	addl	$1, %eax
	cmpl	%eax, %ecx
	movw	$1824, 753664(%edx,%edx)
	ja	.L13
.L12:
	addl	%ecx, %ebx
	subl	$1, %esi
	jne	.L9
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN11DisplayText10InitializeEv, .-_ZN11DisplayText10InitializeEv
	.align 2
	.align 16
	.globl	_ZN11DisplayText8SetColorEh
	.type	_ZN11DisplayText8SetColorEh, @function
_ZN11DisplayText8SetColorEh:
.LFB4:
	.cfi_startproc
	movl	4(%esp), %eax
	movb	%al, color
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN11DisplayText8SetColorEh, .-_ZN11DisplayText8SetColorEh
	.align 2
	.align 16
	.globl	_ZN11DisplayText10PutEntryAtEchmm
	.type	_ZN11DisplayText10PutEntryAtEchmm, @function
_ZN11DisplayText10PutEntryAtEchmm:
.LFB5:
	.cfi_startproc
	movzbl	8(%esp), %ecx
	movsbw	4(%esp), %dx
	movl	16(%esp), %eax
	imull	_ZL9VGA_WIDTH, %eax
	sall	$8, %ecx
	orl	%ecx, %edx
	movl	buffer, %ecx
	addl	12(%esp), %eax
	movw	%dx, (%ecx,%eax,2)
	ret
	.cfi_endproc
.LFE5:
	.size	_ZN11DisplayText10PutEntryAtEchmm, .-_ZN11DisplayText10PutEntryAtEchmm
	.align 2
	.align 16
	.globl	_ZN11DisplayText5ClearEv
	.type	_ZN11DisplayText5ClearEv, @function
_ZN11DisplayText5ClearEv:
.LFB6:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	movzbl	color, %ecx
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	movl	_ZL9VGA_WIDTH, %esi
	movl	buffer, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	$24, %ebx
	sall	$8, %ecx
	orl	$32, %ecx
	leal	(%esi,%esi), %edi
	.align 16
.L21:
	testl	%esi, %esi
	leal	(%eax,%edi), %edx
	je	.L24
	.align 16
.L25:
	movw	%cx, (%eax)
	addl	$2, %eax
	cmpl	%eax, %edx
	jne	.L25
.L24:
	subl	$1, %ebx
	movl	%edx, %eax
	jne	.L21
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE6:
	.size	_ZN11DisplayText5ClearEv, .-_ZN11DisplayText5ClearEv
	.align 2
	.align 16
	.globl	_ZN11DisplayText8ScrollUpEv
	.type	_ZN11DisplayText8ScrollUpEv, @function
_ZN11DisplayText8ScrollUpEv:
.LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	$1, %ebx
	subl	$4, %esp
	.cfi_def_cfa_offset 24
	movl	_ZL9VGA_WIDTH, %esi
	movl	buffer, %ebp
	leal	(%esi,%esi), %edi
	movl	%esi, %ecx
	leal	0(%ebp,%edi), %eax
	negl	%ecx
	.align 16
.L31:
	testl	%esi, %esi
	leal	(%eax,%edi), %edx
	je	.L35
	movl	%ebx, (%esp)
	.align 16
.L36:
	movzwl	(%eax), %ebx
	movw	%bx, (%eax,%ecx,2)
	addl	$2, %eax
	cmpl	%eax, %edx
	jne	.L36
	movl	(%esp), %ebx
.L35:
	addl	$1, %ebx
	movl	%edx, %eax
	cmpl	$24, %ebx
	jne	.L31
	testl	%esi, %esi
	je	.L37
	movzbl	color, %ecx
	leal	(%esi,%esi,2), %edx
	movl	%edx, %eax
	sall	$4, %eax
	leal	(%esi,%edx,8), %edx
	addl	%ebp, %eax
	sall	$8, %ecx
	orl	$32, %ecx
	leal	0(%ebp,%edx,2), %edx
	.align 16
.L38:
	movw	%cx, (%eax)
	addl	$2, %eax
	cmpl	%edx, %eax
	jne	.L38
.L37:
	movl	$0, column
	movl	$24, row
	addl	$4, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN11DisplayText8ScrollUpEv, .-_ZN11DisplayText8ScrollUpEv
	.align 2
	.align 16
	.globl	_ZN11DisplayText9SetCursorEmm
	.type	_ZN11DisplayText9SetCursorEmm, @function
_ZN11DisplayText9SetCursorEmm:
.LFB8:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subl	$16, %esp
	.cfi_def_cfa_offset 32
	movzbl	1124, %eax
	movzbl	1123, %esi
	movl	_ZL9VGA_WIDTH, %ebx
	imulw	36(%esp), %bx
	sall	$8, %eax
	addw	32(%esp), %bx
	orl	%eax, %esi
	movzwl	%si, %edi
	addl	$1, %esi
	movl	%edi, (%esp)
	movzwl	%si, %esi
	movl	$15, 4(%esp)
	call	_ZN4Core7OutByteEth
	movzbl	%bl, %eax
	movzbl	%bh, %ebx
	movl	%eax, 4(%esp)
	movl	%esi, (%esp)
	call	_ZN4Core7OutByteEth
	movl	%edi, (%esp)
	movl	$14, 4(%esp)
	call	_ZN4Core7OutByteEth
	movl	%ebx, 36(%esp)
	movl	%esi, 32(%esp)
	addl	$16, %esp
	.cfi_def_cfa_offset 16
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_ZN4Core7OutByteEth
	.cfi_endproc
.LFE8:
	.size	_ZN11DisplayText9SetCursorEmm, .-_ZN11DisplayText9SetCursorEmm
	.align 2
	.align 16
	.globl	_ZN11DisplayText7PutCharEc
	.type	_ZN11DisplayText7PutCharEc, @function
_ZN11DisplayText7PutCharEc:
.LFB9:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %eax
	cmpb	$10, %al
	je	.L56
	movl	_ZL9VGA_WIDTH, %ecx
	cbtw
	movl	row, %esi
	movzbl	color, %edx
	movl	column, %ebx
	movl	%ecx, %edi
	imull	%esi, %edi
	sall	$8, %edx
	orl	%edx, %eax
	movl	buffer, %edx
	addl	%ebx, %edi
	movw	%ax, (%edx,%edi,2)
	leal	1(%ebx), %eax
	cmpl	%ecx, %eax
	movl	%eax, column
	je	.L57
.L46:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.align 16
.L57:
	.cfi_restore_state
	addl	$1, %esi
	cmpl	$24, %esi
	movl	$0, column
	movl	%esi, row
	jne	.L46
.L48:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	jmp	_ZN11DisplayText8ScrollUpEv
	.align 16
.L56:
	.cfi_restore_state
	movl	_ZL9VGA_WIDTH, %eax
	movl	%eax, column
	movl	row, %eax
	addl	$1, %eax
	cmpl	$23, %eax
	movl	%eax, row
	ja	.L48
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE9:
	.size	_ZN11DisplayText7PutCharEc, .-_ZN11DisplayText7PutCharEc
	.align 2
	.align 16
	.globl	_ZN11DisplayText11WriteStringEPKc
	.type	_ZN11DisplayText11WriteStringEPKc, @function
_ZN11DisplayText11WriteStringEPKc:
.LFB12:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%eax, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$20, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	cmpb	$0, (%ebx)
	je	.L62
	.align 16
.L64:
	addl	$1, %eax
	cmpb	$0, (%ebx,%eax)
	jne	.L64
	leal	(%ebx,%eax), %esi
	.align 16
.L63:
	movsbl	(%ebx), %edx
	addl	$1, %ebx
	movl	%edx, (%esp)
	call	_ZN11DisplayText7PutCharEc
	cmpl	%esi, %ebx
	jne	.L63
.L62:
	movl	row, %eax
	movl	%eax, 4(%esp)
	movl	column, %eax
	movl	%eax, (%esp)
	call	_ZN11DisplayText9SetCursorEmm
	addl	$20, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN11DisplayText11WriteStringEPKc, .-_ZN11DisplayText11WriteStringEPKc
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"0x"
	.text
	.align 2
	.align 16
	.globl	_ZN11DisplayText8WriteHexEl
	.type	_ZN11DisplayText8WriteHexEl, @function
_ZN11DisplayText8WriteHexEl:
.LFB10:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	leal	28(%esp), %ebx
	movl	%ebx, 4(%esp)
	movl	$16, 8(%esp)
	movl	%eax, (%esp)
	call	_Z4itoaiPci
	movl	$.LC0, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	%ebx, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	addl	$40, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN11DisplayText8WriteHexEl, .-_ZN11DisplayText8WriteHexEl
	.align 2
	.align 16
	.globl	_ZN11DisplayText8WriteIntEl
	.type	_ZN11DisplayText8WriteIntEl, @function
_ZN11DisplayText8WriteIntEl:
.LFB11:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$40, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	leal	28(%esp), %ebx
	movl	%ebx, 4(%esp)
	movl	$10, 8(%esp)
	movl	%eax, (%esp)
	call	_Z4itoaiPci
	movl	%ebx, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	addl	$40, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN11DisplayText8WriteIntEl, .-_ZN11DisplayText8WriteIntEl
	.align 2
	.align 16
	.globl	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	.type	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_, @function
_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_:
.LFB13:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movzbl	color, %ebx
	movl	40(%esp), %eax
	sall	$4, %eax
	orb	36(%esp), %al
	movb	%al, color
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movb	%bl, color
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_, .-_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	.section	.rodata.str1.1
.LC1:
	.string	"true"
.LC2:
	.string	"false"
	.text
	.align 2
	.align 16
	.globl	_ZN11DisplayText9WriteBoolEb
	.type	_ZN11DisplayText9WriteBoolEb, @function
_ZN11DisplayText9WriteBoolEb:
.LFB14:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movzbl	color, %ebx
	cmpb	$0, 32(%esp)
	jne	.L77
	movl	$.LC2, (%esp)
	movb	$4, color
	call	_ZN11DisplayText11WriteStringEPKc
	movb	%bl, color
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.align 16
.L77:
	.cfi_restore_state
	movl	$.LC1, (%esp)
	movb	$2, color
	call	_ZN11DisplayText11WriteStringEPKc
	movb	%bl, color
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE14:
	.size	_ZN11DisplayText9WriteBoolEb, .-_ZN11DisplayText9WriteBoolEb
	.section	.rodata.str1.1
.LC3:
	.string	"Pass"
.LC4:
	.string	"Fail"
	.text
	.align 2
	.align 16
	.globl	_ZN11DisplayText15WritePassOrFailEb
	.type	_ZN11DisplayText15WritePassOrFailEb, @function
_ZN11DisplayText15WritePassOrFailEb:
.LFB15:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movzbl	color, %ebx
	cmpb	$0, 32(%esp)
	jne	.L82
	movl	$.LC4, (%esp)
	movb	$4, color
	call	_ZN11DisplayText11WriteStringEPKc
	movb	%bl, color
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.align 16
.L82:
	.cfi_restore_state
	movl	$.LC3, (%esp)
	movb	$2, color
	call	_ZN11DisplayText11WriteStringEPKc
	movb	%bl, color
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN11DisplayText15WritePassOrFailEb, .-_ZN11DisplayText15WritePassOrFailEb
	.globl	buffer
	.section	.bss
	.align 4
	.type	buffer, @object
	.size	buffer, 4
buffer:
	.zero	4
	.globl	color
	.type	color, @object
	.size	color, 1
color:
	.zero	1
	.globl	column
	.align 4
	.type	column, @object
	.size	column, 4
column:
	.zero	4
	.globl	row
	.align 4
	.type	row, @object
	.size	row, 4
row:
	.zero	4
	.data
	.align 4
	.type	_ZL9VGA_WIDTH, @object
	.size	_ZL9VGA_WIDTH, 4
_ZL9VGA_WIDTH:
	.long	80
	.ident	"GCC: (GNU) 4.8.2"
