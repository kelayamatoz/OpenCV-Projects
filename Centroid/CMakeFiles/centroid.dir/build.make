# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/local/bin/cmake

# The command to remove a file.
RM = /opt/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/tianzhao/Developers/GIT Projects/Centroid"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/tianzhao/Developers/GIT Projects/Centroid"

# Include any dependencies generated for this target.
include CMakeFiles/centroid.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/centroid.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/centroid.dir/flags.make

CMakeFiles/centroid.dir/centroid.cpp.o: CMakeFiles/centroid.dir/flags.make
CMakeFiles/centroid.dir/centroid.cpp.o: centroid.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report "/Users/tianzhao/Developers/GIT Projects/Centroid/CMakeFiles" $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/centroid.dir/centroid.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/centroid.dir/centroid.cpp.o -c "/Users/tianzhao/Developers/GIT Projects/Centroid/centroid.cpp"

CMakeFiles/centroid.dir/centroid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/centroid.dir/centroid.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E "/Users/tianzhao/Developers/GIT Projects/Centroid/centroid.cpp" > CMakeFiles/centroid.dir/centroid.cpp.i

CMakeFiles/centroid.dir/centroid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/centroid.dir/centroid.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S "/Users/tianzhao/Developers/GIT Projects/Centroid/centroid.cpp" -o CMakeFiles/centroid.dir/centroid.cpp.s

CMakeFiles/centroid.dir/centroid.cpp.o.requires:
.PHONY : CMakeFiles/centroid.dir/centroid.cpp.o.requires

CMakeFiles/centroid.dir/centroid.cpp.o.provides: CMakeFiles/centroid.dir/centroid.cpp.o.requires
	$(MAKE) -f CMakeFiles/centroid.dir/build.make CMakeFiles/centroid.dir/centroid.cpp.o.provides.build
.PHONY : CMakeFiles/centroid.dir/centroid.cpp.o.provides

CMakeFiles/centroid.dir/centroid.cpp.o.provides.build: CMakeFiles/centroid.dir/centroid.cpp.o

# Object files for target centroid
centroid_OBJECTS = \
"CMakeFiles/centroid.dir/centroid.cpp.o"

# External object files for target centroid
centroid_EXTERNAL_OBJECTS =

centroid: CMakeFiles/centroid.dir/centroid.cpp.o
centroid: CMakeFiles/centroid.dir/build.make
centroid: /usr/local/lib/libopencv_videostab.3.0.0.dylib
centroid: /usr/local/lib/libopencv_superres.3.0.0.dylib
centroid: /usr/local/lib/libopencv_stitching.3.0.0.dylib
centroid: /usr/local/lib/libopencv_shape.3.0.0.dylib
centroid: /usr/local/lib/libopencv_photo.3.0.0.dylib
centroid: /usr/local/lib/libopencv_objdetect.3.0.0.dylib
centroid: /usr/local/lib/libopencv_hal.a
centroid: /usr/local/lib/libopencv_calib3d.3.0.0.dylib
centroid: /usr/local/lib/libopencv_features2d.3.0.0.dylib
centroid: /usr/local/lib/libopencv_ml.3.0.0.dylib
centroid: /usr/local/lib/libopencv_highgui.3.0.0.dylib
centroid: /usr/local/lib/libopencv_videoio.3.0.0.dylib
centroid: /usr/local/lib/libopencv_imgcodecs.3.0.0.dylib
centroid: /usr/local/lib/libopencv_flann.3.0.0.dylib
centroid: /usr/local/lib/libopencv_video.3.0.0.dylib
centroid: /usr/local/lib/libopencv_imgproc.3.0.0.dylib
centroid: /usr/local/lib/libopencv_core.3.0.0.dylib
centroid: /usr/local/lib/libopencv_hal.a
centroid: /usr/local/share/OpenCV/3rdparty/lib/libippicv.a
centroid: CMakeFiles/centroid.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable centroid"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/centroid.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/centroid.dir/build: centroid
.PHONY : CMakeFiles/centroid.dir/build

CMakeFiles/centroid.dir/requires: CMakeFiles/centroid.dir/centroid.cpp.o.requires
.PHONY : CMakeFiles/centroid.dir/requires

CMakeFiles/centroid.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/centroid.dir/cmake_clean.cmake
.PHONY : CMakeFiles/centroid.dir/clean

CMakeFiles/centroid.dir/depend:
	cd "/Users/tianzhao/Developers/GIT Projects/Centroid" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/tianzhao/Developers/GIT Projects/Centroid" "/Users/tianzhao/Developers/GIT Projects/Centroid" "/Users/tianzhao/Developers/GIT Projects/Centroid" "/Users/tianzhao/Developers/GIT Projects/Centroid" "/Users/tianzhao/Developers/GIT Projects/Centroid/CMakeFiles/centroid.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/centroid.dir/depend

