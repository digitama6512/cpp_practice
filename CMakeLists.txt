cmake_minimum_required(VERSION 3.28)

project(practice VERSION 0.1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_subdirectory(libraries)

include(CTest)
enable_testing()
add_subdirectory(mytest)