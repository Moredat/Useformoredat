@echo off
title CALCULADORA
ECHO "Bienvenido a la calculadora cuantica"
echo.
:inicio
echo Elija la operacion que desea realizar 
echo.
set/p signo= suma(+), resta(-), division(/) o multiplicacion(*):
echo.
set/p numero1= Introduzca primer digito de la %signo%:
set/p numero2= Introduzca segundo digito de la %signo%:
if %signo%==+ set/a resultado= %numero1% + %numero2%
if %signo%==- set/a resultado= %numero1% - %numero2%
if %signo%==* set/a resultado= %numero1% * %numero2%
if %signo%==/ set/a resultado= %numero1% / %numero2%
cls
echo.
echo Aqui tiene su resultado.
echo.
echo           _____________________
echo Resultado [%numero1%] [%signo%] [%numero2%] =[%resultado%]
echo           ---------------------
echo.
echo Desea realizar otra operacion?
echo.
set/p operacion= (SI o NO)
if %operacion%==SI goto inicio else goto continua
:continua
cls
echo.
echo hasta la proxima.
echo.
pause
exit
