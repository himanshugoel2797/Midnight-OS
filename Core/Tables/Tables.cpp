/* 
 * File:   Tables.cpp
 * Author: himanshu
 * 
 * Created on January 10, 2014, 10:15 PM
 */

#include "Tables.h"
#include "../Core.h"
#include "../../Common/mem.h"

static Tables::GDT_Entry gdt_entries[5];
static Tables::GDT_Ptr gdt_ptr;
static Tables::IDT_Entry idt_entries[256];
static Tables::IDT_Ptr idt_ptr;

void Tables::Initialize() {
    //Initialize the GDT
    gdt_ptr.limit = (sizeof (Tables::GDT_Entry) * 5) - 1;
    gdt_ptr.base = (uint32_t) gdt_entries;

    Tables::SetGate(0, 0, 0, 0, 0); // Null segment
    Tables::SetGate(1, 0, 0xFFFFFFFF, 0x9A, 0xCF); // Code segment
    Tables::SetGate(2, 0, 0xFFFFFFFF, 0x92, 0xCF); // Data segment
    Tables::SetGate(3, 0, 0xFFFFFFFF, 0xFA, 0xCF); // User mode code segment
    Tables::SetGate(4, 0, 0xFFFFFFFF, 0xF2, 0xCF); // User mode data segment

    Tables::GDT_Flush((uint32_t) & gdt_ptr);

    Tables::IDT_Init();
}

void Tables::IDT_Init() {

    idt_ptr.limit = sizeof (Tables::IDT_Entry) * 256 - 1;
    idt_ptr.base = (uint32_t) & idt_entries;

    memset(&idt_entries, 0, sizeof (Tables::IDT_Entry)*256);

    IDT_SetGate(0, (uint32_t) InterruptHandlers::isrNOPARAM0, 0x08, 0x8E);
    IDT_SetGate(1, (uint32_t) InterruptHandlers::isrNOPARAM1, 0x08, 0x8E);
    IDT_SetGate(2, (uint32_t) InterruptHandlers::isrNOPARAM2, 0x08, 0x8E);
    IDT_SetGate(3, (uint32_t) InterruptHandlers::isrNOPARAM3, 0x08, 0x8E);
    IDT_SetGate(4, (uint32_t) InterruptHandlers::isrNOPARAM4, 0x08, 0x8E);
    IDT_SetGate(5, (uint32_t) InterruptHandlers::isrNOPARAM5, 0x08, 0x8E);
    IDT_SetGate(6, (uint32_t) InterruptHandlers::isrNOPARAM6, 0x08, 0x8E);
    IDT_SetGate(7, (uint32_t) InterruptHandlers::isrNOPARAM7, 0x08, 0x8E);
    IDT_SetGate(8, (uint32_t) InterruptHandlers::isrONEPARAM, 0x08, 0x8E);
    IDT_SetGate(9, (uint32_t) InterruptHandlers::isrNOPARAM9, 0x08, 0x8E);
    IDT_SetGate(10, (uint32_t) InterruptHandlers::isrONEPARAM, 0x08, 0x8E);
    IDT_SetGate(11, (uint32_t) InterruptHandlers::isrONEPARAM, 0x08, 0x8E);
    IDT_SetGate(12, (uint32_t) InterruptHandlers::isrONEPARAM, 0x08, 0x8E);
    IDT_SetGate(13, (uint32_t) InterruptHandlers::isrONEPARAM, 0x08, 0x8E);
    IDT_SetGate(14, (uint32_t) InterruptHandlers::isrONEPARAM, 0x08, 0x8E);
    IDT_SetGate(15, (uint32_t) InterruptHandlers::isrNOPARAM15, 0x08, 0x8E);
    IDT_SetGate(16, (uint32_t) InterruptHandlers::isrNOPARAM16, 0x08, 0x8E);
    IDT_SetGate(17, (uint32_t) InterruptHandlers::isrNOPARAM17, 0x08, 0x8E);
    IDT_SetGate(18, (uint32_t) InterruptHandlers::isrNOPARAM18, 0x08, 0x8E);
    IDT_SetGate(19, (uint32_t) InterruptHandlers::isrNOPARAM19, 0x08, 0x8E);
    IDT_SetGate(20, (uint32_t) InterruptHandlers::isrNOPARAM20, 0x08, 0x8E);
    IDT_SetGate(21, (uint32_t) InterruptHandlers::isrNOPARAM21, 0x08, 0x8E);
    IDT_SetGate(22, (uint32_t) InterruptHandlers::isrNOPARAM22, 0x08, 0x8E);
    IDT_SetGate(23, (uint32_t) InterruptHandlers::isrNOPARAM23, 0x08, 0x8E);
    IDT_SetGate(24, (uint32_t) InterruptHandlers::isrNOPARAM24, 0x08, 0x8E);
    IDT_SetGate(25, (uint32_t) InterruptHandlers::isrNOPARAM25, 0x08, 0x8E);
    IDT_SetGate(26, (uint32_t) InterruptHandlers::isrNOPARAM26, 0x08, 0x8E);
    IDT_SetGate(27, (uint32_t) InterruptHandlers::isrNOPARAM27, 0x08, 0x8E);
    IDT_SetGate(28, (uint32_t) InterruptHandlers::isrNOPARAM28, 0x08, 0x8E);
    IDT_SetGate(29, (uint32_t) InterruptHandlers::isrNOPARAM29, 0x08, 0x8E);
    IDT_SetGate(30, (uint32_t) InterruptHandlers::isrNOPARAM30, 0x08, 0x8E);
    IDT_SetGate(31, (uint32_t) InterruptHandlers::isrNOPARAM31, 0x08, 0x8E);



    IDT_Flush((uint32_t) & idt_ptr);
}

