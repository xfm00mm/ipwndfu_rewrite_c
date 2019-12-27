#include "command.h"

#include "checkm8.h"
#include "libusb_helpers.h"
#include "libusb.h"

#include <stdlib.h>
#include <string.h>

void free_dev_cmd_resp(struct dev_cmd_resp *resp)
{
    if(resp->data != NULL) free(resp->data);
    free(resp);
}

int dfu_send_data(struct pwned_device *dev, unsigned char *data, long data_len)
{
    checkm8_debug_indent("dfu_send_data(dev = %p, data = %p, data_len = %li)\n", dev, data, data_len);
    long long index = 0, amount;
    int ret;

    while(index < data_len)
    {
        if(data_len - index >= LIBUSB_MAX_PACKET_SIZE) amount = LIBUSB_MAX_PACKET_SIZE;
        else amount = data_len - index;

        checkm8_debug_indent("\tsending chunk of size %li at index %li\n", amount, index);
        ret = libusb_control_transfer(dev->bundle->handle, 0x21, 1, 0, 0, &data[index], amount, 5000);
        if(ret > 0) checkm8_debug_indent("\ttransferred %i bytes\n", ret);
        else
        {
            checkm8_debug_indent("\trequest failed with error code %i (%s)\n", ret, libusb_error_name(ret));
            return CHECKM8_FAIL_XFER;
        }
        index += amount;
    }
}

