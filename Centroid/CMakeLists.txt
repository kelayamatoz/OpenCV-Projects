project(CENTROID)
cmake_minimum_required(VERSION 2.6 FATAL_ERROR)

find_package(OpenCV REQUIRED)

# Project Executable
add_executable (centroid centroid.cpp)
target_link_libraries(centroid ${OpenCV_LIBS})