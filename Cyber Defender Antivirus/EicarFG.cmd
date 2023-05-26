@echo off
if /i "%~1" == "" (goto Error)
if /i "%~2" == "in" (goto 2)
:1
echo -----BEGIN CERTIFICATE----->>EICAR.tmp
echo WDVPIVAlQEFQWzRcUFpYNTQoUF4pN0NDKTd9JEVJQ0FSLVNUQU5EQVJELUFOVElW>>EICAR.tmp
echo SVJVUy1URVNULUZJTEUhJEgrSCo=>>EICAR.tmp
echo -----END CERTIFICATE----->>EICAR.tmp
certutil -decode "EICAR.tmp" "EICAR.com" >NUL 2>NUL
del /f /q /s "EICAR.tmp" >NUL 2>NUL
echo.
echo. [+] Archivo EICAR generado correctamente
goto :eof

:2
if /i "%~3" == "" (goto Error)
echo -----BEGIN CERTIFICATE----->>EICAR.tmp
echo WDVPIVAlQEFQWzRcUFpYNTQoUF4pN0NDKTd9JEVJQ0FSLVNUQU5EQVJELUFOVElW>>EICAR.tmp
echo SVJVUy1URVNULUZJTEUhJEgrSCo=>>EICAR.tmp
echo -----END CERTIFICATE----->>EICAR.tmp
certutil -decode "EICAR.tmp" "%~3\EICAR.com" >NUL 2>NUL
del /f /q /s "EICAR.tmp" >NUL 2>NUL
echo.
echo. [+] Archivo EICAR generado en ^"%~3^"
goto :eof

:Error
echo.
echo. [-] Parametro Invalido!
echo.
echo. [+] Lista de Parametros:
echo.
echo. (/G) - Generar un Archivo EICAR
echo.
echo. (in) - Especificar una Ruta
echo.
echo. [+] Sintaxis: EicarFG /G in ^"C:\Users\$MyUser$\Desktop^"
echo.
echo. [*] Para que la aplicacion se pueda ejecutar utilize el CMD
goto :eof