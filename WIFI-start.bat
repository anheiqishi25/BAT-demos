@echo off
netsh interface set interface name="无线网络连接" admin=DISABLED
netsh interface set interface name="无线网络连接" admin=ENABLED
netsh wlan set hostednetwork mode=allow ssid=VirWiFi key=1234567890
netsh wlan start hostednetwork
pause