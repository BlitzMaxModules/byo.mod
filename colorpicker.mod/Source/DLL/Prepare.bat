@echo off
echo ==========================================================================
echo WWW.VANDOG.COM
echo ==========================================================================
echo ColorPicker.dll is about to be copied to ..\..\Install\DLL folder.
echo.
echo - Press Ctrl+C if you have launched this file in error.
echo - Otherwize, press any key to start copying ...
echo ==========================================================================
pause >nul

upx ColorPicker.dll

for %%x in (..\..\Install\DLL\*.*) do del %%x 

copy ColorPicker.dll ..\..\Install\DLL >nul
copy Install.ba_ ..\..\Install\DLL\*.??t >nul
copy Uninstall.ba_ ..\..\Install\DLL\*.??t >nul

echo DONE.
