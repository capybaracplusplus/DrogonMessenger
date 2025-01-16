# Install script for directory: /mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/libredis++.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libredis++.so.1.3.14"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libredis++.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/libredis++.so.1.3.14"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/libredis++.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libredis++.so.1.3.14"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libredis++.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/usr/local/lib:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/libredis++.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/redis++/redis++-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/redis++/redis++-targets.cmake"
         "/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/CMakeFiles/Export/7d81f1912f64acc9d7f7c51a1b3ceb40/redis++-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/redis++/redis++-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/redis++/redis++-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/redis++" TYPE FILE FILES "/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/CMakeFiles/Export/7d81f1912f64acc9d7f7c51a1b3ceb40/redis++-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/redis++" TYPE FILE FILES "/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/CMakeFiles/Export/7d81f1912f64acc9d7f7c51a1b3ceb40/redis++-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sw/redis++" TYPE FILE FILES
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/cmd_formatter.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/command.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/command_args.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/command_options.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/connection.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/connection_pool.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/cxx17/sw/redis++/cxx_utils.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/errors.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/no_tls/sw/redis++/tls.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/pipeline.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/queued_redis.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/queued_redis.hpp"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/redis++.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/redis.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/redis.hpp"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/redis_cluster.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/redis_cluster.hpp"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/redis_uri.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/reply.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/sentinel.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/shards.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/shards_pool.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/subscriber.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/transaction.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/utils.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/version.h"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/src/sw/redis++/hiredis_features.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sw/redis++/patterns" TYPE FILE FILES "/mnt/c/Users/dimak/CLionProjects/drogonChat/AuthService/libs/redis-plus-plus/src/sw/redis++/patterns/redlock.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/redis++" TYPE FILE FILES
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/cmake/redis++-config.cmake"
    "/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/cmake/redis++-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/cmake/redis++.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/c/Users/dimak/CLionProjects/drogonChat/cmake-build-debug/AuthService/libs/redis-plus-plus/test/cmake_install.cmake")

endif()

