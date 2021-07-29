@ECHO OFF

SET /a FST=1
SET inst=
SETLOCAL enabledelayedexpansion
SET fjson=.\file\files.json

SET root=items
SET fpath=Y:\3gpp.org
SET item=message
SET att1=url

DEL %fjson%
SET prefix=%fpath%
ECHO {"%root%":[>>%fjson%
FOR /f %%i IN ('dir /s /b %fpath%\*.pdf') do (
  ::ECHO %%i
  FOR %%a IN (%%i) do (
    SET path=%%~dpa
    SET path=!path:%prefix%=!
    IF "!FST!"=="1" (
      SET /a FST=0
    ) ELSE (
      SET inst=,
    )
    SET ret=!inst!{"%item%":"%%~na","%att1%":"/3gpp/!path!%%~nxa"}
    SET ret=!ret:\=/!
    ECHO !ret!>>%fjson%
  )
  
)
ECHO ],"key":""}>>%fjson%
ENDLOCAL

pause