# 🚀 The Agentic Corporation

**Uma infraestrutura corporativa de agentes de IA — Transformando sua IDE em uma empresa com 96+ especialistas profissionais.**

> Configure uma vez. Tenha departamentos inteiros trabalhando em seus projetos.

---

## ✨ O que é a The Agentic Corporation?

É um ecossistema de agentes corporativos projetado para alta performance e segurança. Diferente de prompts genéricos, aqui cada agente possui um **Papel, Responsabilidade e Contexto (RPI)** definido. Através do Orquestrador Master (`agent-manager`), o sistema identifica demandas complexas e as roteia para os departamentos especialistas: Tecnologia, Marketing, Jurídico, Vendas, Finanças, e mais.

---

## 🏗️ Estrutura Organizacional v1.0.0.0

A empresa é organizada em **9 Departamentos Estratégicos** e **96+ Agentes**:

| Departamento | Foco principal |
|--------------|----------------|
| **Estratégia** | Orquestração Master, Governança e Compliance C-Level |
| **Tecnologia** | Backend, Frontend, DevOps, IA, DBA e Segurança |
| **Marketing** | Copywriting, Design, Tráfego Pago e Branding |
| **Vendas** | Negociação, Geração de Leads e Retenção |
| **Produto** | Discovery, Roadmap e SPEC/PRD |
| **Finanças** | Planejamento, BI e Análise de Receita |
| **Operações** | Automação (N8N), Integrações e Infraestrutura |
| **Pessoas** | Cultura, Documentação e QA |
| **Jurídico** | Tributário, Digital/LGPD, Fintech/CVM e Propriedade Intelectual |

---

## 🎯 Como Utilizar

Após a instalação, você pode interagir com o Orquestrador Central usando o gatilho padrão:

```text
acionar agent-manager
```

```
/jc (ou seu gatilho personalizado no .env)
```

Ambos ativam o **Orquestrador Master**, que lê a sua demanda e chama o agente especialista automaticamente.

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

### Windows (PowerShell)

```powershell
installer\install.bat                     # Instalação para Claude Code
installer\install.bat --antigravity       # Instalação para Google Antigravity
```

### macOS / Linux / Git Bash

```bash
chmod +x installer/install.sh
./installer/install.sh                    # Local
./installer/install.sh --vps              # Servidor Remoto (via SSH)
```

---

## 🧙 Advisor Strategy (Execução Inteligente)

Utilizamos o padrão **Advisor**, onde agentes técnicos operam com modelos eficientes (ex: Gemini Flash/Sonnet) e consultam automaticamente o **Conselheiro Especialista** para decisões de alta complexidade, garantindo qualidade superior com economia de recursos.

---

## 🔒 Segurança e Compliance

- **Zero Hardcoded Data:** Todas as credenciais são injetadas via variáveis de ambiente (`.env`).
- **White-Label:** Nenhuma informação pessoal ou caminhos locais de desenvolvimento estão presentes na base de agentes.
- **RAG-First:** Os agentes priorizam a consulta da base de conhecimento local antes de realizar inferências.

---

## 📄 Licença

Distribuído sob a licença MIT. Veja `LICENSE` para mais detalhes.

*Gerado pela infraestrutura Tech 42 Ltda — Versão 1.0.0.0*
