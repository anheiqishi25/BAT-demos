@ECHO OFF

SET starttype=0
:: 1024Ϊ�����������С
FOR /f "tokens=1,2,3,*" %%i IN ('sc qc VMwareHostd 1024 ^| findstr START_TYPE') do (
  ECHO %%k
  SET starttype=%%k
)

ECHO %starttype%
pause
