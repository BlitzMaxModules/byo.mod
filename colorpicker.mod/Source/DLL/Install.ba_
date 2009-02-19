@echo off
cls
echo ==========================================================================
echo WWW.VANDOG.COM : ColorPicker.dll, the Flash screen saver builder.
echo ==========================================================================
echo ColorPicker library is about to be installed.
echo.
echo - Press Ctrl+C if you have launched this file in error.
echo - Othetrwise, press any key to begin installation...
echo ==========================================================================
pause >nul

:: Step 1 ::
copy /y ColorPicker.dll %WINDIR%\System32 >nul
if ERRORLEVEL 1 echo Installation failed.
if ERRORLEVEL 1 goto Quit
echo File ColorPicker.dll has been copied to %WINDIR%\System32.

echo.
echo DONE.
:Quit
pause >nul
