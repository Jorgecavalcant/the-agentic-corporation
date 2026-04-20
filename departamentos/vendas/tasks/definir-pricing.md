---
name: definir-pricing
description: Especialista da empresa.
dept: vendas
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# Task: Definir Pricing

**ID:** definir-pricing
**departamento:** vendas-departamento
**Agente responsável:** analista-receita
**Modelo:** sonnet

---

## Objetivo

Analisar e recomendar estrutura de pricing para produto JC, baseada em willingness-to-pay, análise competitiva e unit economics.

---

## Entradas (inputs)

- Produto e segmento (B2C / B2B)
- Dados de churn e LTV atuais (se produto existente)
- Feedback de clientes sobre preço (surveys, razões de churn)

---

## Saídas (outputs)

- Análise de willingness-to-pay por segmento
- Análise competitiva de preços
- 3 opções de pricing com simulação de impacto em MRR
- Recomendação final com justificativa

---

## Framework de Pricing JC

```
PASSO 1 — Benchmark competitivo:
  Mapear 3-5 concorrentes + seus preços
  Identificar onde JC se posiciona (premium, par, entry)

PASSO 2 — Valor entregue:
  Quantificar o benefício do produto para o cliente
  Exemplo: "Método Planejar → clientes encontram R$ 300+/mês"
  Pricing baseado em % do valor = mais defensável

PASSO 3 — Willingness to Pay:
  Segmento A: paga até R$ X?
  Segmento B: paga até R$ Y?
  Usar: preço de ancoragem, decoy, charm pricing

PASSO 4 — Simulação de impacto:
  Se preço sobe 20%: churn estimado + conversão estimada = MRR líquido
  Cenário conservador / base / otimista
```

---

## Critério de conclusão

- [ ] 3 cenários de pricing simulados com impacto em MRR
- [ ] Análise competitiva com fontes verificáveis
- [ ] Recomendação alinhada com diretor-financeiro antes de apresentar ao CEO

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
