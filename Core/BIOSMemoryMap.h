/* 
 * File:   BIOSMemoryMap.h
 * Author: himanshu
 *
 * Created on January 12, 2014, 12:17 AM
 */

#ifndef BIOSMEMORYMAP_H
#define	BIOSMEMORYMAP_H

#include <stdint.h>
#include <stddef.h>

#define BDA_ADDRESS 0x0400;

typedef struct {
    uint16_t com[4]; //COM1-4
    uint16_t lpt[3]; //LPT1-3
    uint16_t EBDA;
    uint16_t detected_hw;
    uint8_t unknB[5];
    uint8_t keybrd_status[2];
    uint8_t unknC;
    uint16_t nextChar;
    uint16_t freeSlot;
    uint16_t keybrd_circ_buf[16];
    uint8_t diskette[11];
    uint8_t vid_cur_mode;
    uint16_t vid_columns;
    uint16_t vid_page_size;
    uint16_t vid_page_start_addr;
    uint8_t vid_cursor_pos[16];
    uint16_t vid_cursor_type;
    uint8_t vid_current_page_num;
    uint8_t CRT_base_addr[2];
    uint8_t unknD[7];
    uint32_t ticks_since_midnight;
    uint8_t tick_overflow;
    uint8_t unknE[3];
    uint8_t disk_last_status;
    uint8_t num_disk_drives;
}BIOS_BDA;

#endif	/* BIOSMEMORYMAP_H */

