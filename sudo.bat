@ECHO OFF
REM
REM Fake sudo for Windows
REM This help avoid tools that forces usage of 'sudo' on all the
REM platforms, not just *nix ones.
REM
REM Save this file as 'sudo.bat' and place it somewhere in your PATH
REM (ruby/bin is a good place too).
REM
ECHO.WARNING: You or one of your scripts tried to use 'sudo' on Windows. Please check your scripts!.
CALL %*
