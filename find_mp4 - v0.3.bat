@echo off
set dat=%date:~0,4%%date:~5,2%%date:~8,2%
set num=0
:A
for /f "delims=" %%i in  ('dir /b /s *.mp4 *.avi *.mkv *.flv *.rm *.rmvb 2^>^nul' )  do (
  if exist %%i (
    set tim=%time%
    xcopy "%%i" "\\192.168.50.230\private\新建文件夹\virtualmachine\%dat%\"
    if errorlevel 1 ( 
      num=num+1
    ) else if errorlevel 0 ( 
      del "%%i"
    )
  )
)
::<nul set /p =.
::timeout /T 5 >>nul
::goto A
echo "总共%num%个文件复制失败。"
pause