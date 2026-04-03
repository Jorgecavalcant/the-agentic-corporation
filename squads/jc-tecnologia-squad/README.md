# 💻 JC Tecnologia Squad

Squad de Engenharia responsável por toda a infraestrutura, desenvolvimento e sistemas de IA da JC Tecnologia.

## Agentes

| Agente | Cargo | Especialidade |
|--------|-------|--------------|
| orchestrator (jc-cto) | Chief Technology Officer | Arquitetura, decisões técnicas, orquestração |
| dev-backend | Desenvolvedor Backend Sênior | FastAPI, Node.js, APIs, BullMQ, integrações |
| dev-frontend | Desenvolvedor Frontend Sênior | Next.js 14, React, Tailwind, dashboards |
| dba | Database Administrator | PostgreSQL 16, pgvector, migrations, performance |
| devops | Engenheiro DevOps | Docker, Caddy, VPS, SSL, deploy, CI/CD |
| ia-engineer | Engenheiro de IA e RAG | RAG, pgvector, prompts, Claude/GPT-4, Cerbasi |
| especialista-seguranca | Especialista em Segurança | OWASP, LGPD, CVM 175, auditoria, pentest |

## Stack VPS

- **Servidor:** Hetzner CX22 (jorge@46.224.55.18)
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
- `ia-engineer` → RAG, prompts, agentes de IA, sistema Cerbasi
- `especialista-seguranca` → auditoria antes de deploy, LGPD, CVM, vulnerabilidades

## Cerbasi Webhooks (Engenheiro de IA)

```
POST https://automacao.jcplanejamento.com.br/webhook/cerbasi-gerar
POST https://automacao.jcplanejamento.com.br/webhook/cerbasi-revisar
POST https://automacao.jcplanejamento.com.br/webhook/cerbasi-responder
```
