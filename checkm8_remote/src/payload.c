#include "payload.h"

#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>

#include "command.h"
#include "libusb_helpers.h"


struct payload
{
    PAYLOAD_T type;
    unsigned char *data;
    int len;

    long long install_base;
    struct payload *next;
    struct payload *prev;
};

struct payload *get_payload(PAYLOAD_T p)
{
    FILE *payload_file;
    struct payload *res;
    char *path;

    switch(p)
    {
        case PAYLOAD_SYNC:
            path = PAYLOAD_SYNC_BIN;
            break;

        case PAYLOAD_AES:
            path = PAYLOAD_AES_BIN;
            break;

        case PAYLOAD_SYSREG:
            path = PAYLOAD_SYSREG_BIN;
            break;

        default:
            return NULL;
    }

    res = malloc(sizeof(struct payload));
    if(res == NULL) return NULL;

    if((payload_file = fopen(path, "rb")) == NULL)
    {
        free(res);
        return NULL;
    }

    fseek(payload_file, 0, SEEK_END);
    res->type = p;
    res->len = ftell(payload_file);
    res->data = malloc(res->len);
    res->install_base = -1;
    res->next = NULL;
    res->prev = NULL;

    rewind(payload_file);
    fread(res->data, 1, res->len, payload_file);
    fclose(payload_file);

    return res;
}

void free_payload(struct payload *p)
{
    free(p->data);
    free(p);
}

long long curr_address = 0x180150000;
long long get_address(struct pwned_device *dev, LOCATION_T l)
{
    //TODO: make an actual memory allocator
    long long ret = curr_address;
    curr_address += 0x1000;
    return ret;
}


struct payload *dev_retrieve_payload(struct pwned_device *dev, PAYLOAD_T p)
{
    struct payload *curr;
    for(curr = dev->installed; curr != NULL; curr = curr->next)
    {
        if(curr->type == p) return curr;
    }

    return NULL;
}

int dev_link_payload(struct pwned_device *dev, struct payload *pl)
{
    struct payload *curr;
    if(dev->installed == NULL)
    {
        dev->installed = pl;
        return CHECKM8_SUCCESS;
    }
    else
    {
        for(curr = dev->installed; curr->next != NULL; curr = curr->next);

        curr->next = pl;
        pl->prev = curr;
        return CHECKM8_SUCCESS;
    }
}

int *dev_unlink_payload(struct pwned_device *dev, struct payload *pl)
{
    if(dev->installed == pl)
    {
        dev->installed = NULL;
        return CHECKM8_SUCCESS;
    }
    else
    {
        pl->prev->next = pl->next;
        pl->next->prev = pl->prev;
        return CHECKM8_SUCCESS;
    }
}


int install_payload(struct pwned_device *dev, PAYLOAD_T p, LOCATION_T loc)
{
    checkm8_debug_indent("install_payload(dev = %p, p = %i, loc = %i)\n", dev, p, loc);
    int i, ret;
    struct dev_cmd_resp *resp = NULL;
    struct payload *pl = get_payload(p);
    long long addr = get_address(dev, loc);

    if(pl == NULL || addr == -1) return CHECKM8_FAIL_INVARGS;

    ret = get_device_bundle(dev);
    if(IS_CHECKM8_FAIL(ret)) return ret;

    resp = dev_write_memory(dev, addr, pl->data, pl->len);
    if(IS_CHECKM8_FAIL(resp->ret))
    {
        free_dev_cmd_resp(resp);
        release_device_bundle(dev);
        return CHECKM8_FAIL_XFER;
    }

    checkm8_debug_indent("\tdone copying and linking payload\n");
    pl->install_base = addr;
    dev_link_payload(dev, pl);

    free_dev_cmd_resp(resp);
    release_device_bundle(dev);
    return ret;
}

int uninstall_payload(struct pwned_device *dev, PAYLOAD_T p)
{
    //TODO: free memory in memory allocator
}

struct dev_cmd_resp *execute_payload(struct pwned_device *dev, PAYLOAD_T p, int nargs, ...)
{
    checkm8_debug_indent("execute_payload(dev = %p, p = %i, nargs = %i, ...)\n", dev, p, nargs);
    int ret, i;
    struct dev_cmd_resp *resp;
    struct payload *pl;

    if((pl = dev_retrieve_payload(dev, p)) == NULL)
    {
        checkm8_debug_indent("\tpayload is not installed\n");
        resp = calloc(1, sizeof(struct dev_cmd_resp));
        resp->ret = CHECKM8_FAIL_NOINST;
        return resp;
    }

    ret = get_device_bundle(dev);
    if(IS_CHECKM8_FAIL(ret))
    {
        resp = calloc(1, sizeof(struct dev_cmd_resp));
        resp->ret = ret;
        return resp;
    }

    unsigned long long args[nargs + 1];
    args[0] = pl->install_base;
    checkm8_debug_indent("\tinstall base is 0x%lX\n", args[0]);

    va_list arg_list;
    va_start(arg_list, nargs);
    for(i = 0; i < nargs; i++)
    {
        args[i + 1] = va_arg(arg_list, unsigned long long);
        checkm8_debug_indent("\textracted arg %lx\n", args[i + 1]);
    }
    va_end(arg_list);

    resp = dev_exec(dev, 16, nargs + 1, args);
    release_device_bundle(dev);
    return resp;
}

struct dev_cmd_resp *read_payload(struct pwned_device *dev, long long addr, int len)
{
    checkm8_debug_indent("read_payload(dev = %p, addr = %lx, len = %i)\n", dev, addr, len);
    int ret;
    struct dev_cmd_resp *resp;

    ret = get_device_bundle(dev);
    if(IS_CHECKM8_FAIL(ret))
    {
        checkm8_debug_indent("\tfailed to get device bundle\n");
        resp = calloc(1, sizeof(struct dev_cmd_resp));
        resp->ret = ret;
        return resp;
    }

    resp = dev_read_memory(dev, addr, len);
    release_device_bundle(dev);
    return resp;
}

struct dev_cmd_resp *write_payload(struct pwned_device *dev, long long addr, unsigned char *data, int len)
{
    checkm8_debug_indent("write_payload(dev = %p, addr = %lx, data = %p, len = %i)\n", dev, addr, data, len);
    int ret;
    struct dev_cmd_resp *resp;

    ret = get_device_bundle(dev);
    if(IS_CHECKM8_FAIL(ret))
    {
        checkm8_debug_indent("\tfailed to get device bundle\n");
        resp = calloc(1, sizeof(struct dev_cmd_resp));
        resp->ret = ret;
        return resp;
    }

    resp = dev_write_memory(dev, addr, data, len);
    release_device_bundle(dev);
    return resp;
}
