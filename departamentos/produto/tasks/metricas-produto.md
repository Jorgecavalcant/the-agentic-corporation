---
name: metricas-produto
description: Especialista da empresa.
dept: produto
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# Task: Análise de Métricas de Produto

**ID:** metricas-produto
**departamento:** produto-departamento
**Agente responsável:** gestor do produto (metodo-planejar / agrocredit / fiado-pro)
**Modelo:** sonnet

---

## Objetivo

Analisar as métricas de produto de um período para identificar saúde, problemas e oportunidades de melhoria.

---

## Entradas (inputs)

- Produto e período de análise
- Métricas disponíveis (analytics, banco, Asaas)
- Meta do período (se houver)

---

## Saídas (outputs)

- Dashboard de métricas do período
- Análise de desvios vs. meta
- Top 3 problemas identificados
- Top 3 oportunidades identificadas
- Recomendações para próxima sprint

---

## Métricas por Produto

```
MÉTODO PLANEJAR:
  Aquisição: novos cadastros, taxa de conversão trial → pago
  Ativação: % que conectou banco na semana 1
  Retenção: churn mensal, cohort retention
  Receita: MRR, ARPU, plano mais escolhido

AGROCREDIT:
  Aquisição: novas cooperativas prospectadas vs. convertidas
  Uso: análises de crédito realizadas/mês
  Retenção: renovações de contrato
  Receita: MRR B2B

FIADO PRO:
  Ativação: % que cadastrou 5+ clientes na semana 1 (Aha Moment)
  Uso: alertas de cobrança disparados/mês
  Retenção: lojistas ativos há 90+ dias
  Receita: MRR, conversão freemium → Pro
```

---

## Critério de conclusão

- [ ] Métricas do período coletadas e organizadas
- [ ] Desvios vs. meta identificados com causa hipotética
- [ ] Ações recomendadas com impacto esperado
- [ ] Relatório formatado para apresentação ao CEO

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
