# 🚀 Dualtax - Simulação Reforma Tributária

Sistema de simulação da reforma tributária para empresas baseado em CNPJ. O sistema calcula o impacto dos novos impostos (CBS, IBS) e previdência comparando cenários antigos e novos.

## 📁 Estrutura do Projeto

```
DualtaxBackend/
├── backend/
│   └── app.py              # API FastAPI
├── frontend/
│   └── index.html          # Interface web
└── README.md
```

## 🛠️ Tecnologias

### Backend
- **Python 3.10+**
- **FastAPI** - Framework web moderno e rápido
- **Uvicorn** - Servidor ASGI

### Frontend
- **HTML5** + **TailwindCSS** - Interface responsiva
- **JavaScript** (Vanilla) - Lógica do cliente
- **Chart.js** - Gráficos interativos
- **AOS** - Animações de scroll

## ⚙️ Instalação e Configuração

### 1. Pré-requisitos

Certifique-se de ter Python 3.10 ou superior instalado:

```bash
python --version
```

### 2. Instalar Dependências

No diretório raiz do projeto, instale as dependências do backend:

```bash
pip install fastapi uvicorn
```

Ou crie um arquivo `requirements.txt` e instale:

```bash
pip install -r requirements.txt
```

### 3. Executar o Backend

Navegue até a pasta `backend` e execute:

```bash
cd backend
python app.py
```

Ou usando uvicorn diretamente:

```bash
cd backend
uvicorn app:app --host 0.0.0.0 --port 8000 --reload
```

O servidor estará rodando em: **http://localhost:8000**

### 4. Abrir o Frontend

Abra o arquivo `frontend/index.html` no seu navegador:

- **Opção 1:** Duplo clique no arquivo
- **Opção 2:** Use um servidor HTTP local (recomendado):

```bash
# Com Python
cd frontend
python -m http.server 8080

# Ou com Node.js (se tiver instalado)
npx http-server -p 8080
```

Acesse: **http://localhost:8080**

## 🎯 Como Usar

1. **Abra o frontend** no navegador
2. **Digite um CNPJ** (com ou sem formatação: `12.345.678/0001-90` ou `12345678000190`)
3. **Marque o checkbox** de consentimento
4. **Clique em "Simular Agora"**
5. **Visualize os resultados:**
   - Período de consulta (últimos 6 meses)
   - Cards com valores de entrada, saída e impactos
   - Gráficos comparativos
   - Impacto total da reforma tributária

## 🔧 Funcionalidades

### Backend (`backend/app.py`)

- ✅ **Tratamento automático de CNPJ**: Aceita CNPJ com ou sem formatação
- ✅ **Dados determinísticos**: Mesmo CNPJ sempre retorna os mesmos valores (usando hash MD5)
- ✅ **Cálculo de impactos**: CBS (12%), IBS (5%), Previdência (2%)
- ✅ **Período de consulta**: Retorna informações sobre o período analisado
- ✅ **Validação de CNPJ**: Verifica se possui 14 dígitos

### Frontend (`frontend/index.html`)

- ✅ **Interface moderna**: Design responsivo com TailwindCSS
- ✅ **Exibição de período**: Mostra mês/ano e horizonte temporal
- ✅ **Cards visuais**: Apresentação clara dos resultados
- ✅ **Gráficos interativos**: 
  - Gráfico de barras comparando impactos (CBS, IBS, Previdência)
  - Gráfico de pizza mostrando distribuição (Entradas vs Saídas)
- ✅ **Animações**: Efeitos visuais com AOS
- ✅ **Feedback visual**: Loading states e confetti ao completar

## 📊 Endpoints da API

### GET `/`
Retorna status da API.

**Resposta:**
```json
{
  "message": "API Dualtax ativa"
}
```

### GET `/consultar_notas/{cnpj}`
Consulta notas fiscais e calcula impactos tributários.

**Parâmetros:**
- `cnpj` (path): CNPJ da empresa (aceita formatação)

**Resposta:**
```json
{
  "total_entrada": 75000.0,
  "total_saida": 60000.0,
  "impacto_cbs": 7200.0,
  "impacto_ibs": 3000.0,
  "impacto_previdencia": 1500.0,
  "impacto_total": 8700.0,
  "periodo_inicio": "2024-07-01",
  "periodo_fim": "2025-01-01",
  "periodo_mes": "Janeiro/2025",
  "horizonte_temporal": "Últimos 6 meses"
}
```

## 🧪 Testando

### Testar o Backend

```bash
# Teste direto no navegador
http://localhost:8000/

# Teste o endpoint de consulta
http://localhost:8000/consultar_notas/12345678000190

# Ou usando curl
curl http://localhost:8000/consultar_notas/12.345.678/0001-90
```

### Testar o Frontend

1. Certifique-se de que o backend está rodando
2. Abra o `frontend/index.html` no navegador
3. Digite um CNPJ válido (14 dígitos)
4. Marque o checkbox
5. Clique em "Simular Agora"

**CNPJs de teste:**
- `12345678000190` (sem formatação)
- `12.345.678/0001-90` (com formatação)
- Qualquer CNPJ com 14 dígitos funcionará

## 🐛 Solução de Problemas

### Backend não inicia
- Verifique se a porta 8000 está livre
- Confirme que as dependências estão instaladas: `pip list | grep fastapi`

### Frontend não conecta ao backend
- Verifique se o backend está rodando em `http://localhost:8000`
- Abra o console do navegador (F12) para ver erros
- Se estiver usando servidor HTTP local, certifique-se de que não há problemas de CORS

### Erro de CORS
- O backend já está configurado para aceitar requisições de qualquer origem
- Se ainda houver problemas, verifique o middleware CORS em `backend/app.py`

## 📝 Notas Importantes

- **Dados Mock**: Os dados são simulados usando hash MD5 do CNPJ para garantir consistência
- **Período Fixo**: Atualmente retorna dados dos "últimos 6 meses" (180 dias)
- **Cálculos**: 
  - CBS = 12% sobre saídas
  - IBS = 5% sobre saídas
  - Previdência = 2% sobre entradas
  - Impacto Total = CBS + IBS - Previdência

## 🚀 Próximos Passos

- [ ] Integração com API real de notas fiscais
- [ ] Banco de dados para armazenar consultas
- [ ] Autenticação e autorização
- [ ] Histórico de consultas
- [ ] Exportação de relatórios (PDF/Excel)
- [ ] Comparação de múltiplos períodos

## 📄 Licença

Este é um projeto MVP para demonstração.

---

**Desenvolvido com ❤️ para Dualtax**

