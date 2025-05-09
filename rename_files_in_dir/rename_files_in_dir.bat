@echo off
setlocal enabledelayedexpansion

rem ����Ƿ������ļ���·������
if "%~1"=="" (
    echo �뽫�ļ����϶������ű�ͼ�������С�
    pause
    exit /b 1
)

rem ��ȡ������ļ���·��
set "target_folder=%~1"

rem �л���Ŀ���ļ���
cd /d "%target_folder%"

rem ����Ŀ���ļ����µ������ļ�
for %%F in (*) do (
    set "filename=%%F"
    set "original_name=!filename!"
    call :extract_last_part
    rem ���� 4 λ�������
    set /a "random_num=!random! %% 9000 + 1000"
    set "new_filename=!random_num!##!original_name!"
    rem set "new_filename=!original_name!"
    if exist "!new_filename!" (
        del "!new_filename!"
    )
    rem �����������Ϣ
    echo "!filename!  ==>  !new_filename!"
    rem �������ļ�
    ren "!filename!" "!new_filename!"
)

endlocal
pause    

exit /b 0


:extract_last_part
for /f "tokens=1* delims=##" %%a in ("!original_name!") do (
    if "%%b"=="" (
        set "original_name=%%a"
    ) else (
        set "original_name=%%b"
        goto extract_last_part
    )
)
goto :eof