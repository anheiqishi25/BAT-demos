@ECHO OFF
setlocal enabledelayedexpansion
SET curl=.\curl-7.64.1\AMD64\CURL.EXE

:A
SET url_base=http://image.nmc.cn/product/%date:~0,4%/%date:~5,2%/%date:~8,2%/WXCL/medium/SEVP_NSMC_WXCL_ASC_E99_ACHN_LNO_PY_
SET date_=%date:~0,4%%date:~5,2%%date:~8,2%
SET h=%time:~0,2%

IF %h% LSS 8 (
  SET /A h=0%h%+24-8
) ELSE (
  SET /A h-=8
)
IF %h% LSS 10 (
  SET h=0%h%
)

SET srcUrl=%url_base%%date_%%h%1500000.JPG
ECHO %srcUrl%
%curl% %srcUrl% -O
SET srcUrl=%url_base%%date_%%h%4500000.JPG
ECHO %srcUrl%
::%curl% %srcUrl% -O

TIMEOUT /t 1799
GOTO A
PAUSE