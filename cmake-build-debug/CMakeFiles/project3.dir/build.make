# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\alexe\CLionProjects\project3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\alexe\CLionProjects\project3\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\project3.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\project3.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\project3.dir\flags.make

CMakeFiles\project3.dir\proj3.cpp.obj: CMakeFiles\project3.dir\flags.make
CMakeFiles\project3.dir\proj3.cpp.obj: ..\proj3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\alexe\CLionProjects\project3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/project3.dir/proj3.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\project3.dir\proj3.cpp.obj /FdCMakeFiles\project3.dir\ /FS -c C:\Users\alexe\CLionProjects\project3\proj3.cpp
<<

CMakeFiles\project3.dir\proj3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project3.dir/proj3.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\project3.dir\proj3.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\alexe\CLionProjects\project3\proj3.cpp
<<

CMakeFiles\project3.dir\proj3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project3.dir/proj3.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\project3.dir\proj3.cpp.s /c C:\Users\alexe\CLionProjects\project3\proj3.cpp
<<

CMakeFiles\project3.dir\DNA.cpp.obj: CMakeFiles\project3.dir\flags.make
CMakeFiles\project3.dir\DNA.cpp.obj: ..\DNA.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\alexe\CLionProjects\project3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/project3.dir/DNA.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\project3.dir\DNA.cpp.obj /FdCMakeFiles\project3.dir\ /FS -c C:\Users\alexe\CLionProjects\project3\DNA.cpp
<<

CMakeFiles\project3.dir\DNA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project3.dir/DNA.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\project3.dir\DNA.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\alexe\CLionProjects\project3\DNA.cpp
<<

CMakeFiles\project3.dir\DNA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project3.dir/DNA.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\project3.dir\DNA.cpp.s /c C:\Users\alexe\CLionProjects\project3\DNA.cpp
<<

CMakeFiles\project3.dir\Sequencer.cpp.obj: CMakeFiles\project3.dir\flags.make
CMakeFiles\project3.dir\Sequencer.cpp.obj: ..\Sequencer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\alexe\CLionProjects\project3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/project3.dir/Sequencer.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\project3.dir\Sequencer.cpp.obj /FdCMakeFiles\project3.dir\ /FS -c C:\Users\alexe\CLionProjects\project3\Sequencer.cpp
<<

CMakeFiles\project3.dir\Sequencer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/project3.dir/Sequencer.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe > CMakeFiles\project3.dir\Sequencer.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\alexe\CLionProjects\project3\Sequencer.cpp
<<

CMakeFiles\project3.dir\Sequencer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/project3.dir/Sequencer.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\project3.dir\Sequencer.cpp.s /c C:\Users\alexe\CLionProjects\project3\Sequencer.cpp
<<

# Object files for target project3
project3_OBJECTS = \
"CMakeFiles\project3.dir\proj3.cpp.obj" \
"CMakeFiles\project3.dir\DNA.cpp.obj" \
"CMakeFiles\project3.dir\Sequencer.cpp.obj"

# External object files for target project3
project3_EXTERNAL_OBJECTS =

project3.exe: CMakeFiles\project3.dir\proj3.cpp.obj
project3.exe: CMakeFiles\project3.dir\DNA.cpp.obj
project3.exe: CMakeFiles\project3.dir\Sequencer.cpp.obj
project3.exe: CMakeFiles\project3.dir\build.make
project3.exe: CMakeFiles\project3.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\alexe\CLionProjects\project3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable project3.exe"
	"C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\project3.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x86\mt.exe --manifests  -- C:\PROGRA~2\MICROS~2\2019\BUILDT~1\VC\Tools\MSVC\1428~1.293\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\project3.dir\objects1.rsp @<<
 /out:project3.exe /implib:project3.lib /pdb:C:\Users\alexe\CLionProjects\project3\cmake-build-debug\project3.pdb /version:0.0  /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\project3.dir\build: project3.exe

.PHONY : CMakeFiles\project3.dir\build

CMakeFiles\project3.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\project3.dir\cmake_clean.cmake
.PHONY : CMakeFiles\project3.dir\clean

CMakeFiles\project3.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\alexe\CLionProjects\project3 C:\Users\alexe\CLionProjects\project3 C:\Users\alexe\CLionProjects\project3\cmake-build-debug C:\Users\alexe\CLionProjects\project3\cmake-build-debug C:\Users\alexe\CLionProjects\project3\cmake-build-debug\CMakeFiles\project3.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\project3.dir\depend

