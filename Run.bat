@echo off
cd /d "%~dp0"
title Web Application (Port 3050)
echo ===================================================
echo   Starting Web Application...
echo ===================================================

where node >nul 2>nul
if errorlevel 1 (
    echo.
    echo [ERROR] Node.js is not installed or not found in system PATH.
    echo [INFO] Please download and install Node.js v18 or higher from https://nodejs.org/
    echo.
    pause
    exit /b 1
)

if not exist node_modules (
    echo.
    echo [INFO] node_modules folder not found.
    echo [INFO] Installing required dependencies using npm install...
    echo.
    call npm install
    if errorlevel 1 (
        echo.
        echo [ERROR] npm install failed! Please check your network connection or npm config.
        pause
        exit /b 1
    )
    echo [SUCCESS] Dependencies installed successfully!
)

echo.
echo [INFO] Opening browser and starting dev server on http://localhost:3050 ...
echo ===================================================
start http://localhost:3050
call npm run dev
if errorlevel 1 (
    echo.
    echo [ERROR] Dev server stopped with an error.
)
pause
