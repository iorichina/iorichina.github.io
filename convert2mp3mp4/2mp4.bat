@echo off
rem echo %~s1
rem echo %~n1
rem echo %~f1
rem echo %~dp1
rem goto exit

echo %~s1
echo %~n1
echo %~f1
echo %~dp1
echo "D:\Programs\ffmpeg-2025-03-20-git-76f09ab647-full_build\bin\ffmpeg.exe"
echo %1
echo "%~f1.mp4"
rem goto exit
rem cls

"D:\Programs\ffmpeg-2025-03-20-git-76f09ab647-full_build\bin\ffmpeg.exe" -y -i %1 "%~f1.mp4"
rem cls

echo ===============================
echo Mp4��ȡ��ϣ�%~f1.mp4
echo ===============================
:exit
pause 