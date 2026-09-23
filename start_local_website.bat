@echo off
title GCBME 2026 Interactive Dashboards Site Launcher
cd /d "%~dp0"
echo ======================================================================
echo    GCBME 2026: Ergometer Multi-Sensor Validation Dashboards Site
echo ======================================================================
echo  Activating local web server for index.html ...
echo.
python serve_site.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Python was not found or encountered an error.
    echo Opening index.html directly in your default web browser...
    start "" "%~dp0index.html"
)
pause
