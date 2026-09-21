@echo off
setlocal
cd /d "%~dp0"
set "PREVIEW_PYTHON=%USERPROFILE%\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"
if not exist "%PREVIEW_PYTHON%" set "PREVIEW_PYTHON=python"
echo.
echo Homepage preview: http://127.0.0.1:8765/
echo Previous version: http://127.0.0.1:8765/_archive/2026-09-18/
echo Keep this window open while viewing the site. Press Ctrl+C to stop.
echo If port 8765 is already in use, try opening the preview link above.
echo.
"%PREVIEW_PYTHON%" -m http.server 8765 --bind 127.0.0.1
pause
