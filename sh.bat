@ECHO OFF
SETLOCAL
SET MSYS_PATH=%HOME_TOOLS%\MinGW\msys
SET PATH=%MSYS_PATH%\bin;%PATH%
bash.exe --login -i -c '%*'