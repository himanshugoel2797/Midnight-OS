#include "Keyboard.h"


extern "C" void KeyboardInterrupt(int32_t num)
{

}

void Keyboard::Initialize()
{
  InterruptHandlers::RegisterInterruptHandler(1, KeyboardInterrupt);     //Register the interrupt handler
}

void Keyboard::RegisterKeyPressHandler()
{

}
