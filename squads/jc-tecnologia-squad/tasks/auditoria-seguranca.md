# Task: Auditoria de Segurança

**ID:** auditoria-seguranca
**Squad:** jc-tecnologia-squad
**Agente responsável:** especialista-seguranca
**Modelo:** sonnet

---

## Objetivo

Realizar auditoria de segurança de endpoint, código ou infraestrutura, identificando vulnerabilidades com severidade e plano de correção.

---

## Entradas (inputs)

- Escopo da auditoria (endpoint específico, módulo de código, ou infraestrutura)
- Produto/ambiente afetado
- Contexto (pre-deploy, revisão de PR, incidente, auditoria proativa)

---

## Saídas (outputs)

- Lista de vulnerabilidades encontradas com severidade (Crítica/Alta/Média/Baixa)
- Evidência de cada vulnerabilidade
- Plano de correção por prioridade
- Checklist LGPD/CVM se dados pessoais ou financeiros envolvidos

---

## Checklist de Segurança JC

```
AUTENTICAÇÃO:
  [ ] JWT validado em todos os endpoints protegidos?
  [ ] Tokens com expiração adequada (acesso: 1h, refresh: 7d)?
  [ ] Refresh token rotacionado a cada uso?

AUTORIZAÇÃO:
  [ ] Usuário só acessa seus próprios dados?
  [ ] RLS habilitado nas tabelas de dados pessoais?
  [ ] Permissões validadas no backend (não só no frontend)?

INPUT VALIDATION:
  [ ] Todos os inputs validados com Pydantic?
  [ ] Sem SQL raw com concatenação de strings?
  [ ] Upload de arquivo com validação de tipo e tamanho?

DADOS PESSOAIS (LGPD):
  [ ] CPF, email, telefone criptografados no banco?
  [ ] Nenhum dado pessoal em logs?
  [ ] Retenção de dados configurada?

SECRETS:
  [ ] Nenhuma chave de API, senha ou token no código?
  [ ] Variáveis de ambiente usadas corretamente?
  [ ] .env no .gitignore?
```

---

## Critério de conclusão

- [ ] Todos os itens do checklist verificados
- [ ] Vulnerabilidades críticas identificadas (se houver) → BLOQUEAR deploy
- [ ] Relatório entregue com severidade e plano de ação
- [ ] CCO/Compliance Officer notificado se LGPD/CVM afetados
