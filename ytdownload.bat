@echo off
setlocal
title YouTube Max Quality Downloader
color 0a

echo.
set /p ytlink=👉 Enter YouTube link: 

if "%ytlink%"=="" (
    echo ❌ No link entered. Exiting...
    pause
    exit /b
)

yt-dlp.exe -f "bv*+ba/best" --merge-output-format mp4 -o "%%(title)s.%%(ext)s" "%ytlink%"

echo.
echo ✅ Done! Video saved in: %cd%
pause
