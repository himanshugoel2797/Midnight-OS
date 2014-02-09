	.file	"HAL_PIC.cpp"
	.text
	.align 2
	.align 16
	.globl	_ZN3HAL10InitializeEv
	.type	_ZN3HAL10InitializeEv, @function
_ZN3HAL10InitializeEv:
.LFB0:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	movl	$17, 4(%esp)
	movl	$32, (%esp)
	call	_ZN4Core7OutByteEth
	movl	$17, 4(%esp)
	movl	$160, (%esp)
	call	_ZN4Core7OutByteEth
	movl	$32, 4(%esp)
	movl	$33, (%esp)
	call	_ZN4Core7OutByteEth
	movl	$40, 4(%esp)
	movl	$161, (%esp)
	call	_ZN4Core7OutByteEth
	movl	$4, 4(%esp)
	movl	$33, (%esp)
	call	_ZN4Core7OutByteEth
	movl	$2, 4(%esp)
	movl	$161, (%esp)
	call	_ZN4Core7OutByteEth
	movl	$1, 4(%esp)
	movl	$33, (%esp)
	call	_ZN4Core7OutByteEth
	movl	$0, 4(%esp)
	movl	$161, (%esp)
	call	_ZN4Core7OutByteEth
	movl	$0, 4(%esp)
	movl	$33, (%esp)
	call	_ZN4Core7OutByteEth
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN3HAL10InitializeEv, .-_ZN3HAL10InitializeEv
	.ident	"GCC: (GNU) 4.8.2"