void __attribute__((noinline)) Tables::IDT_Flush(uint32_t idtPtr) {
    asm("lidt (%0)" ::"r"(idtPtr));
}

void __attribute__((noinline)) Tables::GDT_Flush(uint32_t gdtPtr) {
    asm( // Get the pointer to the GDT, passed as a parameter.
                "cli\n\t"
                "lgdt (%0)\n\t" // Load the new GDT pointer
                "mov $0x10, %%ax\n\t" // 0x10 is the offset in the GDT to our data segment
                "mov %%ax, %%ds\n\t" // Load all data segment selectors
                "mov %%ax, %%es\n\t"
                "mov %%ax, %%fs\n\t"
                "mov %%ax, %%gs\n\t"
                "mov %%ax, %%ss\n\t"
                "jmp $0x08, $flush\n"
                "flush:\n\t"
                "ret"
                : : "r"(gdtPtr));
    return;
}

void Tables::SetGate(int32_t num, uint32_t base, uint32_t limit, uint8_t access, uint8_t gran) {
    gdt_entries[num].base_low = (base & 0xFFFF);
    gdt_entries[num].base_middle = (base >> 16) & 0xFF;
    gdt_entries[num].base_high = (base >> 24) & 0xFF;

    gdt_entries[num].limit_low = (limit & 0xFFFF);
    gdt_entries[num].granularity = (limit >> 16) & 0x0F;

    gdt_entries[num].granularity |= gran & 0xF0;
    gdt_entries[num].access = access;
}

void Tables::IDT_SetGate(uint8_t num, uint32_t base, uint16_t sel, uint8_t flags) {
    idt_entries[num].base_lo = base & 0xFFFF;
    idt_entries[num].base_hi = (base >> 16) & 0xFFFF;

    idt_entries[num].sel = sel;
    idt_entries[num].always0 = 0;
    // We must uncomment the OR below when we get to using user-mode.
    // It sets the interrupt gate's privilege level to 3.
    idt_entries[num].flags = flags /* | 0x60 */;
}