/* 
 * File:   main.cpp
 * Author: himanshu
 *
 * Created on January 9, 2014, 7:52 PM
 */

#include <stddef.h>
#include <stdint.h>

#include "DisplayText.h"
#include "Core/Tables/Tables.h"
#include "Core/Tables/InterruptHandlers.h"
#include "Core/Core.h"
#include "Core/Tables/CPUID.h"
#include "HAL/HAL.h"

extern "C"
void setup_kernel_core() {
    Tables::Initialize(); //Take over control from the BIOS
    DisplayText::Initialize(); //Initialize the display
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

    for (int8_t* x = (int8_t*) 0; x < (int8_t*) 0x10000; x++) {
        DisplayText::WriteHex(*x);
        DisplayText::WriteString(" ");
    }
}

