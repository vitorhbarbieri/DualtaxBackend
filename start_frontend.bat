@echo off
echo Iniciando servidor HTTP na porta 8080...
echo Acesse: http://localhost:8080
echo.
cd frontend
python -m http.server 8080
pause

