# 🚀 Como Testar o Dualtax - Guia Passo a Passo

## ⚠️ IMPORTANTE: Não abra o arquivo HTML diretamente!

Se você abrir `index.html` com duplo clique, ele não vai funcionar corretamente porque:
- Recursos externos (CDNs) podem não carregar
- JavaScript pode ter problemas de segurança
- O backend não será acessível

## ✅ Forma Correta de Testar

### Passo 1: Iniciar o Backend

Abra um **terminal/PowerShell** e execute:

```bash
cd backend
python app.py
```

Você deve ver:
```
INFO:     Uvicorn running on http://0.0.0.0:8000
INFO:     Application startup complete.
```

**Deixe este terminal aberto!**

### Passo 2: Iniciar o Servidor HTTP (Frontend)

Abra **outro terminal/PowerShell** e execute:

```bash
cd frontend
python -m http.server 8080
```

Você deve ver:
```
Serving HTTP on 0.0.0.0 port 8080 (http://0.0.0.0:8080/) ...
```

**Deixe este terminal aberto também!**

### Passo 3: Abrir no Navegador

Agora abra seu navegador e acesse:

**http://localhost:8080**

Você verá a página principal do Dualtax!

### Passo 4: Testar a Funcionalidade

1. Role a página até a seção "Teste o MVP Dualtax"
2. Digite um CNPJ (ex: `12345678000190` ou `12.345.678/0001-90`)
3. Marque o checkbox
4. Clique em "Simular Agora"
5. Veja os resultados aparecerem!

## 🧪 Teste Rápido (Página de Diagnóstico)

Se quiser testar apenas a conexão, acesse:

**http://localhost:8080/teste.html**

Esta página testa automaticamente se o backend está respondendo.

## 🐛 Problemas Comuns

### "Não carrega nada" / Tela em branco

**Causa:** Você abriu o arquivo HTML diretamente (file://)

**Solução:** Use um servidor HTTP (Passo 2 acima)

### "Erro ao conectar com o backend"

**Causa:** Backend não está rodando

**Solução:** 
1. Verifique se o terminal do backend está aberto
2. Acesse http://localhost:8000 no navegador
3. Deve aparecer: `{"message":"API Dualtax ativa"}`

### "Porta já em uso"

**Causa:** Outro processo está usando a porta 8000 ou 8080

**Solução:**
- Para backend: mude a porta em `backend/app.py` (linha 111)
- Para frontend: use outra porta: `python -m http.server 8081`

## 📝 Scripts Automáticos (Windows)

Você também pode usar os arquivos `.bat` que criei:

1. **start_backend.bat** - Inicia o backend
2. **start_frontend.bat** - Inicia o frontend

Basta dar duplo clique neles!

## ✅ Checklist

Antes de testar, certifique-se:

- [ ] Python está instalado (`python --version`)
- [ ] Dependências instaladas (`pip install fastapi uvicorn`)
- [ ] Backend rodando em http://localhost:8000
- [ ] Frontend servido via HTTP (não file://)
- [ ] Dois terminais abertos (um para cada serviço)

---

**Dúvidas?** Verifique o console do navegador (F12) para ver erros específicos!

