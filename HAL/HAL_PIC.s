	.file	"HAL_PIC.cpp"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB0:
	.text
.LHOTB0:
	.align 2
	.align 16
	.globl	_ZN3HAL10InitializeEv
	.type	_ZN3HAL10InitializeEv, @function
_ZN3HAL10InitializeEv:
.LFB0:
	.cfi_startproc
	subl	$20, %esp
	.cfi_def_cfa_offset 24
	pushl	$17
	.cfi_def_cfa_offset 28
	pushl	$32
	.cfi_def_cfa_offset 32
	call	_ZN4Core7OutByteEth
	popl	%eax
	.cfi_def_cfa_offset 28
	popl	%edx
	.cfi_def_cfa_offset 24
	pushl	$17
	.cfi_def_cfa_offset 28
	pushl	$160
	.cfi_def_cfa_offset 32
	call	_ZN4Core7OutByteEth
	popl	%ecx
	.cfi_def_cfa_offset 28
	popl	%eax
	.cfi_def_cfa_offset 24
	pushl	$32
	.cfi_def_cfa_offset 28
	pushl	$33
	.cfi_def_cfa_offset 32
	call	_ZN4Core7OutByteEth
	popl	%eax
	.cfi_def_cfa_offset 28
	popl	%edx
	.cfi_def_cfa_offset 24
	pushl	$40
	.cfi_def_cfa_offset 28
	pushl	$161
	.cfi_def_cfa_offset 32
	call	_ZN4Core7OutByteEth
	popl	%ecx
	.cfi_def_cfa_offset 28
	popl	%eax
	.cfi_def_cfa_offset 24
	pushl	$4
	.cfi_def_cfa_offset 28
	pushl	$33
	.cfi_def_cfa_offset 32
	call	_ZN4Core7OutByteEth
	popl	%eax
	.cfi_def_cfa_offset 28
	popl	%edx
	.cfi_def_cfa_offset 24
	pushl	$2
	.cfi_def_cfa_offset 28
	pushl	$161
	.cfi_def_cfa_offset 32
	call	_ZN4Core7OutByteEth
	popl	%ecx
	.cfi_def_cfa_offset 28
	popl	%eax
	.cfi_def_cfa_offset 24
	pushl	$1
	.cfi_def_cfa_offset 28
	pushl	$33
	.cfi_def_cfa_offset 32
	call	_ZN4Core7OutByteEth
	popl	%eax
	.cfi_def_cfa_offset 28
	popl	%edx
	.cfi_def_cfa_offset 24
	pushl	$0
	.cfi_def_cfa_offset 28
	pushl	$161
	.cfi_def_cfa_offset 32
	call	_ZN4Core7OutByteEth
	popl	%ecx
	.cfi_def_cfa_offset 28
	popl	%eax
	.cfi_def_cfa_offset 24
	pushl	$0
	.cfi_def_cfa_offset 28
	pushl	$33
	.cfi_def_cfa_offset 32
	call	_ZN4Core7OutByteEth
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN3HAL10InitializeEv, .-_ZN3HAL10InitializeEv
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.ident	"GCC: (GNU) 4.9.2"
