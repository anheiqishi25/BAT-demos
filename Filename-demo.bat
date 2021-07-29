@ECHO OFF

FOR /f %%i IN ('dir /s /b .\*.pdf') do (
  ECHO '%%i'
  FOR %%a IN (%%i) do (
    ECHO driv=%%~da
    ECHO path=%%~pa
    ECHO file=%%~na
    ECHO exte=%%~xa
  )
)

:ex
pause