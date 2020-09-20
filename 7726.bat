@shift /0

title        Cinematic Private!
@echo off
:: /////////////////  COMMENT OUT {cd %~dp0} LINE BELOW FOR EXE  ///////////////////
::cd %~dp0


QPROCESS "FortniteClient-Win64-Shipping_BE.exe">NUL
IF %ERRORLEVEL% EQU 0 goto be
QPROCESS "BEService.exe">NUL
IF %ERRORLEVEL% EQU 0 goto be


::modsquad.exe FortniteClient-Win64-Shipping.exe d2d1.dll fourteennight.dll
::modsquad.exe FortniteClient-Win64-Shipping.exe d3d11.dll fn.dll
modmap.exe FortniteClient-Win64-Shipping.exe dxgi.dll Fortnite.dll
::modmapSIL.exe r5apex.exe dxgi.dll ApexInternal.dll



echo DONE.............
pause
goto :eof
goto done


QPROCESS "FortniteClient-Win64-Shipping_BE.exe">NUL
IF %ERRORLEVEL% EQU 0 goto be
QPROCESS "BEService.exe">NUL
IF %ERRORLEVEL% EQU 0 goto be









:be
cls
start "" cmd /c "echo   WTF! BE IS RUNNING!!! --- A B O R T ---   &echo(&pause"
cls
@taskkill /f /im BEService.exe
@taskkill /f /im FortniteClient-Win64-Shipping_BE.exe
@taskkill /f /im FortniteLauncher.exe
@taskkill /f /im FortniteClient-Win64-Shipping.exe
@taskkill /f /im Fortnite.exe
@taskkill /f /im BEService.exe
cls


goto :eof
goto eof
:done