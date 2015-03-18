/*
 * File:   stdlib.h
 * Author: himanshu
 *
 * Created on February 10, 2014, 9:45 PM
 */

#ifndef STDLIB_H
#define	STDLIB_H


#include <stddef.h>
#include <stdint.h>

char * itoa(int n, char * store, int base);
size_t strlen(const char* str);

#endif	/* STDLIB_H */
