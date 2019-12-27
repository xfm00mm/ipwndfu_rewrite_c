#ifndef IPWNDFU_REWRITE_C_CHECKM8_CONFIG_H
#define IPWNDFU_REWRITE_C_CHECKM8_CONFIG_H

//#define LIBUSB_LOGGING
#define CHECKM8_LOGGING
#define CHECKM8_PLATFORM 8010
#define CHECKM8_BIN_BASE "/home/grg/Projects/School/NCSU/iphone_aes_sc/checkm8_tool/checkm8_remote/bin/"

void checkm8_debug_indent(const char *format, ...);
void checkm8_debug_block(const char *format, ...);

#endif //IPWNDFU_REWRITE_C_CHECKM8_CONFIG_H
