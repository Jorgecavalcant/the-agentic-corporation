---
name: pre-deploy
description: Especialista da empresa.
dept: tecnologia
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# Checklist Pré-Deploy

**departamento:** empresa-ia-departamento
**Quando usar:** Antes de QUALQUER deploy em produção

---

## ✅ Checklist Completo

### 🔍 Código e Qualidade
- [ ] PR aprovado por diretor-tecnologia ou revisor designado
- [ ] Testes unitários passando (cobertura ≥ 80% no código novo)
- [ ] Testes de integração passando
- [ ] Sem secrets, tokens ou chaves no código
- [ ] Sem `console.log` ou `print` de dados pessoais (CPF, email, senha)
- [ ] Sem código comentado desnecessário

### 🗄️ Banco de Dados (se houver migration)
- [ ] Migration testada em staging antes de produção
- [ ] Downgrade (rollback) testado e funcionando
- [ ] Backup do banco feito antes do deploy
- [ ] Migration não bloqueia tabela grande (usar CONCURRENTLY se necessário)

### 🔐 Segurança
- [ ] Novos endpoints têm autenticação JWT
- [ ] Autorização validada (usuário só acessa seus dados)
- [ ] Input validado contra injection
- [ ] Checklist de segurança do especialista-seguranca assinado

### 📋 Compliance (se feature envolver dados pessoais ou financeiros)
- [ ] Base legal LGPD definida para dados coletados
- [ ] CCO/Compliance Officer notificado e aprovação obtida
- [ ] Vocabulário da feature não viola CVM 175

### 🚀 Infraestrutura
- [ ] Variáveis de ambiente configuradas no servidor
- [ ] Caddy config atualizado se novo subdomínio
- [ ] Health check endpoint respondendo em staging

### 📝 Documentação
- [ ] CHANGELOG atualizado
- [ ] API docs atualizados (FastAPI /docs)
- [ ] Comunicação ao CEO sobre o que vai para produção

---

## 🚫 NUNCA fazer deploy se:
- Bug P0/P1 aberto sem resolução
- Migration sem teste de rollback
- Dado pessoal exposto em log
- Segurança não aprovada para features sensíveis

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
