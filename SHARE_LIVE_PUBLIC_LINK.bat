@echo off
title GCBME 2026 Live Public Tunnel Sharer
cd /d "%~dp0"
echo ======================================================================
echo    GCBME 2026: Live Web Sharer for Students in USA, Indonesia, etc.
echo ======================================================================
echo.
echo 1. Starting background web server...
start /b python serve_site.py > nul 2>&1

echo 2. Establishing secure public HTTPS tunnel...
echo    (This connects to a free global relay. No registration needed!)
echo.
echo ======================================================================
echo  Look below for your public HTTPS web link (e.g., https://....lhr.life)
echo  Copy that link and send it to your students!
echo  Keep this window open while students are viewing.
echo  Press Ctrl+C to stop sharing.
echo ======================================================================
echo.
ssh -o StrictHostKeyChecking=no -R 80:localhost:8080 nokey@localhost.run
pause
