::名称:获取Linux服务器jar包
::time:2017-09-04 11:35
::author wenjin.li
::version:1.0
::
@echo off
set author=wenjin.li
color 06
echo author is %author%
::定义Linux的登录信息
set Pa=%1
set user=%2
set ip=%3
set Path=%4
set downloaddir=code
::设置jar的绝对路径
set jarurl=/bin/sh
echo %jarurl%
echo "下载路径:"
echo %downloaddir%
echo "开始下载........."
%Path%\tool\PSCP.EXE  -pw %Pa%  %user%@%ip%:%jarurl% %downloaddir%

