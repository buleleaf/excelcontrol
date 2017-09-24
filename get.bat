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
::上传文件目录
set Updir=jar\upload
::获取时间
set Ymd=%7
echo 目录名称为:%Ymd%
::服务器的jar位置
set Dir=%4
::获取jar包名
set name=%5
echo "下载的jar名为:"
echo %name%
::设置jar包的目录
set downloaddir=jar\download\%Ymd%
::设置jar的绝对路径
set jarurl=%Dir%/%name%
echo "jar的绝对路径为:"
echo %jarurl%
echo "下载路径:"
echo %downloaddir%
echo "开始下载........."
set Path=%6
md %downloaddir%
%Path%\tool\PSCP.EXE  -pw %Pa%  %user%@%ip%:%jarurl% %downloaddir%
::PSCP.EXE  -pw %Pa%  %user%@%ip%:%jarurl% %Updir%
copy /y %downloaddir%/%name% %Updir%
