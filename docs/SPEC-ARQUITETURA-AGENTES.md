# 📐 SPEC: Padronização da Arquitetura de Agentes (v2.0)

## 1. Objetivo
Estabelecer um padrão único de desenvolvimento para os 96+ agentes da **Empresa 100% IA**, garantindo compatibilidade entre interfaces de terminal (Claude Code/Antigravity) e interfaces visuais (Paperclip/Dashboards), mantendo a segurança e o modo White-Label.

---

## 2. Estrutura do Arquivo do Agente (.md)

Todo agente deve seguir rigorosamente a estrutura abaixo:

### 2.1 Frontmatter (Metadados)
```markdown
---
name: [nome-unico-do-agente]
description: [o-que-faco-em-uma-frase]
departamento: [vendas|tecnologia|financas|...]
role: [CEO|Manager|Specialist|Support]
idioma: pt-BR
version: 1.0.0
paperclip_icon: [icon-name] # Ref: Lucide Icons para o Dashboard
model_preferred: [sonnet|opus|haiku]
tier: [0|1|2] # Importância hierárquica
---
```

### 2.2 Corpo do Agente (Prompt System)
O corpo deve ser dividido em seções claras:
1.  **Persona**: Identidade corporativa (Ex: "Você é o Analista de Dados da Empresa...").
2.  **Contexto Empresa**: Como se comunicar e agir (Placeholders para `${COMPANY_NAME}`).
3.  **Responsabilidades**: Lista de tarefas e o que NÃO deve fazer.
4.  **Tools & Harness**: Quais ferramentas ele pode usar.
5.  **Comunicação**: Estilo Cerbasi (Executivo, Claro, Direto).

---

## 3. Integração com a "Torre de Controle" (Paperclip)

Para que o Paperclip ou qualquer dashboard consiga monitorar o ecossistema:
- **Output de Status**: Agentes de nível Manager DEVEM gerar logs curtos e datados em um arquivo central `DASHBOARD.md` ou similar quando terminarem tarefas críticas.
- **Identidade Unificada**: Uso estrito de placeholders `{CEO_NAME}` e `{COMPANY_NAME}` em vez de nomes reais.

---

## 4. Padronização de Ferramentas (Tools)

| Nível | Permissões de Ferramentas |
|---|---|
| **CEO / Master** | Full Access (Bash, Read, Write, Web Search, Image Gen) |
| **Manager / Orchestrator** | Orchestration Tools (Grep, Read, Glob, Task Delegation) |
| **Specialist / Dev** | Technical Tools (Bash, Replace File, Read URLs) |
| **Operational / Support** | Read Only (Read, List Dir, View Image) |

---

## 5. Fluxo de Refatoração (O Super Plano)
1.  **Template Base**: Criar o `_core/templates/base-agent.md` com este padrão.
2.  **Script de Conversão**: (Opcional) Criar um script para injetar o novo frontmatter nos 96 arquivos.
3.  **Manual de Refatoração**: Instrução clara para os sub-agentes aplicarem a lógica White-Label.

---

## 6. Próximas Micro-Tarefas
- [ ] Criar o `base-agent.md`.
- [ ] Refatorar o `agent-manager` (Orchestrator) para este novo padrão.
- [ ] Mapear todos os 96 agentes e seus respectivos departamentos.
