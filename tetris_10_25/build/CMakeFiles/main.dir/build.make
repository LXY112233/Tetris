# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lxy/Code/tetris/tetris_template

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lxy/Code/tetris/tetris_template/build

# Include any dependencies generated for this target.
include CMakeFiles/main.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.dir/flags.make

CMakeFiles/main.dir/main.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lxy/Code/tetris/tetris_template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/main.cpp.o -c /home/lxy/Code/tetris/tetris_template/main.cpp

CMakeFiles/main.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lxy/Code/tetris/tetris_template/main.cpp > CMakeFiles/main.dir/main.cpp.i

CMakeFiles/main.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lxy/Code/tetris/tetris_template/main.cpp -o CMakeFiles/main.dir/main.cpp.s

CMakeFiles/main.dir/src/Board.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Board.cpp.o: ../src/Board.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lxy/Code/tetris/tetris_template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/main.dir/src/Board.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/Board.cpp.o -c /home/lxy/Code/tetris/tetris_template/src/Board.cpp

CMakeFiles/main.dir/src/Board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Board.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lxy/Code/tetris/tetris_template/src/Board.cpp > CMakeFiles/main.dir/src/Board.cpp.i

CMakeFiles/main.dir/src/Board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Board.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lxy/Code/tetris/tetris_template/src/Board.cpp -o CMakeFiles/main.dir/src/Board.cpp.s

CMakeFiles/main.dir/src/Game.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Game.cpp.o: ../src/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lxy/Code/tetris/tetris_template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/main.dir/src/Game.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/Game.cpp.o -c /home/lxy/Code/tetris/tetris_template/src/Game.cpp

CMakeFiles/main.dir/src/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lxy/Code/tetris/tetris_template/src/Game.cpp > CMakeFiles/main.dir/src/Game.cpp.i

CMakeFiles/main.dir/src/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lxy/Code/tetris/tetris_template/src/Game.cpp -o CMakeFiles/main.dir/src/Game.cpp.s

CMakeFiles/main.dir/src/Tetrominoes.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/Tetrominoes.cpp.o: ../src/Tetrominoes.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lxy/Code/tetris/tetris_template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/main.dir/src/Tetrominoes.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/Tetrominoes.cpp.o -c /home/lxy/Code/tetris/tetris_template/src/Tetrominoes.cpp

CMakeFiles/main.dir/src/Tetrominoes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/Tetrominoes.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lxy/Code/tetris/tetris_template/src/Tetrominoes.cpp > CMakeFiles/main.dir/src/Tetrominoes.cpp.i

CMakeFiles/main.dir/src/Tetrominoes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/Tetrominoes.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lxy/Code/tetris/tetris_template/src/Tetrominoes.cpp -o CMakeFiles/main.dir/src/Tetrominoes.cpp.s

CMakeFiles/main.dir/src/rayLibcpp.cpp.o: CMakeFiles/main.dir/flags.make
CMakeFiles/main.dir/src/rayLibcpp.cpp.o: ../src/rayLibcpp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lxy/Code/tetris/tetris_template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/main.dir/src/rayLibcpp.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main.dir/src/rayLibcpp.cpp.o -c /home/lxy/Code/tetris/tetris_template/src/rayLibcpp.cpp

CMakeFiles/main.dir/src/rayLibcpp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.dir/src/rayLibcpp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lxy/Code/tetris/tetris_template/src/rayLibcpp.cpp > CMakeFiles/main.dir/src/rayLibcpp.cpp.i

CMakeFiles/main.dir/src/rayLibcpp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.dir/src/rayLibcpp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lxy/Code/tetris/tetris_template/src/rayLibcpp.cpp -o CMakeFiles/main.dir/src/rayLibcpp.cpp.s

# Object files for target main
main_OBJECTS = \
"CMakeFiles/main.dir/main.cpp.o" \
"CMakeFiles/main.dir/src/Board.cpp.o" \
"CMakeFiles/main.dir/src/Game.cpp.o" \
"CMakeFiles/main.dir/src/Tetrominoes.cpp.o" \
"CMakeFiles/main.dir/src/rayLibcpp.cpp.o"

# External object files for target main
main_EXTERNAL_OBJECTS =

../bin/main: CMakeFiles/main.dir/main.cpp.o
../bin/main: CMakeFiles/main.dir/src/Board.cpp.o
../bin/main: CMakeFiles/main.dir/src/Game.cpp.o
../bin/main: CMakeFiles/main.dir/src/Tetrominoes.cpp.o
../bin/main: CMakeFiles/main.dir/src/rayLibcpp.cpp.o
../bin/main: CMakeFiles/main.dir/build.make
../bin/main: /usr/local/lib/libraylib.so
../bin/main: CMakeFiles/main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lxy/Code/tetris/tetris_template/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ../bin/main"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.dir/build: ../bin/main

.PHONY : CMakeFiles/main.dir/build

CMakeFiles/main.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.dir/clean

CMakeFiles/main.dir/depend:
	cd /home/lxy/Code/tetris/tetris_template/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lxy/Code/tetris/tetris_template /home/lxy/Code/tetris/tetris_template /home/lxy/Code/tetris/tetris_template/build /home/lxy/Code/tetris/tetris_template/build /home/lxy/Code/tetris/tetris_template/build/CMakeFiles/main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.dir/depend

