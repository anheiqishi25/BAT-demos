@ECHO OFF

SET /a FST=1
SET inst=
SETLOCAL enabledelayedexpansion
SET fjson=files2.json

SET root=items
SET fpath=D:\curl.based\Specs-archive
SET item=message
SET att1=url

DEL %fjson%
SET prefix=%fpath%
ECHO {"%root%":[>>%fjson%
FOR /f %%i IN ('dir /s /b %fpath%\*.doc') do (
  ECHO %%i
  FOR %%a IN (%%i) do (
    SET path=%%~dpa
    SET path=!path:%prefix%=!
    IF "!FST!"=="1" (
      SET /a FST=0
    ) ELSE (
      SET inst=,
    )
    ECHO !inst!{"%item%":"%%~na","%att1%":"!path!%%~nxa"}>>%fjson%
  )
  
)
ECHO ],"key":""}>>%fjson%
ENDLOCAL
:ex
pause