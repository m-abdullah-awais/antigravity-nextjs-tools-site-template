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
echo [INFO] Starting dev server on http://localhost:3050 ...
echo [INFO] Browser will open automatically once the server is ready.
echo [TIP] You can also open your browser manually at: http://localhost:3050
echo ===================================================

start "" /min cmd /c "for /L %%i in (1,1,30) do @curl.exe -s -o nul http://localhost:3050 && start http://localhost:3050 && exit || ping 127.0.0.1 -n 2 >nul"

call npm run dev
if errorlevel 1 (
    echo.
    echo [ERROR] Dev server stopped with an error.
)
pause
