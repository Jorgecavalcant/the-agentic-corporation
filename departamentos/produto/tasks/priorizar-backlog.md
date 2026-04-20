---
name: priorizar-backlog
description: Especialista da empresa.
dept: produto
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# Task: Priorizar Backlog

**ID:** priorizar-backlog
**departamento:** produto-departamento
**Agente responsável:** orchestrator (cpo) + gestor do produto
**Modelo:** sonnet

---

## Objetivo

Priorizar features do backlog usando framework RICE, alinhando com o North Star Metric de cada produto e capacidade de desenvolvimento.

---

## Entradas (inputs)

- Lista de features/bugs no backlog
- Produto alvo (Método Planejar / AgroCredit / Fiado Pro)
- Capacidade atual do departamento de desenvolvimento

---

## Saídas (outputs)

- Backlog ordenado por prioridade com score RICE
- Top 3 features para próxima sprint com justificativa
- Features descartadas ou adiadas com motivo

---

## Framework RICE

```
REACH:     Quantos usuários afeta em 1 trimestre?
IMPACT:    Quanto impacta o North Star Metric? (3=massivo, 2=alto, 1=médio, 0.5=baixo, 0.25=mínimo)
CONFIDENCE: Quão confiante estamos? % (100=alta, 80=média, 50=baixa)
EFFORT:    Meses-pessoa para implementar

RICE Score = (Reach × Impact × Confidence) / Effort

NORTH STAR POR PRODUTO:
  Método Planejar: MRR + usuários que conectaram banco
  AgroCredit: análises de crédito processadas/mês
  Fiado Pro: lojistas com 5+ clientes ativos no mês
```

---

## Critério de conclusão

- [ ] Todas as features com score RICE calculado
- [ ] Top 3 próxima sprint definidas e comunicadas ao diretor-tecnologia
- [ ] Decisions log atualizado (por que X foi priorizado sobre Y)

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
