---
name: discovery-feature
description: Especialista da empresa.
dept: produto
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# Task: Discovery de Feature

**ID:** discovery-feature
**departamento:** produto-departamento
**Agente responsável:** orchestrator (cpo) + pesquisador
**Modelo:** sonnet

---

## Objetivo

Realizar discovery completo de uma nova feature antes de entrar no backlog — validando o problema, a solução e o critério de sucesso.

---

## Entradas (inputs)

- Ideia ou problema identificado
- Produto afetado
- Feedback de usuários ou dados que motivaram a ideia

---

## Saídas (outputs)

- Problem statement validado
- Jobs-to-be-Done mapeados
- Solução proposta com alternativas consideradas
- Critério de sucesso (métricas)
- Estimativa de esforço (P/M/G)
- Go/No-go recomendado

---

## Framework de Discovery JC

```
1. PROBLEMA:
   "Qual problema real do usuário estamos resolvendo?"
   "Como sabemos que esse é o problema certo?" (dado ou entrevista)

2. JOBS-TO-BE-DONE:
   "Quando [situação], eu quero [motivação], para [resultado esperado]"

3. SOLUÇÃO:
   Hipótese: "Se fizermos X, os usuários conseguirão Y"
   Alternativas consideradas: [A, B, C]
   Por que escolhemos X: [justificativa]

4. VALIDAÇÃO:
   Como validaremos sem código? (protótipo, pesquisa, analytics)
   Sinal de sucesso: [métrica] melhora em [%] em [prazo]

5. ESFORÇO:
   P (< 1 semana) / M (1-3 semanas) / G (> 3 semanas)
```

---

## Critério de conclusão

- [ ] Problem statement documentado e validado com dado ou feedback real
- [ ] JTBD mapeados
- [ ] Solução escolhida com alternativas consideradas
- [ ] Critério de sucesso mensurável definido
- [ ] Go/No-go recomendado e comunicado ao CEO

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
