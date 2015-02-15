@echo off
setlocal enabledelayedexpansion
set txt_file=帐号.txt
for /f "tokens=1,2 delims==" %%a in ('type "!txt_file!"') do (
echo %%a %%b
rasdial "宽带连接" /disconnect>nul
rasdial "宽带连接" %%a %%b&&(
;Echo %%a %%b>>成功的.txt
ping -n 600 127.0.0.1>nul)||(Echo %%a %%b>>失败的帐号.txt)) 
pause