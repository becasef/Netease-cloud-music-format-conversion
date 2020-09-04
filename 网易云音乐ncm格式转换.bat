@echo off&color 0a&mode con cols=47 lines=10&title NCM转换工具
echo================================================
echo     NCM转换工具 Becase
echo================================================
ECHO.
ECHO 请将我放在和其他ncm文件同一个目录后
ECHO.
echo 按任意键开始转换
pause>NUL
cd /d %~dp0
call main.exe
main %cd%
md 原文件%date:~0,4%%date:~5,2%%date:~8,2%
md 已转换%date:~0,4%%date:~5,2%%date:~8,2%
move %cd%\*.flac %cd%\已转换%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.mp3 %cd%\已转换%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.wav %cd%\已转换%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.mpeg %cd%\已转换%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.midi %cd%\已转换%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.ncm %cd%\原文件%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.NCM %cd%\原文件%date:~0,4%%date:~5,2%%date:~8,2%\
CLS
ECHO 恭喜您！转换完成！
mshta vbscript:createobject("sapi.spvoice").speak("恭喜您！转换完成！")(window.close)
pause>nul
