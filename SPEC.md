---
name: SPEC
description: Especialista da empresa.
dept: indefinido
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# 📐 SPEC: Arquitetura Técnica — Empresa 100% IA

## 1. Arquitetura de Pastas (Padrão D:\TECH42)
```
D:\TECH42\PROJETOS\empresa-100-ia\
├── _core\             # Regras bases, templates de agentes e melhores práticas
├── departamentos\        # Organização por Departamentos
│   ├── tecnologia\
│   ├── vendas\
│   ├── ...
├── installer\            # Scripts de instalação (Refatorados)
│   ├── .env.example      # Template de configuração
│   ├── install.sh        # Bash para Linux/Mac/Git Bash
│   └── install.bat       # CMD para Windows nativo
├── docs\                 # PRD, SPEC, STATE
├── README.md
└── CREDENCIAIS-NECESSARIAS.md
```

## 2. Gestão de Segredos (A Nova Forma)
O arquivo `install.sh` e `install.bat` deixarão de ter a variável `VPS_HOST` fixa.

### 2.1 Estrutura do `.env`:
```bash
# Configurações de Conexão VPS
VPS_USER=seu_usuario
VPS_IP=00.00.00.00
# Ou formato unificado
VPS_HOST=user@vps-ip
```

### 2.2 Lógica do Instalador:
1. Procura por `.env` na raiz do plugin.
2. Se não existir, avisa ao usuário para criar.
3. Se existir, exporta as variáveis.
4. Usa `$VPS_HOST` dinamicamente no comando SSH/SCP.

## 3. Padronização de Agentes (Refatoração)
Cada arquivo de agente (`.md`) deve ser revisado para remover referências específicas e passar a usar placeholders ou linguagem corporativa agnóstica.

### 3.1 Template de Frontmatter (Novo):
```markdown
---
name: [nome-cargo]
description: [o-que-faz]
dept: [nome-departamento]
role: [executivo|tatico|operacional]
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
```

## 4. Plano de Refatoração de Agentes (96 Agentes)
Os agentes serão distribuídos nos seguintes níveis hierárquicos:

| Nível | Função | Exemplo |
|---|---|---|
| **C-Level** | Estratégia e Visão | CEO, CTO, CFO, CMO |
| **Middle Management** | Orquestração de Departamentos | Orchestrators, Tech Leads |
| **Specialists** | Execução Técnica | Dev Backend, Redator, Designer |
| **Operational** | Apoio e QA | QA Lead, Revisor, Suporte |

## 5. Próximas Micro-Tarefas (Sprint 1)
1. **Segurança**: Criar `.env.example` e limpar scripts.
2. **Infra**: Atualizar `install.sh` para ler o `.env`.
3. **Template**: Criar o novo `agente-base.md` que servirá de exemplo para todos os outros.

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
