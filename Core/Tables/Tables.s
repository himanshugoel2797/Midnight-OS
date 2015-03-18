	.file	"Tables.cpp"
	.section	.text.unlikely,"ax",@progbits
	.align 2
.LCOLDB0:
	.text
.LHOTB0:
	.align 2
	.align 16
	.globl	_ZN6Tables9IDT_FlushEm
	.type	_ZN6Tables9IDT_FlushEm, @function
_ZN6Tables9IDT_FlushEm:
.LFB2:
	.cfi_startproc
	movl	4(%esp), %eax
/APP
/  79 "Core/Tables/Tables.cpp" 1
	lidt (%eax)
/  0 "" 2
/NO_APP
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN6Tables9IDT_FlushEm, .-_ZN6Tables9IDT_FlushEm
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
	.globl	_ZN6Tables8IDT_InitEv
	.type	_ZN6Tables8IDT_InitEv, @function
_ZN6Tables8IDT_InitEv:
.LFB1:
	.cfi_startproc
	subl	$16, %esp
	.cfi_def_cfa_offset 20
	movl	$2047, %eax
	movl	$_ZL11idt_entries, _ZL7idt_ptr+2
	pushl	$2048
	.cfi_def_cfa_offset 24
	pushl	$0
	.cfi_def_cfa_offset 28
	pushl	$_ZL11idt_entries
	.cfi_def_cfa_offset 32
	movw	%ax, _ZL7idt_ptr
	call	memset
	movl	$_ZN17InterruptHandlers11isrNOPARAM0Ev, %eax
	movl	$8, %ecx
	movl	$8, %edx
	movw	%ax, _ZL11idt_entries
	shrl	$16, %eax
	movw	%cx, _ZL11idt_entries+10
	movw	%ax, _ZL11idt_entries+6
	movl	$_ZN17InterruptHandlers11isrNOPARAM1Ev, %eax
	movl	$8, %ecx
	movw	%ax, _ZL11idt_entries+8
	shrl	$16, %eax
	movw	%dx, _ZL11idt_entries+2
	movw	%ax, _ZL11idt_entries+14
	movl	$_ZN17InterruptHandlers11isrNOPARAM2Ev, %eax
	movb	$0, _ZL11idt_entries+4
	movw	%ax, _ZL11idt_entries+16
	shrl	$16, %eax
	movb	$-114, _ZL11idt_entries+5
	movw	%ax, _ZL11idt_entries+22
	movl	$8, %eax
	movb	$0, _ZL11idt_entries+12
	movw	%ax, _ZL11idt_entries+18
	movl	$_ZN17InterruptHandlers11isrNOPARAM3Ev, %eax
	movb	$-114, _ZL11idt_entries+13
	movw	%ax, _ZL11idt_entries+24
	shrl	$16, %eax
	movb	$0, _ZL11idt_entries+20
	movw	%ax, _ZL11idt_entries+30
	movl	$8, %eax
	movb	$-114, _ZL11idt_entries+21
	movw	%ax, _ZL11idt_entries+26
	movl	$_ZN17InterruptHandlers11isrNOPARAM4Ev, %eax
	movb	$0, _ZL11idt_entries+28
	movw	%ax, _ZL11idt_entries+32
	shrl	$16, %eax
	movb	$-114, _ZL11idt_entries+29
	movw	%ax, _ZL11idt_entries+38
	movl	$8, %eax
	movb	$0, _ZL11idt_entries+36
	movw	%ax, _ZL11idt_entries+34
	movl	$_ZN17InterruptHandlers11isrNOPARAM5Ev, %eax
	movb	$-114, _ZL11idt_entries+37
	movw	%ax, _ZL11idt_entries+40
	shrl	$16, %eax
	movb	$0, _ZL11idt_entries+44
	movw	%ax, _ZL11idt_entries+46
	movl	$8, %eax
	movb	$-114, _ZL11idt_entries+45
	movw	%ax, _ZL11idt_entries+42
	movl	$_ZN17InterruptHandlers11isrNOPARAM6Ev, %eax
	movw	%ax, _ZL11idt_entries+48
	shrl	$16, %eax
	movw	%ax, _ZL11idt_entries+54
	movl	$8, %eax
	movw	%ax, _ZL11idt_entries+50
	movb	$0, _ZL11idt_entries+52
	movl	$_ZN17InterruptHandlers11isrNOPARAM7Ev, %eax
	movw	%cx, _ZL11idt_entries+66
	movl	$_ZN17InterruptHandlers11isrNOPARAM9Ev, %ecx
	movw	%ax, _ZL11idt_entries+56
	movw	%cx, _ZL11idt_entries+72
	shrl	$16, %ecx
	shrl	$16, %eax
	movw	%cx, _ZL11idt_entries+78
	movl	$8, %ecx
	movw	%ax, _ZL11idt_entries+62
	movw	%cx, _ZL11idt_entries+74
	movl	$8, %eax
	movl	$8, %ecx
	movw	%ax, _ZL11idt_entries+58
	movw	%cx, _ZL11idt_entries+82
	movl	$_ZN17InterruptHandlers11isrONEPARAMEh, %eax
	movl	$8, %ecx
	movl	%eax, %edx
	movw	%ax, _ZL11idt_entries+64
	movw	%cx, _ZL11idt_entries+90
	movl	$8, %ecx
	shrl	$16, %edx
	movw	%cx, _ZL11idt_entries+98
	movl	$8, %ecx
	movw	%dx, _ZL11idt_entries+70
	movw	%ax, _ZL11idt_entries+80
	movw	%dx, _ZL11idt_entries+86
	movw	%ax, _ZL11idt_entries+88
	movw	%dx, _ZL11idt_entries+94
	movw	%ax, _ZL11idt_entries+96
	movw	%dx, _ZL11idt_entries+102
	movw	%ax, _ZL11idt_entries+104
	movw	%dx, _ZL11idt_entries+110
	movb	$-114, _ZL11idt_entries+53
	movb	$0, _ZL11idt_entries+60
	movb	$-114, _ZL11idt_entries+61
	movb	$0, _ZL11idt_entries+68
	movb	$-114, _ZL11idt_entries+69
	movb	$0, _ZL11idt_entries+76
	movb	$-114, _ZL11idt_entries+77
	movb	$0, _ZL11idt_entries+84
	movb	$-114, _ZL11idt_entries+85
	movb	$0, _ZL11idt_entries+92
	movb	$-114, _ZL11idt_entries+93
	movb	$0, _ZL11idt_entries+100
	movb	$-114, _ZL11idt_entries+101
	movw	%cx, _ZL11idt_entries+106
	movl	$8, %ecx
	movw	%ax, _ZL11idt_entries+112
	movl	$8, %eax
	movw	%dx, _ZL11idt_entries+118
	movw	%ax, _ZL11idt_entries+114
	movl	$_ZN17InterruptHandlers12isrNOPARAM15Ev, %eax
	movb	$0, _ZL11idt_entries+108
	movw	%ax, _ZL11idt_entries+120
	shrl	$16, %eax
	movb	$-114, _ZL11idt_entries+109
	movw	%ax, _ZL11idt_entries+126
	movl	$8, %eax
	movb	$0, _ZL11idt_entries+116
	movw	%ax, _ZL11idt_entries+122
	movl	$_ZN17InterruptHandlers12isrNOPARAM16Ev, %eax
	movb	$-114, _ZL11idt_entries+117
	movw	%ax, _ZL11idt_entries+128
	shrl	$16, %eax
	movb	$0, _ZL11idt_entries+124
	movw	%ax, _ZL11idt_entries+134
	movl	$8, %eax
	movb	$-114, _ZL11idt_entries+125
	movw	%ax, _ZL11idt_entries+130
	movl	$_ZN17InterruptHandlers12isrNOPARAM17Ev, %eax
	movb	$0, _ZL11idt_entries+132
	movw	%ax, _ZL11idt_entries+136
	shrl	$16, %eax
	movb	$-114, _ZL11idt_entries+133
	movw	%ax, _ZL11idt_entries+142
	movl	$8, %eax
	movb	$0, _ZL11idt_entries+140
	movw	%ax, _ZL11idt_entries+138
	movl	$_ZN17InterruptHandlers12isrNOPARAM18Ev, %eax
	movb	$-114, _ZL11idt_entries+141
	movw	%ax, _ZL11idt_entries+144
	shrl	$16, %eax
	movb	$0, _ZL11idt_entries+148
	movw	%ax, _ZL11idt_entries+150
	movl	$8, %eax
	movb	$-114, _ZL11idt_entries+149
	movw	%ax, _ZL11idt_entries+146
	movl	$_ZN17InterruptHandlers12isrNOPARAM19Ev, %eax
	movb	$0, _ZL11idt_entries+156
	movw	%ax, _ZL11idt_entries+152
	shrl	$16, %eax
	movb	$-114, _ZL11idt_entries+157
	movw	%ax, _ZL11idt_entries+158
	movl	$8, %eax
	movl	$8, %edx
	movw	%ax, _ZL11idt_entries+154
	movl	$_ZN17InterruptHandlers12isrNOPARAM20Ev, %eax
	movw	%ax, _ZL11idt_entries+160
	shrl	$16, %eax
	movw	%ax, _ZL11idt_entries+166
	movl	$_ZN17InterruptHandlers12isrNOPARAM21Ev, %eax
	movw	%dx, _ZL11idt_entries+162
	movw	%ax, _ZL11idt_entries+168
	shrl	$16, %eax
	movw	%cx, _ZL11idt_entries+170
	movw	%ax, _ZL11idt_entries+174
	movl	$_ZN17InterruptHandlers12isrNOPARAM22Ev, %eax
	movb	$0, _ZL11idt_entries+164
	movw	%ax, _ZL11idt_entries+176
	shrl	$16, %eax
	movb	$-114, _ZL11idt_entries+165
	movw	%ax, _ZL11idt_entries+182
	movl	$8, %eax
	movb	$0, _ZL11idt_entries+172
	movw	%ax, _ZL11idt_entries+178
	movl	$_ZN17InterruptHandlers12isrNOPARAM23Ev, %eax
	movb	$-114, _ZL11idt_entries+173
	movw	%ax, _ZL11idt_entries+184
	shrl	$16, %eax
	movb	$0, _ZL11idt_entries+180
	movw	%ax, _ZL11idt_entries+190
	movl	$8, %eax
	movb	$-114, _ZL11idt_entries+181
	movw	%ax, _ZL11idt_entries+186
	movl	$_ZN17InterruptHandlers12isrNOPARAM24Ev, %eax
	movb	$0, _ZL11idt_entries+188
	movw	%ax, _ZL11idt_entries+192
	shrl	$16, %eax
	movb	$-114, _ZL11idt_entries+189
	movw	%ax, _ZL11idt_entries+198
	movl	$8, %eax
	movb	$0, _ZL11idt_entries+196
	movw	%ax, _ZL11idt_entries+194
	movl	$_ZN17InterruptHandlers12isrNOPARAM25Ev, %eax
	movb	$-114, _ZL11idt_entries+197
	movw	%ax, _ZL11idt_entries+200
	shrl	$16, %eax
	movb	$0, _ZL11idt_entries+204
	movw	%ax, _ZL11idt_entries+206
	movl	$8, %eax
	movb	$-114, _ZL11idt_entries+205
	movw	%ax, _ZL11idt_entries+202
	movl	$_ZN17InterruptHandlers12isrNOPARAM26Ev, %eax
	movb	$0, _ZL11idt_entries+212
	movw	%ax, _ZL11idt_entries+208
	shrl	$16, %eax
	movb	$-114, _ZL11idt_entries+213
	movw	%ax, _ZL11idt_entries+214
	movl	$8, %eax
	movl	$8, %edx
	movw	%ax, _ZL11idt_entries+210
	movl	$_ZN17InterruptHandlers12isrNOPARAM27Ev, %eax
	movl	$8, %ecx
	movw	%ax, _ZL11idt_entries+216
	shrl	$16, %eax
	movl	$_ZL7idt_ptr, (%esp)
	movw	%ax, _ZL11idt_entries+222
	movl	$8, %eax
	movb	$0, _ZL11idt_entries+220
	movw	%ax, _ZL11idt_entries+218
	movl	$_ZN17InterruptHandlers12isrNOPARAM28Ev, %eax
	movb	$-114, _ZL11idt_entries+221
	movw	%ax, _ZL11idt_entries+224
	shrl	$16, %eax
	movw	%dx, _ZL11idt_entries+226
	movw	%ax, _ZL11idt_entries+230
	movl	$_ZN17InterruptHandlers12isrNOPARAM29Ev, %eax
	movb	$0, _ZL11idt_entries+228
	movw	%ax, _ZL11idt_entries+232
	shrl	$16, %eax
	movb	$-114, _ZL11idt_entries+229
	movw	%ax, _ZL11idt_entries+238
	movl	$_ZN17InterruptHandlers12isrNOPARAM30Ev, %eax
	movw	%cx, _ZL11idt_entries+234
	movw	%ax, _ZL11idt_entries+240
	shrl	$16, %eax
	movb	$0, _ZL11idt_entries+236
	movw	%ax, _ZL11idt_entries+246
	movl	$8, %eax
	movb	$-114, _ZL11idt_entries+237
	movw	%ax, _ZL11idt_entries+242
	movl	$_ZN17InterruptHandlers12isrNOPARAM31Ev, %eax
	movb	$0, _ZL11idt_entries+244
	movw	%ax, _ZL11idt_entries+248
	shrl	$16, %eax
	movb	$-114, _ZL11idt_entries+245
	movw	%ax, _ZL11idt_entries+254
	movl	$8, %eax
	movb	$0, _ZL11idt_entries+252
	movw	%ax, _ZL11idt_entries+250
	movb	$-114, _ZL11idt_entries+253
	call	_ZN6Tables9IDT_FlushEm
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN6Tables8IDT_InitEv, .-_ZN6Tables8IDT_InitEv
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
	.globl	_ZN6Tables9GDT_FlushEm
	.type	_ZN6Tables9GDT_FlushEm, @function
