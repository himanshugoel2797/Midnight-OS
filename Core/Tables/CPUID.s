	.file	"CPUID.cpp"
	.text
	.align 2
	.align 16
	.globl	_ZN5CPUID17EnumerateFeaturesEv
	.type	_ZN5CPUID17EnumerateFeaturesEv, @function
_ZN5CPUID17EnumerateFeaturesEv:
.LFB0:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	$1, %eax
/APP
/  13 "Core/Tables/CPUID.cpp" 1
	cpuid
/  0 "" 2
/NO_APP
	movl	%ecx, ecx
	movl	%edx, edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN5CPUID17EnumerateFeaturesEv, .-_ZN5CPUID17EnumerateFeaturesEv
	.align 2
	.align 16
	.globl	_ZN5CPUID10HasFeatureENS_16CPU_ECX_FeaturesE
	.type	_ZN5CPUID10HasFeatureENS_16CPU_ECX_FeaturesE, @function
_ZN5CPUID10HasFeatureENS_16CPU_ECX_FeaturesE:
.LFB1:
	.cfi_startproc
	movl	4(%esp), %eax
	testl	%eax, ecx
	setne	%al
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN5CPUID10HasFeatureENS_16CPU_ECX_FeaturesE, .-_ZN5CPUID10HasFeatureENS_16CPU_ECX_FeaturesE
	.align 2
	.align 16
	.globl	_ZN5CPUID10HasFeatureENS_16CPU_EDX_FeaturesE
	.type	_ZN5CPUID10HasFeatureENS_16CPU_EDX_FeaturesE, @function
_ZN5CPUID10HasFeatureENS_16CPU_EDX_FeaturesE:
.LFB2:
	.cfi_startproc
	movl	4(%esp), %eax
	testl	%eax, edx
	setne	%al
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN5CPUID10HasFeatureENS_16CPU_EDX_FeaturesE, .-_ZN5CPUID10HasFeatureENS_16CPU_EDX_FeaturesE
	.align 2
	.align 16
	.globl	_ZN5CPUID11MakeRequestENS_14CPUID_RequestsE
	.type	_ZN5CPUID11MakeRequestENS_14CPUID_RequestsE, @function
_ZN5CPUID11MakeRequestENS_14CPUID_RequestsE:
.LFB3:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
/APP
/  28 "Core/Tables/CPUID.cpp" 1
	cpuid
/  0 "" 2
/NO_APP
	cmpl	$-2147483646, %eax
	movl	%ebx, toReturn
	je	.L10
	movl	$toReturn, %eax
	movl	%edx, toReturn+4
	movl	%ecx, toReturn+8
	movl	$0, toReturn+12
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.align 16
.L10:
	.cfi_restore_state
	movl	$toReturn, %eax
	movl	%ecx, toReturn+4
	movl	%edx, toReturn+8
	movl	$0, toReturn+12
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN5CPUID11MakeRequestENS_14CPUID_RequestsE, .-_ZN5CPUID11MakeRequestENS_14CPUID_RequestsE
	.globl	toReturn
	.section	.bss
	.align 4
	.type	toReturn, @object
	.size	toReturn, 16
toReturn:
	.zero	16
	.globl	edx
	.align 4
	.type	edx, @object
	.size	edx, 4
edx:
	.zero	4
	.globl	ecx
	.align 4
	.type	ecx, @object
	.size	ecx, 4
ecx:
	.zero	4
	.ident	"GCC: (GNU) 4.8.2"
