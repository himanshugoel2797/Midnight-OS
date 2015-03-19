/*
 * File:   Core.cpp
 * Author: himanshu
 *
 * Created on January 11, 2014, 11:24 PM
 */

#include "../Core/Core.h"
#include "../Common/Config.h"
#include "../Core/Tables/Tables.h"
#include "../Core/Tables/InterruptHandlers.h"

#if defined(I686_ARCH) || defined(I586_ARCH) || defined(I386_ARCH)
void Core::Initialize()
{
    InterruptHandlers::Initialize();
    CPUID::EnumerateFeatures();                 //Get all the available features on the CPU
}

void Core::OutByte(uint16_t port, uint8_t value)
{
   asm volatile ("outb %1, %0" : : "dN" (port), "a" (value));
}

uint16_t Core::InWord(uint16_t port)
{
    uint16_t ret;
   asm volatile("inw %1, %0" : "=a" (ret) : "dN" (port));
   return ret;
}

uint8_t Core::InByte(uint16_t port)
{
    uint8_t ret;
   asm volatile("inb %1, %0" : "=a" (ret) : "dN" (port));
   return ret;
}
#endif
