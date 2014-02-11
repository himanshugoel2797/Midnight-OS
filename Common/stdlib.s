	.file	"stdlib.cpp"
	.text
	.align 16
	.globl	_Z4itoaiPci
	.type	_Z4itoaiPci, @function
_Z4itoaiPci:
.LFB0:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	subl	$32, %esp
	.cfi_def_cfa_offset 44
	movl	52(%esp), %ebx
	movl	44(%esp), %eax
	movl	48(%esp), %esi
	movl	$858927408, 15(%esp)
	cmpl	$10, %ebx
	movl	$926299444, 19(%esp)
	movl	$1111570744, 23(%esp)
	movl	$1178944579, 27(%esp)
	movb	$0, 31(%esp)
	jne	.L9
	movl	%eax, %edx
	shrl	$31, %edx
	testb	%dl, %dl
	jne	.L18
.L9:
	movl	%esi, %ecx
	jmp	.L4
	.align 16
.L19:
	movl	%edx, %ecx
.L4:
	cltd
	idivl	%ebx
	movzbl	15(%esp,%edx), %edx
	testl	%eax, %eax
	movb	%dl, (%ecx)
	leal	1(%ecx), %edx
	jne	.L19
	movb	$0, (%edx)
	xorl	%edx, %edx
	cmpb	$45, (%esi)
	sete	%dl
	addl	%esi, %edx
	cmpl	%ecx, %edx
	jae	.L12
	.align 16
.L14:
	movzbl	(%edx), %ebx
	subl	$1, %ecx
	addl	$1, %edx
	movzbl	1(%ecx), %eax
	movb	%al, -1(%edx)
	movb	%bl, 1(%ecx)
	cmpl	%ecx, %edx
	jb	.L14
.L12:
	addl	$32, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 12
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.align 16
.L18:
	.cfi_restore_state
	movb	$45, (%esi)
	leal	1(%esi), %ecx
	negl	%eax
	jmp	.L4
	.cfi_endproc
.LFE0:
	.size	_Z4itoaiPci, .-_Z4itoaiPci
	.ident	"GCC: (GNU) 4.8.2"
