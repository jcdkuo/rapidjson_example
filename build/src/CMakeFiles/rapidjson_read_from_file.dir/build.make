# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.21.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.21.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build

# Include any dependencies generated for this target.
include src/CMakeFiles/rapidjson_read_from_file.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/rapidjson_read_from_file.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/rapidjson_read_from_file.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/rapidjson_read_from_file.dir/flags.make

src/CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.o: src/CMakeFiles/rapidjson_read_from_file.dir/flags.make
src/CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.o: ../src/rapidjson_read_from_file.cpp
src/CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.o: src/CMakeFiles/rapidjson_read_from_file.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.o"
	cd /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.o -MF CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.o.d -o CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.o -c /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/src/rapidjson_read_from_file.cpp

src/CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.i"
	cd /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/src/rapidjson_read_from_file.cpp > CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.i

src/CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.s"
	cd /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/src/rapidjson_read_from_file.cpp -o CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.s

# Object files for target rapidjson_read_from_file
rapidjson_read_from_file_OBJECTS = \
"CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.o"

# External object files for target rapidjson_read_from_file
rapidjson_read_from_file_EXTERNAL_OBJECTS =

bin/rapidjson_read_from_file: src/CMakeFiles/rapidjson_read_from_file.dir/rapidjson_read_from_file.cpp.o
bin/rapidjson_read_from_file: src/CMakeFiles/rapidjson_read_from_file.dir/build.make
bin/rapidjson_read_from_file: src/CMakeFiles/rapidjson_read_from_file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/rapidjson_read_from_file"
	cd /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rapidjson_read_from_file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/rapidjson_read_from_file.dir/build: bin/rapidjson_read_from_file
.PHONY : src/CMakeFiles/rapidjson_read_from_file.dir/build

src/CMakeFiles/rapidjson_read_from_file.dir/clean:
	cd /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build/src && $(CMAKE_COMMAND) -P CMakeFiles/rapidjson_read_from_file.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/rapidjson_read_from_file.dir/clean

src/CMakeFiles/rapidjson_read_from_file.dir/depend:
	cd /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/src /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build/src /Users/jerry/projects/vivo/projects/Daniel/rapidjson_example/build/src/CMakeFiles/rapidjson_read_from_file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/rapidjson_read_from_file.dir/depend

