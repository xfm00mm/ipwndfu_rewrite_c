#ifndef IPWNDFU_REWRITE_C_BRFUNC_COMMON_H
#define IPWNDFU_REWRITE_C_BRFUNC_COMMON_H

#include "checkm8_config.h"

typedef int (*BOOTROM_FUNC)();

#if CHECKM8_PLATFORM == 8010

/* AES */
#define ADDR_AES_HW_CRYPTO_CMD              0x100000f0c
#define ADDR_CREATE_KEY_COMMAND             0x100000e90
#define ADDR_PUSH_COMMAND_KEY               0x100000c64
#define ADDR_PUSH_COMMAND_IV                0x100000d18
#define ADDR_PUSH_COMMAND_DATA              0x100000d98
#define ADDR_PUSH_COMMAND_FLAG              0x100000e20
#define ADDR_WAIT_FOR_COMMAND               0x100000ec4

#define ADDR_AES_CONTROL                    0x20A108008
#define ADDR_AES_STATUS                     0x20A108018

/* SEP */
#define ADDR_DPA_SEEDED                     0x100001140
#define ADDR_SEND_DPA_MESSAGE               0x100002338

/* Timing */
#define ADDR_CLOCK_GATE                     0x100009d4c
#define ADDR_SYSTEM_TIME                    0x10000B0E0
#define ADDR_TIME_HAS_ELAPSED               0x10000B04F

#else
#error "Unsupported checkm8 platform"
#endif

#endif //IPWNDFU_REWRITE_C_BRFUNC_COMMON_H
