/* 
 * File:   InterruptHandlers.h
 * Author: himanshu
 *
 * Created on January 11, 2014, 2:47 AM
 */

#ifndef INTERRUPTHANDLERS_H
#define	INTERRUPTHANDLERS_H

#include <stddef.h>
#include <stdint.h>

class InterruptHandlers {
public:
    static void InterruptHandler(uint8_t num);
    // These extern directives let us access the addresses of our ASM ISR handlers.
    static void isrNOPARAM0();
    static void isrNOPARAM1();
    static void isrNOPARAM2();
    static void isrNOPARAM3();
    static void isrNOPARAM4();
    static void isrNOPARAM5();
    static void isrNOPARAM6();
    static void isrNOPARAM7();
    static void isrNOPARAM8();
    static void isrNOPARAM9();
    static void isrNOPARAM10();
    static void isrNOPARAM11();
    static void isrNOPARAM12();
    static void isrNOPARAM13();
    static void isrNOPARAM14();
    static void isrNOPARAM15();
    static void isrNOPARAM16();
    static void isrNOPARAM17();
    static void isrNOPARAM18();
    static void isrNOPARAM19();
    static void isrNOPARAM20();
    static void isrNOPARAM21();
    static void isrNOPARAM22();
    static void isrNOPARAM23();
    static void isrNOPARAM24();
    static void isrNOPARAM25();
    static void isrNOPARAM26();
    static void isrNOPARAM27();
    static void isrNOPARAM28();
    static void isrNOPARAM29();
    static void isrNOPARAM30();
    static void isrNOPARAM31();
    static void isrONEPARAM(uint8_t);
    static void Update();
private:

};

#endif	/* INTERRUPTHANDLERS_H */

