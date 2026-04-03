# Task: Qualificar Lead

**ID:** qualificar-lead
**Squad:** jc-vendas-squad
**Agente responsável:** especialista-leads
**Modelo:** sonnet

---

## Objetivo

Qualificar um lead usando BANT ou MEDDIC para determinar se é ICP e qual próxima ação (avançar, nutrir ou desqualificar).

---

## Entradas (inputs)

- Informações disponíveis do lead (formulário, LinkedIn, interações)
- Produto de interesse
- Contexto de origem (inbound, outbound, indicação)

---

## Saídas (outputs)

- Score de qualificação BANT (0-4) ou MEDDIC
- Classificação: Quente / Morno / Frio / Desqualificado
- Próxima ação recomendada
- Registrado no CRM com notas

---

## Critério BANT JC

```
B — Budget: Tem capacidade de pagar? (não precisa confirmar valor, apenas viabilidade)
A — Authority: É o decisor ou tem acesso ao decisor?
N — Need: O problema que o produto resolve existe e é sentido?
T — Timeline: Quer resolver nos próximos 30-60 dias?

LEAD QUENTE:  4/4 → contato imediato (< 24h)
LEAD MORNO:   2-3/4 → sequência de nutrição (5-7 emails)
FRIO:         0-1/4 → lista fria ou desqualificar
```

---

## Critério de conclusão

- [ ] BANT preenchido com dados (não suposições)
- [ ] Classificação registrada
- [ ] Próxima ação agendada ou lead descartado com motivo
