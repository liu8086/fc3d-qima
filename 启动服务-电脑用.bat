@echo off
cd /d "%~dp0"
set "PY=C:\Users\Administrator\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"
if not exist "%PY%" set "PY=python"
start "fc3d-server" /min "%PY%" -m http.server 8000
timeout /t 1 /nobreak >nul
start "" http://localhost:8000/index.html
