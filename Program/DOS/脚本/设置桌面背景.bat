@echo Change Wallpaper

@echo off

@mode 15,1

cd ..

if not exist C:\\Wallpaper\Wallpaper_2.jpg (
md C:\Wallpaper
copy Backup\Wallpaper\Wallpaper_2.jpg C:\Wallpaper\
) else (
reg add "hkcu\control panel\desktop" /v wallpaper /d "C:\\Wallpaper\Wallpaper_2.jpg" /f
RunDll32.exe USER32.DLL,UpdatePerUserSystemParameters
)
