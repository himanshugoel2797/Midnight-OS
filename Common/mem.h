/* 
 * File:   mem.h
 * Author: himanshu
 *
 * Created on January 11, 2014, 2:38 AM
 */

#ifndef MEM_H
#define	MEM_H

#include <stddef.h> /* size_t */

#define CHECK_BIT(var,pos) ((var) & (1<<(pos)))

extern "C" {
    void *memset(void *s, int c, size_t n);
    void *memcpy(void *dest, const void *src, size_t n);
}

#endif	/* MEM_H */

