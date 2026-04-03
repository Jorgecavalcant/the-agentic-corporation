# Task: Reduzir Churn

**ID:** reduzir-churn
**Squad:** jc-vendas-squad
**Agente responsável:** especialista-retencao
**Modelo:** sonnet

---

## Objetivo

Identificar clientes em risco de cancelamento e executar playbook de retenção para reduzir o churn do mês.

---

## Entradas (inputs)

- Lista de clientes em risco (comportamento: inatividade, NPS baixo, tickets)
- Produto e plano de cada cliente
- Histórico de interações

---

## Saídas (outputs)

- Clientes salvos (com ação executada documentada)
- Clientes perdidos com motivo registrado (alimentar análise de produto)
- Recomendações de melhoria de produto baseadas nos motivos de churn

---

## Protocolo de Retenção JC

```
PRIORIDADE 1 — Clientes com sinais P0 (agir em < 24h):
  - Abriu ticket "como cancelo?"
  - NPS entre 0-5
  - Inativo há > 14 dias (B2C) ou > 30 dias (B2B)

PRIORIDADE 2 — Clientes com sinais P1 (agir em < 72h):
  - Frequência de acesso caiu > 50%
  - Não completou onboarding
  - NPS entre 6-7

ABORDAGEM:
  1. Entender o motivo real (ouvir antes de defender)
  2. Resolver o problema se possível (bug, suporte, feature)
  3. Oferta de retenção APENAS se necessário (< 20% desconto)
  4. Documentar motivo independente de reter ou perder
```

---

## Critério de conclusão

- [ ] 100% dos clientes P0 contatados em 24h
- [ ] Motivo de cada cancelamento registrado
- [ ] Taxa de save calculada e reportada ao Diretor de Vendas
- [ ] Top 3 motivos de churn do mês comunicados ao CPO
