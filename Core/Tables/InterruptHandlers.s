	.file	"InterruptHandlers.cpp"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB0:
	.text
.LHOTB0:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers10InitializeEv
	.type	_ZN17InterruptHandlers10InitializeEv, @function
_ZN17InterruptHandlers10InitializeEv:
.LFB27:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	pushl	$1024
	.cfi_def_cfa_offset 24
	pushl	$0
	.cfi_def_cfa_offset 28
	pushl	$handlers
	.cfi_def_cfa_offset 32
	call	memset
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	jmp	_ZN6Tables8IDT_InitEv
	.cfi_endproc
.LFE27:
	.size	_ZN17InterruptHandlers10InitializeEv, .-_ZN17InterruptHandlers10InitializeEv
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
	.align 2
.LCOLDB1:
	.text
.LHOTB1:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers24RegisterInterruptHandlerElPFvlE
	.type	_ZN17InterruptHandlers24RegisterInterruptHandlerElPFvlE, @function
_ZN17InterruptHandlers24RegisterInterruptHandlerElPFvlE:
.LFB28:
	.cfi_startproc
	movl	8(%esp), %edx
	movl	4(%esp), %eax
	movl	%edx, handlers(,%eax,4)
	ret
	.cfi_endproc
.LFE28:
	.size	_ZN17InterruptHandlers24RegisterInterruptHandlerElPFvlE, .-_ZN17InterruptHandlers24RegisterInterruptHandlerElPFvlE
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
	.align 2
.LCOLDB2:
	.text
.LHOTB2:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers26UnregisterInterruptHandlerEl
	.type	_ZN17InterruptHandlers26UnregisterInterruptHandlerEl, @function
_ZN17InterruptHandlers26UnregisterInterruptHandlerEl:
.LFB29:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	$0, handlers(,%eax,4)
	ret
	.cfi_endproc
.LFE29:
	.size	_ZN17InterruptHandlers26UnregisterInterruptHandlerEl, .-_ZN17InterruptHandlers26UnregisterInterruptHandlerEl
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"\nInterrupt Received : "
.LC4:
	.string	"\n"
	.section	.text.unlikely
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers16InterruptHandlerEh
	.type	_ZN17InterruptHandlers16InterruptHandlerEh, @function
_ZN17InterruptHandlers16InterruptHandlerEh:
.LFB30:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$8, %esp
	.cfi_def_cfa_offset 16
	movzbl	16(%esp), %ebx
	movl	handlers(,%ebx,4), %eax
	testl	%eax, %eax
	je	.L9
	movl	%ebx, 16(%esp)
	addl	$8, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	*%eax
	.align 16
.L9:
	.cfi_restore_state
	subl	$12, %esp
	.cfi_def_cfa_offset 28
	pushl	$.LC3
	.cfi_def_cfa_offset 32
	call	_ZN11DisplayText11WriteStringEPKc
	movl	%ebx, (%esp)
	call	_ZN11DisplayText8WriteIntEl
	movl	$.LC4, 32(%esp)
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	jmp	_ZN11DisplayText11WriteStringEPKc
	.cfi_endproc
.LFE30:
	.size	_ZN17InterruptHandlers16InterruptHandlerEh, .-_ZN17InterruptHandlers16InterruptHandlerEh
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
	.align 2
.LCOLDB6:
	.text
.LHOTB6:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers11isrNOPARAM0Ev
	.type	_ZN17InterruptHandlers11isrNOPARAM0Ev, @function
_ZN17InterruptHandlers11isrNOPARAM0Ev:
.LFB0:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  13 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$0
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN17InterruptHandlers11isrNOPARAM0Ev, .-_ZN17InterruptHandlers11isrNOPARAM0Ev
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
	.align 2
.LCOLDB7:
	.text
.LHOTB7:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers11isrNOPARAM1Ev
	.type	_ZN17InterruptHandlers11isrNOPARAM1Ev, @function
_ZN17InterruptHandlers11isrNOPARAM1Ev:
.LFB1:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  18 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$1
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN17InterruptHandlers11isrNOPARAM1Ev, .-_ZN17InterruptHandlers11isrNOPARAM1Ev
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
	.align 2
.LCOLDB8:
	.text
.LHOTB8:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers11isrNOPARAM2Ev
	.type	_ZN17InterruptHandlers11isrNOPARAM2Ev, @function
