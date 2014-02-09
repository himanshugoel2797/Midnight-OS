	.file	"mem.cpp"
	.text
	.align 16
	.globl	memset
	.type	memset, @function
memset:
.LFB0:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	20(%esp), %esi
	movl	12(%esp), %eax
	movzbl	16(%esp), %ebx
	testl	%esi, %esi
	leal	(%eax,%esi), %ecx
	movl	%eax, %edx
	je	.L5
	.align 16
.L6:
	addl	$1, %edx
	cmpl	%ecx, %edx
	movb	%bl, -1(%edx)
	jne	.L6
.L5:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	memset, .-memset
	.align 16
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB1:
	.cfi_startproc
	pushl	%esi
	.cfi_def_cfa_offset 8
	.cfi_offset 6, -8
	xorl	%edx, %edx
	pushl	%ebx
	.cfi_def_cfa_offset 12
	.cfi_offset 3, -12
	movl	20(%esp), %ebx
	movl	12(%esp), %eax
	movl	16(%esp), %esi
	testl	%ebx, %ebx
	je	.L13
	.align 16
.L14:
	movzbl	(%esi,%edx), %ecx
	movb	%cl, (%eax,%edx)
	addl	$1, %edx
	cmpl	%ebx, %edx
	jne	.L14
.L13:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	memcpy, .-memcpy
	.ident	"GCC: (GNU) 4.8.2"
