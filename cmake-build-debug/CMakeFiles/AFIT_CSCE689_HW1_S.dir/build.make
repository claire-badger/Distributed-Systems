# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/claire/Downloads/clion-2019.3.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/claire/Downloads/clion-2019.3.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/claire/AFIT-CSCE689-HW1-S

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/AFIT_CSCE689_HW1_S.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/AFIT_CSCE689_HW1_S.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AFIT_CSCE689_HW1_S.dir/flags.make

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.o: CMakeFiles/AFIT_CSCE689_HW1_S.dir/flags.make
CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.o: ../src/Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.o -c /home/claire/AFIT-CSCE689-HW1-S/src/Client.cpp

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/claire/AFIT-CSCE689-HW1-S/src/Client.cpp > CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.i

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/claire/AFIT-CSCE689-HW1-S/src/Client.cpp -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.s

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.o: CMakeFiles/AFIT_CSCE689_HW1_S.dir/flags.make
CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.o: ../src/client_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.o -c /home/claire/AFIT-CSCE689-HW1-S/src/client_main.cpp

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/claire/AFIT-CSCE689-HW1-S/src/client_main.cpp > CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.i

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/claire/AFIT-CSCE689-HW1-S/src/client_main.cpp -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.s

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.o: CMakeFiles/AFIT_CSCE689_HW1_S.dir/flags.make
CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.o: ../src/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.o -c /home/claire/AFIT-CSCE689-HW1-S/src/Server.cpp

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/claire/AFIT-CSCE689-HW1-S/src/Server.cpp > CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.i

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/claire/AFIT-CSCE689-HW1-S/src/Server.cpp -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.s

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.o: CMakeFiles/AFIT_CSCE689_HW1_S.dir/flags.make
CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.o: ../src/server_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.o -c /home/claire/AFIT-CSCE689-HW1-S/src/server_main.cpp

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/claire/AFIT-CSCE689-HW1-S/src/server_main.cpp > CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.i

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/claire/AFIT-CSCE689-HW1-S/src/server_main.cpp -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.s

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.o: CMakeFiles/AFIT_CSCE689_HW1_S.dir/flags.make
CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.o: ../src/strfuncts.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.o -c /home/claire/AFIT-CSCE689-HW1-S/src/strfuncts.cpp

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/claire/AFIT-CSCE689-HW1-S/src/strfuncts.cpp > CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.i

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/claire/AFIT-CSCE689-HW1-S/src/strfuncts.cpp -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.s

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.o: CMakeFiles/AFIT_CSCE689_HW1_S.dir/flags.make
CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.o: ../src/TCPClient.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.o -c /home/claire/AFIT-CSCE689-HW1-S/src/TCPClient.cpp

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/claire/AFIT-CSCE689-HW1-S/src/TCPClient.cpp > CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.i

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/claire/AFIT-CSCE689-HW1-S/src/TCPClient.cpp -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.s

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.o: CMakeFiles/AFIT_CSCE689_HW1_S.dir/flags.make
CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.o: ../src/TCPConn.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.o -c /home/claire/AFIT-CSCE689-HW1-S/src/TCPConn.cpp

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/claire/AFIT-CSCE689-HW1-S/src/TCPConn.cpp > CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.i

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/claire/AFIT-CSCE689-HW1-S/src/TCPConn.cpp -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.s

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.o: CMakeFiles/AFIT_CSCE689_HW1_S.dir/flags.make
CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.o: ../src/TCPServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.o -c /home/claire/AFIT-CSCE689-HW1-S/src/TCPServer.cpp

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/claire/AFIT-CSCE689-HW1-S/src/TCPServer.cpp > CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.i

CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/claire/AFIT-CSCE689-HW1-S/src/TCPServer.cpp -o CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.s

# Object files for target AFIT_CSCE689_HW1_S
AFIT_CSCE689_HW1_S_OBJECTS = \
"CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.o" \
"CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.o" \
"CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.o" \
"CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.o" \
"CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.o" \
"CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.o" \
"CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.o" \
"CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.o"

# External object files for target AFIT_CSCE689_HW1_S
AFIT_CSCE689_HW1_S_EXTERNAL_OBJECTS =

AFIT_CSCE689_HW1_S: CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Client.cpp.o
AFIT_CSCE689_HW1_S: CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/client_main.cpp.o
AFIT_CSCE689_HW1_S: CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/Server.cpp.o
AFIT_CSCE689_HW1_S: CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/server_main.cpp.o
AFIT_CSCE689_HW1_S: CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/strfuncts.cpp.o
AFIT_CSCE689_HW1_S: CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPClient.cpp.o
AFIT_CSCE689_HW1_S: CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPConn.cpp.o
AFIT_CSCE689_HW1_S: CMakeFiles/AFIT_CSCE689_HW1_S.dir/src/TCPServer.cpp.o
AFIT_CSCE689_HW1_S: CMakeFiles/AFIT_CSCE689_HW1_S.dir/build.make
AFIT_CSCE689_HW1_S: CMakeFiles/AFIT_CSCE689_HW1_S.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable AFIT_CSCE689_HW1_S"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AFIT_CSCE689_HW1_S.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AFIT_CSCE689_HW1_S.dir/build: AFIT_CSCE689_HW1_S

.PHONY : CMakeFiles/AFIT_CSCE689_HW1_S.dir/build

CMakeFiles/AFIT_CSCE689_HW1_S.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AFIT_CSCE689_HW1_S.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AFIT_CSCE689_HW1_S.dir/clean

CMakeFiles/AFIT_CSCE689_HW1_S.dir/depend:
	cd /home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/claire/AFIT-CSCE689-HW1-S /home/claire/AFIT-CSCE689-HW1-S /home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug /home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug /home/claire/AFIT-CSCE689-HW1-S/cmake-build-debug/CMakeFiles/AFIT_CSCE689_HW1_S.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AFIT_CSCE689_HW1_S.dir/depend

