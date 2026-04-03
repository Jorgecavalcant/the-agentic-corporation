# Task: Roadmap Trimestral

**ID:** roadmap-trimestral
**Squad:** jc-produto-squad
**Agente responsável:** orchestrator (jc-cpo)
**Modelo:** sonnet

---

## Objetivo

Construir ou atualizar o roadmap trimestral de um produto, alinhando features prioritárias com capacidade de desenvolvimento e metas de MRR.

---

## Entradas (inputs)

- Backlog priorizado (RICE score)
- Capacidade de desenvolvimento estimada (sprints disponíveis)
- Meta de MRR do trimestre
- Feedback acumulado de usuários (NPS, churn reasons, support tickets)

---

## Saídas (outputs)

- Roadmap do trimestre (Mês 1 / Mês 2 / Mês 3)
- Dependências entre features identificadas
- Features de manutenção vs. features de crescimento balanceadas
- Compromissos comunicados ao CEO com confiança explícita

---

## Estrutura do Roadmap JC

```
TRIMESTRE: Q[X] 20[XX]
PRODUTO: [nome]
META MRR: R$ [X]

MÊS 1 — Fundação:
  Sprint 1: [feature A] — P — impacta retenção
  Sprint 2: [feature B] — M — impacta ativação

MÊS 2 — Crescimento:
  Sprint 3: [feature C] — G — impacta aquisição
  Sprint 4: [bugfixes + performance]

MÊS 3 — Consolidação:
  Sprint 5: [feature D] — M — impacta upsell
  Sprint 6: [documentação + testes]

DEPENDÊNCIAS: C depende de B estar em produção
RISCOS: A pode atrasar se integração Asaas tiver complexidade maior
```

---

## Critério de conclusão

- [ ] Roadmap do trimestre documentado e aprovado pelo CEO
- [ ] Capacidade de desenvolvimento validada com jc-cto
- [ ] Dependências entre squads identificadas
- [ ] Comunicação ao CEO com nível de confiança explícito (alta/média/baixa)
