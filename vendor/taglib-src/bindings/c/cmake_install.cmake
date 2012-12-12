# Install script for directory: /home/matthew/taglib-1.8/bindings/c

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/matthew/taglib-linux-64")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag_c.so.0.0.0")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag_c.so.0.0.0"
         RPATH "")
  ENDIF(EXISTS "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag_c.so.0.0.0")
  FILE(INSTALL DESTINATION "/home/matthew/taglib-linux-64/lib" TYPE SHARED_LIBRARY FILES
    "/home/matthew/taglib-1.8/bindings/c/libtag_c.so.0.0.0"
    "/home/matthew/taglib-1.8/bindings/c/libtag_c.so.0"
    "/home/matthew/taglib-1.8/bindings/c/libtag_c.so"
    )
  IF(EXISTS "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag_c.so.0.0.0")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag_c.so.0.0.0")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag_c.so.0.0.0")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF(EXISTS "$ENV{DESTDIR}/home/matthew/taglib-linux-64/lib/libtag_c.so.0.0.0")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "/home/matthew/taglib-linux-64/include/taglib" TYPE FILE FILES "/home/matthew/taglib-1.8/bindings/c/tag_c.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "/home/matthew/taglib-linux-64/lib/pkgconfig" TYPE FILE FILES "/home/matthew/taglib-1.8/bindings/c/taglib_c.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

