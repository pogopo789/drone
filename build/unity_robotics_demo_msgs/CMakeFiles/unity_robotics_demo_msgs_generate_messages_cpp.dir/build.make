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
CMAKE_SOURCE_DIR = /home/thanhdat/drone/src/unity_robotics_demo_msgs

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/thanhdat/drone/build/unity_robotics_demo_msgs

# Utility rule file for unity_robotics_demo_msgs_generate_messages_cpp.

# Include the progress variables for this target.
include CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp.dir/progress.make

CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp: /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/Pose.h
CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp: /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PosRot.h
CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp: /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/UnityColor.h
CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp: /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/ObjectPoseService.h
CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp: /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PositionService.h


/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/Pose.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/Pose.h: /home/thanhdat/drone/src/unity_robotics_demo_msgs/msg/Pose.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/Pose.h: /opt/ros/noetic/share/std_msgs/msg/Header.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/Pose.h: /opt/ros/noetic/share/geometry_msgs/msg/Point.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/Pose.h: /opt/ros/noetic/share/geometry_msgs/msg/Pose.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/Pose.h: /opt/ros/noetic/share/geometry_msgs/msg/Quaternion.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/Pose.h: /opt/ros/noetic/share/geometry_msgs/msg/PoseStamped.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/Pose.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/thanhdat/drone/build/unity_robotics_demo_msgs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from unity_robotics_demo_msgs/Pose.msg"
	cd /home/thanhdat/drone/src/unity_robotics_demo_msgs && /home/thanhdat/drone/build/unity_robotics_demo_msgs/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/thanhdat/drone/src/unity_robotics_demo_msgs/msg/Pose.msg -Iunity_robotics_demo_msgs:/home/thanhdat/drone/src/unity_robotics_demo_msgs/msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p unity_robotics_demo_msgs -o /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs -e /opt/ros/noetic/share/gencpp/cmake/..

/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PosRot.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PosRot.h: /home/thanhdat/drone/src/unity_robotics_demo_msgs/msg/PosRot.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PosRot.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/thanhdat/drone/build/unity_robotics_demo_msgs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from unity_robotics_demo_msgs/PosRot.msg"
	cd /home/thanhdat/drone/src/unity_robotics_demo_msgs && /home/thanhdat/drone/build/unity_robotics_demo_msgs/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/thanhdat/drone/src/unity_robotics_demo_msgs/msg/PosRot.msg -Iunity_robotics_demo_msgs:/home/thanhdat/drone/src/unity_robotics_demo_msgs/msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p unity_robotics_demo_msgs -o /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs -e /opt/ros/noetic/share/gencpp/cmake/..

/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/UnityColor.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/UnityColor.h: /home/thanhdat/drone/src/unity_robotics_demo_msgs/msg/UnityColor.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/UnityColor.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/thanhdat/drone/build/unity_robotics_demo_msgs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from unity_robotics_demo_msgs/UnityColor.msg"
	cd /home/thanhdat/drone/src/unity_robotics_demo_msgs && /home/thanhdat/drone/build/unity_robotics_demo_msgs/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/thanhdat/drone/src/unity_robotics_demo_msgs/msg/UnityColor.msg -Iunity_robotics_demo_msgs:/home/thanhdat/drone/src/unity_robotics_demo_msgs/msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p unity_robotics_demo_msgs -o /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs -e /opt/ros/noetic/share/gencpp/cmake/..

/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/ObjectPoseService.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/ObjectPoseService.h: /home/thanhdat/drone/src/unity_robotics_demo_msgs/srv/ObjectPoseService.srv
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/ObjectPoseService.h: /opt/ros/noetic/share/geometry_msgs/msg/Point.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/ObjectPoseService.h: /opt/ros/noetic/share/geometry_msgs/msg/Quaternion.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/ObjectPoseService.h: /opt/ros/noetic/share/geometry_msgs/msg/Pose.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/ObjectPoseService.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/ObjectPoseService.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/thanhdat/drone/build/unity_robotics_demo_msgs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating C++ code from unity_robotics_demo_msgs/ObjectPoseService.srv"
	cd /home/thanhdat/drone/src/unity_robotics_demo_msgs && /home/thanhdat/drone/build/unity_robotics_demo_msgs/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/thanhdat/drone/src/unity_robotics_demo_msgs/srv/ObjectPoseService.srv -Iunity_robotics_demo_msgs:/home/thanhdat/drone/src/unity_robotics_demo_msgs/msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p unity_robotics_demo_msgs -o /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs -e /opt/ros/noetic/share/gencpp/cmake/..

/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PositionService.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PositionService.h: /home/thanhdat/drone/src/unity_robotics_demo_msgs/srv/PositionService.srv
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PositionService.h: /home/thanhdat/drone/src/unity_robotics_demo_msgs/msg/PosRot.msg
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PositionService.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PositionService.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/thanhdat/drone/build/unity_robotics_demo_msgs/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating C++ code from unity_robotics_demo_msgs/PositionService.srv"
	cd /home/thanhdat/drone/src/unity_robotics_demo_msgs && /home/thanhdat/drone/build/unity_robotics_demo_msgs/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/thanhdat/drone/src/unity_robotics_demo_msgs/srv/PositionService.srv -Iunity_robotics_demo_msgs:/home/thanhdat/drone/src/unity_robotics_demo_msgs/msg -Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p unity_robotics_demo_msgs -o /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs -e /opt/ros/noetic/share/gencpp/cmake/..

unity_robotics_demo_msgs_generate_messages_cpp: CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp
unity_robotics_demo_msgs_generate_messages_cpp: /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/Pose.h
unity_robotics_demo_msgs_generate_messages_cpp: /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PosRot.h
unity_robotics_demo_msgs_generate_messages_cpp: /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/UnityColor.h
unity_robotics_demo_msgs_generate_messages_cpp: /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/ObjectPoseService.h
unity_robotics_demo_msgs_generate_messages_cpp: /home/thanhdat/drone/devel/.private/unity_robotics_demo_msgs/include/unity_robotics_demo_msgs/PositionService.h
unity_robotics_demo_msgs_generate_messages_cpp: CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp.dir/build.make

.PHONY : unity_robotics_demo_msgs_generate_messages_cpp

# Rule to build all files generated by this target.
CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp.dir/build: unity_robotics_demo_msgs_generate_messages_cpp

.PHONY : CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp.dir/build

CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp.dir/clean

CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp.dir/depend:
	cd /home/thanhdat/drone/build/unity_robotics_demo_msgs && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/thanhdat/drone/src/unity_robotics_demo_msgs /home/thanhdat/drone/src/unity_robotics_demo_msgs /home/thanhdat/drone/build/unity_robotics_demo_msgs /home/thanhdat/drone/build/unity_robotics_demo_msgs /home/thanhdat/drone/build/unity_robotics_demo_msgs/CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/unity_robotics_demo_msgs_generate_messages_cpp.dir/depend
