	.file	"Core.cpp"
	.text
	.align 2
	.align 16
	.globl	_ZN4Core10InitializeEv
	.type	_ZN4Core10InitializeEv, @function
_ZN4Core10InitializeEv:
.LFB0:
	.cfi_startproc
	movl	$1024, _ZN10GlobalData3BDAE
	jmp	_ZN5CPUID17EnumerateFeaturesEv
	.cfi_endproc
.LFE0:
	.size	_ZN4Core10InitializeEv, .-_ZN4Core10InitializeEv
	.align 2
	.align 16
	.globl	_ZN4Core7OutByteEth
	.type	_ZN4Core7OutByteEth, @function
_ZN4Core7OutByteEth:
.LFB1:
	.cfi_startproc
	movl	8(%esp), %eax
	movl	4(%esp), %edx
/APP
/  21 "Core/Core.cpp" 1
	outb %al, %dx
/  0 "" 2
/NO_APP
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN4Core7OutByteEth, .-_ZN4Core7OutByteEth
	.align 2
	.align 16
	.globl	_ZN4Core6InWordEt
	.type	_ZN4Core6InWordEt, @function
_ZN4Core6InWordEt:
.LFB2:
	.cfi_startproc
	movl	4(%esp), %edx
/APP
/  27 "Core/Core.cpp" 1
	inw %dx, %ax
/  0 "" 2
/NO_APP
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN4Core6InWordEt, .-_ZN4Core6InWordEt
	.align 2
	.align 16
	.globl	_ZN4Core6InByteEt
	.type	_ZN4Core6InByteEt, @function
_ZN4Core6InByteEt:
.LFB3:
	.cfi_startproc
	movl	4(%esp), %edx
/APP
/  34 "Core/Core.cpp" 1
	inb %dx, %al
/  0 "" 2
/NO_APP
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN4Core6InByteEt, .-_ZN4Core6InByteEt
	.globl	_ZN10GlobalData3BDAE
	.section	.bss
	.align 4
	.type	_ZN10GlobalData3BDAE, @object
	.size	_ZN10GlobalData3BDAE, 4
_ZN10GlobalData3BDAE:
	.zero	4
	.ident	"GCC: (GNU) 4.8.2"
