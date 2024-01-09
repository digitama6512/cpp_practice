add_library(leetcode SHARED ${CMAKE_CURRENT_SOURCE_DIR}/src/leetcode.cpp)
target_include_directories(leetcode PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
