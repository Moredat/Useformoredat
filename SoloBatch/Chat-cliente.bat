@echo off
set /p ip=Introduce la IP del servidor:
echo.
echo Conectando al servidor...
echo.
msg * /server:%ip% Conectado al servidor
echo.
:loop
msg * /server:%ip% Cliente:
set /p mensaje=""
if "%mensaje%" == "salir" goto fin
msg * /server:%ip% %mensaje%
goto loop

:fin
echo Saliendo del chat...