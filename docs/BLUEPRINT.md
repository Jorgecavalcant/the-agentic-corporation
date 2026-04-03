# 📐 BLUEPRINT — JC Super Plugin v1.0.0

> Documento vivo. Aprovado por Jorge Cavalcante (CEO JC Tecnologia) em 2026-04-02.

---

## 🎯 VISÃO GERAL

O **JC Super Plugin** transforma 32 agentes JC + 12 squads xQuads + OpenSquad em um único super plugin portável, funcionando como uma **empresa virtual de IA** onde cada funcionário (agente) tem cargo, responsabilidade e sabe acionar outros funcionários automaticamente.

---

## 📊 INVENTÁRIO COMPLETO DE FONTES

### FONTE 1 — JC Tecnologia (32 agentes)

| Agente | Cargo | Cluster |
|--------|-------|---------|
| jc-agent-manager | Gerente Geral (Orquestrador Master) | Core |
| jc-cto | Diretor de Tecnologia | C-Level |
| jc-coo | Diretor de Operações | C-Level |
| jc-cmo | Diretor de Marketing | C-Level |
| jc-cfo | Diretor Financeiro | C-Level |
| jc-cpo | Diretor de Produto | C-Level |
| jc-chro | Diretor de Pessoas | C-Level |
| jc-cco | Diretor de Compliance | C-Level |
| jc-dir-metodo-planejar | Gerente Método Planejar | Diretores |
| jc-dir-agrocredit | Gerente AgroCredit | Diretores |
| jc-dir-fiado-pro | Gerente Fiado Pro | Diretores |
| jc-dir-infra | Gerente de Infraestrutura | Diretores |
| jc-dir-marketing | Gerente de Marketing | Diretores |
| jc-dir-vendas | Gerente de Vendas | Diretores |
| jc-dir-design | Gerente de Design | Diretores |
| jc-dir-integracoes | Gerente de Integrações | Diretores |
| jc-dev-frontend | Desenvolvedor Frontend | Desenvolvimento |
| jc-dev-backend | Desenvolvedor Backend | Desenvolvimento |
| jc-dba | Administrador de Banco de Dados | Desenvolvimento |
| jc-devops | Especialista DevOps | Desenvolvimento |
| jc-n8n-specialist | Especialista N8N | Desenvolvimento |
| jc-qa-lead | Líder de Qualidade | Desenvolvimento |
| jc-ia-engineer | Engenheiro de IA | Especialistas |
| jc-integrations-engineer | Engenheiro de Integrações | Especialistas |
| jc-chatbot-developer | Desenvolvedor de Chatbot | Especialistas |
| jc-compliance-officer | Oficial de Compliance | Especialistas |
| jc-analista-financeiro | Analista Financeiro | Especialistas |
| jc-monitor | Monitor de Sistemas | Especialistas |
| jc-pesquisador | Pesquisador | Transversais |
| jc-copywriter | Redator | Transversais |
| jc-designer | Designer | Transversais |
| jc-documentador | Documentador | Transversais |
| jc-advogado-tributarista-cvm | Advogado Tributarista (+ CVM) | Transversais |

---

### FONTE 2 — xQuads (12 squads, ~130 agentes)

