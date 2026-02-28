@echo off
title Cafe One POS - Startup
echo ====================================================
echo      CAFE ONE POS SYSTEM - DESKTOP SOFTWARE
echo ====================================================
echo.
echo Please wait... Launching the application.
echo (This window will stay open while the software is running)
echo.

cd /d "%~dp0"

:: Set environment to development to load local Vite server
set NODE_ENV=development

:: Run the development command
call npm run electron:dev

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [!] There was an error starting the software.
    echo [!] Trying fallback mode...
    echo.
    
    :: Fallback: Start Vite in background and Electron separately
    start /b cmd /c "npm run dev"
    timeout /t 5
    call npx electron .
)

pause
