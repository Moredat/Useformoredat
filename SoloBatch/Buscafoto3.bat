@echo off
echo "Este programa le buscara y le mostrara en pantalla:" 
echo "el nombre de la foto, fecha de captura o ultima modificaccion y hora"
pause
:Inicio
set /p unidad=Introduce la unidad de busqueda (por ejemplo, C:\ o ruta absoluta): 
set /p extension=Introduce la extensión de archivo (por ejemplo, .jpg): 
set /p fecha=Introduce la fecha de captura (en formato dd/mm/aaaa): 

echo Buscando fotos en %unidad%...

for /r "%unidad%" %%a in (*%extension%) do (
    for /f "tokens=1-6 delims=/: " %%b in ('dir /tc "%%a" ^| findstr %fecha%') do (
        echo %%~na%%~xa fue capturada el %%b/%%c/%%d a las %%e:%%f
    )
)
set /p dec=Desea realizar otra busqueda? (s/n):
if %dec%==s goto inicio
pause