| Squad | Agentes Principais | Domínio |
|-------|-------------------|---------|
| **hormozi-squad** | hormozi-chief, offers, leads, pricing, copy, ads, content, hooks, launch, closer, workshop, retention, scale, models, audit, advisor | Vendas/Escala |
| **copy-squad** | copy-chief, ogilvy, kennedy, bencivenga, carlton, halbert, brunson, kern, sugarman, makepeace, schwartz, chaperon, koe, settle, deutsch, georgi, rutz, brown, benson, lampropoulos, collier | Copywriting |
| **design-squad** | design-chief, design-system-architect, ux-designer, ui-engineer, visual-generator, brad-frost, dave-malouf, dan-mall | Design/UX |
| **brand-squad** | brand-chief, david-aaker, marty-neumeier, donald-miller, kevin-keller, byron-sharp, alina-wheeler, al-ries, emily-heyward, denise-yohn, jean-noel-kapferer, archetype-consultant, domain-scout, miller-sticky-brand, naming-strategist | Branding |
| **advisory-board** | board-chair, charlie-munger, ray-dalio, peter-thiel, naval-ravikant, reid-hoffman, simon-sinek, brene-brown, patrick-lencioni, derek-sivers, yvon-chouinard | Estratégia/Conselho |
| **c-level-squad** | vision-chief, cto-architect, cmo-architect, coo-orchestrator, cio-engineer, caio-architect | C-Level Estratégico |
| **cybersecurity** | cyber-chief, jim-manico, omar-santos, georgia-weidman, marcus-carey, peter-kim, chris-sanders, rogue, busterer, dirber, ripper, fuzzer, cartographer, command-generator, shannon-runner | Segurança Cibernética |
| **data-squad** | data-chief, sean-ellis, avinash-kaushik, peter-fader, nick-mehta, wes-kao, david-spinks | Dados/Analytics/Growth |
| **traffic-masters** | traffic-chief, molly-pittman, kasim-aslam, depesh-mandalia, ralph-burns, nicholas-kusmich, pedro-sobral, tom-breeze, ad-midas, media-buyer, ads-analyst, creative-analyst, performance-analyst, pixel-specialist, scale-optimizer, fiscal | Tráfego Pago |
| **storytelling** | story-chief, dan-harmon, joseph-campbell, nancy-duarte, oren-klaff, matthew-dicks, kindra-hall, park-howell, marshall-ganz, blake-snyder, shawn-coyne, keith-johnstone | Narrativa/Storytelling |
| **claude-code-mastery** | claude-mastery-chief, swarm-orchestrator, skill-craftsman, mcp-integrator, hooks-architect, config-engineer, project-integrator, roadmap-sentinel | IA Engineering/Claude |
| **movement** | movement-chief, movement-architect, manifestador, identitario, fenomenologo, estrategista-de-ciclo, analista-de-impacto | Propósito/Impacto |

---

### FONTE 3 — OpenSquad (Core + Best Practices)

**Core Framework (infraestrutura, não agentes):**
- Architect Agent — Cria e edita squads
- Pipeline Runner — Executa steps em sequência/paralelo
- Skills Engine — Gerencia skills (MCP, scripts, prompts)
- Sherlock Investigator — Analisa padrões de referências

**Best Practices (viram skills/protocolos JC):**
- Redação: blog-post, blog-seo, copywriting, email-newsletter, email-sales
- Redes Sociais: instagram-feed, instagram-reels, instagram-stories, linkedin-article, linkedin-post, twitter-post, twitter-thread, whatsapp-broadcast
- Vídeo: youtube-script, youtube-shorts
- Outros: data-analysis, image-design, researching, review, social-networks-publishing, strategist, technical-writing

---

## 🗺️ MATRIZ DE CONSOLIDAÇÃO

### Regra de Ouro
> Agentes de xQuads e OpenSquad não existem como profissionais independentes no plugin JC.
> Eles são **incorporados** ao agente JC correspondente, tornando-o um "super-profissional".
> Se não há agente JC correspondente, cria-se um **novo cargo** na hierarquia JC.

---

### ÁREA: TECNOLOGIA (reporta ao CTO)

