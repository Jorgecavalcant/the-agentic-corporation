# 🚀 JC Super Plugin

**Uma empresa virtual de IA — onde cada agente é um profissional de verdade.**

> Instale uma vez. Tenha 65 especialistas disponíveis em qualquer projeto.

---

## ✨ O que é este plugin?

O **JC Super Plugin** transforma o Claude Code em uma empresa completa de IA. Você aciona o Orquestrador Master com um simples comando e ele distribui o trabalho automaticamente para os profissionais certos — CTO, advogados, designers, vendedores, analistas e muito mais.

Pense em **65 funcionários especializados**, trabalhando em paralelo, cada um com sua área de atuação — sem que você precise gerenciar cada um.

---

## 📊 Números

| Indicador | Quantidade |
|-----------|-----------|
| 🤖 Agentes de negócio | **65** |
| 👥 Squads (equipes) | **9** |
| 🏢 Departamentos | **10** |
| 💻 IDEs suportadas | **5** |
| 📦 Versão | **1.0.0.3** |

---

## ⚡ Como ativar

Após instalar, use qualquer um dos dois gatilhos em qualquer sessão do Claude Code:

```
acionar jc-agent-manager
```
```
/jc
```

Ambos ativam o **Orquestrador Master**, que lê a sua demanda e chama o agente certo automaticamente.

---

## 🎯 Exemplos de uso

```
acionar jc-agent-manager — preciso de uma estratégia de lançamento de produto

/jc — analise a estrutura fiscal da empresa e sugira otimizações

acionar jc-agent-manager — crie uma campanha completa de Instagram

/jc — revise o código do endpoint de pagamentos por segurança

acionar jc-agent-manager — quero criar um e-book para vender no meu site
```

---

## 🛠️ Instalação

### Unix / macOS / WSL / Git Bash
```bash
git clone https://github.com/Jorgecavalcant/jc-super-plugin.git
cd jc-super-plugin
chmod +x installer/install.sh

./installer/install.sh                    # local (~/.claude/agents/)
./installer/install.sh --antigravity      # Google Antigravity
./installer/install.sh --vps              # VPS via SSH (padrão: jorge@46.224.55.18)
./installer/install.sh --vps --host X     # VPS customizada
```

### Windows (PowerShell / cmd)
```bat
git clone https://github.com/Jorgecavalcant/jc-super-plugin.git
cd jc-super-plugin
installer\install.bat                     :: local
installer\install.bat --antigravity       :: Google Antigravity
:: Para VPS, use Git Bash com install.sh --vps
```

O instalador copia todos os agentes para o destino escolhido automaticamente. Inicie uma nova sessão do Claude Code e os agentes já estarão disponíveis.

---

## 🧙 Advisor Strategy — Executor + Conselheiro

A partir da v1.0.0.3, o plugin implementa o padrão **Advisor Strategy** da Anthropic:

- **Agentes executores** (Sonnet — rápido e econômico) fazem o trabalho diário
- **`conselheiro-dev`** (Opus — mais inteligente) é consultado automaticamente quando os executores encontram decisões técnicas complexas

```
Você pede algo ao desenvolvedor-backend
    ↓ (Sonnet — barato)
Encontra decisão difícil
    ↓
Consulta conselheiro-dev (Opus — inteligente)
    ↓
Recebe orientação → executa
    ↓
Você recebe resultado melhor, pagando menos 💰
```

---

## 🏗️ Hierarquia de ativação

```
Você (CEO — humano)
     ↓
acionar jc-agent-manager  OU  /jc
     ↓
jc-agent-manager (Orquestrador Master)
     ↓
C-Level (8):
  diretor-tecnologia · diretor-operacoes · diretor-marketing
  diretor-financeiro · diretor-produto · diretor-pessoas
  diretor-juridico · diretor-vendas
     ↓
Gerentes (5):
  gerente-metodo-planejar · gerente-agrocredit · gerente-fiado-pro
  gerente-marketing · gerente-design-ux
     ↓
Especialistas (50):
  Jurídico (9) · Tecnologia (10) · Marketing (6) · Vendas (5)
  Financeiro (3) · Operações (9) · Produto (3) · Pessoas (3)
```

---

## 👥 Squads disponíveis

| Squad | Liderado por | O que cobre |
|-------|-------------|-------------|
| `jc-tecnologia-squad` | diretor-tecnologia | Dev, DevOps, IA, Segurança, DBA, Chatbot, **Conselheiro (Opus)** |
| `jc-marketing-squad` | diretor-marketing | Copy, Design, Tráfego, Branding, Storytelling, Conteúdo |
| `jc-vendas-squad` | diretor-vendas | Ofertas, Leads, Fechamento, Retenção, Loja Digital |
| `jc-produto-squad` | diretor-produto | Roadmap, Features, Produtos, Pesquisa |
| `jc-financas-squad` | diretor-financeiro | Finanças, Métricas SaaS, Receita, BI/Analytics |
| `jc-operacoes-squad` | diretor-operacoes | Infra, Integrações, N8N, Atendimento, Limpeza, Auditoria |
| `jc-juridico-squad` | diretor-juridico | 9 advogados: tributário, trabalhista, empresarial, LGPD, PI, FinTech, entretenimento, contratos, consumidor |
| `jc-pessoas-squad` | diretor-pessoas | Cultura, Documentação, QA, Compliance |
| `jc-estrategia-squad` | jc-agent-manager | Orquestração central, histórico, conferência |

