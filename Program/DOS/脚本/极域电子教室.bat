@echo off
mode 24,15

:menu
echo. =-=-=-=-=菜单=-=-=-=-=
echo.
echo.   1  切换至频道 1
echo.
echo.   2  切换至频道 2
echo.
echo.   3  修改密码为 .
echo.
echo.   4  结束电子教室
echo.
echo.   5  启动电子教室
echo.
echo.   0  退   出
echo.

set /p  id=
if "%id%"=="1" goto cmd1
if "%id%"=="2" goto cmd2
if "%id%"=="3" goto cmd3
if "%id%"=="4" goto cmd4
if "%id%"=="5" goto cmd5
if "%id%"=="0" goto cmd0

:cmd0
exit

:cmd1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\TopDomain\e-Learning Class\Student" /v ChannelId /t REG_DWORD /d 1 /f
cls
goto menu

:cmd2
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\TopDomain\e-Learning Class\Student" /v ChannelId /t REG_DWORD /d 2 /f
cls
goto menu


:cmd3
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\TopDomain\e-Learning Class Standard\1.00" /v UninstallPasswd /t REG_SZ /d "Passwd." /f
goto menu


:cmd4
if not exist C:\Software\ntsd.exe (
md C:\Software
for /f "tokens=3" %%A in (' echo list volume ^| diskpart ^| findstr "可移动" ') do %%A:
cd /
copy Software\ntsd.exe C:\Software /y
cd /d C:\Software
ntsd -c q -pn StudentMain.exe
) else (
cd /d C:\Software
ntsd -c q -pn StudentMain.exe
)
goto menu

:cmd5
start C:\"Program Files"\Mythware\"e-Learning Class"\StudentMain.exe
goto menu