_ZN6Tables9GDT_FlushEm:
.LFB3:
	.cfi_startproc
	movl	4(%esp), %eax
/APP
/  95 "Core/Tables/Tables.cpp" 1
	cli
	lgdt (%eax)
	mov $0x10, %ax
	mov %ax, %ds
	mov %ax, %es
	mov %ax, %fs
	mov %ax, %gs
	mov %ax, %ss
	jmp $0x08, $flush
flush:
	ret
/  0 "" 2
/NO_APP
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN6Tables9GDT_FlushEm, .-_ZN6Tables9GDT_FlushEm
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
	.align 2
.LCOLDB3:
	.text
.LHOTB3:
	.align 2
	.align 16
	.globl	_ZN6Tables10InitializeEv
	.type	_ZN6Tables10InitializeEv, @function
_ZN6Tables10InitializeEv:
.LFB0:
	.cfi_startproc
	movl	$39, %eax
	subl	$12, %esp
	.cfi_def_cfa_offset 16
	xorl	%edx, %edx
	movw	%ax, _ZL7gdt_ptr
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movw	%ax, _ZL11gdt_entries+10
	movl	$-1, %eax
	movw	%dx, _ZL11gdt_entries+2
	movw	%ax, _ZL11gdt_entries+8
	xorl	%eax, %eax
	movw	%cx, _ZL11gdt_entries
	movw	%ax, _ZL11gdt_entries+18
	movl	$-1, %eax
	xorl	%edx, %edx
	movw	%ax, _ZL11gdt_entries+16
	xorl	%eax, %eax
	movl	$-1, %ecx
	movw	%ax, _ZL11gdt_entries+26
	movl	$-1, %eax
	movw	%dx, _ZL11gdt_entries+34
	movw	%ax, _ZL11gdt_entries+24
	movw	%cx, _ZL11gdt_entries+32
	movl	$_ZL11gdt_entries, _ZL7gdt_ptr+2
	movb	$0, _ZL11gdt_entries+4
	movb	$0, _ZL11gdt_entries+7
	movb	$0, _ZL11gdt_entries+6
	movb	$0, _ZL11gdt_entries+5
	movb	$0, _ZL11gdt_entries+12
	movb	$0, _ZL11gdt_entries+15
	movb	$-49, _ZL11gdt_entries+14
	movb	$-102, _ZL11gdt_entries+13
	movb	$0, _ZL11gdt_entries+20
	movb	$0, _ZL11gdt_entries+23
	movb	$-49, _ZL11gdt_entries+22
	movb	$-110, _ZL11gdt_entries+21
	movb	$0, _ZL11gdt_entries+28
	movb	$0, _ZL11gdt_entries+31
	movb	$-49, _ZL11gdt_entries+30
	movb	$-6, _ZL11gdt_entries+29
	movb	$0, _ZL11gdt_entries+36
	movb	$0, _ZL11gdt_entries+39
	movb	$-49, _ZL11gdt_entries+38
	movb	$-14, _ZL11gdt_entries+37
	pushl	$_ZL7gdt_ptr
	.cfi_def_cfa_offset 20
	call	_ZN6Tables9GDT_FlushEm
	addl	$16, %esp
	.cfi_def_cfa_offset 4
	jmp	_ZN6Tables8IDT_InitEv
	.cfi_endproc
