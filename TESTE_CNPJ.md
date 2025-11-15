# 🧪 CNPJ para Testes

## CNPJ de Referência
**43.539.060/0001-90**

Este CNPJ tem notas emitidas em 2025 e deve retornar:
- ✅ Apenas meses de 2025 (Janeiro a Dezembro)
- ✅ 12 meses de faturamento
- ✅ Período: "Ano 2025 - Período completo"

## Como Testar

1. Reinicie o backend:
```bash
cd backend
python app.py
```

2. Teste no navegador:
```
http://localhost:8000/consultar_notas/43.539.060/0001-90
```

3. Ou no frontend:
- Acesse: http://localhost:8080/index.html
- Digite: `43.539.060/0001-90`
- Marque o checkbox
- Clique em "Simular Agora"

## Resultado Esperado

- **Período:** 2025-01-01 até 2025-12-31
- **Faturamento Mensal:** 12 meses (Janeiro/2025 a Dezembro/2025)
- **Todos os meses com dados** (sem meses vazios)

