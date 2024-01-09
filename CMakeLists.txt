cmake_minimum_required(VERSION 3.18)

project(practice VERSION 0.1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)


#find_package(GTest CONFIG REQUIRED)
#enable_testing()
#include(GoogleTest)

add_subdirectory(libraries)

add_executable(leetcode_no1 ${CMAKE_CURRENT_SOURCE_DIR}/src/leetcode_no1.cpp)
target_link_libraries(leetcode_no1 PRIVATE leetcode)
