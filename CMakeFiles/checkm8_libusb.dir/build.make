# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/toor/ipwndfu_rewrite_c

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/toor/ipwndfu_rewrite_c

# Include any dependencies generated for this target.
include CMakeFiles/checkm8_libusb.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/checkm8_libusb.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/checkm8_libusb.dir/flags.make

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o: CMakeFiles/checkm8_libusb.dir/flags.make
CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o: checkm8_libusb/src/core.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o   -c /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/core.c

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/core.c > CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.i

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/core.c -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.s

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o.requires:

.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o.requires

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o.provides: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o.requires
	$(MAKE) -f CMakeFiles/checkm8_libusb.dir/build.make CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o.provides.build
.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o.provides

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o.provides.build: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o


CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o: CMakeFiles/checkm8_libusb.dir/flags.make
CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o: checkm8_libusb/src/descriptor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o   -c /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/descriptor.c

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/descriptor.c > CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.i

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/descriptor.c -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.s

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o.requires:

.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o.requires

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o.provides: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o.requires
	$(MAKE) -f CMakeFiles/checkm8_libusb.dir/build.make CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o.provides.build
.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o.provides

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o.provides.build: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o


CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o: CMakeFiles/checkm8_libusb.dir/flags.make
CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o: checkm8_libusb/src/hotplug.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o   -c /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/hotplug.c

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/hotplug.c > CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.i

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/hotplug.c -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.s

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o.requires:

.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o.requires

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o.provides: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o.requires
	$(MAKE) -f CMakeFiles/checkm8_libusb.dir/build.make CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o.provides.build
.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o.provides

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o.provides.build: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o


CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o: CMakeFiles/checkm8_libusb.dir/flags.make
CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o: checkm8_libusb/src/io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o   -c /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/io.c

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/io.c > CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.i

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/io.c -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.s

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o.requires:

.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o.requires

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o.provides: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o.requires
	$(MAKE) -f CMakeFiles/checkm8_libusb.dir/build.make CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o.provides.build
.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o.provides

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o.provides.build: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o


CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o: CMakeFiles/checkm8_libusb.dir/flags.make
CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o: checkm8_libusb/src/strerror.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o   -c /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/strerror.c

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/strerror.c > CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.i

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/strerror.c -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.s

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o.requires:

.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o.requires

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o.provides: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o.requires
	$(MAKE) -f CMakeFiles/checkm8_libusb.dir/build.make CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o.provides.build
.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o.provides

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o.provides.build: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o


CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o: CMakeFiles/checkm8_libusb.dir/flags.make
CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o: checkm8_libusb/src/sync.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o   -c /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/sync.c

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/sync.c > CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.i

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/sync.c -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.s

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o.requires:

.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o.requires

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o.provides: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o.requires
	$(MAKE) -f CMakeFiles/checkm8_libusb.dir/build.make CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o.provides.build
.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o.provides

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o.provides.build: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o


CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o: CMakeFiles/checkm8_libusb.dir/flags.make
CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o: checkm8_libusb/src/os/linux_netlink.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o   -c /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/linux_netlink.c

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/linux_netlink.c > CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.i

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/linux_netlink.c -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.s

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o.requires:

.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o.requires

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o.provides: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o.requires
	$(MAKE) -f CMakeFiles/checkm8_libusb.dir/build.make CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o.provides.build
.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o.provides

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o.provides.build: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o


CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o: CMakeFiles/checkm8_libusb.dir/flags.make
CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o: checkm8_libusb/src/os/linux_usbfs.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o   -c /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/linux_usbfs.c

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/linux_usbfs.c > CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.i

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/linux_usbfs.c -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.s

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o.requires:

.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o.requires

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o.provides: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o.requires
	$(MAKE) -f CMakeFiles/checkm8_libusb.dir/build.make CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o.provides.build
.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o.provides

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o.provides.build: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o


CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o: CMakeFiles/checkm8_libusb.dir/flags.make
CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o: checkm8_libusb/src/os/linux_udev.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o   -c /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/linux_udev.c

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/linux_udev.c > CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.i

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/linux_udev.c -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.s

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o.requires:

.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o.requires

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o.provides: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o.requires
	$(MAKE) -f CMakeFiles/checkm8_libusb.dir/build.make CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o.provides.build
.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o.provides

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o.provides.build: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o


CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o: CMakeFiles/checkm8_libusb.dir/flags.make
CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o: checkm8_libusb/src/os/threads_posix.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o   -c /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/threads_posix.c

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/threads_posix.c > CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.i

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/threads_posix.c -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.s

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o.requires:

.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o.requires

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o.provides: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o.requires
	$(MAKE) -f CMakeFiles/checkm8_libusb.dir/build.make CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o.provides.build
.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o.provides

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o.provides.build: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o


CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o: CMakeFiles/checkm8_libusb.dir/flags.make
CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o: checkm8_libusb/src/os/poll_posix.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o   -c /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/poll_posix.c

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/poll_posix.c > CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.i

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/toor/ipwndfu_rewrite_c/checkm8_libusb/src/os/poll_posix.c -o CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.s

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o.requires:

.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o.requires

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o.provides: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o.requires
	$(MAKE) -f CMakeFiles/checkm8_libusb.dir/build.make CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o.provides.build
.PHONY : CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o.provides

CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o.provides.build: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o


# Object files for target checkm8_libusb
checkm8_libusb_OBJECTS = \
"CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o" \
"CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o" \
"CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o" \
"CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o" \
"CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o" \
"CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o" \
"CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o" \
"CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o" \
"CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o" \
"CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o" \
"CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o"

# External object files for target checkm8_libusb
checkm8_libusb_EXTERNAL_OBJECTS =

libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/build.make
libcheckm8_libusb.a: CMakeFiles/checkm8_libusb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/toor/ipwndfu_rewrite_c/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking C static library libcheckm8_libusb.a"
	$(CMAKE_COMMAND) -P CMakeFiles/checkm8_libusb.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/checkm8_libusb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/checkm8_libusb.dir/build: libcheckm8_libusb.a

.PHONY : CMakeFiles/checkm8_libusb.dir/build

CMakeFiles/checkm8_libusb.dir/requires: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/core.c.o.requires
CMakeFiles/checkm8_libusb.dir/requires: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/descriptor.c.o.requires
CMakeFiles/checkm8_libusb.dir/requires: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/hotplug.c.o.requires
CMakeFiles/checkm8_libusb.dir/requires: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/io.c.o.requires
CMakeFiles/checkm8_libusb.dir/requires: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/strerror.c.o.requires
CMakeFiles/checkm8_libusb.dir/requires: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/sync.c.o.requires
CMakeFiles/checkm8_libusb.dir/requires: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_netlink.c.o.requires
CMakeFiles/checkm8_libusb.dir/requires: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_usbfs.c.o.requires
CMakeFiles/checkm8_libusb.dir/requires: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/linux_udev.c.o.requires
CMakeFiles/checkm8_libusb.dir/requires: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/threads_posix.c.o.requires
CMakeFiles/checkm8_libusb.dir/requires: CMakeFiles/checkm8_libusb.dir/checkm8_libusb/src/os/poll_posix.c.o.requires

.PHONY : CMakeFiles/checkm8_libusb.dir/requires

CMakeFiles/checkm8_libusb.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/checkm8_libusb.dir/cmake_clean.cmake
.PHONY : CMakeFiles/checkm8_libusb.dir/clean

CMakeFiles/checkm8_libusb.dir/depend:
	cd /home/toor/ipwndfu_rewrite_c && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toor/ipwndfu_rewrite_c /home/toor/ipwndfu_rewrite_c /home/toor/ipwndfu_rewrite_c /home/toor/ipwndfu_rewrite_c /home/toor/ipwndfu_rewrite_c/CMakeFiles/checkm8_libusb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/checkm8_libusb.dir/depend
