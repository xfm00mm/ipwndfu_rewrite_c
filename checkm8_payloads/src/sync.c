#include "util.h"

TEXT_SECTION
void _start()
{
    __asm__("dmb sy");
    __asm__("ic iallu");
    __asm__("dsb sy");
    __asm__("isb");
}