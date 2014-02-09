/* 
 * File:   mem.cpp
 * Author: himanshu
 * 
 * Created on January 11, 2014, 2:38 AM
 */

#include "mem.h"
extern "C" {

    void *memset(void *s, int c, size_t n) {
        unsigned char* p = (unsigned char*) s;
        while (n--)
            *p++ = (unsigned char) c;
        return s;
    }

    void *memcpy(void *dest, const void *src, size_t n) {
        char *dp = (char*)dest;
        const char *sp = (char*)src;
        while (n--)
            *dp++ = *sp++;
        return dest;
    }
}