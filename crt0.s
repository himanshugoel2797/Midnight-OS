	.file	"crt0.cpp"
	.text
	.align 16
	.globl	InterruptsTest
	.type	InterruptsTest, @function
InterruptsTest:
.LFB1:
	.cfi_startproc
	movb	$1, temp
	ret
	.cfi_endproc
.LFE1:
	.size	InterruptsTest, .-InterruptsTest
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Checking Multiboot header..."
.LC1:
	.string	"\nDetecting Memory..."
.LC2:
	.string	"Available Memory = "
.LC3:
	.string	" MB"
.LC4:
	.string	"\nSetting up GDT..."
.LC5:
	.string	"Done"
.LC6:
	.string	"\nSetting up IDT..."
.LC7:
	.string	"\nInitializing Core..."
.LC8:
	.string	"\nInitializing HAL..."
	.text
	.align 16
	.globl	setup_kernel_core
	.type	setup_kernel_core, @function
setup_kernel_core:
.LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	movl	32(%esp), %ebx
	call	_ZN6Tables10InitializeEv
	call	_ZN11DisplayText10InitializeEv
	movl	$.LC0, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	xorl	%eax, %eax
	cmpl	$732803074, 36(%esp)
	sete	%al
	movl	%eax, (%esp)
	call	_ZN11DisplayText15WritePassOrFailEb
	movl	$.LC1, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	testb	$1, (%ebx)
	jne	.L7
	movl	$0, (%esp)
	call	_ZN11DisplayText15WritePassOrFailEb
.L4:
	movl	$.LC4, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$.LC5, (%esp)
	call	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	movl	$.LC6, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$.LC5, (%esp)
	call	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	movl	$.LC7, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	call	_ZN4Core10InitializeEv
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$.LC5, (%esp)
	call	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	movl	$.LC8, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	call	_ZN3HAL10InitializeEv
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$.LC5, (%esp)
	call	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	addl	$24, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.align 16
.L7:
	.cfi_restore_state
	movl	$.LC2, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	4(%ebx), %eax
	addl	8(%ebx), %eax
	shrl	$10, %eax
	movl	%eax, (%esp)
	call	_ZN11DisplayText8WriteIntEl
	movl	$.LC3, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	jmp	.L4
	.cfi_endproc
.LFE0:
	.size	setup_kernel_core, .-setup_kernel_core
	.section	.rodata.str1.1
.LC9:
	.string	"\nMidnight OS..."
.LC10:
	.string	"\nCPUID: "
.LC11:
	.string	"\nHas APIC: "
.LC12:
	.string	"\nTesting Interrupts..."
.LC13:
	.string	" "
	.text
	.align 16
	.globl	kernel_main
	.type	kernel_main, @function
kernel_main:
.LFB2:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	call	_ZN5CPUID17EnumerateFeaturesEv
	movl	$.LC9, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$.LC5, (%esp)
	call	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	movl	$.LC10, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$0, (%esp)
	call	_ZN5CPUID11MakeRequestENS_14CPUID_RequestsE
	movl	%eax, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$.LC11, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$512, (%esp)
	call	_ZN5CPUID10HasFeatureENS_16CPU_EDX_FeaturesE
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_ZN11DisplayText9WriteBoolEb
	movl	$.LC12, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$InterruptsTest, 4(%esp)
	movl	$1, (%esp)
	call	_ZN17InterruptHandlers24RegisterInterruptHandlerElPFvlE
/APP
/  79 "crt0.cpp" 1
	int $0x1
/  0 "" 2
/NO_APP
	movzbl	temp, %eax
	movl	$1, %ebx
	movl	%eax, (%esp)
	call	_ZN11DisplayText15WritePassOrFailEb
	movl	$1, (%esp)
	call	_ZN17InterruptHandlers26UnregisterInterruptHandlerEl
	.align 16
.L10:
	movsbl	(%ebx), %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	_ZN11DisplayText8WriteHexEl
	movl	$.LC13, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	cmpl	$256, %ebx
	jne	.L10
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE2:
	.size	kernel_main, .-kernel_main
	.globl	temp
	.section	.bss
	.type	temp, @object
	.size	temp, 1
temp:
	.zero	1
	.ident	"GCC: (GNU) 4.8.2"
