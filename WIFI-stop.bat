@echo off
netsh wlan set hostednetwork mode=disallow
netsh wlan stop hostednetwork
pause