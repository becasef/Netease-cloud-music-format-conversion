@echo off&color 0a&mode con cols=47 lines=10&title NCMת������
echo================================================
echo     NCMת������ Becase
echo================================================
ECHO.
ECHO �뽫�ҷ��ں�����ncm�ļ�ͬһ��Ŀ¼��
ECHO.
echo ���������ʼת��
pause>NUL
cd /d %~dp0
call main.exe
main %cd%
md ԭ�ļ�%date:~0,4%%date:~5,2%%date:~8,2%
md ��ת��%date:~0,4%%date:~5,2%%date:~8,2%
move %cd%\*.flac %cd%\��ת��%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.mp3 %cd%\��ת��%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.wav %cd%\��ת��%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.mpeg %cd%\��ת��%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.midi %cd%\��ת��%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.ncm %cd%\ԭ�ļ�%date:~0,4%%date:~5,2%%date:~8,2%\
move %cd%\*.NCM %cd%\ԭ�ļ�%date:~0,4%%date:~5,2%%date:~8,2%\
CLS
ECHO ��ϲ����ת����ɣ�
mshta vbscript:createobject("sapi.spvoice").speak("��ϲ����ת����ɣ�")(window.close)
pause>nul
