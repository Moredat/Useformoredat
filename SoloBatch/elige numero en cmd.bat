@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

set num=%1

for /L %%b in (1,1,10) do (
    set /a resul=%num%*%%b
    echo %num% X %%b = !resul!
)
echo.

echo Operacion finalizada
pause
exit