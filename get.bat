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
::�ϴ��ļ�Ŀ¼
set Updir=jar\upload
::��ȡʱ��
set Ymd=%7
echo Ŀ¼����Ϊ:%Ymd%
::��������jarλ��
set Dir=%4
::��ȡjar����
set name=%5
echo "���ص�jar��Ϊ:"
echo %name%
::����jar����Ŀ¼
set downloaddir=jar\download\%Ymd%
::����jar�ľ���·��
set jarurl=%Dir%/%name%
echo "jar�ľ���·��Ϊ:"
echo %jarurl%
echo "����·��:"
echo %downloaddir%
echo "��ʼ����........."
set Path=%6
md %downloaddir%
%Path%\tool\PSCP.EXE  -pw %Pa%  %user%@%ip%:%jarurl% %downloaddir%
::PSCP.EXE  -pw %Pa%  %user%@%ip%:%jarurl% %Updir%
copy /y %downloaddir%/%name% %Updir%
