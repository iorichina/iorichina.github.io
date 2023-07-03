@echo off
setlocal enabledelayedexpansion

rem 检查是否传入了文件夹路径参数
if "%~1"=="" (
    echo 请将文件夹拖动到本脚本图标上运行。
    pause
    exit /b 1
)

rem 获取传入的文件夹路径
set "target_folder=%~1"

rem 切换到目标文件夹
cd /d "%target_folder%"

rem 遍历目标文件夹下的所有文件
for %%F in (*) do (
    set "filename=%%F"
    set "original_name=!filename!"
    call :extract_last_part
    rem 生成 4 位随机数字
    set /a "random_num=!random! %% 9000 + 1000"
    set "new_filename=!random_num!##!original_name!"
    rem set "new_filename=!original_name!"
    if exist "!new_filename!" (
        del "!new_filename!"
    )
    rem 输出重命名信息
    echo "!filename!  ==>  !new_filename!"
    rem 重命名文件
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