/* 
 * File:   main.cpp
 * Author: himanshu
 *
 * Created on January 9, 2014, 7:52 PM
 */

#include <stddef.h>
#include <stdint.h>

#include "Core/Tables/MultibootHeader.h"
#include "DisplayText.h"
#include "Core/BIOSMemoryMap.h"
#include "Core/Tables/Tables.h"
#include "Core/Tables/InterruptHandlers.h"
#include "Core/Core.h"
#include "Core/Tables/CPUID.h"
#include "HAL/HAL.h"

extern "C"
void setup_kernel_core(multiboot_info_t* mbd, uint32_t magic) {
    Tables::Initialize(); //Take over control from the BIOS
    DisplayText::Initialize(); //Initialize the display

    //Check the multiboot header and make sure everything is fine
    DisplayText::WriteString("Checking Multiboot header...");
    DisplayText::WritePassOrFail(magic == MULTIBOOT_BOOTLOADER_MAGIC);

    //Detect the total amount of available memory
    DisplayText::WriteString("\nDetecting Memory...");
    if (CHECK_BIT(mbd->flags, 0)) {
        DisplayText::WriteString("Available Memory = ");
        DisplayText::WriteInt((mbd->mem_upper + mbd->mem_lower)/1024);
        DisplayText::WriteString(" MB");
    } else DisplayText::WritePassOrFail(false);

    DisplayText::WriteString("\nSetting up GDT...");
    DisplayText::WriteString("Done", DisplayText::COLOR_GREEN, DisplayText::COLOR_BLACK);

    DisplayText::WriteString("\nSetting up IDT...");
    DisplayText::WriteString("Done", DisplayText::COLOR_GREEN, DisplayText::COLOR_BLACK);

    DisplayText::WriteString("\nInitializing Core...");
    Core::Initialize();
    DisplayText::WriteString("Done", DisplayText::COLOR_GREEN, DisplayText::COLOR_BLACK);

    DisplayText::WriteString("\nInitializing HAL...");
    HAL::Initialize();
    DisplayText::WriteString("Done", DisplayText::COLOR_GREEN, DisplayText::COLOR_BLACK);

}

bool temp = false;


extern "C" void InterruptsTest(int32_t num)
{
    temp = true;
}

extern "C" /* Use C linkage for kernel_main. */
void kernel_main() {
    CPUID::EnumerateFeatures();


    DisplayText::WriteString("\nMidnight OS...");
    DisplayText::WriteString("Done", DisplayText::COLOR_GREEN, DisplayText::COLOR_BLACK);

    DisplayText::WriteString("\nCPUID: ");
    DisplayText::WriteString((const char*) CPUID::MakeRequest(CPUID::CPUID_GETVENDORSTRING));

    DisplayText::WriteString("\nHas APIC: ");
    DisplayText::WriteBool(CPUID::HasFeature(CPUID::CPU_EDX_Features::CPUID_FEAT_EDX_APIC));

    //DisplayText::WriteInt(0/(1-1));
    
    DisplayText::WriteString("\nTesting Interrupts...");
    InterruptHandlers::RegisterInterruptHandler(1, InterruptsTest);     //Register the interrupt handler
    asm volatile("int $0x1");                                           //Trigger an interrupt
    DisplayText::WritePassOrFail(temp);                                 //Check if it worked
    InterruptHandlers::UnregisterInterruptHandler(1);                   //Unregister the interrupt handler
    
    for (int8_t* x = (int8_t*) 1; x < (int8_t*) 0x100; x++) {
        DisplayText::WriteHex(*x);
        DisplayText::WriteString(" ");
    }
}
