#include "stdlib.h"

char * itoa(int n, char * store, int base)
{
        char * ret = store;
        const char characters[] = {"0123456789ABCDEF"};
        int c;
 
        if(base == 10 && n < 0)
        {
                * store = '-';
                store++;
                n = -n;
        };
 
        do
        {
                c = n % base;
                * store = characters[c];
                store++;
                n /= base;
        } while(n);
        * store = '\0';
 
        store--;
        char * aux = ret;
        if(* aux == '-') aux++;
 
        while(aux < store)
        {
                c = * aux;
                * aux = * store;
                * store = c;
                aux++;
                store--;
        };
 
        return ret;
};