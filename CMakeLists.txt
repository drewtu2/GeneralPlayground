cmake_minimum_required(VERSION 2.8.9)

set(PROJECT_NAME MergeSort)
project (${PROJECT_NAME})

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${PROJECT_SOURCE_DIR}/cmake)
add_library(${PROJECT_NAME} ${PROJECT_SOURCE_DIR}/src/MergeSort.cpp)
find_package(Threads REQUIRED)

include_directories(${PROJECT_SOURCE_DIR})

option (enable-test "Perform Google Test" ON)

if (enable-test)
  include(gtest)
  enable_testing()
  set(PROJECT_TEST_NAME ${PROJECT_NAME}_test)
  include_directories(${GTEST_INCLUDE_DIRS})
  file(GLOB TEST_SRC_FILES ${PROJECT_SOURCE_DIR}/test/test.cpp)
  add_executable(${PROJECT_TEST_NAME} ${TEST_SRC_FILES})
  add_dependencies(${PROJECT_TEST_NAME} googletest)
  add_dependencies(${PROJECT_TEST_NAME} ${PROJECT_NAME})
  target_link_libraries(${PROJECT_TEST_NAME}
    ${GTEST_LIBS_DIR}/libgtest.a
    ${GTEST_LIBS_DIR}/libgtest_main.a
    ${PROJECT_NAME}
  )
  target_link_libraries(${PROJECT_TEST_NAME} ${CMAKE_THREAD_LIBS_INIT})
  add_test(test1 ${PROJECT_TEST_NAME} "--gtest_color=yes") 
endif()
