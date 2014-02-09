/* 
 * File:   DisplayText.h
 * Author: himanshu
 *
 * Created on January 10, 2014, 7:41 PM
 */

#ifndef DISPLAYTEST_H
#define	DISPLAYTEST_H

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include "Common/mem.h"

class DisplayText {
public:
    enum Display_Colors
{
	COLOR_BLACK = 0,
	COLOR_BLUE = 1,
	COLOR_GREEN = 2,
	COLOR_CYAN = 3,
	COLOR_RED = 4,
	COLOR_MAGENTA = 5,
	COLOR_BROWN = 6,
	COLOR_LIGHT_GREY = 7,
	COLOR_DARK_GREY = 8,
	COLOR_LIGHT_BLUE = 9,
	COLOR_LIGHT_GREEN = 10,
	COLOR_LIGHT_CYAN = 11,
	COLOR_LIGHT_RED = 12,
	COLOR_LIGHT_MAGENTA = 13,
	COLOR_LIGHT_BROWN = 14,
	COLOR_WHITE = 15,
};
    static uint8_t MakeColor(enum Display_Colors fg, enum Display_Colors bg);
    static uint16_t MakeVGAEntry(char c, uint8_t color);
    static void Initialize();
    static void Clear();
    static void ScrollUp();
    static void SetCursor(uint32_t x, uint32_t y);
    static void SetColor(uint8_t color);
    static void PutEntryAt(char c, uint8_t color, size_t x, size_t y);
    static void PutChar(char c);
    static void WriteInt(int32_t num);
    static void WriteHex(int32_t num);
    static void WriteString(const char* data);
    static void WriteString(const char* data, enum Display_Colors fg, enum Display_Colors bg);
    static void WriteBool(bool data);
    static void WritePassOrFail(bool data);
private:

};

#endif	/* DISPLAYTEST_H */

