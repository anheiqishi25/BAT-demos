@echo off

set fpath=%cd%


set hour=%time:~0,2%
set minute=%time:~3,2%
set second=%time:~6,2%
if %hour% LEQ  9 (set hour=0%time:~1,1%)
set t=%date:~0,4%%date:~5,2%%date:~8,2%%hour%%minute%%second%

cd "C:\Program Files\Wireshark\"
rem -i �ӿ�����
rem -f ���������
rem -Y ��ʾ������
rem -w ����������������ļ�
rem -k ����ִ��
start WireShark.exe -i "������������" -f "port 53 or http or icmp" -Y "not (ipv6.addr==fe00:0:0:ffff::/8)" -w "%fpath%\%t%.pcapng" -k