/* 
 * File:   CPUID.cpp
 * Author: himanshu
 * 
 * Created on January 12, 2014, 3:29 AM
 */

#include "CPUID.h"

uint32_t ecx, edx;

void CPUID::EnumerateFeatures() {
    asm volatile("cpuid" : "=c"(ecx), "=d"(edx) : "a"(CPUID_GETFEATURES) : "ebx");
}

bool CPUID::HasFeature(enum CPU_ECX_Features feature) {
    return (ecx & feature);
}

bool CPUID::HasFeature(enum CPU_EDX_Features feature) {
    return (edx & feature);
}

uint32_t toReturn[4];

void* CPUID::MakeRequest(enum CPUID_Requests request) {
    uint32_t ebx, ecx, edx;
    asm volatile("cpuid" : "=b"(ebx), "=c"(ecx), "=d"(edx) : "a"(request));

    if ((uint32_t)request - (uint32_t)CPUID_INTELBRANDSTRING== 0) {
        toReturn[0] = ebx;
        toReturn[1] = ecx;
        toReturn[2] = edx;
        toReturn[3] = 0;
    } else {
        toReturn[0] = ebx;
        toReturn[1] = edx;
        toReturn[2] = ecx;
        toReturn[3] = 0;
    }
    return (void*) &toReturn;

}
