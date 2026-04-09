@echo off
setlocal
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0validate-commit-message.ps1" "%~1"
exit /b %errorlevel%
