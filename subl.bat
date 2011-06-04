@ECHO OFF
SETLOCAL
SET SUBLIME="%ProgramFiles%\Sublime Text 2\sublime_text.exe"
IF NOT EXIST %SUBLIME% (
  SET SUBLIME="%ProgramFiles(x86)%\Sublime Text 2\sublime_text.exe"
)
START "" %SUBLIME% %*
