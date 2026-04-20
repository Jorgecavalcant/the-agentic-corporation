---
name: criar-oferta
description: Especialista da empresa.
dept: vendas
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# Task: Criar Oferta

**ID:** criar-oferta
**departamento:** vendas-departamento
**Agente responsável:** especialista-ofertas
**Modelo:** sonnet

---

## Objetivo

Construir uma oferta completa para um produto JC usando o framework Hormozi ($100M Offers), com value stack, garantia e psicologia de preços.

---

## Entradas (inputs)

- Produto (Método Planejar / AgroCredit / Fiado Pro)
- Segmento alvo (B2C, B2B, white-label)
- Contexto (lançamento, upsell, recuperação de churn, campanha)

---

## Saídas (outputs)

- Estrutura da oferta completa (produto + bônus + garantia)
- Value stack documentado com valores âncora
- Texto de apresentação da oferta
- Variações de preço (mensal/anual ou planos)

---

## Passos

1. **Mapear a dor principal** — O que o cliente mais quer evitar ou conquistar?
2. **Definir o resultado prometido** — Específico, concreto, com prazo
3. **Construir o value stack** — Produto + bônus que resolvem obstáculos
4. **Calcular valor total vs. preço cobrado** — Âncora de valor
5. **Definir garantia** — Inverte o risco para o cliente
6. **Psicologia de preços** — Ancorar, comparar, fracionar
7. **Revisar compliance** — Sem promessa de retorno financeiro (CVM)
8. **Testar copy** — A/B se possível

---

## Critério de conclusão

- [ ] Value stack com pelo menos 3 itens além do produto principal
- [ ] Garantia definida e aprovada pelo CFO se > 30 dias
- [ ] Nenhuma promessa de retorno financeiro (CVM 175)
- [ ] Oferta revisada pelo CCO se produto financeiro

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
