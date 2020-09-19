# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "srvclint: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(srvclint_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv" NAME_WE)
add_custom_target(_srvclint_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srvclint" "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv" ""
)

get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv" NAME_WE)
add_custom_target(_srvclint_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srvclint" "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(srvclint
  "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvclint
)
_generate_srv_cpp(srvclint
  "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvclint
)

### Generating Module File
_generate_module_cpp(srvclint
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvclint
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(srvclint_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(srvclint_generate_messages srvclint_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv" NAME_WE)
add_dependencies(srvclint_generate_messages_cpp _srvclint_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv" NAME_WE)
add_dependencies(srvclint_generate_messages_cpp _srvclint_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srvclint_gencpp)
add_dependencies(srvclint_gencpp srvclint_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srvclint_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(srvclint
  "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvclint
)
_generate_srv_eus(srvclint
  "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvclint
)

### Generating Module File
_generate_module_eus(srvclint
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvclint
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(srvclint_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(srvclint_generate_messages srvclint_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv" NAME_WE)
add_dependencies(srvclint_generate_messages_eus _srvclint_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv" NAME_WE)
add_dependencies(srvclint_generate_messages_eus _srvclint_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srvclint_geneus)
add_dependencies(srvclint_geneus srvclint_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srvclint_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(srvclint
  "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvclint
)
_generate_srv_lisp(srvclint
  "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvclint
)

### Generating Module File
_generate_module_lisp(srvclint
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvclint
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(srvclint_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(srvclint_generate_messages srvclint_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv" NAME_WE)
add_dependencies(srvclint_generate_messages_lisp _srvclint_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv" NAME_WE)
add_dependencies(srvclint_generate_messages_lisp _srvclint_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srvclint_genlisp)
add_dependencies(srvclint_genlisp srvclint_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srvclint_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(srvclint
  "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvclint
)
_generate_srv_nodejs(srvclint
  "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvclint
)

### Generating Module File
_generate_module_nodejs(srvclint
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvclint
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(srvclint_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(srvclint_generate_messages srvclint_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv" NAME_WE)
add_dependencies(srvclint_generate_messages_nodejs _srvclint_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv" NAME_WE)
add_dependencies(srvclint_generate_messages_nodejs _srvclint_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srvclint_gennodejs)
add_dependencies(srvclint_gennodejs srvclint_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srvclint_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(srvclint
  "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvclint
)
_generate_srv_py(srvclint
  "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvclint
)

### Generating Module File
_generate_module_py(srvclint
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvclint
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(srvclint_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(srvclint_generate_messages srvclint_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/first.srv" NAME_WE)
add_dependencies(srvclint_generate_messages_py _srvclint_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lenovo/catkin1_ws/src/srvclint/srv/prime.srv" NAME_WE)
add_dependencies(srvclint_generate_messages_py _srvclint_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srvclint_genpy)
add_dependencies(srvclint_genpy srvclint_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srvclint_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvclint)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srvclint
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(srvclint_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvclint)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srvclint
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(srvclint_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvclint)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srvclint
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(srvclint_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvclint)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srvclint
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(srvclint_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvclint)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvclint\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srvclint
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(srvclint_generate_messages_py std_msgs_generate_messages_py)
endif()
