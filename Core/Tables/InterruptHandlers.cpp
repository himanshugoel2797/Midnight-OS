/* 
 * File:   InterruptHandlers.cpp
 * Author: himanshu
 * 
 * Created on January 11, 2014, 2:47 AM
 */

#include "InterruptHandlers.h"
#include "Tables.h"
#include "../../DisplayText.h"

void InterruptHandlers::isrNOPARAM0() {
    asm("cli");
    InterruptHandler(0);
}

void InterruptHandlers::isrNOPARAM1() {
    asm("cli");
    InterruptHandler(1);
}

void InterruptHandlers::isrNOPARAM2() {
    asm("cli");
    InterruptHandler(0);
}

void InterruptHandlers::isrNOPARAM3() {
    asm("cli");
    InterruptHandler(3);
}

void InterruptHandlers::isrNOPARAM4() {
    asm("cli");
    InterruptHandler(4);
}

void InterruptHandlers::isrNOPARAM5() {
    asm("cli");
    InterruptHandler(5);
}
void InterruptHandlers::isrNOPARAM6() {
    asm("cli");
    InterruptHandler(6);
}

void InterruptHandlers::isrNOPARAM7() {
    asm("cli");
    InterruptHandler(7);
}
void InterruptHandlers::isrNOPARAM8() {
    asm("cli");
    InterruptHandler(8);
}

void InterruptHandlers::isrNOPARAM9() {
    asm("cli");
    InterruptHandler(9);
}
void InterruptHandlers::isrNOPARAM10() {
    asm("cli");
    InterruptHandler(10);
}

void InterruptHandlers::isrNOPARAM11() {
    asm("cli");
    InterruptHandler(11);
}
void InterruptHandlers::isrNOPARAM12() {
    asm("cli");
    InterruptHandler(12);
}

void InterruptHandlers::isrNOPARAM13() {
    asm("cli");
    InterruptHandler(13);
}
void InterruptHandlers::isrNOPARAM14() {
    asm("cli");
    InterruptHandler(14);
}

void InterruptHandlers::isrNOPARAM15() {
    asm("cli");
    InterruptHandler(15);
}
void InterruptHandlers::isrNOPARAM16() {
    asm("cli");
    InterruptHandler(16);
}

void InterruptHandlers::isrNOPARAM17() {
    asm("cli");
    InterruptHandler(17);
}
void InterruptHandlers::isrNOPARAM18() {
    asm("cli");
    InterruptHandler(18);
}

void InterruptHandlers::isrNOPARAM19() {
    asm("cli");
    InterruptHandler(19);
}
void InterruptHandlers::isrNOPARAM20() {
    asm("cli");
    InterruptHandler(20);
}

void InterruptHandlers::isrNOPARAM21() {
    asm("cli");
    InterruptHandler(21);
}
void InterruptHandlers::isrNOPARAM22() {
    asm("cli");
    InterruptHandler(22);
}

void InterruptHandlers::isrNOPARAM23() {
    asm("cli");
    InterruptHandler(23);
}
void InterruptHandlers::isrNOPARAM24() {
    asm("cli");
    InterruptHandler(24);
}

void InterruptHandlers::isrNOPARAM25() {
    asm("cli");
    InterruptHandler(25);
}
void InterruptHandlers::isrNOPARAM26() {
    asm("cli");
    InterruptHandler(26);
}

void InterruptHandlers::isrNOPARAM27() {
    asm("cli");
    InterruptHandler(27);
}
void InterruptHandlers::isrNOPARAM28() {
    asm("cli");
    InterruptHandler(28);
}

void InterruptHandlers::isrNOPARAM29() {
    asm("cli");
    InterruptHandler(29);
}
void InterruptHandlers::isrNOPARAM30() {
    asm("cli");
    InterruptHandler(30);
}

void InterruptHandlers::isrNOPARAM31() {
    asm("cli");
    InterruptHandler(31);
}

void InterruptHandlers::isrONEPARAM(uint8_t num) {
    asm("cli");
    InterruptHandler(num);
}

void InterruptHandlers::InterruptHandler(uint8_t num) {
    DisplayText::WriteString("\nInterrupt Received : ");
    DisplayText::WriteInt(num);
    DisplayText::WriteString("\n");
}

void InterruptHandlers::Update() {
    Tables::IDT_Init();
}
