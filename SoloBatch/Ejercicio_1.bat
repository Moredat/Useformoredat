@echo off

title Aprende a calcular
:inicio
set/p numero1= dime un numero
set/p operacion=ingrese laopreracion (+,-,*,/):
set/p numero2= dime otro numero
echo.
if "%operacion%"== "+" set/a resultado=%numero1%+%numero2%
if "%operacion%"== "-" set/a resultado=%numero1%-%numero2%
if "%operacion%"== "*" set/a resultado=%numero1%*%numero2%
if "%operacion%"== "/" set/a resultado=%numero1%/%numero2%

echo el resultado es: %resultado%
echo.
echo enohrabuena tienes la misma idea de programar que de sumar
set/p continuar=¿deseas seguir utilizandome? (s/n):
if "%continuar%"== "s" goto inicio else goto exit

pause
exit
