# Task: Diagnóstico de Vendas

**ID:** diagnostico-vendas
**Squad:** jc-vendas-squad
**Agente responsável:** orchestrator (jc-dir-vendas)
**Modelo:** sonnet

---

## Objetivo

Realizar diagnóstico completo do processo de vendas para identificar gargalos no funil e oportunidades de melhoria.

---

## Entradas (inputs)

- Período de análise
- Métricas do funil disponíveis (leads, conversões, churn, MRR)
- Produto(s) em foco

---

## Saídas (outputs)

- Mapa do funil atual com taxas de conversão por etapa
- Identificação do maior gargalo
- 3 ações prioritárias com impacto estimado em MRR
- Plano de ação para o próximo mês

---

## Framework de Diagnóstico JC

```
MAPA DO FUNIL:
  Visitantes → Leads → Qualificados → Trial → Pagantes

MÉTRICAS POR ETAPA:
  Visita → Lead:        Taxa de captura (meta: > 3%)
  Lead → Qualificado:  Taxa de qualificação (meta: > 40%)
  Qualificado → Trial: Taxa de engajamento (meta: > 60%)
  Trial → Pagante:     Taxa de conversão (meta: > 20% em 30 dias)
  Pagante → Retido:    Churn mensal (meta: < 3%)

IDENTIFICAR O GARGALO:
  Onde a conversão é mais abaixo da meta?
  Esse é o ponto de maior alavancagem.

CAUSAS RAIZ:
  Funil de topo: problema de audiência ou mensagem
  Meio do funil: problema de ativação ou onboarding
  Fundo do funil: problema de produto ou pricing
  Pós-venda: problema de customer success ou feature
```

---

## Critério de conclusão

- [ ] Funil mapeado com taxas reais (não estimativas)
- [ ] Gargalo principal identificado com hipótese de causa
- [ ] 3 ações prioritárias com owner e prazo
- [ ] Relatório apresentado ao CEO com próximo passo único
