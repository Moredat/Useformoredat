@echo off
:: Para hacer un salto de linea
echo.
:: Asigno valor a variable
set/p nombre= Como te llamas?
:: Salida por pantalla de un mensaje y uso variable
if %nombre%==Luis echo Hola %nombre%, buenos dias
if not %nombre%==Luis echo Necesitas permisos
:: El programa espera a pulsar una tecla para seguir

:: operaciones matematicas
set/p numero1= Dime un numero
echo.
set/p numero2= Dime otro para sumar al anterior
set/a suma= %numero1% + %numero2%
pause
:: Salir del programa
exit