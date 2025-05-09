@echo off
rem echo �������е������������
rem echo ��ȫ·����%0
rem echo ȥ�����ţ�%~0
rem echo ���ڷ�����%~d0
rem echo ����·����%~p0
rem echo �ļ�����%~n0
rem echo ��չ����%~x0
rem echo �ļ����ԣ�%~a0
rem echo �޸�ʱ�䣺%~t0
rem echo �ļ���С��%~z0
rem echo %~s1
rem echo %~n1
rem echo %~f1
rem echo %~dp1
rem goto exit

echo "%%~s1=%~s1"
echo "%%~n1=%~n1"
echo "%%~f1=%~f1"
echo "%%~dp1=%~dp1"
echo "D:\Programs\ffmpeg-2025-03-20-git-76f09ab647-full_build\bin\ffmpeg.exe"
echo "%%1=%1"

rem goto exit
rem cls

cd %~f1
echo ===============================
for %%s in (.,*) do (
  if not "." == "%%s" (
    echo %%s
	"D:\Programs\ffmpeg-2025-03-20-git-76f09ab647-full_build\bin\ffmpeg.exe" -y -i "%%s" "%%s.avi"
    echo avi��ȡ��ϣ�%~f1\%%s.avi
    echo ===============================
  )
)

rem cls

:exit
pause