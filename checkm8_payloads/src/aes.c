#include "brfunc_aes.h"
#include "brfunc_timing.h"
#include "brfunc_sep.h"

#include "util.h"

PAYLOAD_SECTION
int aes_hw_crypto_command(unsigned int cmd,
                          void *src,
                          void *dst,
                          int len,
                          unsigned int opts,
                          void *key,
                          void *iv)
{
    int seeded;
    long cgvar;
    long start = 0, timeout = 0;

    __asm__("orr %0, xzr, #0x3c" : "=r" (cgvar));
    CLOCK_GATE(cgvar, 1);

//    seeded = DPA_SEEDED();
//    if(!(seeded & 1))
//    {
//        SEP_CREATE_SEND_DPA_MESSAGE();
//        start = SYSTEM_TIME();
//
//        while(!(seeded & 1) && !(timeout & 1))
//        {
//            seeded = DPA_SEEDED();
//            timeout = TIME_HAS_ELAPSED(start, 1000);
//        }
//    }
//
//    if(timeout) return -1;

    unsigned int key_command = CREATE_KEY_COMMAND(0, 0, 0, 0, 1, 0, 0, 0);
    *rAES_INT_STATUS = 0x20;
    *rAES_CONTROL = 1;

    PUSH_COMMAND_KEY(key_command, key);
    PUSH_COMMAND_IV(0, 0, 0, iv);
    PUSH_COMMAND_DATA(0, 0, src, dst, len);
    PUSH_COMMAND_FLAG(0, 1, 1);
    WAIT_FOR_COMMAND_FLAG();

    *rAES_CONTROL = 2;
    CLOCK_GATE(cgvar, 0);
    return 0;
}

TEXT_SECTION
int _start(void *src,
           void *dst,
           void *key)
{
    return aes_hw_crypto_command(0, src, dst, 128, 0, key, 0);
}