@echo off
setlocal
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0validate-pre-push.ps1"
exit /b %errorlevel%
