---
name: pesquisa-mercado
description: Especialista da empresa.
dept: produto
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# Task: Pesquisa de Mercado

**ID:** pesquisa-mercado
**departamento:** produto-departamento
**Agente responsável:** pesquisador
**Modelo:** sonnet

---

## Objetivo

Realizar pesquisa de mercado, análise de concorrentes ou investigação de tendências para embasar decisões de produto.

---

## Entradas (inputs)

- Pergunta ou hipótese a investigar
- Produto e segmento afetado
- Prazo para a decisão que a pesquisa embasará

---

## Saídas (outputs)

- Relatório de pesquisa com fontes identificadas
- Análise competitiva (se solicitado)
- 3-5 insights acionáveis
- Recomendação clara com grau de confiança

---

## Metodologia Sherlock (pesquisador JC)

```
1. FORMULAR A PERGUNTA:
   "O que precisamos saber para tomar a decisão X?"
   Hipótese: "Acreditamos que Y porque Z"

2. COLETAR EVIDÊNCIAS:
   - Dados internos (analytics, NPS, churn reasons)
   - Concorrentes (pricing pages, reviews, changelogs)
   - Mercado (relatórios, benchmarks, tendências)

3. ANALISAR PADRÕES:
   "O que os dados dizem vs. o que achávamos?"
   "Qual evidência contradiz nossa hipótese?"

4. CONCLUSÃO ACIONÁVEL:
   "Com base nos dados, a decisão recomendada é X"
   "Grau de confiança: alto/médio/baixo"
   "O que ainda não sabemos e precisaríamos validar"
```

---

## Critério de conclusão

- [ ] Pergunta inicial respondida com evidências
- [ ] Fontes identificadas (não opiniões sem base)
- [ ] Insights priorizados por relevância
- [ ] Recomendação clara com grau de confiança declarado

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
