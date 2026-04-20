---
name: PLUGIN
description: Especialista da empresa.
dept: indefinido
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# 🚀 JC Super Plugin

**Uma empresa virtual de IA — onde cada agente é um profissional de verdade.**

---

## O que é este plugin?

O **JC Super Plugin** é um sistema de agentes de IA que funciona como uma empresa completa em versão digital. Você aciona o Orquestrador Master e ele distribui o trabalho automaticamente para os profissionais certos.

> Pense em 72 funcionários especializados, trabalhando em paralelo, cada um com sua área de atuação — sem que você precise gerenciar cada um.

---

## Números

| Indicador | Quantidade |
|-----------|-----------|
| Agentes de negócio (funcionários de IA) | **72** |
| Departamentos (equipes) | **9** |
| Departamentos | **10** |
| IDEs suportadas | **5** |
| Versão | **1.0.0.4** |

---

## Como ativar

### Comando 1 — texto direto
```
acionar agent-manager
```

### Comando 2 — slash command
```
/jc
```

Ambos os comandos ativam o **Orquestrador Master** (agent-manager), que distribui o trabalho para o agente certo.

---

## Exemplos de uso

```
acionar agent-manager — preciso de uma estratégia de lançamento de produto

/jc — analise a estrutura fiscal da empresa e sugira otimizações

acionar agent-manager — crie uma campanha completa de Instagram

/jc — revise o código do endpoint de pagamentos por segurança

acionar agent-manager — quero criar um e-book para vender no meu site
```

---

## Instalação

### Unix / macOS / WSL / Git Bash
```bash
chmod +x installer/install.sh
./installer/install.sh                    # local (~/.claude/agents/)
./installer/install.sh --antigravity      # Antigravity (~/.gemini/antigravity/agents/)
./installer/install.sh --vps              # VPS da JC via SSH (@)
./installer/install.sh --vps --host X     # VPS customizada
```

### Windows (PowerShell / cmd)
```bat
installer\install.bat                     :: local
installer\install.bat --antigravity       :: Antigravity
:: Para --vps, use Git Bash / WSL com install.sh
```

### Claude Code (via npx — em breve)
```bash
npx the-agentic-corporation init
```

---

## Departamentos disponíveis

| Departamento | Responsável | O que faz |
|-------|-------------|-----------|
| `empresa-ia-departamento` | diretor-tecnologia | Desenvolvimento, DevOps, IA, Segurança |
| `marketing-departamento` | diretor-marketing | Marketing, Copy, Design, Tráfego, Branding, Conteúdo |
| `vendas-departamento` | diretor-vendas | Ofertas, Leads, Fechamento, Retenção, Loja Digital |
| `produto-departamento` | diretor-produto | Roadmap, Features, Pesquisa de mercado |
| `financas-departamento` | diretor-financeiro | Financeiro, Métricas SaaS, Analytics, BI |
| `operacoes-departamento` | diretor-operacoes | Infraestrutura, Integrações, Monitoramento, Atendimento |
| `juridico-departamento` | diretor-juridico | 9 advogados especializados: tributário, trabalhista, empresarial, LGPD, PI, FinTech, entretenimento, contratos, consumidor |
| `pessoas-departamento` | diretor-pessoas | Cultura, Documentação, QA |
| `estrategia-departamento` | agent-manager | Orquestração central, compliance |

---

## Nomes dos agentes (português hierárquico)

