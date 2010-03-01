@ECHO OFF
SET VC_PATH=%HOME_TOOLS%\MSVC

:parse_args
IF /I "%~1" == "6" SET TARGET_VC=VC6& GOTO :set_compiler
IF /I "%~1" == "7" SET TARGET_VC=VC2003& GOTO :set_compiler
IF /I "%~1" == "8" GOTO :set_winsdk6
GOTO :noop

:set_compiler
SET COMPROOT=%VC_PATH%\%TARGET_VC%
SET PATH=%COMPROOT%\Bin;%PATH%
SET INCLUDE=%COMPROOT%\Include;%INCLUDE%
SET LIB=%COMPROOT%\Lib;%LIB%
GOTO :set_sdk

:set_sdk
IF /I "%TARGET_VC%" == "VC6" (
  SET PSDKROOT=%VC_PATH%\PSDK-preR2
) ELSE (
  SET PSDKROOT=%VC_PATH%\PSDK
)
SET PATH=%PSDKROOT%\Bin;%PATH%
SET INCLUDE=%PSDKROOT%\Include;%INCLUDE%
SET LIB=%PSDKROOT%\Lib;%LIB%
GOTO :cleanup

:set_winsdk6
SET WINSDKPATH=%VC_PATH%\WinSDK6\bin
CALL :cleanup
%WINSDKPATH%\SetEnv.cmd /xp /Release
SET WINSDKPATH=
GOTO :EOF

:noop
ECHO.Nothing to be done, exiting.
GOTO :cleanup

:cleanup
SET VC_PATH=
SET TARGET_VC=
SET COMPROOT=
SET PSDKROOT=
GOTO :EOF