_ZN17InterruptHandlers11isrNOPARAM2Ev:
.LFB2:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  23 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$0
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN17InterruptHandlers11isrNOPARAM2Ev, .-_ZN17InterruptHandlers11isrNOPARAM2Ev
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
	.align 2
.LCOLDB9:
	.text
.LHOTB9:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers11isrNOPARAM3Ev
	.type	_ZN17InterruptHandlers11isrNOPARAM3Ev, @function
_ZN17InterruptHandlers11isrNOPARAM3Ev:
.LFB3:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  28 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$3
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN17InterruptHandlers11isrNOPARAM3Ev, .-_ZN17InterruptHandlers11isrNOPARAM3Ev
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
	.align 2
.LCOLDB10:
	.text
.LHOTB10:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers11isrNOPARAM4Ev
	.type	_ZN17InterruptHandlers11isrNOPARAM4Ev, @function
_ZN17InterruptHandlers11isrNOPARAM4Ev:
.LFB4:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  33 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$4
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN17InterruptHandlers11isrNOPARAM4Ev, .-_ZN17InterruptHandlers11isrNOPARAM4Ev
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
	.align 2
.LCOLDB11:
	.text
.LHOTB11:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers11isrNOPARAM5Ev
	.type	_ZN17InterruptHandlers11isrNOPARAM5Ev, @function
_ZN17InterruptHandlers11isrNOPARAM5Ev:
.LFB5:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  38 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$5
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE5:
	.size	_ZN17InterruptHandlers11isrNOPARAM5Ev, .-_ZN17InterruptHandlers11isrNOPARAM5Ev
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
	.align 2
.LCOLDB12:
	.text
.LHOTB12:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers11isrNOPARAM6Ev
	.type	_ZN17InterruptHandlers11isrNOPARAM6Ev, @function
_ZN17InterruptHandlers11isrNOPARAM6Ev:
.LFB6:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  42 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$6
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE6:
	.size	_ZN17InterruptHandlers11isrNOPARAM6Ev, .-_ZN17InterruptHandlers11isrNOPARAM6Ev
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
	.align 2
.LCOLDB13:
	.text
.LHOTB13:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers11isrNOPARAM7Ev
	.type	_ZN17InterruptHandlers11isrNOPARAM7Ev, @function
_ZN17InterruptHandlers11isrNOPARAM7Ev:
.LFB7:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  47 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$7
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE7:
	.size	_ZN17InterruptHandlers11isrNOPARAM7Ev, .-_ZN17InterruptHandlers11isrNOPARAM7Ev
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
	.align 2
.LCOLDB14:
	.text
.LHOTB14:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers11isrNOPARAM9Ev
	.type	_ZN17InterruptHandlers11isrNOPARAM9Ev, @function
_ZN17InterruptHandlers11isrNOPARAM9Ev:
.LFB8:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  52 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$9
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE8:
	.size	_ZN17InterruptHandlers11isrNOPARAM9Ev, .-_ZN17InterruptHandlers11isrNOPARAM9Ev
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
	.align 2
.LCOLDB15:
	.text
.LHOTB15:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM15Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM15Ev, @function
_ZN17InterruptHandlers12isrNOPARAM15Ev:
.LFB9:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  57 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$15
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE9:
	.size	_ZN17InterruptHandlers12isrNOPARAM15Ev, .-_ZN17InterruptHandlers12isrNOPARAM15Ev
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
	.align 2
.LCOLDB16:
	.text
.LHOTB16:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM16Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM16Ev, @function
_ZN17InterruptHandlers12isrNOPARAM16Ev:
.LFB10:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  61 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$16
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE10:
	.size	_ZN17InterruptHandlers12isrNOPARAM16Ev, .-_ZN17InterruptHandlers12isrNOPARAM16Ev
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
	.align 2
.LCOLDB17:
	.text
.LHOTB17:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM17Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM17Ev, @function
_ZN17InterruptHandlers12isrNOPARAM17Ev:
.LFB11:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  66 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$17
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE11:
	.size	_ZN17InterruptHandlers12isrNOPARAM17Ev, .-_ZN17InterruptHandlers12isrNOPARAM17Ev
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely
	.align 2
.LCOLDB18:
	.text
