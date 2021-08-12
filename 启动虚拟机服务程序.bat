@echo off
NET START VMwareHostd
NET START "VMware NAT Service"
NET START VMnetDHCP
::NET START VMAuthdService

pause