@echo off

set fpath=%cd%


set hour=%time:~0,2%
set minute=%time:~3,2%
set second=%time:~6,2%
if %hour% LEQ  9 (set hour=0%time:~1,1%)
set t=%date:~0,4%%date:~5,2%%date:~8,2%%hour%%minute%%second%

cd "C:\Program Files\Wireshark\"
rem -i 接口名称
rem -f 捕获过滤器
rem -Y 显示过滤器
rem -w 将捕获内容输出到文件
rem -k 立即执行
start WireShark.exe -i "无线网络连接" -f "port 53 or http or icmp" -Y "not (ipv6.addr==fe00:0:0:ffff::/8)" -w "%fpath%\%t%.pcapng" -k