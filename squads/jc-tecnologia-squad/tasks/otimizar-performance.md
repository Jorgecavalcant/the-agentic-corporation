# Task: Otimizar Performance

**ID:** otimizar-performance
**Squad:** jc-tecnologia-squad
**Agentes:** dba (queries), devops (infra), dev-backend (código)
**Modelo:** sonnet

---

## Objetivo

Diagnosticar e resolver gargalos de performance — query lenta, API com latência alta, consumo excessivo de memória/CPU.

---

## Entradas (inputs)

- Sintoma observado (latência, erro de timeout, CPU alta, OOM)
- Endpoint ou funcionalidade afetada
- Logs e métricas disponíveis

---

## Saídas (outputs)

- Root cause identificado
- Correção implementada
- Benchmark antes/depois documentado
- Monitoramento configurado para evitar regressão

---

## Protocolo de Diagnóstico

```bash
# 1. Verificar recursos do servidor
ssh jorge@46.224.55.18
docker stats --no-stream

# 2. Identificar queries lentas no PostgreSQL
docker exec postgres psql -U postgres -d jc_ecosistema -c "
SELECT query, mean_exec_time, calls
FROM pg_stat_statements
ORDER BY mean_exec_time DESC
LIMIT 10;"

# 3. Verificar indexes ausentes
SELECT schemaname, tablename, attname, n_distinct, correlation
FROM pg_stats
WHERE tablename = '[tabela]';

# 4. Analisar plano de execução
EXPLAIN ANALYZE SELECT ...;

# 5. Redis - verificar hit rate
docker exec redis redis-cli INFO stats | grep hit
```

---

## Critério de conclusão

- [ ] Root cause identificado e documentado
- [ ] Latência p95 dentro do SLA (API: < 500ms, RAG: < 2s)
- [ ] Benchmark antes/depois registrado
- [ ] Índice criado ou cache configurado se necessário