.LFE0:
	.size	_ZN6Tables10InitializeEv, .-_ZN6Tables10InitializeEv
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
	.align 2
.LCOLDB4:
	.text
.LHOTB4:
	.align 2
	.align 16
	.globl	_ZN6Tables7SetGateElmmhh
	.type	_ZN6Tables7SetGateElmmhh, @function
_ZN6Tables7SetGateElmmhh:
.LFB4:
	.cfi_startproc
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	movl	8(%esp), %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	movl	%ecx, %ebx
	movw	%cx, _ZL11gdt_entries+2(,%eax,8)
	shrl	$24, %ecx
	movb	%cl, _ZL11gdt_entries+7(,%eax,8)
	movzbl	24(%esp), %ecx
	shrl	$16, %ebx
	movw	%dx, _ZL11gdt_entries(,%eax,8)
	shrl	$16, %edx
	movb	%bl, _ZL11gdt_entries+4(,%eax,8)
	andl	$15, %edx
	andl	$-16, %ecx
	orl	%ecx, %edx
	movb	%dl, _ZL11gdt_entries+6(,%eax,8)
	movl	20(%esp), %edx
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	movb	%dl, _ZL11gdt_entries+5(,%eax,8)
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN6Tables7SetGateElmmhh, .-_ZN6Tables7SetGateElmmhh
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
	.align 2
