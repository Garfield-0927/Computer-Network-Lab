# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\IDEA\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\IDEA\CLion 2020.3.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/StopWaitRdtSender.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/StopWaitRdtSender.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/StopWaitRdtSender.dir/flags.make

CMakeFiles/StopWaitRdtSender.dir/src/StopWaitRdtSender.cpp.obj: CMakeFiles/StopWaitRdtSender.dir/flags.make
CMakeFiles/StopWaitRdtSender.dir/src/StopWaitRdtSender.cpp.obj: CMakeFiles/StopWaitRdtSender.dir/includes_CXX.rsp
CMakeFiles/StopWaitRdtSender.dir/src/StopWaitRdtSender.cpp.obj: ../src/StopWaitRdtSender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/StopWaitRdtSender.dir/src/StopWaitRdtSender.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\StopWaitRdtSender.dir\src\StopWaitRdtSender.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWaitRdtSender.cpp

CMakeFiles/StopWaitRdtSender.dir/src/StopWaitRdtSender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/StopWaitRdtSender.dir/src/StopWaitRdtSender.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWaitRdtSender.cpp > CMakeFiles\StopWaitRdtSender.dir\src\StopWaitRdtSender.cpp.i

CMakeFiles/StopWaitRdtSender.dir/src/StopWaitRdtSender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/StopWaitRdtSender.dir/src/StopWaitRdtSender.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWaitRdtSender.cpp -o CMakeFiles\StopWaitRdtSender.dir\src\StopWaitRdtSender.cpp.s

# Object files for target StopWaitRdtSender
StopWaitRdtSender_OBJECTS = \
"CMakeFiles/StopWaitRdtSender.dir/src/StopWaitRdtSender.cpp.obj"

# External object files for target StopWaitRdtSender
StopWaitRdtSender_EXTERNAL_OBJECTS =

../bin/StopWaitRdtSender.exe: CMakeFiles/StopWaitRdtSender.dir/src/StopWaitRdtSender.cpp.obj
../bin/StopWaitRdtSender.exe: CMakeFiles/StopWaitRdtSender.dir/build.make
../bin/StopWaitRdtSender.exe: CMakeFiles/StopWaitRdtSender.dir/linklibs.rsp
../bin/StopWaitRdtSender.exe: CMakeFiles/StopWaitRdtSender.dir/objects1.rsp
../bin/StopWaitRdtSender.exe: CMakeFiles/StopWaitRdtSender.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ..\bin\StopWaitRdtSender.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\StopWaitRdtSender.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/StopWaitRdtSender.dir/build: ../bin/StopWaitRdtSender.exe

.PHONY : CMakeFiles/StopWaitRdtSender.dir/build

CMakeFiles/StopWaitRdtSender.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\StopWaitRdtSender.dir\cmake_clean.cmake
.PHONY : CMakeFiles/StopWaitRdtSender.dir/clean

CMakeFiles/StopWaitRdtSender.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles\StopWaitRdtSender.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/StopWaitRdtSender.dir/depend

