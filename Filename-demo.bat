@ECHO OFF
rem 参考：https://stackoverflow.com/questions/15567809/batch-extract-path-and-filename-from-a-variable
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