.LHOTB18:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM18Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM18Ev, @function
_ZN17InterruptHandlers12isrNOPARAM18Ev:
.LFB12:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  70 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$18
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE12:
	.size	_ZN17InterruptHandlers12isrNOPARAM18Ev, .-_ZN17InterruptHandlers12isrNOPARAM18Ev
	.section	.text.unlikely
.LCOLDE18:
	.text
.LHOTE18:
	.section	.text.unlikely
	.align 2
.LCOLDB19:
	.text
.LHOTB19:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM19Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM19Ev, @function
_ZN17InterruptHandlers12isrNOPARAM19Ev:
.LFB13:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  75 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$19
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE13:
	.size	_ZN17InterruptHandlers12isrNOPARAM19Ev, .-_ZN17InterruptHandlers12isrNOPARAM19Ev
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
	.align 2
.LCOLDB20:
	.text
.LHOTB20:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM20Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM20Ev, @function
_ZN17InterruptHandlers12isrNOPARAM20Ev:
.LFB14:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  79 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$20
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE14:
	.size	_ZN17InterruptHandlers12isrNOPARAM20Ev, .-_ZN17InterruptHandlers12isrNOPARAM20Ev
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely
	.align 2
.LCOLDB21:
	.text
.LHOTB21:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM21Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM21Ev, @function
_ZN17InterruptHandlers12isrNOPARAM21Ev:
.LFB15:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  84 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$21
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE15:
	.size	_ZN17InterruptHandlers12isrNOPARAM21Ev, .-_ZN17InterruptHandlers12isrNOPARAM21Ev
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.section	.text.unlikely
	.align 2
.LCOLDB22:
	.text
.LHOTB22:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM22Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM22Ev, @function
_ZN17InterruptHandlers12isrNOPARAM22Ev:
.LFB16:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  88 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$22
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE16:
	.size	_ZN17InterruptHandlers12isrNOPARAM22Ev, .-_ZN17InterruptHandlers12isrNOPARAM22Ev
	.section	.text.unlikely
.LCOLDE22:
	.text
.LHOTE22:
	.section	.text.unlikely
	.align 2
.LCOLDB23:
	.text
.LHOTB23:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM23Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM23Ev, @function
_ZN17InterruptHandlers12isrNOPARAM23Ev:
.LFB17:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  93 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$23
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE17:
	.size	_ZN17InterruptHandlers12isrNOPARAM23Ev, .-_ZN17InterruptHandlers12isrNOPARAM23Ev
	.section	.text.unlikely
.LCOLDE23:
	.text
.LHOTE23:
	.section	.text.unlikely
	.align 2
.LCOLDB24:
	.text
.LHOTB24:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM24Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM24Ev, @function
_ZN17InterruptHandlers12isrNOPARAM24Ev:
.LFB18:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  97 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$24
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE18:
	.size	_ZN17InterruptHandlers12isrNOPARAM24Ev, .-_ZN17InterruptHandlers12isrNOPARAM24Ev
	.section	.text.unlikely
.LCOLDE24:
	.text
.LHOTE24:
	.section	.text.unlikely
	.align 2
.LCOLDB25:
	.text
.LHOTB25:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM25Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM25Ev, @function
_ZN17InterruptHandlers12isrNOPARAM25Ev:
.LFB19:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  102 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$25
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE19:
	.size	_ZN17InterruptHandlers12isrNOPARAM25Ev, .-_ZN17InterruptHandlers12isrNOPARAM25Ev
	.section	.text.unlikely
.LCOLDE25:
	.text
.LHOTE25:
	.section	.text.unlikely
	.align 2
.LCOLDB26:
	.text
.LHOTB26:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM26Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM26Ev, @function
_ZN17InterruptHandlers12isrNOPARAM26Ev:
.LFB20:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  106 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$26
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE20:
	.size	_ZN17InterruptHandlers12isrNOPARAM26Ev, .-_ZN17InterruptHandlers12isrNOPARAM26Ev
	.section	.text.unlikely
.LCOLDE26:
	.text
.LHOTE26:
	.section	.text.unlikely
	.align 2
.LCOLDB27:
	.text
.LHOTB27:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM27Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM27Ev, @function
_ZN17InterruptHandlers12isrNOPARAM27Ev:
.LFB21:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  111 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$27
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE21:
	.size	_ZN17InterruptHandlers12isrNOPARAM27Ev, .-_ZN17InterruptHandlers12isrNOPARAM27Ev
	.section	.text.unlikely
