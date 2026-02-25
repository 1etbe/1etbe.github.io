@echo off
echo [1/4] Syncing from Cloud...
git pull origin main

echo.
echo [2/4] Staging local changes...
git add .

echo.
set /p msg="Enter commit message: "

echo.
echo [3/4] Committing...
git commit -m "%msg%"

echo.
echo [4/4] Pushing to GitHub...
git push origin main

echo.
echo Deployment Complete!
pause