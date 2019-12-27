project(checkm8_remote C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_FLAGS -g)

include_directories(include)
add_executable(checkm8_remote main.c src/libusb_helpers.c src/exploit.c src/payload.c src/command.c)
add_custom_command(TARGET checkm8_remote POST_BUILD
                    COMMAND ln
                    ARGS -s -f -n
                        ${PROJECT_SOURCE_DIR}/checkm8_payloads/bin
                        ${CMAKE_CURRENT_SOURCE_DIR}/bin/payloads)

target_link_libraries(checkm8_remote checkm8_libusb pthread udev)