#ifndef IPWNDFU_REWRITE_C_COMMAND_H
#define IPWNDFU_REWRITE_C_COMMAND_H

#include "checkm8.h"

#define CMD_USB_READ_LIMIT  0xFF0

struct dev_cmd_resp
{
    int ret;
    unsigned long long magic;
    unsigned char *data;
    int len;
};

struct dev_cmd_resp *dev_memset(struct pwned_device *dev, long long addr, unsigned char c, int len);
struct dev_cmd_resp *dev_memcpy(struct pwned_device *dev, long long dest, long long src, int len);
struct dev_cmd_resp *dev_exec(struct pwned_device *dev, int response_len, int nargs, unsigned long long *args);

struct dev_cmd_resp *dev_read_memory(struct pwned_device *dev, long long addr, int len);
struct dev_cmd_resp *dev_write_memory(struct pwned_device *dev, long long addr, unsigned char *data, int len);

void free_dev_cmd_resp(struct dev_cmd_resp *resp);

#endif //IPWNDFU_REWRITE_C_COMMAND_H
