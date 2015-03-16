# Delphi Code Coverage #

## Introduction ##
Delphi Code Coverage is a simple Code Coverage tool for Delphi that creates code coverage reports based on detailed MAP files.

Please also check out this project http://code.google.com/p/delphi-code-coverage-wizard/ as it adds a wizard to the Delphi IDE to help create configuration and launch Delphi Code Coverage.

## Preconditions ##
The project you want to run a code coverage report for must have a "debug" configuration that generates a Detailed MAP file.

## What kind of code coverage does it do ##
Delphi Code Coverage currently only measures "line coverage", i.e. it will track each line that code was generated for and mark it if it was executed.

## Coverage of DLLs and BPLs ##
For applications who uses Borland Package Libraries (which are essentially DLLs) or external DLLs, DCC will attempt to load a .map file for each DLL and if it exists and units in those libraries are part of the covered units, code coverage will span the DLL/BPL loaded as part of the application.
The .map file need to exist in the same directory as the dll that was loaded.

## Usage ##
Download [v0.5](http://code.google.com/p/delphi-code-coverage/downloads/detail?name=CodeCoverage_0.5.zip), unzip the file and put it for example in your Delphi installations "bin" directory or somewhere where it is in the "path".
**You may also** want to try out the release candidate version for 1.0 - [32-bit](http://sourceforge.net/projects/delphicodecoverage/files/1.0%20RC10/CodeCoverage_win32_1.0_RC10.zip/download) or [64-bit](http://sourceforge.net/projects/delphicodecoverage/files/1.0%20RC10/CodeCoverage_win64_1.0_RC10.zip/download).

Open a command line prompt in the directory where your compiled application and executable is.
Type:
` CodeCoverage -m TestApp.map -e TestApp.exe -u TestUnit TestUnit2 -xml -html`

## Output ##
### HTML output (specify -html as a parameter) ###
For each unit there will be a `unit.html` with a summary of the coverage, followed by the source marked up. Green lines were covered. Red lines were not covered lines. The other lines didn't have code generated for it.
There is also a `CodeCoverage_summary.html` file that summarizes the coverage and has links to the generated unit reports.

### XML output (specify -xml as a parameter) ###
A summary xml report called `CodeCoverage_summary.xml` is generated in the output directory that is compatible with the xml output from [EMMA](http://emma.sourceforge.net).

### Emma output (specify -emma as a parameter) ###
It is now possible to create [EMMA](http://emma.sourceforge.net) compatible output which allows for using emma to merge multiple code coverage runs as well as using emma for generating reports.

### Delphi compatibility ###
DCC is compatible with Delphi 2010, XE and XE2 (32-bit), Delphi 2006, Delphi 5. If you find that it works for other Delphi versions, please let us know so that we can add to the list.

### OS compatibility ###
DCC should work on any 32/64 bit Windows version starting from Windows XP.
There is a known problem running 64-bit DCC on 64-bit Windows Vista.

### Hudson integration ###
You can integrate the xml report using the [Hudson EMMA plugin](http://wiki.hudson-ci.org/display/HUDSON/Emma+Plugin).
The html report can be integrated using the [HTML Publisher plugin](http://wiki.hudson-ci.org/display/HUDSON/HTML+Publisher+Plugin).

### Sponsors ###
The 1.0 release was made possible through the generous support of [DevFactory](http://www.devfactory.com/).

### Inspiration ###
This project was inspired by great tools in the Java world such as [Emma](http://emma.sourceforge.net/). This project has been lingering in an unfinished form on my harddrive for more than a year. Finally it slipped out.

### Switches ###
|`-m MapFile.map` |The map file used as input |
|:----------------|:--------------------------|
|`-e Executable.exe`|The executable to run|
|`-sd directory`|The directory where the source can be found|
|`-sp directory directory2`|The directories where the source can be found|
|`-spf filename`|Use source directories listed in the file pointed to by filename. One directory per line in the file|
|`-dproj filename.dproj`|Path do Delphi project file, this switch can replace -m and -e switches and also names of source files to include in coverage|
|`-od directory`|The directory where the output files will be put - note - the directory must exist|
|`-u TestUnit TestUnit2`|The units that shall be checked for code coverage|
|`-uf filename`|Cover units listed in the file pointed to by filename. One unit per line in the file|
|`-a Param Param2`|Parameters to pass on to the application that shall be checked for code coverage. ^ is an escape character|
|`-lt [filename]`|Log events to a text log file. Default file name is: Delphi-Code-Coverage-Debug.log|
|`-lapi`|Log events to the Windows API OutputDebugString|
|`-ife`|Include File Extension - This will stop "Common.Encodings" being 'converted' to "Common"|
|`-efe`|Exclude File Extension - This will 'converted' "Common.Encodings.pas" to "Common.Encodings" (and sadly, "Common.Encodings" to "Common"). This is on by default.|
|`-emma`|Generate emma coverage output - Generate emma output as 'coverage.es' in the output directory.|
|`-emma21`|Same as -emma but generate data files for Emma v2.1.|
|`-meta`|Generate separate meta and coverage files when generating emma output - 'coverage.em' and 'coverage.ec' will be generated for meta data and coverage data. NOTE: Needs -emma as well.|
|`-xml`|Generate xml coverage output - Generate xml output as `'CodeCoverage_Summary.xml'` in the output directory.|
|`-html`|Generate html coverage output - Generate html output as `'CodeCoverage_Summary.html'` in the output directory.|
|`-uns dll_or_exe unitname [unitname_2] `|Create a separate namespace (the namespace name will be the name of the module without extension) **ONLY** for the listed units within the module|
|`-mns name  dll_or_exe [dll_or_exe_2]`|Create a separate namespace with the given name for the listed dll:s. All modules loaded in those module(s) will be namespaced.|

# Version history #

## 1.0 RC 10 ##
  * Fixed emma report generation
  * Fixed -tec switch thanks to Sergiy Kheylyk
  * Added support for Emma version 2.1 with new switch -emma21
  * Fixed some bugs
  * File hosting moved to SourceForge

## 1.0 RC 9 ##
  * Major code refactoring done by [magicmonty](http://blog.pagansoft.de/)
  * Added support for Delphi XE6 and 64-bit Windows platform
  * some bugs were fixed

## 1.0 RC 8 ##
  * Fixed a bug where only the last class in a module would be put in the emma output file.
  * Added switch: -meta to create separate meta data and coverage files from the emma output
  * More debug info in emma file generation

## 1.0 RC 7 ##
  * Fixed a bug where units to be covered was compared against the source path thus not covering modules which weren't specified with a source path

## 1.0 RC 6 ##
  * Fixed several bugs related to coverage of multiple DLL:s.
  * Introduced Module (DLL/EXE) namespaces
  * Introduced Unit namespaces for modules

## 1.0 RC 2 ##
  * Introduced coverage of DLLs and BPLs which have accompanying .map files. See doc section on DLLs and BPLs.

## 1.0 RC 1 ##
  * Introduced -html and -xml as parameters to generate html and xml reports, note THIS IS A BREAKING CHANGE as you will need to add these parameters to the command line to generate these files

## 1.0 Beta 3 ##
  * Fixed rounding errors in the percentage output
  * Fixed output of class coverage in emma files such that no coveragedata is generated for a class with no coverage

## 1.0 Beta 2 ##
  * Fixed bug in generating of module to class mapping
  * XML reports now generates class and method coverage
  * 64-bit fixes

## 1.0 Beta 1 ##
  * Added tracking of class and method coverage
  * Added support for generating emma compatible coverage files

## 0.5 ##
  * Code refactoring
  * Added switch for source paths (-sp, -spf)
  * Added switch for logging to specific file (-lte)
  * Added switch for covering units stored in a file (-uf)
  * Reports clean up
  * Various bug fixes

## 0.4 ##
  * Made unit names case insensitive
  * Remove file type if existing on unit name
  * Use file name as specified in map file to look up source
  * ESCAPE CHARACTER changed to ^
  * Fixed various memory leaks as reported

## 0.3 ##
  * Fixed bug with exception handling of debuggee
  * Fixed bug with parsing of parameters
  * Fixed bug with unsorted lines in map files
  * Introduced XML reports compatible with Emma

## 0.2 ##
  * Introduced application parameters and cleaned up usage instructions

## 0.1 ##
  * Initial version