@echo off
title Google Tracert Report

for /f "usebackq delims=" %%i in (`powershell -NoProfile -Command "[Environment]::GetFolderPath('Desktop')"`) do set "DESKTOP=%%i"
set "REPORT=%DESKTOP%\google-tracert-report.txt"

echo GOOGLE TRACERT REPORT > "%REPORT%"
echo ===================== >> "%REPORT%"
echo Date: %DATE% %TIME% >> "%REPORT%"
echo Command: tracert /d google.com >> "%REPORT%"
echo. >> "%REPORT%"

tracert /d google.com >> "%REPORT%" 2>&1

notepad "%REPORT%"