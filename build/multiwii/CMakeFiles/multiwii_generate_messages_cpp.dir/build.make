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
CMAKE_SOURCE_DIR = /home/thanhdat/drone/src/ros-multiwii

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thanhdat/drone/build/multiwii

# Utility rule file for multiwii_generate_messages_cpp.

# Include the progress variables for this target.
include CMakeFiles/multiwii_generate_messages_cpp.dir/progress.make

CMakeFiles/multiwii_generate_messages_cpp: /home/thanhdat/drone/devel/.private/multiwii/include/multiwii/MSPRawMessage.h
CMakeFiles/multiwii_generate_messages_cpp: /home/thanhdat/drone/devel/.private/multiwii/include/multiwii/Waypoints.h
CMakeFiles/multiwii_generate_messages_cpp: /home/thanhdat/drone/devel/.private/multiwii/include/multiwii/Waypoint.h
CMakeFiles/multiwii_generate_messages_cpp: /home/thanhdat/drone/devel/.private/multiwii/include/multiwii/ReceiveMSPRawMessage.h
CMakeFiles/multiwii_generate_messages_cpp: /home/thanhdat/drone/devel/.private/multiwii/include/multiwii/SendMSPRawMessage.h


/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/MSPRawMessage.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/MSPRawMessage.h: /home/thanhdat/drone/src/ros-multiwii/msg/MSPRawMessage.msg
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/MSPRawMessage.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/thanhdat/drone/build/multiwii/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from multiwii/MSPRawMessage.msg"
	cd /home/thanhdat/drone/src/ros-multiwii && /home/thanhdat/drone/build/multiwii/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/thanhdat/drone/src/ros-multiwii/msg/MSPRawMessage.msg -Imultiwii:/home/thanhdat/drone/src/ros-multiwii/msg -p multiwii -o /home/thanhdat/drone/devel/.private/multiwii/include/multiwii -e /opt/ros/noetic/share/gencpp/cmake/..

/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/Waypoints.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/Waypoints.h: /home/thanhdat/drone/src/ros-multiwii/msg/Waypoints.msg
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/Waypoints.h: /home/thanhdat/drone/src/ros-multiwii/msg/Waypoint.msg
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/Waypoints.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/thanhdat/drone/build/multiwii/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from multiwii/Waypoints.msg"
	cd /home/thanhdat/drone/src/ros-multiwii && /home/thanhdat/drone/build/multiwii/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/thanhdat/drone/src/ros-multiwii/msg/Waypoints.msg -Imultiwii:/home/thanhdat/drone/src/ros-multiwii/msg -p multiwii -o /home/thanhdat/drone/devel/.private/multiwii/include/multiwii -e /opt/ros/noetic/share/gencpp/cmake/..

/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/Waypoint.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/Waypoint.h: /home/thanhdat/drone/src/ros-multiwii/msg/Waypoint.msg
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/Waypoint.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/thanhdat/drone/build/multiwii/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from multiwii/Waypoint.msg"
	cd /home/thanhdat/drone/src/ros-multiwii && /home/thanhdat/drone/build/multiwii/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/thanhdat/drone/src/ros-multiwii/msg/Waypoint.msg -Imultiwii:/home/thanhdat/drone/src/ros-multiwii/msg -p multiwii -o /home/thanhdat/drone/devel/.private/multiwii/include/multiwii -e /opt/ros/noetic/share/gencpp/cmake/..

/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/ReceiveMSPRawMessage.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/ReceiveMSPRawMessage.h: /home/thanhdat/drone/src/ros-multiwii/srv/ReceiveMSPRawMessage.srv
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/ReceiveMSPRawMessage.h: /home/thanhdat/drone/src/ros-multiwii/msg/MSPRawMessage.msg
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/ReceiveMSPRawMessage.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/ReceiveMSPRawMessage.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/thanhdat/drone/build/multiwii/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating C++ code from multiwii/ReceiveMSPRawMessage.srv"
	cd /home/thanhdat/drone/src/ros-multiwii && /home/thanhdat/drone/build/multiwii/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/thanhdat/drone/src/ros-multiwii/srv/ReceiveMSPRawMessage.srv -Imultiwii:/home/thanhdat/drone/src/ros-multiwii/msg -p multiwii -o /home/thanhdat/drone/devel/.private/multiwii/include/multiwii -e /opt/ros/noetic/share/gencpp/cmake/..

/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/SendMSPRawMessage.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/SendMSPRawMessage.h: /home/thanhdat/drone/src/ros-multiwii/srv/SendMSPRawMessage.srv
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/SendMSPRawMessage.h: /home/thanhdat/drone/src/ros-multiwii/msg/MSPRawMessage.msg
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/SendMSPRawMessage.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/thanhdat/drone/devel/.private/multiwii/include/multiwii/SendMSPRawMessage.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/thanhdat/drone/build/multiwii/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating C++ code from multiwii/SendMSPRawMessage.srv"
	cd /home/thanhdat/drone/src/ros-multiwii && /home/thanhdat/drone/build/multiwii/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/thanhdat/drone/src/ros-multiwii/srv/SendMSPRawMessage.srv -Imultiwii:/home/thanhdat/drone/src/ros-multiwii/msg -p multiwii -o /home/thanhdat/drone/devel/.private/multiwii/include/multiwii -e /opt/ros/noetic/share/gencpp/cmake/..

multiwii_generate_messages_cpp: CMakeFiles/multiwii_generate_messages_cpp
multiwii_generate_messages_cpp: /home/thanhdat/drone/devel/.private/multiwii/include/multiwii/MSPRawMessage.h
multiwii_generate_messages_cpp: /home/thanhdat/drone/devel/.private/multiwii/include/multiwii/Waypoints.h
multiwii_generate_messages_cpp: /home/thanhdat/drone/devel/.private/multiwii/include/multiwii/Waypoint.h
multiwii_generate_messages_cpp: /home/thanhdat/drone/devel/.private/multiwii/include/multiwii/ReceiveMSPRawMessage.h
multiwii_generate_messages_cpp: /home/thanhdat/drone/devel/.private/multiwii/include/multiwii/SendMSPRawMessage.h
multiwii_generate_messages_cpp: CMakeFiles/multiwii_generate_messages_cpp.dir/build.make

.PHONY : multiwii_generate_messages_cpp

# Rule to build all files generated by this target.
CMakeFiles/multiwii_generate_messages_cpp.dir/build: multiwii_generate_messages_cpp

.PHONY : CMakeFiles/multiwii_generate_messages_cpp.dir/build

CMakeFiles/multiwii_generate_messages_cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/multiwii_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/multiwii_generate_messages_cpp.dir/clean

CMakeFiles/multiwii_generate_messages_cpp.dir/depend:
	cd /home/thanhdat/drone/build/multiwii && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thanhdat/drone/src/ros-multiwii /home/thanhdat/drone/src/ros-multiwii /home/thanhdat/drone/build/multiwii /home/thanhdat/drone/build/multiwii /home/thanhdat/drone/build/multiwii/CMakeFiles/multiwii_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/multiwii_generate_messages_cpp.dir/depend

