@ECHO OFF
FOR /f "tokens=1,* delims=:" %%i in ('ipconfig ^| findstr /C:"   IPv6 µØÖ·"') do (
  echo %%j
  ping %%j
)
pause