@echo off
setlocal
:inicio
set /p folder=Introduce destino (ejemplo: C:\Pictures\Saved Pictures):
set /p extension=Introduce la extension del archivo (ejemplo: jpg):
set /p fecha_captura=Introduce la fecha de captura del archivo (ejemplo: 04/11/2022):


for /r "%folder%" %%f in (*.%extension%) do (
  for /f "tokens=1-10 delims=_ " %%g in ("%%~tf") do (
	set "dia=%%k"
	set "mes=%%j"
    set "año=%%i"   
    set "fecha_foto=(!dia!/!mes!/!año!)"

    if "!fecha_foto!"=="%fecha_captura%" (
      echo La foto se encuentra en: "%%~dpf"
      goto end
    )
  )
)

echo No se encontró la foto en el directorio especificado.
set /p dec=Desea realizar otra busqueda? (s/n):
if %dec%==s goto inicio
pause
