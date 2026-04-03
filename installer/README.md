# Instalador — JC Super Plugin

Este instalador copia os agentes do plugin para `~/.claude/agents/`, tornando-os disponíveis em qualquer sessão do Claude Code.

---

## Como instalar

### Windows (recomendado)

Dê duplo clique em **`install.bat`**

Ou pelo terminal:
```
install.bat
```

### macOS / Linux / Git Bash

```bash
chmod +x install.sh
./install.sh
```

---

## Como desinstalar

### Windows

Dê duplo clique em **`uninstall.bat`**

### macOS / Linux / Git Bash

```bash
chmod +x uninstall.sh
./uninstall.sh
```

---

## O que é instalado

| Agente | Função |
|--------|--------|
| `jc-agent-manager` | Porta de entrada — distribui todas as demandas |
| `jc-cco` | Compliance: LGPD, CVM 175, BCB, contratos |
| `jc-compliance-officer` | Compliance técnico de código e features |
| `jc-cfo` | Saúde financeira, MRR, precificação |
| `jc-analista-financeiro` | MRR/ARR, churn, LTV/CAC, cohorts |
| `jc-analista-receita` | Pricing, unit economics, modelos de receita |
| `adv-tributarista` | Direito tributário, Simples Nacional |
| `adv-digital-lgpd` | Direito digital e proteção de dados |
| `adv-empresarial` | Contratos, societário, M&A |
| `adv-regulatorio-fintech` | CVM 175, BACEN, regulação fintech |
| `adv-trabalhista` | CLT, PJ, MEI, questões bancárias |
| `adv-propriedade-intelectual` | Software, marca, patente, copyright |
| `adv-consumidor-saas` | EULA, Termos de Uso, CDC |
| `adv-analista-contratos` | Análise forense de contratos |
| `adv-entretenimento-musical` | Entretenimento, música, procuração artística |
| `jc-cmo` | Estratégia de marketing, conteúdo, SEO |
| `gerente-marketing` | Brand management, campanhas |
| `redator` | Copy, conteúdo, e-mails, landing pages |
| `designer` | UI, visual, identidade de marca |
| `gestor-trafego` | Meta Ads, Google Ads, ROI, funis |
| `estrategista-marca` | Arquétipos, naming, posicionamento |
| `especialista-storytelling` | Narrativa, casos de sucesso, roteiros |
| `jc-coo` | Processos operacionais, SLAs, coordenação |
| `jc-monitor` | Saúde da VPS, containers, alertas |
| `jc-integrations-engineer` | Asaas, Meta, BCB, Open Banking, webhooks |
| `jc-n8n-specialist` | Automações N8N, WhatsApp, backups |
| `jc-chatbot-developer` | Chatwoot, câmaras de atendimento, fluxos |
| `jc-chro` | Cultura, onboarding de agentes |
| `jc-documentador` | Documentação técnica, wikis, changelogs |
| `jc-qa-lead` | Validação de entregas, testes, pré-deploy |
| `jc-cpo` | Roadmap dos produtos, priorização |
| `jc-dir-metodo-planejar` | Método Planejar — features, IA, white-label |
| `jc-dir-agrocredit` | AgroCredit — crédito rural, risco agrícola |
| `jc-dir-fiado-pro` | Fiado Pro — Smart Credit Tracker |
| `jc-pesquisador` | Discovery, benchmarks, análise de mercado |
| `jc-cto` | Arquitetura técnica, decisões de engenharia |
| `jc-dev-backend` | FastAPI, Node.js, APIs REST, autenticação |
| `jc-dev-frontend` | Next.js 14, React, Tailwind, dashboards |
| `jc-dba` | PostgreSQL 16, pgvector, migrations, queries |
| `jc-devops` | Docker, Caddy, SSL, deploy, VPS Hetzner |
| `jc-ia-engineer` | RAG, pgvector, embeddings, Claude, prompts |
| `jc-especialista-seguranca` | OWASP, LGPD, CVM, pentest, auditoria |
| `jc-dir-vendas` | Estratégia de receita, MRR, parceiros B2B |
| `especialista-ofertas` | Ofertas, value stacks (Hormozi) |
| `especialista-leads` | Geração e qualificação BANT de leads |
| `especialista-conversao` | SPIN Selling, Challenger Sale, fechamento |
| `especialista-retencao` | Churn, customer success, playbook |
| `analista-receita` | MRR, ARR, pricing de vendas |

**Total: 38 agentes instalados**

---

## Após a instalação

Abra uma nova sessão do **Claude Code** e diga:

```
acionar jc-agent-manager
```

O orquestrador central identificará sua demanda e acionará o agente correto automaticamente.

---

## Atualização

Para atualizar os agentes após mudanças no plugin, basta rodar o instalador novamente.
Os arquivos existentes serão sobrescritos com a versão mais recente.

---

## Arquivos deste instalador

| Arquivo | Descrição |
|---------|-----------|
| `install.sh` | Instalador para macOS, Linux e Git Bash |
| `install.bat` | Instalador para Windows |
| `uninstall.sh` | Desinstalador para macOS, Linux e Git Bash |
| `uninstall.bat` | Desinstalador para Windows |
| `manifest.json` | Manifesto completo do plugin com todos os agentes e squads |
| `README.md` | Este arquivo |
