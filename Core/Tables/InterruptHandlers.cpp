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

void InterruptHandlers::isrNOPARAM9() {
    asm("cli");
    InterruptHandler(9);
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


void InterruptHandlers::irqNOPARAM32() {
    asm("cli");
    IRQHandler(32);
}

void InterruptHandlers::irqNOPARAM33() {
    asm("cli");
    IRQHandler(33);
}

void InterruptHandlers::irqNOPARAM34() {
    asm("cli");
    IRQHandler(34);
}

void InterruptHandlers::irqNOPARAM35() {
    asm("cli");
    IRQHandler(35);
}

void InterruptHandlers::irqNOPARAM36() {
    asm("cli");
    IRQHandler(36);
}

void InterruptHandlers::irqNOPARAM37() {
    asm("cli");
    IRQHandler(37);
}

void InterruptHandlers::irqNOPARAM38() {
    asm("cli");
    IRQHandler(38);
}

void InterruptHandlers::irqNOPARAM39() {
    asm("cli");
    IRQHandler(39);
}

void InterruptHandlers::irqNOPARAM40() {
    asm("cli");
    IRQHandler(40);
}

void InterruptHandlers::irqNOPARAM41() {
    asm("cli");
    IRQHandler(41);
}

void InterruptHandlers::irqNOPARAM42() {
    asm("cli");
    IRQHandler(42);
}

void InterruptHandlers::irqNOPARAM43() {
    asm("cli");
    IRQHandler(43);
}

void InterruptHandlers::irqNOPARAM44() {
    asm("cli");
    IRQHandler(44);
}

void InterruptHandlers::irqNOPARAM45() {
    asm("cli");
    IRQHandler(45);
}

void InterruptHandlers::irqNOPARAM46() {
    asm("cli");
    IRQHandler(46);
}

void InterruptHandlers::irqNOPARAM47() {
    asm("cli");
    IRQHandler(47);
}

void(*handlers[256])(int32_t);

void InterruptHandlers::Initialize()
{
    memset((void*)(&handlers),0, sizeof(handlers));
    InterruptHandlers::Update();
}

void InterruptHandlers::RegisterInterruptHandler(int32_t interruptNumber, void(*function)(int32_t))
{
    handlers[interruptNumber] = function;
}

void InterruptHandlers::UnregisterInterruptHandler(int32_t interruptNumber)
{
    handlers[interruptNumber] = NULL;
}

void InterruptHandlers::InterruptHandler(uint8_t num) {
  //Interrupt service routines
    if(handlers[num] == NULL){
    DisplayText::WriteString("\nInterrupt Received : ");
    DisplayText::WriteInt(num);
    DisplayText::WriteString("\n");
    }else{
        (*handlers[num])(num);
    }
}

void InterruptHandlers::IRQHandler(uint8_t num){
  //IRQs
  if(handlers[num] == NULL){
  DisplayText::WriteString("\nInterrupt(IRQ) Received : ");
  DisplayText::WriteInt(num);
  DisplayText::WriteString("\n");
  }else{
      (*handlers[num])(num);
  }

  //Send EOI messages
  if(num >= 40)Core::OutByte(0xA0, 0x20);
  Core::OutByte(0x20,0x20);
}

void InterruptHandlers::Update() {
    Tables::IDT_Init();
}
