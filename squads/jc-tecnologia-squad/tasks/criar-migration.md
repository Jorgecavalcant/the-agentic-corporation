# Task: Criar Migration PostgreSQL

**ID:** criar-migration
**Squad:** jc-tecnologia-squad
**Agente responsável:** dba
**Modelo:** sonnet

---

## Objetivo

Criar migration Alembic para alterações no banco de dados PostgreSQL, garantindo que seja reversível, segura e testada antes de ir para produção.

---

## Entradas (inputs)

- Descrição da alteração (nova tabela, coluna, index, constraint)
- Schema atual da tabela afetada (se alteração)
- Produto/banco alvo (jc_ecosistema, agrocredit, fiado_pro)

---

## Saídas (outputs)

- Arquivo de migration Alembic (upgrade + downgrade)
- Index criado se necessário (especialmente para colunas de busca)
- RLS habilitado se tabela contém dados pessoais
- Teste de rollback validado em staging

---

## Passos

1. **Analisar a alteração** — O que muda? Afeta dados existentes?
2. **Criar migration** — `alembic revision --autogenerate -m "descrição"`
3. **Revisar o arquivo gerado** — Autogenerate pode errar; revisar manualmente
4. **Adicionar função upgrade** — ALTER TABLE, CREATE TABLE, CREATE INDEX
5. **Adicionar função downgrade** — Sempre reversível (DROP, ALTER reverso)
6. **Verificar RLS** — Tabela com dados pessoais? Habilitar Row Level Security
7. **Testar em staging** — Rodar upgrade e downgrade sem dados perdidos
8. **Documentar** — Comentário no arquivo explicando o porquê da mudança

---

## Regras obrigatórias

```sql
-- NUNCA fazer em produção sem staging primeiro:
ALTER TABLE x DROP COLUMN y;  -- perde dados
DROP TABLE x;                  -- perde dados
ALTER TABLE x ALTER COLUMN y TYPE z;  -- pode travar tabela grande

-- SEMPRE preferir:
-- 1. ADD COLUMN com DEFAULT (não bloqueia)
-- 2. Backfill em batch separado
-- 3. DROP COLUMN em migration separada depois
```

## Critério de conclusão

- [ ] Migration rodou sem erros em staging
- [ ] Downgrade também testado (rollback funciona)
- [ ] Indexes criados para colunas usadas em WHERE/JOIN
- [ ] RLS habilitado se tabela tem dados de usuário
