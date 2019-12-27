#include "checkm8.h"
#include "payload.h"

#include <stdio.h>
#include <stdarg.h>
#include <execinfo.h>
#include <libusb_helpers.h>
#include "command.h"

void checkm8_debug_indent(const char *format, ...)
{
#ifdef CHECKM8_LOGGING
    void *traces[100];
    int depth = backtrace(traces, 100) - 5;
    for(int i = 0; i < depth; i++)
    {
        printf("\t");
    }
    va_list args;

    va_start (args, format);
    vprintf(format, args);
    va_end(args);
#endif
}

void checkm8_debug_block(const char *format, ...)
{
#ifdef CHECKM8_LOGGING
    va_list args;

    va_start (args, format);
    vprintf(format, args);
    va_end(args);
#endif
}


int main()
{
    int ret;
    struct pwned_device *dev = exploit_device();
    if(dev == NULL || dev->status == DEV_NORMAL)
    {
        printf("Failed to exploit device\n");
        return -1;
    }

    struct dev_cmd_resp *resp;
    ret = install_payload(dev, PAYLOAD_SYNC, DRAM);
    if(IS_CHECKM8_FAIL(ret))
    {
        printf("Failed to install sync payload\n");
        return -1;
    }

    ret = install_payload(dev, PAYLOAD_AES, DRAM);
    if(IS_CHECKM8_FAIL(ret))
    {
        printf("Failed to install AES payload\n");
        return -1;
    }

    resp = execute_payload(dev, PAYLOAD_SYNC, 0);
    if(IS_CHECKM8_FAIL(resp->ret))
    {
        printf("Failed to execute sync payload\n");
        return -1;
    }

    unsigned char data[16] = {0xde, 0xad, 0xbe, 0xef, 0xde, 0xad, 0xbe, 0xef, 0xde, 0xad, 0xbe, 0xef, 0xde, 0xad, 0xbe,
                              0xef};
    unsigned char key[16] = {0xde, 0xad, 0xbe, 0xef, 0xde, 0xad, 0xbe, 0xef, 0xde, 0xad, 0xbe, 0xef, 0xde, 0xad, 0xbe,
                             0xef};

    free_dev_cmd_resp(resp);
    resp = write_payload(dev, 0x180152000, data, 16);
    if(IS_CHECKM8_FAIL(resp->ret))
    {
        printf("Failed to write AES data\n");
        return -1;
    }

    free_dev_cmd_resp(resp);
    resp = write_payload(dev, 0x180152010, key, 16);
    if(IS_CHECKM8_FAIL(resp->ret))
    {
        printf("Failed to write AES key\n");
        return -1;
    }

    free_dev_cmd_resp(resp);
    resp = execute_payload(dev, PAYLOAD_AES, 7, 16, 0x180152000, DFU_IMAGE_BASE + 56, 128, 0, 0x180152010, 0);

    if(IS_CHECKM8_FAIL(resp->ret))
    {
        printf("Failed to execute AES\n");
        return -1;
    }
}
