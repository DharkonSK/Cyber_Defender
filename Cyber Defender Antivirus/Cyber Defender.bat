@echo off
title Cyber Defender Antivirus
color a
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico)
if not exist "%temp%\CD.SystemRoot.dll" (goto CreateDLL) else (goto Continue)
:CreateDLL
echo off>>"%temp%\CD.SystemRoot.dll"
echo %cd%>>"%temp%\CD.SystemRoot.dll"
:Continue
set SYSTEM_ROOT=%cd%
if exist "Settings.ini" (goto UI) else (REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v Real-Time-Protection /t REG_SZ /d "%cd%\MalwareSearcher.exe") >NUL 2>NUL
echo off>>Settings.ini
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
echo set estate1=Acitvado>>Settings.ini
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
for /f "tokens=*" %%A in (Settings.ini) do (%%A)
start MalwareSearcher.exe
goto UI
:ErrorCritico
echo Error = MsgBox("La ejecucion de codigo no puede continuar porque no se encontro ADZP 20 Complex.dll. Este problema se puede solucionar reinstalando el programa",16,"Error del sistema")>>CriticalError.vbs
attrib +h "CriticalError.vbs" >NUL 2>NUL
call "CriticalError.vbs"
attrib -h "CriticalError.vbs" >NUL 2>NUL
del /f /q /s "CriticalError.vbs" >NUL 2>NUL
exit
:ErrorCritico2
cls
timeout /t 2 >nul
cls
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo                                                           !
echo.
echo                                      El Programa se ha Cerrado Debido a un Error
echo.
pause >nul
exit
:UI
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
set Amenaza=@$INDEFINED$@
Fn.dll Cursor 100
cls
echo.
echo.                                                  Cyber Defender Antivirus
echo.
echo.                 ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÂÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo.                 ³                    ³                      ³                     ³                 ³
echo.                 ³     ÛÛÛÛÛ ÛÛÛÛÛ    ³           Û          ³      ÛÛÛÛÛÛÛÛÛ      ³    010011010    ³
echo.                 ³     ÛÛÛÛÛ ÛÛÛÛÛ    ³        ÚÄÄÛÄÄ¿       ³      ÛÛÛÛÛÛÛÛÛ      ³    011010010    ³
echo.                 ³                    ³           Û          ³      ÛÛÛÛÛÛÛÛÛ      ³    011100100    ³
echo.                 ³     ÛÛÛÛÛ ÛÛÛÛÛ    ³        ÚÄÄÛÄÄ¿       ³       ÛÛÛÛÛÛÛ       ³    011000010    ³
echo.                 ³     ÛÛÛÛÛ ÛÛÛÛÛ    ³           Û          ³        ÛÛÛÛÛ        ³    011010010    ³
echo.                 ³                    ³                      ³                     ³                 ³
echo.                 ³          1         ³           2          ³          3          ³        4        ³
echo.                 ³                    ³                      ³                     ³                 ³
echo.                 ³  [Analisis de PC]  ³  [Abrir Cuarentena]  ³  [Escudos Basicos]  ³   [Anti DDOS]   ³
echo.                 ³                    ³                      ³                     ³                 ³
echo.                 ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÁÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo.
call Batbox.dll /color #light_blue# /t "                 Ingrese el Numero de la Opcion > "
set /p option=""
if %option% == 1 (goto AnalyMenu)
if %option% == 2 (goto CuarentenaMenu)
if %option% == 3 (goto ShieldMenu)
if %option% == 4 (goto AntiDDOS)
:AnalyMenu
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
cls
echo.
echo. Analizar Computadora
echo.
echo. 1.[Analisis Estandar] - [Examina Archivos solo con Extenciones Peligrosas como EXE, COM o BAT]
echo.
echo. 2.[Desinfeccion de USB] - [Elimina los Virus de Accesos directos y Los Ficheros AutoRun.inf]
echo.
echo. 3.[Optimizacion de PC] - [Limpie Espacio en el PC y Elimine Archivos Inecesarios del Sistema]
echo.
call Batbox.dll /color #light_blue# /t " Selecione una Opcion > "
set /p ANALY_TYPE=""
if %ANALY_TYPE% == 1 (goto StandartAnaly)
if %ANALY_TYPE% == 2 (goto AnalyUSB)
if %ANALY_TYPE% == 3 (goto CleanUp)
goto AnalyMenu
:StandartAnaly
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 0
cls
echo.
echo. Analizando...
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "Taskmon.exe"
call AnalyPC "Ransomware-A6.exe"
call AnalyPC "MEMZ.exe"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "WannaCry.exe"
call AnalyPC "WannaCrypt0r.exe"
call AnalyPC "MEMZ.bat"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "MEMZ-Clean.exe"
call AnalyPC "MEMZ-Clean.bat"
call AnalyPC "Petya.A.exe"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "ROTANOTEDKSID.exe"
call AnalyPC "Protactinium.exe"
call AnalyPC "Michikow Ransomware.exe"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "DDOS Hack Tool.com"
call AnalyPC "DDOS Hack Tool.exe"
call AnalyPC "Walker.com"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "MyDoom.A.exe"
call AnalyPC "Klez.e.exe"
call AnalyPC "LOVE-LETTER-FOR-YOU.TXT.vbs"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "CodeRed.a.exe"
call AnalyPC "Emin.js"
call AnalyPC "Pikachu.exe"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "WannaCrypt0r.cmd"
call AnalyPC "CIH.exe"
call AnalyPC "Melissa.doc"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "Sasser.A.exe"
call AnalyPC "Sasser.B.exe"
call AnalyPC "Loveware.bat"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "000.exe"
call AnalyPC "BlueScreen.exe"
call AnalyPC "Alerta.exe"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "VeryFun.exe"
call AnalyPC "Zika.exe"
call AnalyPC "ArticBomb.exe"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "Avoid.exe"
call AnalyPC "Trololo.exe"
call AnalyPC "Popup.exe"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "Nople.exe"
call AnalyPC "Fagot.a.exe"
call AnalyPC "Rensenware.exe"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "InfinityCrypt.exe"
call AnalyPC "Krotten.exe"
call AnalyPC "Locky.AZ.exe"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "BadRabbit.exe"
call AnalyPC "GoldenEye.exe"
call AnalyPC "NotPetya.exe"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "DesktopPuzzle.exe"
call AnalyPC "ColorBug.exe"
call AnalyPC "Netres.a.exe"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call AnalyPC "EICAR.com"
call AnalyPC "ILOVEYOU.vbs"
call AnalyPC "San.html"
if /i "%amenaza%" == "@$INDEFINED$@" (goto Secure) else (goto Infected)
:Secure
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
title Cyber Defender Antivirus
cls
echo.
call Batbox.dll /color #light_blue# /t " No se encontraron Amenazas"
echo.
echo.
echo. Presione una Tecla para Continuar...
pause >nul
Fn.dll Cursor 100
goto UI
:Infected
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
title Cyber Defender Antivirus
Fn.dll Cursor 100
cls
echo.
call Batbox.dll /color #red# /t " Se Encontraron Amenazas"
echo.
echo.
echo. Ubicacion: %amenaza%
echo.
echo ==============================================
echo.              Que Quiere Hacer?
echo ==============================================
echo.
echo.         1.[Poner en Cuarentena]
echo.
echo.         2.[Eliminar Permanentemente]
echo.
echo.         3.[Permitir en el Dispositivo]
echo.
echo ==============================================
call Batbox.dll /color #green# /t ">>> "
set /p actions=""
if %actions% == 1 (goto Cuarentena)
if %actions% == 2 (goto DEL)
if %actions% == 3 (goto Allow)
:Cuarentena
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 0
cls
echo.
echo. Moviendo a Cuarentena...
timeout /t 2 >NUL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 complex.dll") else (goto ErrorCritico2)
certutil -encode "%amenaza%" "%SYSTEM_ROOT%\%InternalName%.bin" >NUL 2>NUL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 complex.dll") else (goto ErrorCritico2)
del /f /q /s "%amenaza%" >NUL 2>NUL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 complex.dll") else (goto ErrorCritico2)
move /y "%InternalName%.bin" "Cuarentena" >NUL 2>NUL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 complex.dll") else (goto ErrorCritico2)
echo.
call Batbox.dll /color #light_blue# /t " El Archivo se ha Movido a Cuarentena"
echo.
echo.
echo. Presione una Tecla para Continuar...
pause >nul
Fn.dll Cursor 100
goto UI
:DEL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 0
cls
echo.
echo. Elimnando Archivo...
timeout /t 2 >NUL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
del /f /q /s "%amenaza%" >NUL 2>NUL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
echo.
call Batbox.dll /color #light_blue# /t " El Archivo se ha Eliminado"
echo.
echo.
echo. Presione una Tecla para Continuar...
pause >nul
Fn.dll Cursor 100
goto UI
:Allow
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 0
cls
echo.
call Batbox.dll /color #yellow# /t " Se ha Permitido esta Amenaza"
echo.
echo.
echo. Esta Amenaza fue Permitida aunque se seguira detectando en el Futuro
echo.
echo. Presione una Tecla para Continuar...
pause >nul
goto UI
:AnalyUSB
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
cls
echo.
echo. Analisis de USB
echo.
call Batbox.dll /color #light_blue# /t " Ingrese la Letra de la Unidad a Desinfectar > "
set /p USB_LETTER=""
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
if not exist "%USB_LETTER%" (msg * La Unidad de USB no existe & goto AnalyUSB)
Fn.dll Cursor 0
cls
echo.
echo. Desinfectando USB...
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call FlashDriveChecker.sys /analy "%USB_LETTER%"
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
title Cyber Defender Antivirus
cls
echo.
call Batbox.dll /color #light_blue# /t " Se ha Desinfectado su Unidad de USB"
echo.
echo.
echo. Presione una Tecla para Continuar...
pause >nul
Fn.dll Cursor 100
goto UI
:CleanUp
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 0
cls
echo.
echo. Limpiando...
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
call Python51-Optimitation.exe
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
cls
echo.
call Batbox.dll /color #light_blue# /t " Se ha Optimizado su PC"
echo.
echo.
echo. Presione una Tecla para Continuar...
pause >nul
Fn.dll Cursor 0
goto UI
:CuarentenaMenu
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 100
cls
echo.
echo. En la Cuarentena se Encuentran los Archivos Maliciosos que fueron Neutralizados por Cyber Defender
echo.
echo. 1.[Abrir la Cuarentena] 
echo.
echo. 2.[Volver al Menu Principal]
echo.
call Batbox.dll /color #green# /t " Que Desea Hacer? > "
set /p cuarentineoptions=""
if %cuarentineoptions% == 1 (goto OpenCuarentine)
if %cuarentineoptions% == 2 (goto UI)
goto CuarentenaMenu
:OpenCuarentine
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 100
cls
echo.
echo. 1.[Restaurar un Archivo en Cuarentena]
echo.
echo. 2.[Eliminar todos los Archivos de la Cuarentena]
echo.
echo. 3.[Volver]
echo.
call Batbox.dll /color #green# /t " Que Desea Hacer? > "
set /p options=""
if %options% == 1 (goto RestoreMalware)
if %options% == 2 (goto Delete)
:RestoreMalware
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 100
color e
cls
echo.
echo. Restaurar un Archivo en Cuarentena
echo.
call Batbox.dll /color #green# /t " Ingrese el Nombre del Archivo que Desea Restaurar > "
set /p filename=""
if not exist "Cuarentena\%filename%.bin" (msg * El Archivo no existe & goto RestoreMalware)
echo.
call Batbox.dll /color #red# /t " Esta Seguro que Desea Restaurar este Archivo?"
echo.
echo.
call Batbox.dll /color #red# /t " Los Expertos en Ciberseguridad Recomiendan no Restaurar Estos Archivos"
echo.
echo.
call Batbox.dll /color #red# /t " Desea Restaurar %filename%? (S - N) > "
set /p decision=""
if %decision% == S (goto RunRestore)
if %decision% == N (goto CuarentenaMenu)
:RunRestore
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 0
cls
echo.
echo. Restaurando el Archivo...
timeout /t 2 >nul
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
certutil -decode "%SYSTEM_ROOT%\Cuarentena\%filename%.bin" "C:\Users\%username%\Desktop\%filename%" >NUL 2>NUL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
echo.
echo. Se ha Restaurado el Archivo
echo.
echo. Presione una Tecla para Continuar
pause >nul
Fn.dll Cursor 100
color a
goto UI
:Delete
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 100
color e
cls
echo.
echo. Esta Seguro que Desea Eliminar todos los Archivos de la Cuarentena?
echo.
call Batbox.dll /color #yellow# /t " Desea Continuar? (S - N) > "
set /p decision=""
if %decision% == S (goto DeleteAllFiles)
if %decision% == N (goto CuarentenaMenu)
:DeleteAllFiles
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 0
cls
echo.
echo. Eliminando Archivos...
timeout /t 2 >NUL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
del /f /q /s "%SYSTEM_ROOT%\Cuarentena\*.*" >NUL 2>NUL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
echo.
echo. Se han Eliminado todos los Archivos de su Cuarentena
echo.
echo. Presione una Tecla para Continuar...
pause >nul
color a
Fn.dll Cursor 100
goto CuarentenaMenu
:ShieldMenu
Fn.dll Cursor 100
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
for /f "tokens=*" %%A in (Settings.ini) do (%%A)
cls
echo.
echo. Escudos Basicos
echo.
echo. 1 - Proteccion en Tiempo Real (%estate1%) - [Busca Malware e Impide que se Ejecute en su Dispositivo]
echo.
call Batbox.dll /color #green# /t " >>> "
set /p option=""
if %option% == 1 (goto DisableRealTimeProtection)
:DisableRealTimeProtection
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
if %estate1% == Desactivado (goto EnableRealTimeProtection)
Fn.dll Cursor 100
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
cls
echo.
echo. Esta Seguro que Desea Desactivar la Proteccion en Tiempo Real? (S - N)
echo.
echo. Si Desactiva esta Funcion, el Dispositivo podria ser Vulnerable
echo.
call Batbox.dll /color #green# /t " >>> "
set /p option=""
if %option% == S (goto RunDisable)
if %option% == N (goto UI)
:RunDisable
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
del /f /q /s "Settings.ini" >NUL 2>NUL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
echo off>>Settings.ini
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
echo set estate1=Desactivado>>Settings.ini
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
for /f "tokens=*" %%A in (Settings.ini) do (%%A)
taskkill /im MalwareSearcher.exe /f >NUL 2>NUL
REG DELETE HKCU\Software\Microsoft\Windows\CurrentVersion\Run /v Real-Time-Protection /f >NUL 2>NUL
Fn.dll Cursor 0
echo.
echo. Para Desactivar la Proteccion en Tiempo Real debe Reiniciar su PC
echo.
echo. Presione una Tecla para Reiniciar Ahora o Cierre la Aplicacion para Reiniciar mas Tarde
pause >nul
shutdown -r -t 00
goto ShieldMenu
:EnableRealTimeProtection
del /f /q /s "Settings.ini" >NUL 2>NUL
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
echo off>>Settings.ini
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
echo set estate1=Activado>>Settings.ini
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
for /f "tokens=*" %%A in (Settings.ini) do (%%A)
REG ADD HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run /v Real-Time-Protection /t REG_SZ /d "%cd%\MalwareSearcher.exe" >NUL 2>NUL
start MalwareSearcher.exe
msg * Se ha Activado la Proteccion en Tiempo Real >NUL 2>NUL
goto ShieldMenu
:AntiDDOS
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 100
cls
echo.
echo. El Sistema Anti-DDOS le Protegera contra los Ataques DDOS o Algun otro tipo 
echo. de Ciber-ataque que puedan poner en riesgo su Seguridad en Linea
echo.
echo. Tenga en cuenta que si Ejecuta Anti-DDOS, Su Conexion a Internet Podria
echo. Desactivarse por un Tiempo
echo.
echo. 1.[Ejecutar el Sistema Anti-DDOS]
echo.
echo. 2.[Volver al Menu Principal]
echo.
call Batbox.dll /color #green# /t " >>> "
set /p option=""
if %option% == 1 (goto RunAntiDDOS)
if %option% == 2 (goto UI)
:RunAntiDDOS
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
Fn.dll Cursor 0
cls
echo.
echo. Preparando la Ejecucion de Anti-DDOS...
timeout /t 2 >nul
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
ipconfig /release >nul
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
ipconfig /renew >nul
echo. Ocultando su Direccion IP...
echo.
timeout /t 2 >nul
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
ipconfig /flushdns >nul
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
echo. Finalizando...
echo.
timeout /t 2 >nul
if exist "ADZP 20 Complex.dll" (RunDll32 "ADZP 20 Complex.dll") else (goto ErrorCritico2)
echo. Anti-DDOS ha Funcionado Correctamente
echo.
echo. Presione una Tecla para Continuar...
pause >nul
Fn.dll Cursor 100
goto UI
