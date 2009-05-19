@ECHO OFF
ECHO.Adding all keys to Pageant...
FOR %%I IN (%HOME%\Keys\*.ppk) DO (
  ECHO %%~nxI
  CALL pageant.exe %%I
)
