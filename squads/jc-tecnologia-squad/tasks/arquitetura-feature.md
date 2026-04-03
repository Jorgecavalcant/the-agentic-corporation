# Task: Arquitetura de Nova Feature

**ID:** arquitetura-feature
**Squad:** jc-tecnologia-squad
**Agente responsável:** orchestrator (jc-cto)
**Modelo:** sonnet

---

## Objetivo

Projetar a arquitetura completa de uma nova feature antes da implementação, garantindo que as decisões técnicas sejam tomadas com visão de longo prazo, performance e segurança.

---

## Entradas (inputs)

- Descrição da feature (requisito funcional)
- Produto afetado (Método Planejar / AgroCredit / Fiado Pro)
- Restrições conhecidas (prazo, performance, compliance)

---

## Saídas (outputs)

- Diagrama de fluxo de dados (descritivo em texto ou mermaid)
- Endpoints necessários (método, path, payload)
- Schema de banco de dados (novas tabelas ou alterações)
- Dependências de serviços externos
- Estimativa de complexidade (P, M, G, GG)
- Riscos e pontos de atenção

---

## Passos

1. **Entender o requisito** — Clarificar o que a feature precisa fazer (não como)
2. **Mapear o fluxo de dados** — Origem → processamento → destino
3. **Definir a API** — Endpoints, métodos, autenticação, validação de input
4. **Projetar o banco** — Novas tabelas, indexes, migrations necessárias
5. **Verificar integrações** — Asaas, Meta, BCB, N8N — algo precisa ser acionado?
6. **Checar compliance** — LGPD (dado pessoal?), CVM (feature financeira?)
7. **Estimar complexidade** — Pontos de esforço e dependências entre agentes
8. **Documentar decisões** — ADR se for decisão arquitetural relevante

---

## Critério de conclusão

- [ ] Fluxo de dados documentado
- [ ] Endpoints definidos com assinatura completa
- [ ] Schema de banco revisado
- [ ] Compliance verificado (LGPD/CVM)
- [ ] Estimativa de esforço registrada
