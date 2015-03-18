/*
 * File:   DisplayText.cpp
 * Author: himanshu
 *
 * Created on January 10, 2014, 7:41 PM
 */

#include "DisplayText.h"
#include "Core/Core.h"
#include "Core/BIOSMemoryMap.h"
#include "Common/stdlib.h"

/* Hardware text mode color constants. */

uint8_t DisplayText::MakeColor(enum Display_Colors fg, enum Display_Colors bg) {
    return fg | bg << 4;
}

uint16_t DisplayText::MakeVGAEntry(char c, uint8_t color) {
    uint16_t c16 = c;
    uint16_t color16 = color;
    return c16 | color16 << 8;
}

static size_t VGA_WIDTH = 80;
static size_t VGA_HEIGHT = 24;

size_t row;
size_t column;
uint8_t color;
uint16_t* buffer;

void DisplayText::Initialize() {
    row = 0;
    column = 0;

    VGA_WIDTH = BIOSMemMap::BIOSData->vid_columns;

    color = DisplayText::MakeColor(COLOR_LIGHT_GREY, COLOR_BLACK);
    buffer = (uint16_t*) 0xB8000;
    for (size_t y = 0; y < VGA_HEIGHT; y++) {
        for (size_t x = 0; x < VGA_WIDTH; x++) {
            const size_t index = y * VGA_WIDTH + x;
            buffer[index] = DisplayText::MakeVGAEntry(' ', color);
        }
    }
}

void DisplayText::SetColor(uint8_t col) {
    color = col;
}

void DisplayText::PutEntryAt(char c, uint8_t color, size_t x, size_t y) {
    const size_t index = y * VGA_WIDTH + x;
    buffer[index] = DisplayText::MakeVGAEntry(c, color);
}

void DisplayText::Clear()
{
    for (size_t y = 0; y < VGA_HEIGHT; y++) {
        for (size_t x = 0; x < VGA_WIDTH; x++) {
            const size_t index = y * VGA_WIDTH + x;
            buffer[index] = DisplayText::MakeVGAEntry(' ', color);
        }
    }
}

void DisplayText::ScrollUp()
{
    for (size_t y = 0; y < VGA_HEIGHT - 1; y++) {
        for (size_t x = 0; x < VGA_WIDTH; x++) {
            buffer[y * VGA_WIDTH + x] = buffer[(y+1) * VGA_WIDTH + x];
        }
    }
    for (size_t x = 0; x < VGA_WIDTH; x++) {
            const size_t index = VGA_HEIGHT * VGA_WIDTH + x;
            buffer[index] = DisplayText::MakeVGAEntry(' ', color);
        }
    column = 0;
    row = VGA_HEIGHT;
}

void DisplayText::SetCursor(uint32_t x, uint32_t y)
{
    uint16_t position = (y*VGA_WIDTH)+x;
    uint16_t addr = (BIOSMemMap::BIOSData->CRT_base_addr[1] << 8) | BIOSMemMap::BIOSData->CRT_base_addr[0];
    //Low port
    Core::OutByte(addr, 0x0F);
    Core::OutByte(addr + 1, (uint16_t)(position&0xFF));

    //High port
    Core::OutByte(addr, 0x0E);
    Core::OutByte(addr + 1, (uint16_t)((position>>8)&0xFF));
}

void DisplayText::PutChar(char c) {
    if (c == '\n') {
        column=VGA_WIDTH;
        if(++row >= VGA_HEIGHT)DisplayText::ScrollUp();
    } else {
        DisplayText::PutEntryAt(c, color, column, row);
        if (++column == VGA_WIDTH) {
            column = 0;
            if (++row == VGA_HEIGHT) {
                ScrollUp();
            }
        }
        //DisplayText::PutEntryAt(c, color, column, row);
    }
    //DisplayText::SetCursor(column, row);
}

void DisplayText::WriteHex(int32_t num) {
   char c[sizeof(int32_t)];
    itoa(num, c, 16);
    DisplayText::WriteString("0x");
    DisplayText::WriteString((const char*) c);
}

void DisplayText::WriteInt(int32_t num) {
    char c[sizeof(int32_t)];
    itoa(num, c, 10);
    DisplayText::WriteString((const char*) c);
}

void DisplayText::WriteString(const char* data) {
    size_t datalen = strlen(data);
    for (size_t i = 0; i < datalen; i++)
        DisplayText::PutChar(data[i]);
    DisplayText::SetCursor(column, row);
}

void DisplayText::WriteString(const char* data, Display_Colors fg, Display_Colors bg) {
    uint8_t col = DisplayText::MakeColor(fg, bg);
    uint8_t orig_color = color; //backup the color

    DisplayText::SetColor(col);
    DisplayText::WriteString(data);
    DisplayText::SetColor(orig_color);
}

void DisplayText::WriteBool(bool data)
{
    if(data)
    {
        DisplayText::WriteString("true", DisplayText::COLOR_GREEN, DisplayText::COLOR_BLACK);
    }else{
        DisplayText::WriteString("false", DisplayText::COLOR_RED, DisplayText::COLOR_BLACK);
    }
}

void DisplayText::WritePassOrFail(bool data)
{
    if(data)
    {
        DisplayText::WriteString("Pass", DisplayText::COLOR_GREEN, DisplayText::COLOR_BLACK);
    }else{
        DisplayText::WriteString("Fail", DisplayText::COLOR_RED, DisplayText::COLOR_BLACK);
    }
}
