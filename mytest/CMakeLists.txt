include(FetchContent)
FetchContent_Declare(
  googletest
  GIT_REPOSITORY git@github.com:google/googletest.git
  GIT_TAG f8d7d77c06936315286eb55f8de22cd23c188571
  FIND_PACKAGE_ARGS NAMES GTest
)
# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
FetchContent_MakeAvailable(googletest)

add_executable(leetcode_no1 ${CMAKE_CURRENT_SOURCE_DIR}/src/leetcode_no1.cpp)
target_link_libraries(leetcode_no1 PRIVATE leetcode GTest::gtest_main)

include(GoogleTest)
gtest_discover_tests(leetcode_no1)
