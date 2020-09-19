# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "CombinedInfo: 2 messages, 0 services")

set(MSG_I_FLAGS "-ICombinedInfo:/home/lenovo/catkin1_ws/src/CombinedInfo/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(CombinedInfo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg" NAME_WE)
add_custom_target(_CombinedInfo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "CombinedInfo" "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg" ""
)

get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg" NAME_WE)
add_custom_target(_CombinedInfo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "CombinedInfo" "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg" "CombinedInfo/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(CombinedInfo
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/CombinedInfo
)
_generate_msg_cpp(CombinedInfo
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/CombinedInfo
)

### Generating Services

### Generating Module File
_generate_module_cpp(CombinedInfo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/CombinedInfo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(CombinedInfo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(CombinedInfo_generate_messages CombinedInfo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg" NAME_WE)
add_dependencies(CombinedInfo_generate_messages_cpp _CombinedInfo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg" NAME_WE)
add_dependencies(CombinedInfo_generate_messages_cpp _CombinedInfo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(CombinedInfo_gencpp)
add_dependencies(CombinedInfo_gencpp CombinedInfo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS CombinedInfo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(CombinedInfo
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/CombinedInfo
)
_generate_msg_eus(CombinedInfo
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/CombinedInfo
)

### Generating Services

### Generating Module File
_generate_module_eus(CombinedInfo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/CombinedInfo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(CombinedInfo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(CombinedInfo_generate_messages CombinedInfo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg" NAME_WE)
add_dependencies(CombinedInfo_generate_messages_eus _CombinedInfo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg" NAME_WE)
add_dependencies(CombinedInfo_generate_messages_eus _CombinedInfo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(CombinedInfo_geneus)
add_dependencies(CombinedInfo_geneus CombinedInfo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS CombinedInfo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(CombinedInfo
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/CombinedInfo
)
_generate_msg_lisp(CombinedInfo
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/CombinedInfo
)

### Generating Services

### Generating Module File
_generate_module_lisp(CombinedInfo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/CombinedInfo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(CombinedInfo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(CombinedInfo_generate_messages CombinedInfo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg" NAME_WE)
add_dependencies(CombinedInfo_generate_messages_lisp _CombinedInfo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg" NAME_WE)
add_dependencies(CombinedInfo_generate_messages_lisp _CombinedInfo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(CombinedInfo_genlisp)
add_dependencies(CombinedInfo_genlisp CombinedInfo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS CombinedInfo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(CombinedInfo
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/CombinedInfo
)
_generate_msg_nodejs(CombinedInfo
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/CombinedInfo
)

### Generating Services

### Generating Module File
_generate_module_nodejs(CombinedInfo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/CombinedInfo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(CombinedInfo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(CombinedInfo_generate_messages CombinedInfo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg" NAME_WE)
add_dependencies(CombinedInfo_generate_messages_nodejs _CombinedInfo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg" NAME_WE)
add_dependencies(CombinedInfo_generate_messages_nodejs _CombinedInfo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(CombinedInfo_gennodejs)
add_dependencies(CombinedInfo_gennodejs CombinedInfo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS CombinedInfo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(CombinedInfo
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/CombinedInfo
)
_generate_msg_py(CombinedInfo
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg"
  "${MSG_I_FLAGS}"
  "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/CombinedInfo
)

### Generating Services

### Generating Module File
_generate_module_py(CombinedInfo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/CombinedInfo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(CombinedInfo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(CombinedInfo_generate_messages CombinedInfo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Vector3.msg" NAME_WE)
add_dependencies(CombinedInfo_generate_messages_py _CombinedInfo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/CombinedInfo/msg/Info.msg" NAME_WE)
add_dependencies(CombinedInfo_generate_messages_py _CombinedInfo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(CombinedInfo_genpy)
add_dependencies(CombinedInfo_genpy CombinedInfo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS CombinedInfo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/CombinedInfo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/CombinedInfo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(CombinedInfo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(CombinedInfo_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/CombinedInfo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/CombinedInfo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(CombinedInfo_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(CombinedInfo_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/CombinedInfo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/CombinedInfo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(CombinedInfo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(CombinedInfo_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/CombinedInfo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/CombinedInfo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(CombinedInfo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(CombinedInfo_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/CombinedInfo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/CombinedInfo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/CombinedInfo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(CombinedInfo_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(CombinedInfo_generate_messages_py geometry_msgs_generate_messages_py)
endif()
