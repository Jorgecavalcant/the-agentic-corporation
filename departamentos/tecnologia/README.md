---
name: README
description: Especialista da empresa.
dept: tecnologia
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# 💻  Departamento

Departamento de Engenharia responsável por toda a infraestrutura, desenvolvimento e sistemas de IA da .

## Agentes

| Agente | Cargo | Especialidade |
|--------|-------|--------------|
| orchestrator (diretor-tecnologia) | Chief Technology Officer | Arquitetura, decisões técnicas, orquestração |
| dev-backend | Desenvolvedor Backend Sênior | FastAPI, Node.js, APIs, BullMQ, integrações |
| dev-frontend | Desenvolvedor Frontend Sênior | Next.js 14, React, Tailwind, dashboards |
| dba | Database Administrator | PostgreSQL 16, pgvector, migrations, performance |
| devops | Engenheiro DevOps | Docker, Caddy, VPS, SSL, deploy, CI/CD |
| ia-engineer | Engenheiro de IA e RAG | RAG, pgvector, prompts, Claude/GPT-4, Executiva |
| especialista-seguranca | Especialista em Segurança | OWASP, LGPD, CVM 175, auditoria, pentest |

## Stack VPS

- **Servidor:** VPS Linux Standard (@)
- **OS:** Ubuntu 22.04 LTS
- **Orquestração:** Docker Compose
- **Proxy:** Caddy (SSL automático)
- **Banco:** PostgreSQL 16 + pgvector 0.8.2
- **Cache/Filas:** Redis + BullMQ
- **Automação:** N8N
- **Atendimento:** Chatwoot
- **Armazenamento:** MinIO

## Produtos

| Produto | Frontend | Backend | Banco |
|---------|----------|---------|-------|
| Método Planejar | Next.js 14 | FastAPI + Node.js | planejar_db |
| AgroCredit | React | FastAPI | agrocredit_db |
| Fiado Pro | — | FastAPI/Node.js | fiado_db |

## Quando acionar

- `orchestrator` → decisões de arquitetura, incidentes críticos, roadmap técnico
- `dev-backend` → APIs, workers, integrações server-side
- `dev-frontend` → componentes, páginas, dashboards
- `dba` → banco, migrations, queries lentas, embeddings
- `devops` → deploy, containers, SSL, servidor
- `ia-engineer` → RAG, prompts, agentes de IA, sistema Executiva
- `especialista-seguranca` → auditoria antes de deploy, LGPD, CVM, vulnerabilidades

## Executiva Webhooks (Engenheiro de IA)

```
POST https://automacao.empresa-ia.com.br/webhook/Executiva-gerar
POST https://automacao.empresa-ia.com.br/webhook/Executiva-revisar
POST https://automacao.empresa-ia.com.br/webhook/Executiva-responder
```

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
