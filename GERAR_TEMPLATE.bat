@echo off
echo ========================================
echo Gerando template para Dualtax
echo ========================================
echo.

echo Tentando gerar template Excel...
python backend/gerar_template_estatico.py
if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Excel falhou. Tentando gerar CSV (mais simples)...
    python backend/gerar_template_csv.py
    if %ERRORLEVEL% NEQ 0 (
        echo.
        echo ERRO: Nao foi possivel gerar template!
        echo.
        echo Solucao:
        echo 1. Instale dependencias: pip install -r requirements.txt
        echo 2. Ou apenas: pip install openpyxl
        pause
        exit /b 1
    )
)

echo.
echo ========================================
echo Template gerado com sucesso!
echo ========================================
echo.
pause

