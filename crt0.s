	.file	"crt0.cpp"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"\nSetting up GDT..."
.LC1:
	.string	"Done"
.LC2:
	.string	"\nSetting up IDT..."
.LC3:
	.string	"\nInitializing Core..."
.LC4:
	.string	"\nInitializing HAL..."
	.text
	.align 16
	.globl	setup_kernel_core
	.type	setup_kernel_core, @function
setup_kernel_core:
.LFB0:
	.cfi_startproc
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	call	_ZN6Tables10InitializeEv
	call	_ZN11DisplayText10InitializeEv
	movl	$.LC0, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$.LC1, (%esp)
	call	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	movl	$.LC2, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$.LC1, (%esp)
	call	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	movl	$.LC3, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	call	_ZN4Core10InitializeEv
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$.LC1, (%esp)
	call	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	movl	$.LC4, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	call	_ZN3HAL10InitializeEv
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$.LC1, (%esp)
	call	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	setup_kernel_core, .-setup_kernel_core
	.section	.rodata.str1.1
.LC5:
	.string	"\nMidnight OS..."
.LC6:
	.string	"\nCPUID: "
.LC7:
	.string	"\nHas APIC: "
.LC8:
	.string	" "
	.text
	.align 16
	.globl	kernel_main
	.type	kernel_main, @function
kernel_main:
.LFB1:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	call	_ZN5CPUID17EnumerateFeaturesEv
	movl	$.LC5, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$0, 8(%esp)
	movl	$2, 4(%esp)
	movl	$.LC1, (%esp)
	call	_ZN11DisplayText11WriteStringEPKcNS_14Display_ColorsES2_
	movl	$.LC6, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$0, (%esp)
	call	_ZN5CPUID11MakeRequestENS_14CPUID_RequestsE
	movl	%eax, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$.LC7, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	movl	$512, (%esp)
	call	_ZN5CPUID10HasFeatureENS_16CPU_EDX_FeaturesE
	movzbl	%al, %eax
	movl	%eax, (%esp)
	call	_ZN11DisplayText9WriteBoolEb
/APP
/  52 "crt0.cpp" 1
	int $0x8
/  0 "" 2
/NO_APP
	xorl	%ebx, %ebx
	.align 16
.L5:
	movsbl	(%ebx), %eax
	addl	$1, %ebx
	movl	%eax, (%esp)
	call	_ZN11DisplayText8WriteHexEl
	movl	$.LC8, (%esp)
	call	_ZN11DisplayText11WriteStringEPKc
	cmpl	$65536, %ebx
	jne	.L5
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	kernel_main, .-kernel_main
	.ident	"GCC: (GNU) 4.8.2"
