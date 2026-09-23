@echo off
title Push Dashboards Site to GitHub Pages
cd /d "%~dp0"
echo ======================================================================
echo    Push GCBME Dashboards to https://github.com/sj0813/rowing_data1
echo ======================================================================
echo.
if not exist ".git" (
    echo Initializing local git repository...
    git init
    git branch -M main
    git remote add origin https://github.com/sj0813/rowing_data1.git
)

echo.
echo Adding website files (index.html, dashboards, figures)...
git add index.html
git add raw_multichannel_rowing_dashboard.html
git add gyro_synchronization_dashboard.html
git add rowing_cycle_dissection_dashboard.html
git add fig3_kinematic_consistency.png
git add raw_multisensor_rowing_cycles.png
git add raw_multisensor_rowing_cycles_separated.png
git add rowing_cycle_dissection_overview.png
git add README.md

echo.
echo Committing files...
git commit -m "Deploy GCBME 2026 interactive dashboards website"

echo.
echo Pushing to GitHub (main branch)...
echo (If prompted, please log in with your GitHub account)
git push -u origin main

echo.
echo ======================================================================
echo Done! Next step:
echo Go to: https://github.com/sj0813/rowing_data1/settings/pages
echo Set Branch to "main", Folder to "/ (root)", and click "Save"!
echo ======================================================================
pause
