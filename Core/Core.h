/* 
 * File:   Core.h
 * Author: himanshu
 *
 * Created on January 11, 2014, 11:24 PM
 */

#ifndef CORE_H
#define	CORE_H

#include <stddef.h>
#include <stdint.h>
#include "BIOSMemoryMap.h"
#include "Tables/CPUID.h"

class Core {
public:
    static void Initialize();
    static void OutByte(uint16_t, uint8_t);
    static uint8_t InByte (uint16_t);
    static uint16_t InWord (uint16_t);
private:

};

#endif	/* CORE_H */

