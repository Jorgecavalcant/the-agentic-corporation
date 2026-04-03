# 🚀 JC Super Plugin

**Uma empresa virtual de IA — onde cada agente é um profissional de verdade.**

---

## O que é este plugin?

O **JC Super Plugin** é um sistema de agentes de IA que funciona como uma empresa completa em versão digital. Você aciona o Orquestrador Master e ele distribui o trabalho automaticamente para os profissionais certos.

> Pense em 63 funcionários especializados, trabalhando em paralelo, cada um com sua área de atuação — sem que você precise gerenciar cada um.

---

## Números

| Indicador | Quantidade |
|-----------|-----------|
| Agentes de negócio (funcionários de IA) | **63** |
| Squads (equipes) | **9** |
| Departamentos | **10** |
| IDEs suportadas | **5** |
| Versão | **1.0.0.1** |

---

## Como ativar

### Comando 1 — texto direto
```
acionar jc-agent-manager
```

### Comando 2 — slash command
```
/jc
```

Ambos os comandos ativam o **Orquestrador Master** (jc-agent-manager), que distribui o trabalho para o agente certo.

---

## Exemplos de uso

```
acionar jc-agent-manager — preciso de uma estratégia de lançamento de produto

/jc — analise a estrutura fiscal da empresa e sugira otimizações

acionar jc-agent-manager — crie uma campanha completa de Instagram

/jc — revise o código do endpoint de pagamentos por segurança

acionar jc-agent-manager — quero criar um e-book para vender no meu site
```

---

## Instalação

### Unix / macOS / WSL / Git Bash
```bash
chmod +x installer/install.sh
./installer/install.sh
```

### Windows (PowerShell / cmd)
```bat
installer\install.bat
```

### Claude Code (via npx — em breve)
```bash
npx jc-super-plugin init
```

---

## Squads disponíveis

| Squad | Responsável | O que faz |
|-------|-------------|-----------|
| `jc-tecnologia-squad` | diretor-tecnologia | Desenvolvimento, DevOps, IA, Segurança |
| `jc-marketing-squad` | diretor-marketing | Marketing, Copy, Design, Tráfego, Branding, Conteúdo |
| `jc-vendas-squad` | diretor-vendas | Ofertas, Leads, Fechamento, Retenção, Loja Digital |
| `jc-produto-squad` | diretor-produto | Roadmap, Features, Pesquisa de mercado |
| `jc-financas-squad` | diretor-financeiro | Financeiro, Métricas SaaS, Analytics, BI |
| `jc-operacoes-squad` | diretor-operacoes | Infraestrutura, Integrações, Monitoramento, Atendimento |
| `jc-juridico-squad` | diretor-juridico | 9 advogados especializados: tributário, trabalhista, empresarial, LGPD, PI, FinTech, entretenimento, contratos, consumidor |
| `jc-pessoas-squad` | diretor-pessoas | Cultura, Documentação, QA |
| `jc-estrategia-squad` | jc-agent-manager | Orquestração central, compliance |

---

## Nomes dos agentes (português hierárquico)

| Nome do arquivo instalado | Cargo |
|---------------------------|-------|
| `jc-agent-manager` | Orquestrador Master |
| `diretor-tecnologia` | CTO |
| `diretor-operacoes` | COO |
| `diretor-marketing` | CMO |
| `diretor-financeiro` | CFO |
| `diretor-produto` | CPO |
| `diretor-pessoas` | CHRO |
| `diretor-juridico` | CCO |
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
acionar jc-agent-manager  OU  /jc
     ↓
jc-agent-manager (Orquestrador Master)
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
| 1.0.0.1 | 03/04/2026 | +9 novos agentes, renomeação para português hierárquico, plugin genérico, 2 gatilhos de ativação |
| 1.0.0 | 02/04/2026 | Lançamento inicial com 38 agentes |

---

## Versão e Licença

| Campo | Valor |
|-------|-------|
| Versão | **1.0.0.1** |
| Licença | MIT |
| Atualizado | 2026-04-03 |
| Autor | Jorge Cavalcante — JC Tecnologia LTDA |
| GitHub | github.com/jc-tecnologia/jc-super-plugin |
| Idioma | Português do Brasil (pt-BR) |

---

## Documentação

- [Blueprint completo](docs/BLUEPRINT.md) — Mapeamento de todos os agentes
- [Instalador](installer/README.md) — Como instalar em cada IDE
