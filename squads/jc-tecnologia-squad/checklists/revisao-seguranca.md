# Checklist de Revisão de Segurança

**Squad:** jc-tecnologia-squad
**Agente:** especialista-seguranca
**Quando usar:** Antes de todo deploy, em code reviews de features sensíveis, e em auditorias proativas

---

## 🔐 Autenticação e Autorização
- [ ] JWT validado em todos os endpoints protegidos (não só nos que parecem sensíveis)
- [ ] Token com expiração configurada (acesso: 1h, refresh: 7 dias)
- [ ] Refresh token invalidado após uso (rotação)
- [ ] Endpoint de logout invalida o token no servidor
- [ ] Rate limiting em endpoints de login e reset de senha
- [ ] Usuário só acessa recursos próprios (NUNCA por ID sem verificar proprietário)
- [ ] RLS habilitado nas tabelas com dados pessoais no PostgreSQL

## 💉 Injection e Validação
- [ ] Nenhuma query SQL com concatenação de string (usar parameterized queries / ORM)
- [ ] Input de usuário sanitizado antes de usar em query
- [ ] Upload de arquivo: validação de tipo MIME + tamanho máximo
- [ ] Nenhum dado de input usado diretamente em shell command (command injection)
- [ ] Cabeçalhos HTTP não expõem informações sensíveis do servidor

## 🔒 Dados Pessoais (LGPD)
- [ ] CPF, email, telefone, senha — criptografados no banco (AES-256 / bcrypt)
- [ ] Nenhum dado pessoal em logs de aplicação
- [ ] Dados pessoais não retornados em endpoints que não precisam deles
- [ ] Retenção de logs configurada (máx. 90 dias)

## 🗝️ Secrets e Configuração
- [ ] Nenhuma API key, senha ou token hardcoded no código
- [ ] .env no .gitignore e não commitado
- [ ] Variáveis de ambiente carregadas via secrets manager ou .env do servidor
- [ ] Erro de aplicação não expõe stack trace ao usuário final

## 🌐 OWASP Top 10 (itens críticos para JC)
- [ ] A01 — Broken Access Control: usuário não acessa dados de outro
- [ ] A02 — Cryptographic Failures: dados sensíveis criptografados
- [ ] A03 — Injection: SQL, XSS prevenidos
- [ ] A05 — Security Misconfiguration: DEBUG=False em produção
- [ ] A07 — Identification Failures: autenticação robusta

## 📋 CVM 175 (se feature financeira)
- [ ] Feature categorizada como "tecnologia" (não "recomendação")
- [ ] Vocabulário da resposta revisado (sem "você deve investir em X")
- [ ] Score ou análise apresentada como ferramenta, não como conselho

---

## Severidade de Issues Encontrados
- 🔴 Crítico: bloqueia deploy imediatamente → notificar CTO
- 🟠 Alto: resolver antes do próximo deploy
- 🟡 Médio: resolver na sprint corrente
- 🟢 Baixo: registrar no backlog