| Nome do arquivo instalado | Cargo |
|---------------------------|-------|
| `agent-manager` | Orquestrador Master |
| `diretor-tecnologia` | CTO |
| `diretor-operacoes` | COO |
| `diretor-marketing` | CMO |
| `diretor-financeiro` | CFO |
| `diretor-produto` | CPO |
| `diretor-pessoas` | CHRO |
| `diretor-juridico` | CCO |
| `conselheiro-dev` | Conselheiro Sênior de Dev (Opus — Advisor Strategy) |
| `desenvolvedor-backend` | Dev Backend |
| `desenvolvedor-frontend` | Dev Frontend |
| `administrador-banco-dados` | DBA |
| `engenheiro-devops` | DevOps |
| `engenheiro-ia` | IA Engineer |
| `especialista-seguranca` | Segurança |
| `revisor-tecnico` | Code Review |
| `advogado-tributarista` | Tributário |
| `advogado-trabalhista` | Trabalhista |
| `advogado-empresarial` | Empresarial |
| `advogado-digital-lgpd` | LGPD |
| `advogado-consumidor-saas` | Consumidor/SaaS |
| `advogado-propriedade-intelectual` | PI/Software |
| `advogado-regulatorio-fintech` | FinTech/CVM/BCB |
| `analista-contratos` | Contratos |
| `advogado-entretenimento-musical` | Entretenimento |
| `gerente-marketing` | Marketing Digital |
| `redator-copywriter` | Copy/Conteúdo |
| `designer-visual` | Design |
| `gestor-trafego` | Tráfego Pago |
| `estrategista-marca` | Branding |
| `especialista-storytelling` | Narrativa |
| `especialista-conteudo` | Editorial/E-books |
| `diretor-vendas` | Vendas |
| `especialista-ofertas` | Ofertas |
| `especialista-leads` | Leads |
| `especialista-conversao` | Conversão |
| `especialista-retencao` | Retenção/CS |
| `gestor-loja-digital` | Loja Digital |
| `diretor-financeiro` | CFO |
| `analista-financeiro` | Finanças |
| `analista-receita` | Receita SaaS |
| `analista-dados` | BI/Analytics |
| `diretor-operacoes` | COO |
| `monitor-sistema` | Monitoramento |
| `engenheiro-integracoes` | Integrações |
| `especialista-n8n` | Automações N8N |
| `desenvolvedor-chatbot` | Chatbot |
| `gestor-atendimento` | Atendimento/SLA |
| `auditor-infraestrutura` | Auditoria Infra |
| `tecnico-limpeza` | Limpeza Servidor |
| `historiador` | Contexto/Memória |
| `conferente-entrega` | QA de Entregas |
| `diretor-produto` | CPO |
| `gerente-metodo-planejar` | Produto Principal |
| `gerente-agrocredit` | AgroCredit |
| `gerente-fiado-pro` | Fiado Pro |
| `pesquisador` | Discovery/Research |
| `diretor-pessoas` | CHRO |
| `documentador` | Documentação |
| `qa-lead` | QA Funcional |
| `compliance-officer` | Compliance Técnico |

---

## Compatibilidade

| IDE | Status | Como usar |
|-----|--------|-----------|
| Claude Code | ✅ Disponível | `./installer/install.sh` ou `install.bat` |
| Google Antigravity | ✅ Disponível | mesmo instalador |
| OpenAI Codex | ✅ Disponível | mesmo instalador |
| Cursor | ✅ Disponível | mesmo instalador |
| VS Code + Copilot | ✅ Disponível | mesmo instalador |

---

## Hierarquia de ativação

```
CEO (humano)
     ↓
acionar agent-manager  OU  /jc
     ↓
agent-manager (Orquestrador Master)
     ↓
C-Level (8): diretor-tecnologia, diretor-operacoes, diretor-marketing,
             diretor-financeiro, diretor-produto, diretor-pessoas,
             diretor-juridico, diretor-vendas
     ↓
Gerentes (6): gerente-metodo-planejar, gerente-agrocredit,
              gerente-fiado-pro, gerente-marketing, gerente-infraestrutura,
              gerente-integracoes
     ↓
Especialistas (48): todos os demais
```

---

## Changelog

| Versão | Data | O que mudou |
|--------|------|-------------|
| 1.0.0.4 | 18/04/2026 | +7 agentes formando o sub-departamento de Negociação (diretor-negociacao, estrategista-preparacao, coach-negociacao-live, especialista-objecoes, analista-contraparte, redator-propostas-nego, analista-pos-negociacao). Assistência AO VIVO em viva-voz. Doutrina Chris Voss + Harvard + Diamond + Cialdini + Camp + Ury |
| 1.0.0.3 | 10/04/2026 | +1 agente conselheiro-dev (Opus), padrão Advisor Strategy integrado em 6 agentes de tecnologia, instalador com flags --vps e --antigravity |
| 1.0.0.2 | 05/04/2026 | +1 agente analista-solucoes, Metodologia PRD+SPEC integrada em 7 agentes, guards de desenvolvimento |
| 1.0.0.1 | 03/04/2026 | +9 novos agentes, renomeação para português hierárquico, plugin genérico, 2 gatilhos de ativação |
| 1.0.0 | 02/04/2026 | Lançamento inicial com 38 agentes |

---

## Versão e Licença

| Campo | Valor |
|-------|-------|
| Versão | **1.0.0.4** |
| Licença | MIT |
| Atualizado | 2026-04-18 |
| Autor |  — ${COMPANY_NAME:-Empresa IA} |
| GitHub | github.com/empresa-ia/the-agentic-corporation |
| Idioma | Português do Brasil (pt-BR) |

---

## Documentação

- [Blueprint completo](docs/BLUEPRINT.md) — Mapeamento de todos os agentes
- [Instalador](installer/README.md) — Como instalar em cada IDE

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
