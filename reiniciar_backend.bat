@echo off
echo Parando processos antigos na porta 8000...
for /f "tokens=5" %%a in ('netstat -ano ^| findstr :8000 ^| findstr LISTENING') do (
    taskkill /F /PID %%a >nul 2>&1
)
timeout /t 2 /nobreak >nul
echo Iniciando backend...
cd backend
start "Backend Dualtax" python app.py
timeout /t 3 /nobreak
echo.
echo Backend iniciado! Acesse: http://localhost:8000
echo.
pause

