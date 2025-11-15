# 🚀 Como Subir o Código para o GitHub

## ✅ Passo 1: Repositório Git Inicializado
O repositório Git já foi inicializado e o commit inicial foi feito.

## 📋 Passo 2: Criar Repositório no GitHub

1. Acesse: https://github.com/new
2. Preencha:
   - **Repository name:** `DualtaxBackend` (ou o nome que preferir)
   - **Description:** "MVP Dualtax - Sistema de simulação de impacto da reforma tributária"
   - **Visibility:** Escolha Public ou Private
   - **NÃO marque** "Initialize with README" (já temos um)
3. Clique em **"Create repository"**

## 🔗 Passo 3: Conectar Repositório Local ao GitHub

Após criar o repositório no GitHub, você verá instruções. Execute estes comandos:

```bash
# Adicionar o repositório remoto (substitua SEU_USUARIO pelo seu username do GitHub)
git remote add origin https://github.com/SEU_USUARIO/DualtaxBackend.git

# Renomear branch para main (se necessário)
git branch -M main

# Enviar código para o GitHub
git push -u origin main
```

## 🔐 Passo 4: Autenticação

Se pedir autenticação, você pode:
- **Opção 1:** Usar Personal Access Token (recomendado)
  - Vá em: GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
  - Gere um novo token com permissão `repo`
  - Use o token como senha quando pedir

- **Opção 2:** Usar GitHub CLI
  ```bash
  gh auth login
  ```

## ✅ Passo 5: Verificar

Acesse seu repositório no GitHub e verifique se todos os arquivos foram enviados.

---

## 📝 Comandos Úteis para o Futuro

```bash
# Ver status
git status

# Adicionar arquivos modificados
git add .

# Fazer commit
git commit -m "Descrição das mudanças"

# Enviar para GitHub
git push

# Ver histórico
git log --oneline
```

---

## ⚠️ Importante

- **Nunca commite** arquivos com senhas ou tokens
- **Sempre use** `.gitignore` para arquivos sensíveis
- **Faça commits** frequentes com mensagens descritivas

