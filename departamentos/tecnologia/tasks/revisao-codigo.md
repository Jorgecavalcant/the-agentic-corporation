---
name: revisao-codigo
description: Especialista da empresa.
dept: tecnologia
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# Task: Revisão de Código (Code Review)

**ID:** revisao-codigo
**departamento:** empresa-ia-departamento
**Agente responsável:** orchestrator (diretor-tecnologia) ou especialista-seguranca
**Modelo:** sonnet

---

## Objetivo

Revisar Pull Request com foco em qualidade, segurança, arquitetura e conformidade com os padrões JC antes do merge.

---

## Entradas (inputs)

- Diff do PR (arquivos alterados)
- Descrição da feature ou bug fix
- Contexto do produto afetado

---

## Saídas (outputs)

- Aprovação (merge OK) ou lista de issues bloqueantes/não-bloqueantes
- Sugestões de melhoria com justificativa
- Checklist de segurança preenchido

---

## Critérios de Revisão JC

```
OBRIGATÓRIO (bloqueia merge):
  ✗ Dado pessoal em log
  ✗ Chave/token no código
  ✗ SQL com concatenação de strings (injection)
  ✗ Autenticação ausente em endpoint sensível
  ✗ Migration sem downgrade
  ✗ Erro silenciado (try/except vazio)

QUALIDADE (recomendado):
  ✓ Funções com responsabilidade única (< 50 linhas)
  ✓ Nome de variável/função descritivo em inglês
  ✓ Comentário onde a lógica não é óbvia
  ✓ Testes cobrindo happy path + erro principal
  ✓ Sem código comentado no PR (deletar ou criar ticket)

ARQUITETURA:
  ✓ Lógica de negócio em service layer, não na rota
  ✓ Queries no repository layer
  ✓ Sem dependência circular entre módulos
```

---

## Critério de conclusão

- [ ] Todos os itens obrigatórios verificados
- [ ] Issues bloqueantes comunicadas com sugestão de correção
- [ ] Aprovação registrada ou request de changes com items claros

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