---

## 📋 Todos os 65 agentes

<details>
<summary>Ver lista completa</summary>

| Agente | Cargo |
|--------|-------|
| `jc-agent-manager` | Orquestrador Master |
| `diretor-tecnologia` | CTO |
| `diretor-operacoes` | COO |
| `diretor-marketing` | CMO |
| `diretor-financeiro` | CFO |
| `diretor-produto` | CPO |
| `diretor-pessoas` | CHRO |
| `diretor-juridico` | CCO / Diretor Jurídico |
| `diretor-vendas` | Diretor de Vendas |
| `conselheiro-dev` | 🧙 Conselheiro Sênior de Dev (Opus — Advisor Strategy) |
| `desenvolvedor-backend` | Dev Backend (FastAPI/Node) |
| `desenvolvedor-frontend` | Dev Frontend (Next.js/React) |
| `administrador-banco-dados` | DBA PostgreSQL |
| `engenheiro-devops` | DevOps / Docker / VPS |
| `engenheiro-ia` | IA Engineer / RAG |
| `especialista-seguranca` | Segurança / OWASP |
| `revisor-tecnico` | Code Review Técnico |
| `desenvolvedor-chatbot` | Chatbot / Fluxos WhatsApp |
| `analista-solucoes` | Analista de Soluções / PRD+SPEC |
| `advogado-tributarista` | Direito Tributário |
| `advogado-trabalhista` | Direito Trabalhista |
| `advogado-empresarial` | Direito Empresarial |
| `advogado-digital-lgpd` | LGPD / Direito Digital |
| `advogado-consumidor-saas` | CDC / SaaS |
| `advogado-propriedade-intelectual` | PI / Software |
| `advogado-regulatorio-fintech` | FinTech / CVM / BCB |
| `analista-contratos` | Análise Forense de Contratos |
| `advogado-entretenimento-musical` | Entretenimento / ECAD |
| `gerente-marketing` | Marketing Digital |
| `redator-copywriter` | Copy / Persuasão |
| `designer-visual` | Design / UX |
| `gestor-trafego` | Tráfego Pago (Meta/Google) |
| `estrategista-marca` | Branding / Arquétipos |
| `especialista-storytelling` | Narrativa / StoryBrand |
| `especialista-conteudo` | E-books / Editorial |
| `especialista-ofertas` | Criação de Ofertas |
| `especialista-leads` | Geração de Leads |
| `especialista-conversao` | Fechamento / SPIN |
| `especialista-retencao` | Retenção / CS / Churn |
| `gestor-loja-digital` | Loja Digital / Checkout |
| `analista-financeiro` | Finanças / MRR / ARR |
| `analista-receita` | Pricing / Unit Economics |
| `analista-dados` | BI / Dashboards / SQL |
| `monitor-sistema` | Monitoramento de Servidor |
| `engenheiro-integracoes` | APIs / Webhooks |
| `especialista-n8n` | Automações N8N |
| `gestor-atendimento` | Suporte / SLA / Tickets |
| `auditor-infraestrutura` | Auditoria de Infra |
| `tecnico-limpeza` | Limpeza de Servidor |
| `historiador` | Contexto / Memória de Projetos |
| `conferente-entrega` | QA de Entregas |
| `compliance-officer` | Compliance Técnico / LGPD |
| `gerente-metodo-planejar` | Produto: Método Planejar |
| `gerente-agrocredit` | Produto: AgroCredit |
| `gerente-fiado-pro` | Produto: Fiado Pro |
| `gerente-design-ux` | Design System / UX |
| `gerente-infraestrutura` | Infraestrutura / VPS |
| `gerente-integracoes` | Integrações / APIs Externas |
| `pesquisador` | Research / Discovery |
| `documentador` | Documentação Técnica |
| `qa-lead` | QA Funcional |
| `diretor-pessoas` | CHRO |

</details>

---

## 💻 Compatibilidade

| IDE | Status | Como instalar |
|-----|--------|---------------|
| Claude Code | ✅ Disponível | `install.sh` ou `install.bat` |
| Google Antigravity | ✅ Disponível | `install.sh --antigravity` |
| VPS (SSH) | ✅ Disponível | `install.sh --vps` |
| OpenAI Codex | ✅ Disponível | `install.sh` |
| Cursor | ✅ Disponível | `install.sh` |

---

## 📝 Changelog

| Versão | Data | O que mudou |
|--------|------|-------------|
| **1.0.0.3** | 10/04/2026 | +1 agente `conselheiro-dev` (Opus), padrão Advisor Strategy em 6 agentes de tecnologia, instalador com flags `--vps` e `--antigravity` |
| **1.0.0.2** | 05/04/2026 | +1 agente `analista-solucoes`, Metodologia PRD+SPEC integrada em 7 agentes, guards de desenvolvimento |
| **1.0.0.1** | 03/04/2026 | +9 novos agentes, nomes em português hierárquico, plugin genérico, 2 gatilhos de ativação |
| **1.0.0** | 02/04/2026 | Lançamento inicial com 38 agentes |

---

## 📄 Licença

MIT — Livre para usar, modificar e distribuir.

---

*Feito com 🤖 por [JC Tecnologia](https://github.com/Jorgecavalcant) — Versão 1.0.0.3*