| Super-Agente JC | Absorve de xQuads/OpenSquad | Capacidades Ganhas |
|-----------------|-----------------------------|--------------------|
| **jc-cto** (Diretor de Tecnologia) | c-level-squad/cto-architect | Visão tecnológica estratégica de longo prazo |
| **jc-dev-frontend** (Desenvolvedor Frontend) | — | — |
| **jc-dev-backend** (Desenvolvedor Backend) | — | — |
| **jc-dba** (Administrador de Banco de Dados) | — | — |
| **jc-devops** (Especialista DevOps) | — | — |
| **jc-n8n-specialist** (Especialista N8N) | — | — |
| **jc-qa-lead** (Líder de Qualidade) | — | — |
| **jc-ia-engineer** (Engenheiro de IA) | claude-code-mastery/claude-mastery-chief, swarm-orchestrator, skill-craftsman, mcp-integrator, hooks-architect, config-engineer | Orquestração de swarms, criação de skills, integração MCP, configuração de hooks |
| **jc-integrations-engineer** (Engenheiro de Integrações) | claude-code-mastery/project-integrator | Integração de projetos e sistemas complexos |
| **jc-chatbot-developer** (Desenvolvedor de Chatbot) | — | — |
| 🆕 **jc-especialista-seguranca** (Especialista em Segurança) | cybersecurity/cyber-chief + jim-manico + omar-santos + marcus-carey + georgia-weidman | Segurança ofensiva, revisão de código, OWASP, pentesting |

---

### ÁREA: MARKETING (reporta ao CMO)

| Super-Agente JC | Absorve de xQuads/OpenSquad | Capacidades Ganhas |
|-----------------|-----------------------------|--------------------|
| **jc-cmo** (Diretor de Marketing) | c-level-squad/cmo-architect + advisory-board/simon-sinek | Visão estratégica CMO + storytelling de marca + liderança inspiracional |
| **jc-dir-marketing** (Gerente de Marketing) | brand-squad/brand-chief + brand-squad/david-aaker + brand-squad/marty-neumeier + brand-squad/donald-miller | Estratégia de marca, posicionamento, identidade, StoryBrand |
| **jc-copywriter** (Redator) | copy-squad/copy-chief + copy-squad/david-ogilvy + copy-squad/dan-kennedy + copy-squad/gary-bencivenga + copy-squad/russell-brunson + storytelling/oren-klaff + OpenSquad/copywriting best-practice | Copywriting de classe mundial, pitch, persuasão, funis |
| **jc-designer** (Designer) | design-squad/design-chief + design-squad/ux-designer + design-squad/visual-generator + design-squad/brad-frost | Design system, UX/UI, visual generation, component design |
| 🆕 **jc-gestor-trafego** (Gestor de Tráfego Pago) | traffic-masters/traffic-chief + molly-pittman + kasim-aslam + depesh-mandalia + ralph-burns + tom-breeze | Google Ads, Facebook Ads, YouTube Ads, media buying, ROAS |
| 🆕 **jc-estrategista-marca** (Estrategista de Marca) | brand-squad/archetype-consultant + brand-squad/naming-strategist + brand-squad/kevin-keller + brand-squad/byron-sharp | Arquétipos de marca, naming, brand equity, penetração |
| 🆕 **jc-especialista-storytelling** (Especialista em Storytelling) | storytelling/story-chief + dan-harmon + joseph-campbell + nancy-duarte + matthew-dicks + kindra-hall | Narrativa de marca, estrutura de história, apresentações |

---

### ÁREA: VENDAS (reporta ao CMO/CPO)

| Super-Agente JC | Absorve de xQuads/OpenSquad | Capacidades Ganhas |
|-----------------|-----------------------------|--------------------|
| **jc-dir-vendas** (Gerente de Vendas) | hormozi-squad/hormozi-chief + hormozi-advisor + hormozi-scale + hormozi-models | Frameworks Hormozi, escala, modelo de negócio, consultoria estratégica |
| 🆕 **jc-especialista-ofertas** (Especialista em Ofertas) | hormozi-squad/hormozi-offers + hormozi-pricing + hormozi-closer + hormozi-workshop | Grand Slam Offer, precificação por valor, fechamento, workshops |
| 🆕 **jc-especialista-leads** (Especialista em Geração de Leads) | hormozi-squad/hormozi-leads + hormozi-ads + hormozi-hooks + hormozi-launch | $100M Leads, anúncios, hooks, lançamentos |
| 🆕 **jc-especialista-retencao** (Especialista em Retenção) | hormozi-squad/hormozi-retention + hormozi-content | Redução de churn, LTV, produção de conteúdo para retenção |

