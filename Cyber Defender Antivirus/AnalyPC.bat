@echo off
title Analizando PC... (%USERDOMAIN%)
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto Error)
goto AnalyPC
:AnalyPC
if exist "%~1" (set Amenaza=%~1 & set InternalName=%~1)
if exist "C:\%~1" (set Amenaza=C:\%~1 & set InternalName=%~1)
if exist "C:\Windows\%~1" (set Amenaza=C:\Windows\%~1 & set InternalName=%~1)
if exist "C:\Windows\System32\%~1" (set Amenaza=C:\Windows\System32\%~1 & set InternalName=%~1)
if exist "C:\Users\%~1" (set Amenaza=C:\Users\%~1 & set InternalName=%~1)
if exist "C:\Users\%username%\%~1" (set Amenaza=C:\Users\%username%\%~1 & set InternalName=%~1)
if exist "C:\Users\%username%\Desktop\%~1" (set Amenaza=C:\Users\%username%\Desktop\%~1 & set InternalName=%~1)
if exist "C:\Users\%username%\Music\%~1" (set Amenaza=C:\Users\%username%\Music\%~1 & set InternalName=%~1)
if exist "C:\Users\%username%\Videos\%~1" (set Amenaza=C:\Users\%username%\Videos\%~1 & set InternalName=%~1)
if exist "C:\Users\%username%\Documents\%~1" (set Amenaza=C:\Users\%username%\Documents\%~1 & set InternalName=%~1)
if exist "C:\Users\%username%\Pictures\%~1" (set Amenaza=C:\Users\%username%\Pictures\%~1 & set InternalName=%~1)
if exist "C:\Users\%username%\Downloads\%~1" (set Amenaza=C:\Users\%username%\Downloads\%~1 & set InternalName=%~1)
if exist "C:\Users\%username%\3D Objects\%~1" (set Amenaza=C:\Users\%username%\3D Objects\%~1 & set InternalName=%~1)
if exist "C:\Program Files\%~1" (set Amenaza=C:\Program Files\%~1 & set InternalName=%~1)
if exist "%appdata%\%~1" (set Amenaza=%appdata%\%~1 & set InternalName=%~1)
if exist "%temp%\%~1" (set Amenaza=%temp%\%~1 & set InternalName=%~1)
goto :eof
:Error
echo Error = MsgBox("La ejecucion de codigo no puede continuar porque no se encontro ADZP 20 Complex.dll. Este problema se puede solucionar reinstalando el programa",16,"Error del sistema")>>CriticalError.vbs
attrib +h "CriticalError.vbs" >NUL 2>NUL
call "CriticalError.vbs"
attrib -h "CriticalError.vbs" >NUL 2>NUL
del /f /q /s "CriticalError.vbs" >NUL 2>NUL
exit