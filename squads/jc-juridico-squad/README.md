# ⚖️ Departamento Jurídico JC — jc-juridico-squad

Escritório de advocacia virtual da **JC TECNOLOGIA LTDA**.

7 advogados super-especialistas cobrindo todas as áreas jurídicas relevantes para uma empresa de tecnologia e educação financeira no Brasil.

---

## Ativação

```
Acionar o Departamento Jurídico: *jc-juridico:diagnostico

Ou diretamente:
*jc-juridico:tributario    → Questões fiscais
*jc-juridico:lgpd          → Proteção de dados
*jc-juridico:contrato      → Contratos e parcerias
*jc-juridico:cvm           → Regulação CVM/BACEN
*jc-juridico:trabalhista   → Questões de equipe
*jc-juridico:marca         → Propriedade intelectual
*jc-juridico:termos        → Termos de uso / CDC
*jc-juridico:completo      → Análise com todos os advogados
```

---

## Advogados do Departamento (7)

| # | Advogado | Especialidade | Área Principal |
|---|----------|---------------|----------------|
| 1 | **Diretor Jurídico** (jc-cco) | Orquestração + Síntese | Coordenação |
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
Pergunta: "Preciso registrar a marca MÉTODO PLANEJAR — como funciona?"

Roteamento → adv-propriedade-intelectual
Resposta: Classes NCL, custo INPI, prazo, próximos passos
```

### Questão Complexa
```
Pergunta: "Vou lançar uma feature que mostra alocação ideal de investimentos
usando dados do Open Finance. Posso lançar?"

Roteamento → adv-regulatorio-fintech (CVM + BACEN) + adv-digital-lgpd (consentimento) + adv-consumidor-saas (ToS)

Síntese: Análise de fronteira CVM + requisitos Open Finance + atualização de ToS
```

### Protocolo Bancário
```
Pergunta: "Quero assinar um contrato com parceiro B2B que vai usar meu nome
como 'especialista financeiro'. Posso?"

Roteamento → PROTOCOLO blindagem_bancaria
→ adv-trabalhista + adv-regulatorio-fintech
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
| Autor | JC Tecnologia LTDA |
| Idioma | Português do Brasil |