---

### ÁREA: PRODUTO (reporta ao CPO)

| Super-Agente JC | Absorve de xQuads/OpenSquad | Capacidades Ganhas |
|-----------------|-----------------------------|--------------------|
| **jc-cpo** (Diretor de Produto) | c-level-squad/caio-architect + OpenSquad/architect-agent | Arquitetura de produto, criação de squads, design de experiência |
| **jc-dir-metodo-planejar** (Gerente Método Planejar) | data-squad/sean-ellis + data-squad/peter-fader | Growth hacking, análise de coorte, LTV de produto |
| **jc-dir-agrocredit** (Gerente AgroCredit) | — | — |
| **jc-dir-fiado-pro** (Gerente Fiado Pro) | — | — |
| **jc-pesquisador** (Pesquisador) | OpenSquad/sherlock-investigator + OpenSquad/researching best-practice + data-squad/avinash-kaushik | Investigação profunda de perfis/padrões, analytics avançada |

---

### ÁREA: FINANÇAS/OPERAÇÕES (reporta ao CFO/COO)

| Super-Agente JC | Absorve de xQuads/OpenSquad | Capacidades Ganhas |
|-----------------|-----------------------------|--------------------|
| **jc-cfo** (Diretor Financeiro) | advisory-board/charlie-munger + advisory-board/ray-dalio | Pensamento em segunda ordem, macroeconomia, alocação de capital |
| **jc-coo** (Diretor de Operações) | c-level-squad/coo-orchestrator + advisory-board/patrick-lencioni | Orquestração de operações, disfunções de equipe, OKRs |
| **jc-analista-financeiro** (Analista Financeiro) | data-squad/data-chief + data-squad/nick-mehta + data-squad/wes-kao | SaaS metrics, cohort analysis, unit economics |

---

### ÁREA: COMPLIANCE/JURÍDICO (reporta ao CCO)

| Super-Agente JC | Absorve de xQuads/OpenSquad | Capacidades Ganhas |
|-----------------|-----------------------------|--------------------|
| **jc-cco** (Diretor de Compliance) | — | — |
| **jc-advogado-tributarista-cvm** (Advogado Tributarista) | — (já tem squad próprio) | — |
| **jc-compliance-officer** (Oficial de Compliance) | cybersecurity/jim-manico + cybersecurity/marcus-carey | Revisão de segurança de código, OWASP compliance |

---

### ÁREA: PESSOAS/CULTURA (reporta ao CHRO)

| Super-Agente JC | Absorve de xQuads/OpenSquad | Capacidades Ganhas |
|-----------------|-----------------------------|--------------------|
| **jc-chro** (Diretor de Pessoas) | advisory-board/brene-brown + advisory-board/simon-sinek + movement/movement-chief | Vulnerabilidade como liderança, propósito, cultura organizacional |
| 🆕 **jc-estrategista-proposito** (Estrategista de Propósito) | movement/movement-architect + movement/manifestador + movement/identitario | Identidade organizacional, manifesto, propósito da empresa |

---

### ÁREA: ESTRATÉGIA/CONSELHO (reporta ao CEO)

| Super-Agente JC | Absorve de xQuads/OpenSquad | Capacidades Ganhas |
|-----------------|-----------------------------|--------------------|
| 🆕 **jc-conselho-consultivo** (Conselho Consultivo) | advisory-board/board-chair + peter-thiel + naval-ravikant + reid-hoffman + derek-sivers + yvon-chouinard | Zero-to-one thinking, startup advice, network effects, simplicity |

---

### ÁREA: INFRAESTRUTURA (reporta ao CTO)

