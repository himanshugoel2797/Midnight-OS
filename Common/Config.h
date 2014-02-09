/* 
 * File:   Config.h
 * Author: himanshu
 *
 * Created on February 8, 2014, 8:11 PM
 * 
 * 
 * This file is responsible for configuring all the options of the operating system
 * mainly the Hardware Abstraction Layer
 */

#ifndef CONFIG_H
#define	CONFIG_H

#define USE_PIC         //For older systems where the APIC is not available
//#define USE_APIC      //NOT IMPLEMENTED YET

#define I686_ARCH       //Specifies build platform
//#define I586_ARCH     //NOT SURE IF CORRECT
//#define I386_ARCH     //NOT SURE IF CORRECT

#endif	/* CONFIG_H */

