@ECHO OFF
SETLOCAL
SET STARTER=START ""
SET INTYPE="%ProgramFiles%\Intype\Intype.exe"

IF "%1" == "-w" (
  SET STARTER=
  SHIFT
)

IF "x%1x" == "xx" GOTO :NOFILE

REM CHECK if supplied argument is a file
IF EXIST %1 (
  SET CMD="%1"
  REM CHECK if supplied argument is a directory
  IF EXIST %1\*.* (
    SET CMD=-p "%1"
  )
  GOTO :RUN
)

:NOFILE
SET CMD=

:RUN
%STARTER% %INTYPE% %CMD%