.LCOLDE27:
	.text
.LHOTE27:
	.section	.text.unlikely
	.align 2
.LCOLDB28:
	.text
.LHOTB28:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM28Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM28Ev, @function
_ZN17InterruptHandlers12isrNOPARAM28Ev:
.LFB22:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  115 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$28
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE22:
	.size	_ZN17InterruptHandlers12isrNOPARAM28Ev, .-_ZN17InterruptHandlers12isrNOPARAM28Ev
	.section	.text.unlikely
.LCOLDE28:
	.text
.LHOTE28:
	.section	.text.unlikely
	.align 2
.LCOLDB29:
	.text
.LHOTB29:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM29Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM29Ev, @function
_ZN17InterruptHandlers12isrNOPARAM29Ev:
.LFB23:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  120 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$29
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE23:
	.size	_ZN17InterruptHandlers12isrNOPARAM29Ev, .-_ZN17InterruptHandlers12isrNOPARAM29Ev
	.section	.text.unlikely
.LCOLDE29:
	.text
.LHOTE29:
	.section	.text.unlikely
	.align 2
.LCOLDB30:
	.text
.LHOTB30:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM30Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM30Ev, @function
_ZN17InterruptHandlers12isrNOPARAM30Ev:
.LFB24:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  124 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$30
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE24:
	.size	_ZN17InterruptHandlers12isrNOPARAM30Ev, .-_ZN17InterruptHandlers12isrNOPARAM30Ev
	.section	.text.unlikely
.LCOLDE30:
	.text
.LHOTE30:
	.section	.text.unlikely
	.align 2
.LCOLDB31:
	.text
.LHOTB31:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers12isrNOPARAM31Ev
	.type	_ZN17InterruptHandlers12isrNOPARAM31Ev, @function
_ZN17InterruptHandlers12isrNOPARAM31Ev:
.LFB25:
	.cfi_startproc
	subl	$24, %esp
	.cfi_def_cfa_offset 28
/APP
/  129 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	pushl	$31
	.cfi_def_cfa_offset 32
	call	_ZN17InterruptHandlers16InterruptHandlerEh
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE25:
	.size	_ZN17InterruptHandlers12isrNOPARAM31Ev, .-_ZN17InterruptHandlers12isrNOPARAM31Ev
	.section	.text.unlikely
.LCOLDE31:
	.text
.LHOTE31:
	.section	.text.unlikely
	.align 2
.LCOLDB32:
	.text
.LHOTB32:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers11isrONEPARAMEh
	.type	_ZN17InterruptHandlers11isrONEPARAMEh, @function
_ZN17InterruptHandlers11isrONEPARAMEh:
.LFB26:
	.cfi_startproc
/APP
/  134 "Core/Tables/InterruptHandlers.cpp" 1
	cli
/  0 "" 2
/NO_APP
	movzbl	4(%esp), %eax
	movl	%eax, 4(%esp)
	jmp	_ZN17InterruptHandlers16InterruptHandlerEh
	.cfi_endproc
.LFE26:
	.size	_ZN17InterruptHandlers11isrONEPARAMEh, .-_ZN17InterruptHandlers11isrONEPARAMEh
	.section	.text.unlikely
.LCOLDE32:
	.text
.LHOTE32:
	.section	.text.unlikely
	.align 2
.LCOLDB33:
	.text
.LHOTB33:
	.align 2
	.align 16
	.globl	_ZN17InterruptHandlers6UpdateEv
	.type	_ZN17InterruptHandlers6UpdateEv, @function
_ZN17InterruptHandlers6UpdateEv:
.LFB31:
	.cfi_startproc
	jmp	_ZN6Tables8IDT_InitEv
	.cfi_endproc
.LFE31:
	.size	_ZN17InterruptHandlers6UpdateEv, .-_ZN17InterruptHandlers6UpdateEv
	.section	.text.unlikely
.LCOLDE33:
	.text
.LHOTE33:
	.globl	handlers
	.section	.bss
	.align 64
	.type	handlers, @object
	.size	handlers, 1024
handlers:
	.zero	1024
	.ident	"GCC: (GNU) 4.9.2"
