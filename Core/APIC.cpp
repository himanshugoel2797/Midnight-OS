/* 
 * File:   APIC.cpp
 * Author: himanshu
 * 
 * Created on January 12, 2014, 8:29 PM
 */

#include "APIC.h"

APIC::Initialize()
{
    if(CPUID::HasFeature(CPUID::CPUID_FEAT_EDX_APIC) || 
            CPUID::HasFeature(CPUID::CPUID_FEAT_ECX_x2APIC))
    {
        
    }
}
