@ECHO OFF
FOR /f "tokens=1,* delims=:" %%i in ('ipconfig ^| findstr /C:"   IPv6 ��ַ"') do (
  echo %%j
  ping %%j
)
pause