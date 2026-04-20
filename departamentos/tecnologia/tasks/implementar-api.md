---
name: implementar-api
description: Especialista da empresa.
dept: tecnologia
role: operacional
idioma: pt-BR
empresa: ${COMPANY_NAME:-Empresa IA}
---
# Task: Implementar Endpoint de API

**ID:** implementar-api
**departamento:** empresa-ia-departamento
**Agentes:** dev-backend (principal), dev-frontend (integração)
**Modelo:** sonnet

---

## Objetivo

Implementar um endpoint REST no FastAPI (backend) com validação, autenticação JWT, tratamento de erros e testes, seguindo os padrões JC.

---

## Entradas (inputs)

- Especificação do endpoint (método, path, payload, resposta esperada)
- Arquitetura definida (output de arquitetura-feature)
- Produto/ambiente alvo

---

## Saídas (outputs)

- Endpoint implementado e funcionando
- Validação de input (Pydantic)
- Autenticação JWT ativa
- Tratamento de erros com mensagens humanizadas
- Testes unitários e de integração
- Documentação automática (FastAPI /docs atualizado)

---

## Passos

1. **Criar modelo Pydantic** — Request e Response schemas com validação
2. **Implementar a rota** — Decorator, função, injeção de dependência
3. **Autenticação** — Verificar JWT, extrair user_id, validar permissões
4. **Lógica de negócio** — Separar em service layer, não misturar com a rota
5. **Query no banco** — Usar SQLAlchemy, nunca SQL raw sem parâmetros
6. **Tratamento de erros** — HTTPException com mensagens em português
7. **Testes** — pytest: happy path + erro de autenticação + input inválido
8. **Smoke test** — Testar manualmente via curl ou Insomnia

---

## Padrão de resposta JC

```json
{
  "success": true,
  "data": { ... },
  "error": null,
  "meta": { "timestamp": "..." }
}
```

## Critério de conclusão

- [ ] Endpoint retorna 200 para happy path
- [ ] Retorna 401 para JWT inválido/ausente
- [ ] Retorna 422 para input inválido (com mensagem clara)
- [ ] Testes passando
- [ ] Nenhum dado pessoal em logs

## 📚 BASE DE CONHECIMENTO & RAG
Como parte do ecossistema da Empresa 100% IA, você **NÃO atua no escuro**.
- Sempre que receber uma query, **antes de inferir a resposta**, procure no diretório do projeto local usando suas ferramentas de leitura.
