"""
Alternativa: Gera template CSV (não precisa de openpyxl)
Execute: python backend/gerar_template_csv.py
"""
import os
import csv

def criar_template_csv():
    """Cria template CSV simples."""
    nome_arquivo = "frontend/template_faturamento_dualtax.csv"
    
    # Garante que o diretório existe
    os.makedirs(os.path.dirname(nome_arquivo), exist_ok=True)
    
    # Dados do template
    dados = [
        ["Mês/Ano", "Entradas (R$)", "Saídas (R$)", "Qtd. Notas Entrada", "Qtd. Notas Saída", "Observações"],
        ["Janeiro/2025", "100000.00", "80000.00", "50", "45", "Exemplo - apague esta linha"],
        ["Fevereiro/2025", "120000.00", "95000.00", "55", "50", ""],
        ["Março/2025", "110000.00", "85000.00", "52", "48", ""],
        ["Abril/2025", "", "", "", "", "Preencha com seus dados"],
    ]
    
    # Salva CSV
    with open(nome_arquivo, 'w', newline='', encoding='utf-8-sig') as f:
        writer = csv.writer(f, delimiter=';')
        writer.writerows(dados)
    
    print(f"✅ Template CSV criado: {os.path.abspath(nome_arquivo)}")
    return nome_arquivo

if __name__ == "__main__":
    criar_template_csv()


