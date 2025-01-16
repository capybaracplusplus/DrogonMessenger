cmake_minimum_required(VERSION 3.30)
project(MessagingService)

set(CMAKE_CXX_STANDARD 20)

find_package(Drogon REQUIRED)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/libs/jwt-cpp/include)

add_executable(MessagingService
        src/main.cpp
        src/controllers/webSocketController.h
        src/controllers/webSocketController.cc
        src/filters/authFilter.hpp
)

target_link_libraries(MessagingService
        PRIVATE Drogon::Drogon
)

