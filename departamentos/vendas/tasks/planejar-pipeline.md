---
name: planejar-pipeline
description: Especialista da empresa.
dept: vendas
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# Task: Planejar Pipeline de Vendas

**ID:** planejar-pipeline
**departamento:** vendas-departamento
**Agente responsável:** orchestrator (diretor-vendas)
**Modelo:** sonnet

---

## Objetivo

Planejar o pipeline de vendas do mês/trimestre, garantindo que o funil tem volume suficiente para atingir a meta de MRR.

---

## Entradas (inputs)

- Meta de MRR do período
- Taxa de conversão atual (lead → cliente)
- Ticket médio por produto/plano

---

## Saídas (outputs)

- Volume necessário de leads por etapa do funil
- Distribuição de esforço (inbound vs. outbound)
- Metas por canal de aquisição

---

## Modelo de Pipeline JC

```
META MRR: R$ X

TICKETS MÉDIOS:
  Método Planejar B2C: R$ 29,90/mês (anual: R$ 197)
  Método Planejar B2B: R$ 800/mês
  AgroCredit: R$ 2.500/mês
  Fiado Pro: R$ 49/mês

CÁLCULO REVERSO:
  Clientes novos necessários = ΔMeta / Ticket médio
  Leads necessários = Clientes novos / Taxa de conversão
  Impressões necessárias = Leads / CTR esperado

REGRA DE EQUILÍBRIO:
  70% inbound (marketing gera) → leads mais baratos
  30% outbound (B2B, white-label) → maior ticket, mais esforço
```

---

## Critério de conclusão

- [ ] Volume de leads necessário calculado e comunicado ao marketing
- [ ] Metas por canal definidas
- [ ] Ações de outbound B2B priorizadas por tamanho de contrato

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
