# 📊 Comparação de APIs de Consulta CNPJ

## ✅ Resultado dos Testes

### 🏆 BrasilAPI - **FUNCIONANDO** (Recomendada)
- **URL:** `https://brasilapi.com.br/api/cnpj/v1/{cnpj}`
- **Status:** ✅ Funcionando (testado)
- **Tempo de resposta:** ~0.13s
- **Gratuita:** Sim
- **Limite:** Não especificado (parece ilimitada)
- **Dados retornados:**
  - ✅ Razão Social
  - ✅ CNPJ
  - ✅ CNAE Fiscal (código e descrição)
  - ✅ Situação Cadastral
  - ✅ Regime Tributário
  - ✅ UF, Município, Endereço
  - ✅ Porte da empresa
  - ✅ Data de início de atividades
- **Vantagens:**
  - API oficial e confiável
  - Rápida (0.13s)
  - Dados completos
  - Sem necessidade de autenticação
- **Desvantagens:**
  - Nenhuma encontrada nos testes

---

### ❌ OpenCNPJ
- **URL:** `https://opencnpj.org/api/v1/cnpj/{cnpj}`
- **Status:** ❌ Erro de parsing JSON
- **Gratuita:** Sim
- **Limite:** 50 requisições/segundo por IP
- **Observação:** Retornou 200 mas com erro ao parsear JSON

---

### ❌ ReceitaWS
- **URL:** `https://www.receitaws.com.br/v1/{cnpj}`
- **Status:** ❌ 404 (não encontrado)
- **Gratuita:** Sim (limitada)
- **Observação:** Endpoint pode ter mudado ou estar fora do ar

---

### ❌ CNPJá
- **URL:** `https://www.cnpja.com/api/open/cnpj/{cnpj}`
- **Status:** ❌ 429 (Rate Limit)
- **Gratuita:** Sim (limitada)
- **Limite:** 5 consultas/minuto por IP
- **Observação:** Bloqueado por rate limit nos testes

---

### ❌ APIBrasil
- **URL:** `https://www.apibrasil.com.br/api/v1/cnpj/{cnpj}`
- **Status:** ❌ 429 (Rate Limit)
- **Gratuita:** Sim (limitada)
- **Limite:** 100 consultas/mês no plano gratuito
- **Observação:** Bloqueado por rate limit nos testes

---

## 💡 Recomendação Final

### ✅ **BrasilAPI** - MELHOR OPÇÃO

**Por quê?**
1. ✅ Funcionando e testada
2. ✅ Rápida (0.13s)
3. ✅ Dados completos (CNAE, situação, regime tributário)
4. ✅ Gratuita e sem limites aparentes
5. ✅ API oficial e confiável
6. ✅ Sem necessidade de autenticação

**Estrutura de dados retornada:**
```json
{
  "razao_social": "GOOGLE BRASIL INTERNET LTDA.",
  "cnpj": "06990590000123",
  "cnae_fiscal": 6319400,
  "cnae_fiscal_descricao": "Portais, provedores de conteúdo e outros serviços",
  "descricao_situacao_cadastral": "ATIVA",
  "regime_tributario": ["lista", "de", "regimes"],
  "uf": "SP",
  "municipio": "SAO PAULO",
  "porte": "DEMAIS",
  ...
}
```

---

## 🔧 Código já atualizado

O código foi corrigido para usar os campos corretos da BrasilAPI:
- ✅ `cnae_fiscal` → CNAE principal
- ✅ `cnae_fiscal_descricao` → Descrição do CNAE
- ✅ `razao_social` → Nome da empresa
- ✅ `descricao_situacao_cadastral` → Situação
- ✅ `regime_tributario` → Regime tributário

---

## 📝 Próximos Passos

1. ✅ BrasilAPI já está implementada e funcionando
2. ⚠️ Se BrasilAPI falhar, podemos implementar fallback para OpenCNPJ (após corrigir parsing)
3. ⚠️ Para produção, considerar APIs pagas com mais garantias (SimpleData, DataBrasil)

---

## 🧪 Como testar

Execute: `python backend/test_apis_cnpj.py`

