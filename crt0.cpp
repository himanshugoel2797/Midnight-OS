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
    DisplayText::WriteString("Checking Multiboot header ");
    DisplayText::WritePassOrFail(magic == MULTIBOOT_BOOTLOADER_MAGIC);
    
    //Detect the total amount of available memory
    DisplayText::WriteString("\nDetecting Memory...");
    if (CHECK_BIT(mbd->flags, 0)) {
        DisplayText::WriteString("Available Memory = ");
        DisplayText::WriteHex(mbd->mem_upper);
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

extern "C" /* Use C linkage for kernel_main. */
void kernel_main() {
    CPUID::EnumerateFeatures();


    DisplayText::WriteString("\nMidnight OS...");
    DisplayText::WriteString("Done", DisplayText::COLOR_GREEN, DisplayText::COLOR_BLACK);

    DisplayText::WriteString("\nCPUID: ");
    DisplayText::WriteString((const char*) CPUID::MakeRequest(CPUID::CPUID_GETVENDORSTRING));

    DisplayText::WriteString("\nHas APIC: ");
    DisplayText::WriteBool(CPUID::HasFeature(CPUID::CPU_EDX_Features::CPUID_FEAT_EDX_APIC));

    asm volatile ("int $0x8");

  //  for (int8_t* x = (int8_t*) 1; x < (int8_t*) 0x10000; x++) {
  //      DisplayText::WriteHex(*x);
        // DisplayText::WriteString(" ");
  //  }
}

