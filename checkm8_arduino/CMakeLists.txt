cmake_minimum_required(VERSION 3.10)
set(CMAKE_TOOLCHAIN_FILE ${CMAKE_SOURCE_DIR}/cmake/ArduinoToolchain.cmake)
set(CMAKE_CXX_STANDARD 98)
project(checkm8_arduino)

set(checkm8_arduino_libhostshield_BOARD uno)
set(checkm8_arduino_libhostshield_SRCS lib/hostshield/Usb.cpp lib/hostshield/SPI.cpp)
generate_arduino_library(checkm8_arduino_libhostshield)

set(checkm8_arduino_BOARD uno)
set(checkm8_arduino_HDRS include/User_Setup.h include/Usb.h)
set(checkm8_arduino_LIBS checkm8_arduino_libhostshield)
set(checkm8_arduino_SKETCH ${CMAKE_CURRENT_SOURCE_DIR}/src/checkm8_arduino.ino)
set(checkm8_arduino_PROGRAMMER avrispmkii)
set(checkm8_arduino_PORT /dev/ttyACM0)

include_directories(include)
generate_arduino_firmware(checkm8_arduino)