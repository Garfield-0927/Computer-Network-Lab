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
include CMakeFiles/stop_wait.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/stop_wait.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/stop_wait.dir/flags.make

CMakeFiles/stop_wait.dir/src/GBN.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/GBN.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/GBN.cpp.obj: ../src/GBN.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/stop_wait.dir/src/GBN.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\GBN.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\GBN.cpp

CMakeFiles/stop_wait.dir/src/GBN.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/GBN.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\GBN.cpp > CMakeFiles\stop_wait.dir\src\GBN.cpp.i

CMakeFiles/stop_wait.dir/src/GBN.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/GBN.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\GBN.cpp -o CMakeFiles\stop_wait.dir\src\GBN.cpp.s

CMakeFiles/stop_wait.dir/src/GBNRdtReceiver.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/GBNRdtReceiver.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/GBNRdtReceiver.cpp.obj: ../src/GBNRdtReceiver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/stop_wait.dir/src/GBNRdtReceiver.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\GBNRdtReceiver.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\GBNRdtReceiver.cpp

CMakeFiles/stop_wait.dir/src/GBNRdtReceiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/GBNRdtReceiver.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\GBNRdtReceiver.cpp > CMakeFiles\stop_wait.dir\src\GBNRdtReceiver.cpp.i

CMakeFiles/stop_wait.dir/src/GBNRdtReceiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/GBNRdtReceiver.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\GBNRdtReceiver.cpp -o CMakeFiles\stop_wait.dir\src\GBNRdtReceiver.cpp.s

CMakeFiles/stop_wait.dir/src/GBNRdtSender.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/GBNRdtSender.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/GBNRdtSender.cpp.obj: ../src/GBNRdtSender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/stop_wait.dir/src/GBNRdtSender.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\GBNRdtSender.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\GBNRdtSender.cpp

CMakeFiles/stop_wait.dir/src/GBNRdtSender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/GBNRdtSender.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\GBNRdtSender.cpp > CMakeFiles\stop_wait.dir\src\GBNRdtSender.cpp.i

CMakeFiles/stop_wait.dir/src/GBNRdtSender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/GBNRdtSender.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\GBNRdtSender.cpp -o CMakeFiles\stop_wait.dir\src\GBNRdtSender.cpp.s

CMakeFiles/stop_wait.dir/src/SR.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/SR.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/SR.cpp.obj: ../src/SR.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/stop_wait.dir/src/SR.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\SR.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\SR.cpp

CMakeFiles/stop_wait.dir/src/SR.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/SR.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\SR.cpp > CMakeFiles\stop_wait.dir\src\SR.cpp.i

CMakeFiles/stop_wait.dir/src/SR.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/SR.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\SR.cpp -o CMakeFiles\stop_wait.dir\src\SR.cpp.s

CMakeFiles/stop_wait.dir/src/SRRdtReceiver.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/SRRdtReceiver.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/SRRdtReceiver.cpp.obj: ../src/SRRdtReceiver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/stop_wait.dir/src/SRRdtReceiver.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\SRRdtReceiver.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\SRRdtReceiver.cpp

CMakeFiles/stop_wait.dir/src/SRRdtReceiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/SRRdtReceiver.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\SRRdtReceiver.cpp > CMakeFiles\stop_wait.dir\src\SRRdtReceiver.cpp.i

CMakeFiles/stop_wait.dir/src/SRRdtReceiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/SRRdtReceiver.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\SRRdtReceiver.cpp -o CMakeFiles\stop_wait.dir\src\SRRdtReceiver.cpp.s

CMakeFiles/stop_wait.dir/src/SRRdtSender.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/SRRdtSender.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/SRRdtSender.cpp.obj: ../src/SRRdtSender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/stop_wait.dir/src/SRRdtSender.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\SRRdtSender.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\SRRdtSender.cpp

CMakeFiles/stop_wait.dir/src/SRRdtSender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/SRRdtSender.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\SRRdtSender.cpp > CMakeFiles\stop_wait.dir\src\SRRdtSender.cpp.i

CMakeFiles/stop_wait.dir/src/SRRdtSender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/SRRdtSender.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\SRRdtSender.cpp -o CMakeFiles\stop_wait.dir\src\SRRdtSender.cpp.s

CMakeFiles/stop_wait.dir/src/StopWait.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/StopWait.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/StopWait.cpp.obj: ../src/StopWait.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/stop_wait.dir/src/StopWait.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\StopWait.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWait.cpp

CMakeFiles/stop_wait.dir/src/StopWait.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/StopWait.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWait.cpp > CMakeFiles\stop_wait.dir\src\StopWait.cpp.i

CMakeFiles/stop_wait.dir/src/StopWait.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/StopWait.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWait.cpp -o CMakeFiles\stop_wait.dir\src\StopWait.cpp.s

CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.obj: ../src/StopWaitRdtReceiver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\StopWaitRdtReceiver.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWaitRdtReceiver.cpp

CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWaitRdtReceiver.cpp > CMakeFiles\stop_wait.dir\src\StopWaitRdtReceiver.cpp.i

CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWaitRdtReceiver.cpp -o CMakeFiles\stop_wait.dir\src\StopWaitRdtReceiver.cpp.s

CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.obj: ../src/StopWaitRdtSender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\StopWaitRdtSender.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWaitRdtSender.cpp

CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWaitRdtSender.cpp > CMakeFiles\stop_wait.dir\src\StopWaitRdtSender.cpp.i

CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\StopWaitRdtSender.cpp -o CMakeFiles\stop_wait.dir\src\StopWaitRdtSender.cpp.s

CMakeFiles/stop_wait.dir/src/TCP.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/TCP.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/TCP.cpp.obj: ../src/TCP.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/stop_wait.dir/src/TCP.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\TCP.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\TCP.cpp

CMakeFiles/stop_wait.dir/src/TCP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/TCP.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\TCP.cpp > CMakeFiles\stop_wait.dir\src\TCP.cpp.i

CMakeFiles/stop_wait.dir/src/TCP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/TCP.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\TCP.cpp -o CMakeFiles\stop_wait.dir\src\TCP.cpp.s

CMakeFiles/stop_wait.dir/src/TCPRdtReceiver.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/TCPRdtReceiver.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/TCPRdtReceiver.cpp.obj: ../src/TCPRdtReceiver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/stop_wait.dir/src/TCPRdtReceiver.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\TCPRdtReceiver.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\TCPRdtReceiver.cpp

CMakeFiles/stop_wait.dir/src/TCPRdtReceiver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/TCPRdtReceiver.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\TCPRdtReceiver.cpp > CMakeFiles\stop_wait.dir\src\TCPRdtReceiver.cpp.i

CMakeFiles/stop_wait.dir/src/TCPRdtReceiver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/TCPRdtReceiver.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\TCPRdtReceiver.cpp -o CMakeFiles\stop_wait.dir\src\TCPRdtReceiver.cpp.s

CMakeFiles/stop_wait.dir/src/TCPRdtSender.cpp.obj: CMakeFiles/stop_wait.dir/flags.make
CMakeFiles/stop_wait.dir/src/TCPRdtSender.cpp.obj: CMakeFiles/stop_wait.dir/includes_CXX.rsp
CMakeFiles/stop_wait.dir/src/TCPRdtSender.cpp.obj: ../src/TCPRdtSender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/stop_wait.dir/src/TCPRdtSender.cpp.obj"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\stop_wait.dir\src\TCPRdtSender.cpp.obj -c D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\TCPRdtSender.cpp

CMakeFiles/stop_wait.dir/src/TCPRdtSender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stop_wait.dir/src/TCPRdtSender.cpp.i"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\TCPRdtSender.cpp > CMakeFiles\stop_wait.dir\src\TCPRdtSender.cpp.i

CMakeFiles/stop_wait.dir/src/TCPRdtSender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stop_wait.dir/src/TCPRdtSender.cpp.s"
	D:\codeLanguage\x86_64-8.1.0-release-posix-sjlj-rt_v6-rev0\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\src\TCPRdtSender.cpp -o CMakeFiles\stop_wait.dir\src\TCPRdtSender.cpp.s

# Object files for target stop_wait
stop_wait_OBJECTS = \
"CMakeFiles/stop_wait.dir/src/GBN.cpp.obj" \
"CMakeFiles/stop_wait.dir/src/GBNRdtReceiver.cpp.obj" \
"CMakeFiles/stop_wait.dir/src/GBNRdtSender.cpp.obj" \
"CMakeFiles/stop_wait.dir/src/SR.cpp.obj" \
"CMakeFiles/stop_wait.dir/src/SRRdtReceiver.cpp.obj" \
"CMakeFiles/stop_wait.dir/src/SRRdtSender.cpp.obj" \
"CMakeFiles/stop_wait.dir/src/StopWait.cpp.obj" \
"CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.obj" \
"CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.obj" \
"CMakeFiles/stop_wait.dir/src/TCP.cpp.obj" \
"CMakeFiles/stop_wait.dir/src/TCPRdtReceiver.cpp.obj" \
"CMakeFiles/stop_wait.dir/src/TCPRdtSender.cpp.obj"

# External object files for target stop_wait
stop_wait_EXTERNAL_OBJECTS =

../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/GBN.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/GBNRdtReceiver.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/GBNRdtSender.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/SR.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/SRRdtReceiver.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/SRRdtSender.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/StopWait.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/StopWaitRdtReceiver.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/StopWaitRdtSender.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/TCP.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/TCPRdtReceiver.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/src/TCPRdtSender.cpp.obj
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/build.make
../bin/stop_wait.exe: ../lib/libnetsim.a
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/linklibs.rsp
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/objects1.rsp
../bin/stop_wait.exe: CMakeFiles/stop_wait.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable ..\bin\stop_wait.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\stop_wait.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/stop_wait.dir/build: ../bin/stop_wait.exe

.PHONY : CMakeFiles/stop_wait.dir/build

CMakeFiles/stop_wait.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\stop_wait.dir\cmake_clean.cmake
.PHONY : CMakeFiles/stop_wait.dir/clean

CMakeFiles/stop_wait.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug D:\garfield\study\junior\ComputerNetworking\Lab\Lab2\StopWait\cmake-build-debug\CMakeFiles\stop_wait.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/stop_wait.dir/depend
