@echo off
setlocal
cd /d "%~dp0"
echo Node.js version:
node --version
echo.
echo Starting NovaPlay server on port 3000...
echo Keep this black window OPEN while using NovaPlay.
echo Browser will open in a few seconds.
start "" cmd /c "ping 127.0.0.1 -n 3 ^>nul ^& start http://localhost:3000"
node server.js
echo.
echo NovaPlay server has stopped. Read the error above.
pause
