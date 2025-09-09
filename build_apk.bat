@echo off
echo Building Dash APK...
echo.

REM Clean previous builds
gradle clean

REM Build debug APK with continue on error
gradle assembleDebug --continue --no-daemon --stacktrace

REM Check if APK was created
if exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo.
    echo ✅ SUCCESS! APK built successfully!
    echo Location: app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo To install on your phone:
    echo 1. Enable "Unknown Sources" in phone settings
    echo 2. Copy APK to phone
    echo 3. Tap APK file to install
    echo 4. Grant all permissions when prompted
    pause
) else (
    echo.
    echo ❌ Build failed. Try these alternatives:
    echo 1. Use Android Studio
    echo 2. Use online APK builder
    echo 3. Download pre-built APK
    pause
)
