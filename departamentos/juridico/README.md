---
name: README
description: Especialista da empresa.
dept: juridico
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# ?? Departamento Jurídico JC  juridico-departamento

Escritório de advocacia virtual da ** ${COMPANY_NAME:-Empresa IA}**.

7 advogados super-especialistas cobrindo todas as áreas jurídicas relevantes para uma empresa de tecnologia e educação financeira no Brasil.

---

## Ativação

```
Acionar o Departamento Jurídico: *juridico:diagnostico

Ou diretamente:
*juridico:tributario    ? Questões fiscais
*juridico:lgpd          ? Proteção de dados
*juridico:contrato      ? Contratos e parcerias
*juridico:cvm           ? Regulação CVM/BACEN
*juridico:trabalhista   ? Questões de equipe
*juridico:marca         ? Propriedade intelectual
*juridico:termos        ? Termos de uso / CDC
*juridico:completo      ? Análise com todos os advogados
```

---

## Advogados do Departamento (7)

| # | Advogado | Especialidade | Área Principal |
|---|----------|---------------|----------------|
| 1 | **Diretor Jurídico** (cco) | Orquestração + Síntese | Coordenação |
| 2 | **Advogado Tributarista** | Simples Nacional, Split Fiscal, E-book | Tributário |
| 3 | **Advogado Digital e LGPD** | Proteção de dados, Marco Civil, Crimes Digitais | Digital |
| 4 | **Advogado Empresarial** | Contratos, Societário, Parcerias, M&A | Empresarial |
| 5 | **Advogado Regulatório FinTech** | CVM 175, BACEN, Open Finance | Regulatório |
| 6 | **Advogado Trabalhista** | CLT, PJ, Conflito Bancário, Equipe | Trabalhista |
| 7 | **Advogado de Propriedade Intelectual** | Marca, Software, Copyright, PI | PI |
| 8 | **Advogado do Consumidor e SaaS** | CDC, EULA, Termos de Uso, Reembolso | Consumidor |
| 9 | **Analista de Contratos** | Análise técnica/forense de qualquer contrato | Contratos |
| 10 | **Advogado de Entretenimento e Música** | Gravadora, ECAD, Sync, Procuração Artística | Entretenimento |

---

## Exemplos de Uso

### Questão Simples
```
Pergunta: "Preciso registrar a marca MÉTODO PLANEJAR  como funciona?"

Roteamento ? adv-propriedade-intelectual
Resposta: Classes NCL, custo INPI, prazo, próximos passos
```

### Questão Complexa
```
Pergunta: "Vou lançar uma feature que mostra alocação ideal de investimentos
usando dados do Open Finance. Posso lançar?"

Roteamento ? adv-regulatorio-fintech (CVM + BACEN) + adv-digital-lgpd (consentimento) + adv-consumidor-saas (ToS)

Síntese: Análise de fronteira CVM + requisitos Open Finance + atualização de ToS
```

### Protocolo Bancário
```
Pergunta: "Quero assinar um contrato com parceiro B2B que vai usar meu nome
como 'especialista financeiro'. Posso?"

Roteamento ? PROTOCOLO blindagem_bancaria
? adv-trabalhista + adv-regulatorio-fintech
Síntese: Análise de conflito de interesse + risco CLT + risco CVM
```

---

## Componentes

- **10 agentes** (1 Tier-0 + 9 Tier-1)
- **9 tasks** (analisar contrato, validar LGPD, calcular split fiscal, etc.)
- **4 workflows** (análise completa, validação novo produto, revisão contrato, auditoria LGPD)
- **1 checklist** de qualidade jurídica
- **1 routing catalog** com 9 domínios + 6 protocolos multi-especialistas

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
