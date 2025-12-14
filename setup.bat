@echo off
REM Medical Apps Monorepo Setup Script for Windows
REM This script installs dependencies for all Flutter projects in this monorepo

echo.
echo Medical Apps Monorepo Setup
echo ==============================
echo.

REM Check if Flutter is installed
where flutter >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Flutter is not installed. Please install Flutter first.
    echo Visit: https://docs.flutter.dev/get-started/install
    exit /b 1
)

echo [OK] Flutter is installed
echo.

REM Setup google_map_clone
echo [INFO] Setting up google_map_clone...
cd google_map_clone
call flutter pub get
if %errorlevel% neq 0 (
    echo [ERROR] Failed to install google_map_clone dependencies
    cd ..
    exit /b 1
)
echo [OK] google_map_clone dependencies installed
cd ..
echo.

REM Setup medinavi-mac
echo [INFO] Setting up medinavi-mac...
cd medinavi-mac
call flutter pub get
if %errorlevel% neq 0 (
    echo [ERROR] Failed to install medinavi-mac dependencies
    cd ..
    exit /b 1
)
echo [OK] medinavi-mac dependencies installed
cd ..
echo.

echo [SUCCESS] All projects are ready!
echo.
echo To run a project:
echo   cd google_map_clone ^&^& flutter run
echo   cd medinavi-mac ^&^& flutter run
