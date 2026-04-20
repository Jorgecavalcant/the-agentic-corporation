---
name: deploy-producao
description: Especialista da empresa.
dept: tecnologia
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# Task: Deploy em Produção

**ID:** deploy-producao
**departamento:** empresa-ia-departamento
**Agente responsável:** devops
**Modelo:** sonnet

---

## Objetivo

Fazer deploy de nova versão em produção com zero-downtime, seguindo o protocolo de segurança JC.

---

## Entradas (inputs)

- Branch/commit aprovado para deploy
- Checklist pré-deploy do QA Lead assinado
- Migrations pendentes (se houver)

---

## Saídas (outputs)

- Nova versão rodando em produção
- Serviços saudáveis confirmados
- Rollback documentado e pronto se necessário

---

## Protocolo de Deploy JC

```bash
# 1. Verificar estado atual
ssh @
cd /opt/ecosistema
docker compose ps

# 2. Fazer backup do banco (antes de qualquer deploy com migration)
docker exec postgres pg_dump -U postgres jc_ecosistema > backup_$(date +%Y%m%d_%H%M).sql

# 3. Pull da nova imagem
docker compose pull [servico]

# 4. Rodar migrations (se houver)
docker compose run --rm backend alembic upgrade head

# 5. Recrear o serviço (zero-downtime)
docker compose up -d --no-deps [servico]

# 6. Verificar saúde
docker compose ps
docker compose logs --tail=50 [servico]
curl -f http://localhost:[porta]/health
```

---

## Critério de conclusão

- [ ] Checklist QA Lead aprovado antes do deploy
- [ ] Backup do banco feito (se migration presente)
- [ ] Serviço subiu saudável (`healthy` no docker compose ps)
- [ ] Health check respondendo 200
- [ ] Nenhum erro novo nos logs (últimos 5 min)
- [ ] Rollback documentado e testável se necessário

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
