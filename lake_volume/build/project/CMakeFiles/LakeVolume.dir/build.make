# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\repos\fun-challenges\lake_volume

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\repos\fun-challenges\lake_volume\build

# Include any dependencies generated for this target.
include project/CMakeFiles/LakeVolume.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include project/CMakeFiles/LakeVolume.dir/compiler_depend.make

# Include the progress variables for this target.
include project/CMakeFiles/LakeVolume.dir/progress.make

# Include the compile flags for this target's objects.
include project/CMakeFiles/LakeVolume.dir/flags.make

project/CMakeFiles/LakeVolume.dir/source/main.cpp.obj: project/CMakeFiles/LakeVolume.dir/flags.make
project/CMakeFiles/LakeVolume.dir/source/main.cpp.obj: project/CMakeFiles/LakeVolume.dir/includes_CXX.rsp
project/CMakeFiles/LakeVolume.dir/source/main.cpp.obj: ../project/source/main.cpp
project/CMakeFiles/LakeVolume.dir/source/main.cpp.obj: project/CMakeFiles/LakeVolume.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\repos\fun-challenges\lake_volume\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object project/CMakeFiles/LakeVolume.dir/source/main.cpp.obj"
	cd /d C:\repos\fun-challenges\lake_volume\build\project && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT project/CMakeFiles/LakeVolume.dir/source/main.cpp.obj -MF CMakeFiles\LakeVolume.dir\source\main.cpp.obj.d -o CMakeFiles\LakeVolume.dir\source\main.cpp.obj -c C:\repos\fun-challenges\lake_volume\project\source\main.cpp

project/CMakeFiles/LakeVolume.dir/source/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LakeVolume.dir/source/main.cpp.i"
	cd /d C:\repos\fun-challenges\lake_volume\build\project && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\repos\fun-challenges\lake_volume\project\source\main.cpp > CMakeFiles\LakeVolume.dir\source\main.cpp.i

project/CMakeFiles/LakeVolume.dir/source/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LakeVolume.dir/source/main.cpp.s"
	cd /d C:\repos\fun-challenges\lake_volume\build\project && C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\repos\fun-challenges\lake_volume\project\source\main.cpp -o CMakeFiles\LakeVolume.dir\source\main.cpp.s

# Object files for target LakeVolume
LakeVolume_OBJECTS = \
"CMakeFiles/LakeVolume.dir/source/main.cpp.obj"

# External object files for target LakeVolume
LakeVolume_EXTERNAL_OBJECTS =

project/LakeVolume.exe: project/CMakeFiles/LakeVolume.dir/source/main.cpp.obj
project/LakeVolume.exe: project/CMakeFiles/LakeVolume.dir/build.make
project/LakeVolume.exe: project/CMakeFiles/LakeVolume.dir/linklibs.rsp
project/LakeVolume.exe: project/CMakeFiles/LakeVolume.dir/objects1.rsp
project/LakeVolume.exe: project/CMakeFiles/LakeVolume.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\repos\fun-challenges\lake_volume\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable LakeVolume.exe"
	cd /d C:\repos\fun-challenges\lake_volume\build\project && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\LakeVolume.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
project/CMakeFiles/LakeVolume.dir/build: project/LakeVolume.exe
.PHONY : project/CMakeFiles/LakeVolume.dir/build

project/CMakeFiles/LakeVolume.dir/clean:
	cd /d C:\repos\fun-challenges\lake_volume\build\project && $(CMAKE_COMMAND) -P CMakeFiles\LakeVolume.dir\cmake_clean.cmake
.PHONY : project/CMakeFiles/LakeVolume.dir/clean

project/CMakeFiles/LakeVolume.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\repos\fun-challenges\lake_volume C:\repos\fun-challenges\lake_volume\project C:\repos\fun-challenges\lake_volume\build C:\repos\fun-challenges\lake_volume\build\project C:\repos\fun-challenges\lake_volume\build\project\CMakeFiles\LakeVolume.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : project/CMakeFiles/LakeVolume.dir/depend

