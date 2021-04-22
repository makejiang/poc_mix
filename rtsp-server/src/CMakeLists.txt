cmake_minimum_required(VERSION 3.5)

# Set the project name
project (rtsp-server)

set(CMAKE_CXX_STANDARD 14) #setting C++ 14 standard
find_package(PkgConfig) #finding pkg-config is a helper tool

#using pkg-config to getting Gstreamer
pkg_check_modules(GSTREAMER REQUIRED gstreamer-1.0)

#including GStreamer header files directory
include_directories(
        ${GLIB_INCLUDE_DIRS}
        ${GSTREAMER_INCLUDE_DIRS}
)

#linking GStreamer library directory
link_directories(
        ${GLIB_LIBRARY_DIRS}
        ${GSTREAMER_LIBRARY_DIRS}
)

#message(STATUS "Libs: " ${GSTREAMER_LIBRARIES})

# Add an executable
add_executable(${PROJECT_NAME} main.c)

#linking Gstreamer library with target executable
target_link_libraries(${PROJECT_NAME} 
                      ${GSTREAMER_LIBRARIES}
                      gstrtspserver-1.0)