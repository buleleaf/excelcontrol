::����:��ȡLinux������jar��
::time:2017-09-04 11:35
::author wenjin.li
::version:1.0
::
@echo off
set author=wenjin.li
color 06
echo author is %author%
::����Linux�ĵ�¼��Ϣ
set Pa=%1
set user=%2
set ip=%3
set Path=%4
set downloaddir=code
::����jar�ľ���·��
set jarurl=/bin/sh
echo %jarurl%
echo "����·��:"
echo %downloaddir%
echo "��ʼ����........."
%Path%\tool\PSCP.EXE  -pw %Pa%  %user%@%ip%:%jarurl% %downloaddir%