.LCOLDB5:
	.text
.LHOTB5:
	.align 2
	.align 16
	.globl	_ZN6Tables11IDT_SetGateEhmth
	.type	_ZN6Tables11IDT_SetGateEhmth, @function
_ZN6Tables11IDT_SetGateEhmth:
.LFB5:
	.cfi_startproc
	movzbl	4(%esp), %eax
	movl	8(%esp), %edx
	movw	%dx, _ZL11idt_entries(,%eax,8)
	shrl	$16, %edx
	movb	$0, _ZL11idt_entries+4(,%eax,8)
	movw	%dx, _ZL11idt_entries+6(,%eax,8)
	movl	12(%esp), %edx
	movw	%dx, _ZL11idt_entries+2(,%eax,8)
	movl	16(%esp), %edx
	movb	%dl, _ZL11idt_entries+5(,%eax,8)
	ret
	.cfi_endproc
.LFE5:
	.size	_ZN6Tables11IDT_SetGateEhmth, .-_ZN6Tables11IDT_SetGateEhmth
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.local	_ZL7idt_ptr
	.comm	_ZL7idt_ptr,6,1
	.local	_ZL11idt_entries
	.comm	_ZL11idt_entries,2048,64
	.local	_ZL7gdt_ptr
	.comm	_ZL7gdt_ptr,6,1
	.local	_ZL11gdt_entries
	.comm	_ZL11gdt_entries,40,32
	.ident	"GCC: (GNU) 4.9.2"
