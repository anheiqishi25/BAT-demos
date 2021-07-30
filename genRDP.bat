@echo off
setlocal enabledelayedexpansion
ECHO 使用route print获取主机IP地址，
ECHO 并生成远程桌文件。
:step1
CLS
DEL RDP.RDP
IPCONFIG
SET IP=''
for /f "tokens=3*" %%a in ('route print -6^|findstr "\<6.*2408.*/128\>"') do (
 set IP=%%a
  IF %IP% NEQ '' (
    GOTO step2
  )
)
:step2
set IP=!IP:/128=!
echo %IP%>ip.txt
ECHO screen mode id:i:1>>RDP.RDP
ECHO use multimon:i:0>>RDP.RDP
ECHO desktopwidth:i:1366>>RDP.RDP
ECHO desktopheight:i:768>>RDP.RDP
ECHO session bpp:i:24>>RDP.RDP
ECHO winposstr:s:0,1,984,123,2368,938>>RDP.RDP
ECHO compression:i:1>>RDP.RDP
ECHO keyboardhook:i:2>>RDP.RDP
ECHO audiocapturemode:i:0>>RDP.RDP
ECHO videoplaybackmode:i:1>>RDP.RDP
ECHO connection type:i:7>>RDP.RDP
ECHO networkautodetect:i:1>>RDP.RDP
ECHO bandwidthautodetect:i:1>>RDP.RDP
ECHO displayconnectionbar:i:1>>RDP.RDP
ECHO enableworkspacereconnect:i:0>>RDP.RDP
ECHO disable wallpaper:i:0>>RDP.RDP
ECHO allow font smoothing:i:0>>RDP.RDP
ECHO allow desktop composition:i:0>>RDP.RDP
ECHO disable full window drag:i:1>>RDP.RDP
ECHO disable menu anims:i:1>>RDP.RDP
ECHO disable themes:i:0>>RDP.RDP
ECHO disable cursor setting:i:0>>RDP.RDP
ECHO bitmapcachepersistenable:i:1>>RDP.RDP
ECHO full address:s:%IP%>>RDP.RDP
ECHO audiomode:i:0>>RDP.RDP
ECHO redirectprinters:i:0>>RDP.RDP
ECHO redirectcomports:i:0>>RDP.RDP
ECHO redirectsmartcards:i:1>>RDP.RDP
ECHO redirectclipboard:i:1>>RDP.RDP
ECHO redirectposdevices:i:0>>RDP.RDP
ECHO autoreconnection enabled:i:1>>RDP.RDP
ECHO authentication level:i:0>>RDP.RDP
ECHO prompt for credentials:i:0>>RDP.RDP
ECHO negotiate security layer:i:1>>RDP.RDP
ECHO remoteapplicationmode:i:0>>RDP.RDP
ECHO alternate shell:s:>>RDP.RDP
ECHO shell working directory:s:>>RDP.RDP
ECHO gatewayhostname:s:>>RDP.RDP
ECHO gatewayusagemethod:i:4>>RDP.RDP
ECHO gatewaycredentialssource:i:4>>RDP.RDP
ECHO gatewayprofileusagemethod:i:0>>RDP.RDP
ECHO promptcredentialonce:i:0>>RDP.RDP
ECHO gatewaybrokeringtype:i:0>>RDP.RDP
ECHO use redirection server name:i:0>>RDP.RDP
ECHO rdgiskdcproxy:i:0>>RDP.RDP
ECHO kdcproxyname:s:>>RDP.RDP
ECHO drivestoredirect:s:>>RDP.RDP
TIMEOUT 14400
GOTO step1