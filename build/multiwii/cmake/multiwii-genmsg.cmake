# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "multiwii: 1 messages, 2 services")

set(MSG_I_FLAGS "-Imultiwii:/home/thanhdat/drone/src/multiwii/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(multiwii_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg" NAME_WE)
add_custom_target(_multiwii_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multiwii" "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg" ""
)

get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv" NAME_WE)
add_custom_target(_multiwii_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multiwii" "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv" "multiwii/MSPRawMessage"
)

get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv" NAME_WE)
add_custom_target(_multiwii_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "multiwii" "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv" "multiwii/MSPRawMessage"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(multiwii
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multiwii
)

### Generating Services
_generate_srv_cpp(multiwii
  "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv"
  "${MSG_I_FLAGS}"
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multiwii
)
_generate_srv_cpp(multiwii
  "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv"
  "${MSG_I_FLAGS}"
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multiwii
)

### Generating Module File
_generate_module_cpp(multiwii
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multiwii
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(multiwii_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(multiwii_generate_messages multiwii_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg" NAME_WE)
add_dependencies(multiwii_generate_messages_cpp _multiwii_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv" NAME_WE)
add_dependencies(multiwii_generate_messages_cpp _multiwii_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv" NAME_WE)
add_dependencies(multiwii_generate_messages_cpp _multiwii_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multiwii_gencpp)
add_dependencies(multiwii_gencpp multiwii_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multiwii_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(multiwii
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multiwii
)

### Generating Services
_generate_srv_eus(multiwii
  "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv"
  "${MSG_I_FLAGS}"
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multiwii
)
_generate_srv_eus(multiwii
  "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv"
  "${MSG_I_FLAGS}"
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multiwii
)

### Generating Module File
_generate_module_eus(multiwii
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multiwii
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(multiwii_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(multiwii_generate_messages multiwii_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg" NAME_WE)
add_dependencies(multiwii_generate_messages_eus _multiwii_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv" NAME_WE)
add_dependencies(multiwii_generate_messages_eus _multiwii_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv" NAME_WE)
add_dependencies(multiwii_generate_messages_eus _multiwii_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multiwii_geneus)
add_dependencies(multiwii_geneus multiwii_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multiwii_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(multiwii
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multiwii
)

### Generating Services
_generate_srv_lisp(multiwii
  "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv"
  "${MSG_I_FLAGS}"
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multiwii
)
_generate_srv_lisp(multiwii
  "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv"
  "${MSG_I_FLAGS}"
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multiwii
)

### Generating Module File
_generate_module_lisp(multiwii
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multiwii
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(multiwii_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(multiwii_generate_messages multiwii_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg" NAME_WE)
add_dependencies(multiwii_generate_messages_lisp _multiwii_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv" NAME_WE)
add_dependencies(multiwii_generate_messages_lisp _multiwii_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv" NAME_WE)
add_dependencies(multiwii_generate_messages_lisp _multiwii_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multiwii_genlisp)
add_dependencies(multiwii_genlisp multiwii_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multiwii_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(multiwii
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multiwii
)

### Generating Services
_generate_srv_nodejs(multiwii
  "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv"
  "${MSG_I_FLAGS}"
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multiwii
)
_generate_srv_nodejs(multiwii
  "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv"
  "${MSG_I_FLAGS}"
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multiwii
)

### Generating Module File
_generate_module_nodejs(multiwii
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multiwii
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(multiwii_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(multiwii_generate_messages multiwii_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg" NAME_WE)
add_dependencies(multiwii_generate_messages_nodejs _multiwii_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv" NAME_WE)
add_dependencies(multiwii_generate_messages_nodejs _multiwii_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv" NAME_WE)
add_dependencies(multiwii_generate_messages_nodejs _multiwii_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multiwii_gennodejs)
add_dependencies(multiwii_gennodejs multiwii_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multiwii_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(multiwii
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multiwii
)

### Generating Services
_generate_srv_py(multiwii
  "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv"
  "${MSG_I_FLAGS}"
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multiwii
)
_generate_srv_py(multiwii
  "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv"
  "${MSG_I_FLAGS}"
  "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multiwii
)

### Generating Module File
_generate_module_py(multiwii
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multiwii
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(multiwii_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(multiwii_generate_messages multiwii_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/msg/MSPRawMessage.msg" NAME_WE)
add_dependencies(multiwii_generate_messages_py _multiwii_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/ReceiveMSPRawMessage.srv" NAME_WE)
add_dependencies(multiwii_generate_messages_py _multiwii_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/thanhdat/drone/src/multiwii/srv/SendMSPRawMessage.srv" NAME_WE)
add_dependencies(multiwii_generate_messages_py _multiwii_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(multiwii_genpy)
add_dependencies(multiwii_genpy multiwii_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS multiwii_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multiwii)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/multiwii
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multiwii)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/multiwii
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multiwii)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/multiwii
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multiwii)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/multiwii
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multiwii)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multiwii\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/multiwii
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
