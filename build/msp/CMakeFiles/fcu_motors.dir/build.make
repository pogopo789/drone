# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/thanhdat/ws_drone/src/msp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thanhdat/ws_drone/build/msp

# Include any dependencies generated for this target.
include CMakeFiles/fcu_motors.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/fcu_motors.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fcu_motors.dir/flags.make

CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.o: CMakeFiles/fcu_motors.dir/flags.make
CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.o: /home/thanhdat/ws_drone/src/msp/examples/fcu_motor_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/thanhdat/ws_drone/build/msp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.o -c /home/thanhdat/ws_drone/src/msp/examples/fcu_motor_test.cpp

CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/thanhdat/ws_drone/src/msp/examples/fcu_motor_test.cpp > CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.i

CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/thanhdat/ws_drone/src/msp/examples/fcu_motor_test.cpp -o CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.s

# Object files for target fcu_motors
fcu_motors_OBJECTS = \
"CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.o"

# External object files for target fcu_motors
fcu_motors_EXTERNAL_OBJECTS =

fcu_motors: CMakeFiles/fcu_motors.dir/examples/fcu_motor_test.cpp.o
fcu_motors: CMakeFiles/fcu_motors.dir/build.make
fcu_motors: libmsp_fcu.so
fcu_motors: libmspclient.so
fcu_motors: CMakeFiles/fcu_motors.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/thanhdat/ws_drone/build/msp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fcu_motors"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fcu_motors.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fcu_motors.dir/build: fcu_motors

.PHONY : CMakeFiles/fcu_motors.dir/build

CMakeFiles/fcu_motors.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fcu_motors.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fcu_motors.dir/clean

CMakeFiles/fcu_motors.dir/depend:
	cd /home/thanhdat/ws_drone/build/msp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thanhdat/ws_drone/src/msp /home/thanhdat/ws_drone/src/msp /home/thanhdat/ws_drone/build/msp /home/thanhdat/ws_drone/build/msp /home/thanhdat/ws_drone/build/msp/CMakeFiles/fcu_motors.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fcu_motors.dir/depend