| Super-Agente JC | Absorve de xQuads/OpenSquad | Capacidades Ganhas |
|-----------------|-----------------------------|--------------------|
| **jc-dir-infra** (Gerente de Infraestrutura) | c-level-squad/cio-engineer | Arquitetura de infraestrutura empresarial |
| **jc-monitor** (Monitor de Sistemas) | — | — |
| **jc-dir-integracoes** (Gerente de Integrações) | — | — |

---

### TRANSVERSAIS

| Super-Agente JC | Absorve de xQuads/OpenSquad | Capacidades Ganhas |
|-----------------|-----------------------------|--------------------|
| **jc-documentador** (Documentador) | OpenSquad/technical-writing best-practice | Escrita técnica padronizada |
| **jc-agent-manager** (Orquestrador Master) | OpenSquad/pipeline-runner + architect-agent | Execução em paralelo, checkpoints, state.json, multi-IDE |

---

## 📋 CONTAGEM FINAL

| Categoria | Quantidade |
|-----------|-----------|
| Agentes JC originais (mantidos/atualizados) | 32 |
| 🆕 Novos agentes criados (absorção xQuads) | 10 |
| **TOTAL SUPER-AGENTES** | **42** |

### 10 Novos Agentes:
1. `jc-especialista-seguranca` (Especialista em Segurança)
2. `jc-gestor-trafego` (Gestor de Tráfego Pago)
3. `jc-estrategista-marca` (Estrategista de Marca)
4. `jc-especialista-storytelling` (Especialista em Storytelling)
5. `jc-especialista-ofertas` (Especialista em Ofertas)
6. `jc-especialista-leads` (Especialista em Geração de Leads)
7. `jc-especialista-retencao` (Especialista em Retenção)
8. `jc-conselho-consultivo` (Conselho Consultivo)
9. `jc-estrategista-proposito` (Estrategista de Propósito)
10. `jc-analista-dados` (Analista de Dados/Growth) ← data-squad unificado

---

## 🏗️ ESTRUTURA DE SQUADS

Os 42 agentes se organizam em squads para trabalhar em conjunto:

| Squad | Agentes | Lider (Tier-0) |
|-------|---------|----------------|
| `jc-tecnologia-squad` | jc-cto + dev-frontend + dev-backend + dba + devops + n8n + qa + ia-engineer + integrations + chatbot + segurança | jc-cto |
| `jc-marketing-squad` | jc-cmo + dir-marketing + copywriter + designer + gestor-trafego + estrategista-marca + storytelling | jc-cmo |
| `jc-vendas-squad` | jc-dir-vendas + especialista-ofertas + especialista-leads + especialista-retencao | jc-dir-vendas |
| `jc-produto-squad` | jc-cpo + dir-metodo-planejar + dir-agrocredit + dir-fiado-pro + pesquisador | jc-cpo |
| `jc-financas-squad` | jc-cfo + analista-financeiro + analista-dados | jc-cfo |
| `jc-operacoes-squad` | jc-coo + dir-infra + monitor + dir-integracoes | jc-coo |
| `jc-compliance-squad` | jc-cco + compliance-officer + advogado-tributarista-cvm (+ squad completo) | jc-cco |
| `jc-pessoas-squad` | jc-chro + estrategista-proposito | jc-chro |
| `jc-estrategia-squad` | jc-conselho-consultivo + (CEO Jorge) | jc-conselho-consultivo |
| `jc-suporte-squad` | jc-documentador + jc-pesquisador | transversal |

---

## 🔧 SKILLS REGISTRY (OpenSquad Best-Practices → Skills JC)

### Categoria: Produção de Conteúdo
- `skill-redacao-blog` — Posts de blog com SEO
- `skill-email-marketing` — E-mails de vendas e newsletters
- `skill-copywriting` — Copy persuasivo (framework geral)

