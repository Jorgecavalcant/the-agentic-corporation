---
name: README
description: Especialista da empresa.
dept: marketing
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# ?? Agência de Marketing JC  marketing-departamento

Agência de marketing virtual da ** ${COMPANY_NAME:-Empresa IA}**.

7 super-profissionais cobrindo estratégia, branding, copywriting, design, tráfego pago, storytelling e gestão de marca. Cada especialista absorveu os melhores frameworks do mercado.

---

## Ativação

```
Acionar a Agência de Marketing: *marketing:diagnostico

Ou diretamente:
*marketing:campanha       ? Campanha completa integrada
*marketing:copy           ? Textos persuasivos (qualquer formato)
*marketing:marca          ? Identidade e brand strategy
*marketing:lancamento     ? Planejar lançamento de produto
*marketing:funil          ? Funil de conteúdo orgânico
*marketing:anuncio        ? Campanha de tráfego pago
*marketing:roteiro        ? Roteiro narrativo (vídeo/apresentação)
*marketing:diagnostico    ? Diagnóstico completo do marketing atual
```

---

## Profissionais da Agência (7)

| # | Profissional | Especialidade | Frameworks Absorvidos |
|---|-------------|---------------|----------------------|
| 1 | **CMO** (cmo) | Orquestração + Estratégia | Golden Circle, StoryBrand |
| 2 | **Gerente de Marketing** | Brand Equity, Posicionamento | David Aaker, Marty Neumeier, Donald Miller |
| 3 | **Redator** | Copywriting, Persuasão | Ogilvy, Kennedy, Bencivenga, Brunson, Schwartz, Carlton, Halbert |
| 4 | **Designer** | Visual, UI/UX, Identidade | Atomic Design, Don Norman, Gestalt, Visual Hierarchy |
| 5 | **Gestor de Tráfego** | Meta Ads, Google Ads | Traffic Masters, estrutura de campanhas, ROAS |
| 6 | **Estrategista de Marca** | Arquétipos, Naming, Propósito | Jung/Margaret Mark, Al Ries & Trout, Simon Sinek |
| 7 | **Especialista em Storytelling** | Narrativa, Emoção, Roteiros | Campbell, McKee, Pixar 22 Rules, TED Talks |

---

## Exemplos de Uso

### Demanda Simples
```
Pergunta: "Preciso de 5 opções de headline para a landing page do Fiado Pro"

Roteamento ? redator
Resposta: 5 headlines com estruturas diferentes + análise de cada uma
```

### Demanda Complexa
```
Pergunta: "Vamos lançar o Método Planejar para um novo público
          (pais de família 35-50 anos)  o que preciso?"

Roteamento ? PROTOCOLO lancamento_produto
? estrategista-marca (posicionamento do novo público)
? especialista-storytelling (narrativa específica para esse público)
? redator (copy adaptado)
? gestor-trafego (segmentação e campanha paga)

Síntese: Pacote completo de lançamento para o novo público
```

### Diagnóstico
```
Pergunta: "Nosso marketing está funcionando? O que melhorar?"

Roteamento ? PROTOCOLO diagnostico_marketing
? Todos os 6 especialistas analisam sua área
? CMO sintetiza e entrega top 5 prioridades + plano de ação 90 dias
```

---

## Componentes

- **7 agentes** (1 Tier-0 + 6 Tier-1)
- **8 tasks** (criar campanha, escrever copy, criar identidade, planejar lançamento, etc.)
- **3 workflows** (lançamento de produto, campanha de conteúdo, criação de marca)
- **1 checklist** de qualidade de marketing
- **1 routing catalog** com 6 domínios + 5 protocolos multi-especialistas

---

## Regra de Compliance

> ?? **CRÍTICO:** Toda comunicação JC posiciona os produtos como **tecnologia/plataforma**.
> Nunca como consultoria financeira, recomendação de investimento ou assessoria.
> Esta regra é verificada no checklist antes de qualquer entrega.

---

## Versão

| Campo | Valor |
|-------|-------|
| Versão | 1.0.0 |
| Criado | 2026-04-02 |
| Autor | ${COMPANY_NAME:-Empresa IA} |
| Idioma | Português do Brasil |

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
