@ECHO OFF
rem "展示当前目录下的所有PDF文件"
FOR /f %%i IN ('dir /s /b .\*.pdf') do (
  ECHO '%%i'
)

:ex
pause