@echo off
echo ======================================================
echo    React Native One-Click Runner (Port 8081)
echo ======================================================

echo [1/3] Linking USB device to Metro...
adb reverse tcp:8081 tcp:8081

echo [2/3] Launching app on your phone...
adb shell am start -n com.react_native_cli_blur_glassy_effects/.MainActivity

echo [3/3] Starting Metro Bundler (Hot Reload)...
echo.
echo Save (Ctrl+S) any file in your editor to see live updates!
echo.
npx react-native start
