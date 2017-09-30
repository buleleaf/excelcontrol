@echo off
set author=wenjin.li
color 06
echo author is %author%
set Pa=%1
set user=%2
set ip=%3
set Updir=jar\upload
set Dir=%4
set author=wenjin.li
color 06
echo author is %author%
set Path=%5
%Path%\tool\PLINK.EXE -ssh -pw %Pa%  %user%@%ip% tomcat restart
echo 重启成功，耐心等待