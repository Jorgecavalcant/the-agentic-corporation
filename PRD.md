---
name: PRD
description: Especialista da empresa.
dept: indefinido
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# 📄 PRD: Empresa 100% IA (The Agentic Corporation)

## 1. Visão do Produto
O **Empresa 100% IA** é um ecossistema de agentes de IA desenvolvidos para atuar como uma corporação digital completa. Diferente da versão anterior (JC Super Plugin), este produto é **agnóstico**, **seguro** e **escalável**, permitindo que qualquer negócio tenha departamentos especializados de IA operando sob uma metodologia profissional.

### 1.1 Objetivos Estratégicos
- **Segurança Total**: Eliminar qualquer dado pessoal ou infraestrutura do código-fonte.
- **Universalidade**: Agentes devem falar em nome de uma empresa genérica, adaptável pelo usuário.
- **Eficiência**: Prompts otimizados para alto desempenho e menor consumo de tokens.
- **Organização**: Estrutura clara de C-Level, Gerência e Operacional.

## 2. Público-Alvo
- CEOs e Empreendedores que buscam automação extrema.
- Desenvolvedores de agentes que utilizam Claude/Gemini/Antigravity/Codex.

## 3. Personas dos Usuários
- **CEO ()**: Quer acionar especialistas sem se preocupar com a parte técnica.
- **Instalador (Usuário de TI)**: Precisa subir o sistema localmente ou em VPS de forma rápida e segura.

## 4. Requisitos Funcionais (Principais)
- **RF01: Configuração Externa**: O sistema DEVE ler dados de VPS e usuário a partir de um arquivo local (`.env` ou similar) não versionado.
- **RF02: Organograma IA**: Deve haver pelo menos 5 departamentos funcionais (Tecnologia, Vendas, Marketing, Operações, Finanças).
- **RF03: Hierarquia de Gestão**: Cada departamento deve ter um `Orchestrator` ou `Lead` que responde ao `agent-manager`.
- **RF04: Modo White-Label**: Todas as respostas devem ser profissionais e corporativas, sem referências "hardcoded" a "JC" exceto onde configurado.

## 5. Requisitos Não Funcionais
- **RNF01: Performance**: Scripts de instalação devem rodar em menos de 30 segundos.
- **RNF02: Compatibilidade**: Deve funcionar em Windows (Bash/PowerShell), macOS e Linux (Ubuntu/Debian).
- **RNF03: Segurança**: Proibição estrita de subir segredos para repositórios Git.

## 6. Fluxo de Instalação (Novo)
1. Baixar o Plugin.
2. Copiar `.env.example` para `.env` e preencher dados.
3. Executar `./install.sh`.
4. O instalador valida o `.env` antes de prosseguir.

## 7. Critérios de Aceite
- [ ] Nenhum IP ou usuário SSH visível no código-fonte.
- [ ] 100% dos 96+ agentes migrados e refatorados para o novo padrão.
- [ ] Funcionamento perfeito do comando `/jc` no novo diretório.

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
