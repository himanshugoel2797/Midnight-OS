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
	movl	$0, row
	xorl	%ecx, %ecx
	movl	$0, column
	movb	$7, color
	movl	$753664, buffer
	.align 16
.L9:
	xorl	%eax, %eax
	.align 16
.L12:
	leal	(%ecx,%eax), %edx
	addl	$1, %eax
	cmpl	$80, %eax
	movw	$1824, 753664(%edx,%edx)
	jne	.L12
	addl	$80, %ecx
	cmpl	$1920, %ecx
	jne	.L9
	rep ret
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
	movl	16(%esp), %eax
	movsbw	4(%esp), %dx
	sall	$8, %ecx
	leal	(%eax,%eax,4), %eax
	orl	%ecx, %edx
	movl	buffer, %ecx
	sall	$4, %eax
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
	movzbl	color, %ecx
	movl	buffer, %eax
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	sall	$8, %ecx
	orl	$32, %ecx
	leal	3840(%eax), %ebx
	.align 16
.L16:
	leal	160(%eax), %edx
	.align 16
.L19:
	movw	%cx, (%eax)
	addl	$2, %eax
	cmpl	%edx, %eax
	jne	.L19
	cmpl	%ebx, %eax
	jne	.L16
	popl	%ebx
	.cfi_restore 3
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
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$80, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	buffer, %ebx
	leal	160(%ebx), %eax
	.align 16
.L22:
	leal	160(%eax), %ecx
	.align 16
.L25:
	movzwl	(%eax), %edx
	addl	$2, %eax
	movw	%dx, -162(%eax)
	cmpl	%ecx, %eax
	jne	.L25
	addl	$80, %esi
	cmpl	$1920, %esi
	jne	.L22
	movzbl	color, %edx
	xorl	%eax, %eax
	sall	$8, %edx
	orl	$32, %edx
	.align 16
.L27:
	movw	%dx, 3840(%ebx,%eax,2)
	addl	$1, %eax
	cmpl	$80, %eax
	jne	.L27
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	movl	$0, column
	movl	$24, row
	popl	%esi
	.cfi_restore 6
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
	movl	_ZN10GlobalData3BDAE, %edx
	movl	36(%esp), %ebx
	movzbl	100(%edx), %eax
	movzbl	99(%edx), %esi
	leal	(%ebx,%ebx,4), %ebx
	sall	$4, %ebx
	addw	32(%esp), %bx
	sall	$8, %eax
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
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	12(%esp), %eax
	cmpb	$10, %al
	je	.L41
	movl	row, %ecx
	cbtw
	movl	column, %ebx
	leal	(%ecx,%ecx,4), %edx
	sall	$4, %edx
	leal	(%edx,%ebx), %esi
	movzbl	color, %edx
	sall	$8, %edx
	orl	%edx, %eax
	movl	buffer, %edx
	movw	%ax, (%edx,%esi,2)
	leal	1(%ebx), %eax
	cmpl	$80, %eax
	movl	%eax, column
	je	.L42
.L31:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.align 16
.L42:
	.cfi_restore_state
	addl	$1, %ecx
	cmpl	$24, %ecx
	movl	$0, column
	movl	%ecx, row
	jne	.L31
.L33:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	jmp	_ZN11DisplayText8ScrollUpEv
	.align 16
.L41:
	.cfi_restore_state
	movl	row, %eax
	movl	$80, column
	addl	$1, %eax
	cmpl	$23, %eax
	movl	%eax, row
	ja	.L33
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
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
	je	.L47
	.align 16
.L49:
	addl	$1, %eax
	cmpb	$0, (%ebx,%eax)
	jne	.L49
	leal	(%ebx,%eax), %esi
	.align 16
.L48:
	movsbl	(%ebx), %edx
	addl	$1, %ebx
	movl	%edx, (%esp)
	call	_ZN11DisplayText7PutCharEc
	cmpl	%esi, %ebx
	jne	.L48
.L47:
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
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$9, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %eax
	movb	$0, 31(%esp)
	jmp	.L56
	.align 16
.L64:
	addl	$48, %edx
	testl	%eax, %eax
	movb	%dl, 21(%esp,%ebx)
	leal	15(%eax), %edx
	cmovs	%edx, %eax
	sarl	$4, %eax
	subl	$1, %ebx
	js	.L55
.L65:
	testl	%eax, %eax
	jle	.L55
.L56:
	movl	%eax, %ecx
	sarl	$31, %ecx
	shrl	$28, %ecx
	leal	(%eax,%ecx), %edx
	andl	$15, %edx
	subl	%ecx, %edx
	cmpl	$9, %edx
	jle	.L64
	addl	$55, %edx
	testl	%eax, %eax
	movb	%dl, 21(%esp,%ebx)
	leal	15(%eax), %edx
	cmovs	%edx, %eax
	sarl	$4, %eax
	subl	$1, %ebx
	jns	.L65
.L55:
	leal	21(%esp), %esi
	testl	%ebx, %ebx
	leal	1(%esi,%ebx), %eax
	cmovne	%eax, %esi
	movl	$.LC0, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	%esi, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	addl	$36, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
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
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	movl	$1717986919, %esi
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	$9, %ebx
	subl	$36, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %ecx
	movb	$0, 31(%esp)
	jmp	.L68
	.align 16
.L76:
	testl	%edx, %edx
	jle	.L67
.L68:
	movl	%ecx, %eax
	imull	%esi
	movl	%ecx, %eax
	sarl	$31, %eax
	sarl	$2, %edx
	subl	%eax, %edx
	leal	(%edx,%edx,4), %eax
	addl	%eax, %eax
	subl	%eax, %ecx
	addl	$48, %ecx
	movb	%cl, 21(%esp,%ebx)
	subl	$1, %ebx
	movl	%edx, %ecx
	jns	.L76
.L67:
	leal	21(%esp), %eax
	testl	%ebx, %ebx
	leal	1(%eax,%ebx), %edx
	cmovne	%edx, %eax
	movl	%eax, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	addl	$36, %esp
	.cfi_def_cfa_offset 12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
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
	jne	.L83
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
.L83:
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
	jne	.L88
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
.L88:
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
	.ident	"GCC: (GNU) 4.8.2"
