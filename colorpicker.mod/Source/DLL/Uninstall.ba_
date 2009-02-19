@echo off
cls
echo ==========================================================================
echo WWW.VANDOG.COM
echo ==========================================================================
echo This batch file will UNINSTALL ColorPicker.dll from your computer.
echo.
echo - Press Ctrl+C if you have launched this file in error.
echo - Otherwize, press any key to begin uninstallation...
echo ==========================================================================
pause >nul

:: Step 1 ::
del %WINDIR%\System32\ColorPicker.dll
if     ERRORLEVEL 1 echo Uninstallation failed. Please read messages.
if     ERRORLEVEL 1 goto Quit
echo File %WINDIR%\System32\ColorPicker.dll has been deleted.

echo.
echo DONE.

:Quit
pause >nul
