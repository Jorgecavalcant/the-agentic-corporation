# 🔐 Credenciais Necessárias para Implementar N8N → Telegram → Plugin

Para criar o workflow que conecta Telegram ao plugin da VPS, preciso de **3 informações**:

---

## 1️⃣ **Login N8N Admin**

**Onde encontrar:**
- Acesse: https://automacao.jcplanejamento.com.br
- Use o email e senha que você usa para fazer login

**O que fornecer:**
```
Email: [seu email aqui]
Senha: [sua senha aqui]
```

**Por que preciso:** Para acessar a interface N8N e criar o novo workflow

---

## 2️⃣ **SSH Private Key**

**Onde encontrar:**
- Pasta: `C:\Users\jorge\.ssh\`
- Arquivo: `id_ed25519` ✅ (já encontrada no seu sistema)

**O que fornecer:**
- Abra o arquivo `C:\Users\jorge\.ssh\id_rsa` com um editor de texto
- Copie **TODO O CONTEÚDO** (começa com `-----BEGIN RSA PRIVATE KEY-----`)
- Cole aqui

**Por que preciso:** Para que N8N possa se conectar à VPS via SSH e executar o plugin

---

## 3️⃣ **Telegram Bot Token**

**Onde encontrar:**
- Você criou um bot no Telegram? (conversando com @BotFather)
- Se não criou, precisa criar:
  1. Abra Telegram
  2. Busque por `@BotFather`
  3. Envie mensagem: `/start`
  4. Envie: `/newbot`
  5. Siga as instruções
  6. Ele vai fornecer um **token** como este:
     ```
     123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11
     ```

**O que fornecer:**
```
Token: [cole o token do seu bot aqui]
Chat ID (seu): [opcional - seu ID de usuário Telegram para testes]
```

**Por que preciso:** Para que N8N possa enviar mensagens para você no Telegram

---

## 4️⃣ **Admin Telegram Group (Opcional)**

Se você quer receber alertas de erro em um grupo admin:

**O que fornecer:**
```
Chat ID do grupo: [-123456789]  (começa com -)
```

Se não fornecerMúltiplo desativaremos os alertas para grupos.

---

## 📋 Checklist

- [ ] Anotei o email e senha do N8N
- [ ] Copiei a SSH private key (`~/.ssh/id_rsa`)
- [ ] Criei o bot Telegram (@BotFather) e tenho o token
- [ ] Identifiquei meu Chat ID do Telegram (opcional)

---

## 🚀 Próximo Passo

Assim que você fornecer essas informações, vou:

1. ✅ Fazer login no N8N
2. ✅ Criar as 2 credenciais (SSH + Telegram) armazenadas com segurança
3. ✅ Implementar o workflow completo (8 nodes)
4. ✅ Testar end-to-end: Telegram → N8N → SSH → Plugin → Resposta
5. ✅ Documentar como usar (/plugin comando no Telegram)

---

## ⚠️ Segurança

- A SSH private key e Telegram token são **sensitivos** — nunca compartilhe
- Vou armazenar no N8N de forma criptografada
- Depois da implementação, você pode me deletar as credenciais
