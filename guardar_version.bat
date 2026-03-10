@echo off
echo ============================================
echo   GUARDAR VERSION - Calculadora K GHI
echo ============================================
echo.
echo Escribe una descripcion de los cambios:
set /p mensaje=
echo.
echo Guardando cambios...
git add -A
git commit -m "%mensaje%"
git push origin master
echo.
echo === GUARDADO ===
pause
