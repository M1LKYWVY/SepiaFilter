# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /cygdrive/c/Users/Dreamer/.CLion2017.3/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/Dreamer/.CLion2017.3/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SPLLAB7.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SPLLAB7.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SPLLAB7.dir/flags.make

CMakeFiles/SPLLAB7.dir/main.c.o: CMakeFiles/SPLLAB7.dir/flags.make
CMakeFiles/SPLLAB7.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/SPLLAB7.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SPLLAB7.dir/main.c.o   -c /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/main.c

CMakeFiles/SPLLAB7.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SPLLAB7.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/main.c > CMakeFiles/SPLLAB7.dir/main.c.i

CMakeFiles/SPLLAB7.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SPLLAB7.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/main.c -o CMakeFiles/SPLLAB7.dir/main.c.s

CMakeFiles/SPLLAB7.dir/main.c.o.requires:

.PHONY : CMakeFiles/SPLLAB7.dir/main.c.o.requires

CMakeFiles/SPLLAB7.dir/main.c.o.provides: CMakeFiles/SPLLAB7.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/SPLLAB7.dir/build.make CMakeFiles/SPLLAB7.dir/main.c.o.provides.build
.PHONY : CMakeFiles/SPLLAB7.dir/main.c.o.provides

CMakeFiles/SPLLAB7.dir/main.c.o.provides.build: CMakeFiles/SPLLAB7.dir/main.c.o


CMakeFiles/SPLLAB7.dir/sepia.c.o: CMakeFiles/SPLLAB7.dir/flags.make
CMakeFiles/SPLLAB7.dir/sepia.c.o: ../sepia.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/SPLLAB7.dir/sepia.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SPLLAB7.dir/sepia.c.o   -c /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/sepia.c

CMakeFiles/SPLLAB7.dir/sepia.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SPLLAB7.dir/sepia.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/sepia.c > CMakeFiles/SPLLAB7.dir/sepia.c.i

CMakeFiles/SPLLAB7.dir/sepia.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SPLLAB7.dir/sepia.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/sepia.c -o CMakeFiles/SPLLAB7.dir/sepia.c.s

CMakeFiles/SPLLAB7.dir/sepia.c.o.requires:

.PHONY : CMakeFiles/SPLLAB7.dir/sepia.c.o.requires

CMakeFiles/SPLLAB7.dir/sepia.c.o.provides: CMakeFiles/SPLLAB7.dir/sepia.c.o.requires
	$(MAKE) -f CMakeFiles/SPLLAB7.dir/build.make CMakeFiles/SPLLAB7.dir/sepia.c.o.provides.build
.PHONY : CMakeFiles/SPLLAB7.dir/sepia.c.o.provides

CMakeFiles/SPLLAB7.dir/sepia.c.o.provides.build: CMakeFiles/SPLLAB7.dir/sepia.c.o


# Object files for target SPLLAB7
SPLLAB7_OBJECTS = \
"CMakeFiles/SPLLAB7.dir/main.c.o" \
"CMakeFiles/SPLLAB7.dir/sepia.c.o"

# External object files for target SPLLAB7
SPLLAB7_EXTERNAL_OBJECTS =

SPLLAB7.exe: CMakeFiles/SPLLAB7.dir/main.c.o
SPLLAB7.exe: CMakeFiles/SPLLAB7.dir/sepia.c.o
SPLLAB7.exe: CMakeFiles/SPLLAB7.dir/build.make
SPLLAB7.exe: CMakeFiles/SPLLAB7.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable SPLLAB7.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SPLLAB7.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SPLLAB7.dir/build: SPLLAB7.exe

.PHONY : CMakeFiles/SPLLAB7.dir/build

CMakeFiles/SPLLAB7.dir/requires: CMakeFiles/SPLLAB7.dir/main.c.o.requires
CMakeFiles/SPLLAB7.dir/requires: CMakeFiles/SPLLAB7.dir/sepia.c.o.requires

.PHONY : CMakeFiles/SPLLAB7.dir/requires

CMakeFiles/SPLLAB7.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SPLLAB7.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SPLLAB7.dir/clean

CMakeFiles/SPLLAB7.dir/depend:
	cd /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7 /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7 /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/cmake-build-debug /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/cmake-build-debug /cygdrive/c/Users/Dreamer/Development/CLionProjects/SPLLAB7/cmake-build-debug/CMakeFiles/SPLLAB7.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SPLLAB7.dir/depend

