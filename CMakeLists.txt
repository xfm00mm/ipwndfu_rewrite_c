cmake_minimum_required(VERSION 3.10)
project(checkm8_tool)
enable_language(C)

include_directories(include)
include_directories(checkm8_libusb/src)
add_library(checkm8_libusb
        checkm8_libusb/src/core.c checkm8_libusb/src/descriptor.c checkm8_libusb/src/hotplug.c
        checkm8_libusb/src/io.c checkm8_libusb/src/strerror.c checkm8_libusb/src/sync.c

        checkm8_libusb/src/os/linux_netlink.c checkm8_libusb/src/os/linux_usbfs.c checkm8_libusb/src/os/linux_udev.c
        checkm8_libusb/src/os/threads_posix.c checkm8_libusb/src/os/poll_posix.c)

add_subdirectory(checkm8_remote)
add_subdirectory(checkm8_payloads)
