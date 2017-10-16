::author wenjin.li
@echo off
set Pa=%1
set user=%2
set ip=%3
set Updir=jar\upload
set Dir=%4
set author=wenjin.li
color 06
echo author is %author%
set Path=%5
%Path%\tool\PSCP.EXE  -pw %Pa% -r %Updir%\* %user%@%ip%:%Dir%
echo 上传成功