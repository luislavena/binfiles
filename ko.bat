@ECHO OFF
SETLOCAL
SET KOMODO="%ProgramFiles%\ActiveState Komodo Edit 6\komodo.exe"
IF NOT EXIST %KOMODO% (
  SET KOMODO="%ProgramFiles(x86)%\ActiveState Komodo Edit 6\komodo.exe"
)
START "" %KOMODO% %*
