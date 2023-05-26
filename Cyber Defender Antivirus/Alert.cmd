@echo off
MODE CON: COLS=80 LINES=25
if exist "YShell.dll" (RunDll32 "YShell.dll") else (goto ErrorCritico)
if /i "%~1" == "/complete" (set AlertOption=Complete & color a)
if /i "%~2" == "/t" (set TextInput=true)
if /i "%~3" == "" (goto Error)
if /i "%AlertOption%" == "/complete" (goto Complete)

:Complete
start AlertSound.vbs
title Amenaza Solucionada
cls
echo.
echo.
echo.                                          /
echo.                                         /
echo.                                   \    /
echo.                                    \  /
echo.                                     \/
echo.
echo.
echo.
echo. %~3
echo.
pause >nul
exit

:ErrorCritico
echo Error = MsgBox("La ejecucion de codigo no puede continuar porque no se encontro YShell.dll. Este problema se puede solucionar reinstalando el programa",16,"Error del sistema")>>CriticalError.vbs
attrib +h "CriticalError.vbs" >NUL 2>NUL
call "CriticalError.vbs"
attrib -h "CriticalError.vbs" >NUL 2>NUL
del /f /q /s "CriticalError.vbs" >NUL 2>NUL
exit