### Categoria: Redes Sociais
- `skill-instagram-feed` — Posts para feed Instagram
- `skill-instagram-reels` — Roteiros de Reels
- `skill-instagram-stories` — Stories estratégicos
- `skill-linkedin-post` — Posts profissionais LinkedIn
- `skill-linkedin-artigo` — Artigos longos LinkedIn
- `skill-twitter-post` — Tweets e threads
- `skill-whatsapp-broadcast` — Mensagens em massa WhatsApp

### Categoria: Vídeo
- `skill-roteiro-youtube` — Roteiros longos YouTube
- `skill-youtube-shorts` — Roteiros curtos/virais

### Categoria: Análise e Estratégia
- `skill-pesquisa-avancada` — Pesquisa com Sherlock
- `skill-analise-dados` — Análise de métricas e dados
- `skill-estrategista` — Planejamento estratégico
- `skill-revisao-conteudo` — Revisão de qualidade
- `skill-design-imagem` — Especificações de design

### Categoria: Técnico
- `skill-escrita-tecnica` — Documentação técnica
- `skill-publicacao-redes` — Publicação em redes sociais

---

## 📁 ESTRUTURA DE PASTAS DO PLUGIN

```
jc-super-plugin/
│
├── PLUGIN.md                          ← Manifesto do plugin
├── CHANGELOG.md                       ← Histórico de versões
│
├── _jc-core/                          ← Core (não editar manualmente)
│   ├── jc-agent-manager.md            ← Orquestrador Master
│   ├── memory/
│   │   ├── empresa.md                 ← Contexto JC Tecnologia
│   │   └── preferencias.md            ← Preferências do CEO Jorge
│   ├── skills-registry/               ← Catálogo de skills
│   │   ├── skill-redacao-blog.md
│   │   ├── skill-email-marketing.md
│   │   └── ... (20 skills)
│   └── best-practices/                ← Protocolos de qualidade
│       ├── protocolo-copy.md
│       ├── protocolo-design.md
│       └── protocolo-codigo.md
│
├── squads/                            ← Squads de agentes
│   ├── jc-tecnologia-squad/
│   │   ├── squad.yaml
│   │   ├── README.md
│   │   ├── agents/
│   │   │   ├── orchestrator.md        ← jc-cto (Tier-0)
│   │   │   ├── desenvolvedor-frontend.md
│   │   │   ├── desenvolvedor-backend.md
│   │   │   ├── administrador-banco-dados.md
│   │   │   ├── especialista-devops.md
│   │   │   ├── especialista-n8n.md
│   │   │   ├── lider-qualidade.md
│   │   │   ├── engenheiro-ia.md       ← + Claude Code Mastery
│   │   │   ├── engenheiro-integracoes.md
│   │   │   ├── desenvolvedor-chatbot.md
│   │   │   └── especialista-seguranca.md  ← NOVO
│   │   ├── tasks/
│   │   ├── workflows/
│   │   ├── checklists/
│   │   └── data/
│   │
│   ├── jc-marketing-squad/
│   │   └── agents/
│   │       ├── orchestrator.md        ← jc-cmo (Tier-0)
│   │       ├── gerente-marketing.md   ← + Brand Squad
│   │       ├── redator.md             ← + Copy Squad (20 mestres)
│   │       ├── designer.md            ← + Design Squad
│   │       ├── gestor-trafego.md      ← NOVO (Traffic Masters)
│   │       ├── estrategista-marca.md  ← NOVO (Brand Squad)
│   │       └── especialista-storytelling.md  ← NOVO (Storytelling Squad)
│   │
│   ├── jc-vendas-squad/
│   │   └── agents/
│   │       ├── orchestrator.md        ← jc-dir-vendas (Tier-0)
│   │       ├── especialista-ofertas.md    ← NOVO (Hormozi)
│   │       ├── especialista-leads.md      ← NOVO (Hormozi)
│   │       └── especialista-retencao.md   ← NOVO (Hormozi)
│   │
│   ├── jc-produto-squad/
│   │   └── agents/
│   │       ├── orchestrator.md        ← jc-cpo (Tier-0)
│   │       ├── gerente-metodo-planejar.md
│   │       ├── gerente-agrocredit.md
│   │       ├── gerente-fiado-pro.md
│   │       └── pesquisador.md         ← + Sherlock Investigator
│   │
│   ├── jc-financas-squad/
│   │   └── agents/
│   │       ├── orchestrator.md        ← jc-cfo (Tier-0)
│   │       ├── analista-financeiro.md ← + SaaS Metrics
│   │       └── analista-dados.md      ← NOVO (Data Squad)
│   │
│   ├── jc-operacoes-squad/
│   │   └── agents/
│   │       ├── orchestrator.md        ← jc-coo (Tier-0)
│   │       ├── gerente-infraestrutura.md
│   │       ├── monitor-sistemas.md
│   │       └── gerente-integracoes.md
│   │
│   ├── jc-compliance-squad/
│   │   └── agents/
│   │       ├── orchestrator.md        ← jc-cco (Tier-0)
│   │       ├── oficial-compliance.md
│   │       └── advogado-tributarista/   ← Squad completo existente
│   │
│   ├── jc-pessoas-squad/
│   │   └── agents/
│   │       ├── orchestrator.md        ← jc-chro (Tier-0)
│   │       └── estrategista-proposito.md  ← NOVO (Movement Squad)
│   │
│   └── jc-estrategia-squad/
│       └── agents/
│           └── conselho-consultivo.md ← NOVO (Advisory Board)
│
├── ide-templates/                     ← Adapters por IDE
│   ├── claude-code/
│   │   ├── CLAUDE.md
│   │   ├── SKILL.md
│   │   └── .claude/settings.json
│   ├── antigravity/
│   │   └── .antigravity/rules.md
│   ├── codex-openai/
│   │   └── AGENTS.md
│   ├── cursor/
│   │   └── .cursor/agent-manager.md
│   └── vscode-copilot/
│       └── .vscode/copilot-instructions.md
│
├── dashboard/                         ← Painel visual (React + Pixi.js)
│   └── src/
│
├── installer/                         ← Instalador automático
│   ├── install.sh
│   └── install.js
│
└── docs/                              ← Documentação
    ├── BLUEPRINT.md                   ← Este arquivo
    ├── ARQUITETURA.md
    ├── GUIA-SQUADS.md
    ├── GUIA-INTEGRACAO.md
    └── exemplos/
```