static unsigned char nullbuf[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

struct dev_cmd_resp *command(struct pwned_device *dev,
                             unsigned char *args, int arg_len, int response_len)
{
    checkm8_debug_indent("command(dev = %p, args = %p, arg_len = %i, response_len = %i)\n",
                         dev, args, arg_len, response_len);

    struct dev_cmd_resp *cmd_resp = calloc(1, sizeof(struct dev_cmd_resp));
    unsigned char resp_buf[response_len];

    if(!is_device_bundle_open(dev))
    {
        cmd_resp->ret = CHECKM8_FAIL_NODEV;
        return cmd_resp;
    }

    int ret;
    ret = dfu_send_data(dev, nullbuf, 16);
    if(IS_CHECKM8_FAIL(ret))
    {
        cmd_resp->ret = ret;
        return cmd_resp;
    }

    ret = libusb_control_transfer(dev->bundle->handle, 0x21, 1, 0, 0, nullbuf, 0, 100);
    if(ret >= 0) checkm8_debug_indent("\ttransferred %i bytes\n", ret);
    else
    {
        checkm8_debug_indent("\trequest failed with error code %i (%s)\n", ret, libusb_error_name(ret));
        cmd_resp->ret = ret;
        return cmd_resp;
    }

    ret = libusb_control_transfer(dev->bundle->handle, 0xA1, 3, 0, 0, nullbuf, 6, 100);
    if(ret >= 0) checkm8_debug_indent("\ttransferred %i bytes\n", ret);
    else
    {
        checkm8_debug_indent("\trequest failed with error code %i (%s)\n", ret, libusb_error_name(ret));
        cmd_resp->ret = ret;
        return cmd_resp;
    }

    ret = libusb_control_transfer(dev->bundle->handle, 0xA1, 3, 0, 0, nullbuf, 6, 100);
    if(ret >= 0) checkm8_debug_indent("\ttransferred %i bytes\n", ret);
    else
    {
        checkm8_debug_indent("\trequest failed with error code %i (%s)\n", ret, libusb_error_name(ret));
        cmd_resp->ret = ret;
        return cmd_resp;
    }

    ret = dfu_send_data(dev, args, arg_len);
    if(IS_CHECKM8_FAIL(ret))
    {
        cmd_resp->ret = ret;
        return cmd_resp;
    }

    if(response_len == 0)
    {
        ret = libusb_control_transfer(dev->bundle->handle,
                                      0xA1, 2, 0xFFFF, 0,
                                      resp_buf, response_len + 1,
                                      100);
        if(ret >= 0) checkm8_debug_indent("\tfinal request transferred %i bytes\n", ret);
        else
        {
            checkm8_debug_indent("\tfinal request failed with error code %i (%s)\n", ret, libusb_error_name(ret));
            cmd_resp->ret = ret;
            return cmd_resp;
        }
    }
    else
    {
        ret = libusb_control_transfer(dev->bundle->handle,
                                      0xA1, 2, 0xFFFF, 0,
                                      resp_buf, response_len,
                                      100);
        if(ret >= 0) checkm8_debug_indent("\tfinal request transferred %i bytes\n", ret);
        else
        {
            checkm8_debug_indent("\tfinal request failed with error code %i (%s)\n", ret, libusb_error_name(ret));
            cmd_resp->ret = ret;
            return cmd_resp;
        }
    }

    cmd_resp->ret = CHECKM8_SUCCESS;
    memcpy(&cmd_resp->magic, resp_buf, 8);
    if(response_len - 8 > 0)
    {
        checkm8_debug_indent("\tcopying %i bytes of output to response data section\n", response_len - 8);
        cmd_resp->data = calloc(1, response_len - 8);
        memcpy(cmd_resp->data, &resp_buf[8], response_len - 8);
    }

    cmd_resp->len = response_len - 8;
    return cmd_resp;
}

#define EXEC_MAGIC 0x6578656365786563ul // 'execexec'[::-1]
#define MEMC_MAGIC 0x6d656d636d656d63ul // 'memcmemc'[::-1]
#define MEMS_MAGIC 0x6d656d736d656d73ul // 'memsmems'[::-1]
#define DONE_MAGIC 0x646f6e65646f6e65ul // 'donedone'[::-1]

struct dev_cmd_resp *dev_memset(struct pwned_device *dev, long long addr, unsigned char c, int len)
{
    checkm8_debug_indent("dev_memset(dev = %p, addr = %lx, c = %x, len = %li)\n", dev, addr, c, len);
    unsigned long long cmd_args[5];
    cmd_args[0] = MEMS_MAGIC;
    cmd_args[1] = 0;
    cmd_args[2] = addr;
    cmd_args[3] = (unsigned long long) c;
    cmd_args[4] = len;

    return command(dev, (unsigned char *) &cmd_args, 5 * sizeof(unsigned long long), 1 * sizeof(unsigned long long));
}

struct dev_cmd_resp *dev_memcpy(struct pwned_device *dev, long long dest, long long src, int len)
{
    checkm8_debug_indent("dev_memset(dev = %p, dest = %lx, src = %lx, len = %li)\n", dev, dest, src, len);
    unsigned long long cmd_args[5];
    cmd_args[0] = MEMC_MAGIC;
    cmd_args[1] = 0;
    cmd_args[2] = dest;
    cmd_args[3] = src;
    cmd_args[4] = len;

    return command(dev, (unsigned char *) &cmd_args, 5 * sizeof(unsigned long long), 1 * sizeof(unsigned long long));
}

struct dev_cmd_resp *dev_exec(struct pwned_device *dev, int response_len, int nargs, unsigned long long *args)
{
    checkm8_debug_indent("dev_exec(dev = %p, response_len = %lu, nargs = %i, args = %p\n", dev, response_len, nargs, args);

    int i;
    unsigned long long *argbase;
    unsigned long long cmd_args[1 + nargs];
    checkm8_debug_indent("\tcopying args\n");

    cmd_args[0] = EXEC_MAGIC;
    cmd_args[1] = 0;
    argbase = (unsigned long long *) ((unsigned char *) &cmd_args[1] + 0);
    for(i = 0; i < nargs; i++)
    {
        argbase[i] = args[i];
        checkm8_debug_indent("\t\t0x%lx (0d%li) (%s)\n", args[i], args[i], (char *) &args[i]);
    }

    return command(dev, (unsigned char *) cmd_args, (1 + nargs) * sizeof(unsigned long long), 16 + response_len);
}

struct dev_cmd_resp *dev_read_memory(struct pwned_device *dev, long long addr, int len)
{
    checkm8_debug_indent("dev_read_memory(dev = %p, addr = %lx, len = %i)\n", dev, addr, len);
    long long index = 0, amount;

    unsigned long long cmd_args[5];
    struct dev_cmd_resp *resp, *ret = calloc(1, sizeof(struct dev_cmd_resp));
    ret->data = calloc(1, len);

    while(index < len)
    {
        if(len - index >= CMD_USB_READ_LIMIT - 16) amount = CMD_USB_READ_LIMIT - 16;
        else amount = len - index;

        checkm8_debug_indent("\treading chunk of size %li at index %li\n", amount, index);
        cmd_args[0] = MEMC_MAGIC;
        cmd_args[1] = 0;
        cmd_args[2] = DFU_IMAGE_BASE + 16;
        cmd_args[3] = addr + index;
        cmd_args[4] = amount;

        resp = command(dev, (unsigned char *) &cmd_args, 5 * sizeof(unsigned long long), 16 + amount);
        ret->ret = resp->ret;

        if(IS_CHECKM8_FAIL(resp->ret))
        {
            checkm8_debug_indent("\tlast transfer failed, aborting\n");
            free_dev_cmd_resp(resp);
            free(ret->data);
            ret->data = NULL;
            return ret;
        }
        else
        {
            checkm8_debug_indent("\tsuccessfully copied chunk\n");
            memcpy(&ret->data[index], &resp->data[8], amount);
            free_dev_cmd_resp(resp);
        }

        index += amount;
    }

    ret->magic = DONE_MAGIC;
    ret->len = len;
    return ret;
}

struct dev_cmd_resp *dev_write_memory(struct pwned_device *dev, long long addr, unsigned char *data, int len)
{
    checkm8_debug_indent("dev_write_memory(dev = %p, addr = %lx, data = %p, len = %i)\n", dev, addr, data, len);

    unsigned char cmd_args[40 + len];
    ((unsigned long *) cmd_args)[0] = MEMC_MAGIC;
    ((unsigned long *) cmd_args)[1] = 0;
    ((unsigned long *) cmd_args)[2] = addr;
    ((unsigned long *) cmd_args)[3] = DFU_IMAGE_BASE + 40;
    ((unsigned long *) cmd_args)[4] = len;
    memcpy(&cmd_args[40], data, len);

    return command(dev, (unsigned char *) &cmd_args, 40 + len, 1 * sizeof(unsigned long long));
}