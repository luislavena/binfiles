@ECHO OFF
SETLOCAL
SET STARTER=START ""
SET SUBLIME="%ProgramFiles%\Sublime Text\sublimetext.exe"
IF NOT EXIST %SUBLIME% (
  SET SUBLIME="%ProgramFiles(x86)%\Sublime Text\sublimetext.exe"
)

IF "x%1x" == "xx" GOTO :NOFILE
SET CMD="%1"

REM Determine if supplied is a file or a folder
IF EXIST %CMD%\*.* (
  SET CMD="%~f1"
)
GOTO :RUN

:NOFILE
SET CMD=

:RUN
%STARTER% %SUBLIME% %CMD%