---

## 🔄 PROTOCOLO DE ORQUESTRAÇÃO

### Como o Orquestrador Master Funciona

```
CEO Jorge faz uma solicitação
        ↓
[jc-agent-manager] — Orquestrador Master
  1. Lê empresa.md (contexto JC)
  2. Classifica a demanda (Simples / Média / Complexa)
  3. Identifica squad(s) relevante(s)
  4. Dispara em paralelo ou sequencial
        ↓
[Squad(s) relevante(s)]
  1. Orquestrador do squad (Tier-0) recebe demanda
  2. Roteia para especialista(s) via routing-catalog
  3. Executa task/workflow
  4. Checkpoint → aprovação do CEO se necessário
  5. Retorna resultado ao jc-agent-manager
        ↓
[jc-agent-manager] compila e entrega ao CEO
```

---

## 📅 PRÓXIMOS PASSOS (Fases de Implementação)

- [x] FASE 1: Blueprint completo ← ESTE DOCUMENTO
- [ ] FASE 2: Construir os 9 squads (42 agentes)
- [ ] FASE 3: Configurar skills-registry (20 skills)
- [ ] FASE 4: Criar IDE templates (3 IDEs prioritárias)
- [ ] FASE 5: Dashboard React + Pixi.js
- [ ] FASE 6: Testes + GitHub público

---

*Blueprint v1.0.0 — JC Super Plugin*
*Criado: 2026-04-02*
*Autor: JC Tecnologia LTDA (Jorge Cavalcante)*
*Licença: MIT*
