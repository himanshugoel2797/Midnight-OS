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
    A=0,
    B=1,
    C=2,
    D=3,
    E=4,
    F=5,
    G=6,
    H=7,
    I=8,
    J=9,
    K=10,
    L=11,
    M=12,
    N=13,
    O=14,
    P=15,
    Q=16,
    R=17,
    S=18,
    T=19,
    U=20,
    V=21,
    W=22,
    X=23,
    Y=24,
    Z=25
  }
  static void Initialize();
  static void RegisterKeyPressHandler();
}

#endif
