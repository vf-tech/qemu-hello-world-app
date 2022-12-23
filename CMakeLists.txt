# Set the minimun CMake version required by the project
cmake_minimum_required(VERSION 3.5)

#Set build system
set(CMAKE_GENERATOR "Unix Makefiles")
message("generator is set to ${CMAKE_GENERATOR}")
set(CMAKE_VERBOSE_MAKEFILE ON)

#Set system
set(CMAKE_SYSTEM_NAME       Generic)
set(CMAKE_SYSTEM_PROCESSOR  arm)

# Set a name for the project
project(qemu-hello-world)

# Set cross compiler
set(CROSS_TARGET_TRIPLET "/home/malinbay/workspace/qemu/buildroot-2018.08/output/host/bin/arm-none-linux-gnueabi-")

# Prepend the cross-compiler prefix to the used tools.
set(CMAKE_C_COMPILER    "${CROSS_TARGET_TRIPLET}gcc")
set(CMAKE_CXX_COMPILER  "${CROSS_TARGET_TRIPLET}g++")
set(CMAKE_ASM_COMPILER  "${CROSS_TARGET_TRIPLET}as")
set(CMAKE_STRIP         "${CROSS_TARGET_TRIPLET}strip")

# C/C++ Flags
set(CMAKE_C_FLAGS       "-Wall -Wextra -Wconversion -Wsign-conversion")
set(CMAKE_CXX_FLAGS     "${CMAKE_C_FLAGS} -fno-exceptions")

set(CMAKE_C_FLAGS_DEBUG     "-Os -g")
set(CMAKE_C_FLAGS_RELEASE   "-Os -DNDEBUG -s")
set(CMAKE_CXX_FLAGS_DEBUG   "${CMAKE_C_FLAGS_DEBUG}")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE}")

# Set source files
set(qemu-hello-world_SOURCES "${CMAKE_SOURCE_DIR}/src/main.c")

# Fill in the directories of your header files here.
include_directories(
    "${BASE_DIR}/inc"
)

# Create an executable with the source code file
add_executable(qemu-hello-world
    ${qemu-hello-world_SOURCES}
)