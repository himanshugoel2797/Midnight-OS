#ifndef _MNOS_KEYBOARD_H_
#define _MNOS_KEYBOARD_H_

#include <stddef>
#include <stdint>
#include "Core.h"
#include "Tables/InterruptHandlers.h"

class Keyboard
{
public:
  enum Keys{
    ALPHANUMERIC=1<<0
    SPECIAL=1<<1,
    SHIFT=1<<2,
    F_N=1<<3
  }
  enum SECIAL_KEYS{
    L_SHIFT=1<<0,
    R_SHIFT=1<<1,
    CTRL=1<<2,
    ALT=1<<3,
    SUPER=1<<4,
    TAB=1<<5,
    PRINT_SCREEN=1<<9,
    BACKSPACE=1<<10,
    DELETE=1<<11,
    HOME=1<<12,
    END=1<<13,
    PG_UP=1<<14,
    PG_DN=1<<15,
    ESCAPE=1<<16,
    UP=1<<17,
    DOWN=1<<18,
    LEFT=1<<19,
    RIGHT=1<<20
  }
  static void Initialize();
  static void RegisterKeyPressHandler();
}

#endif
