@echo off
echo Esperando una conexión entrante...
echo.

:loop
msg * /time:5 Servidor:
set /p mensaje=""
if "%mensaje%" == "salir" goto fin
msg * %mensaje%
goto loop

:fin
echo Cerrando el servidor...