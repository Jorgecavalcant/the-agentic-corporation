# Task: Construir Pipeline de RAG

**ID:** construir-pipeline-rag
**Squad:** jc-tecnologia-squad
**Agente responsável:** ia-engineer
**Modelo:** sonnet

---

## Objetivo

Construir ou otimizar um pipeline de RAG (Retrieval-Augmented Generation) usando pgvector e embeddings, para os agentes do Método Planejar.

---

## Entradas (inputs)

- Fonte de dados a indexar (tipo: texto, PDFs, transcrições)
- Caso de uso do agente que vai usar o RAG
- Modelo de embedding a usar

---

## Saídas (outputs)

- Chunks criados e indexados no pgvector
- Função de busca semântica implementada
- Pipeline de ingestão documentado
- Métricas de qualidade (relevância, latência)

---

## Arquitetura RAG JC (referência F8)

```
INGESTÃO:
  Fonte → Pré-processamento → Chunking (200-400 tokens, 20% overlap)
  → Embedding (Sentence-BERT 384 dims) → pgvector (HNSW index)

RETRIEVAL:
  Query do usuário → Embedding da query
  → cosine_similarity search (top-k=5)
  → Re-ranking (se necessário)
  → Context assembly

GERAÇÃO:
  Context + Query → Claude (com system prompt da câmara)
  → Resposta validada pelo DNA Cerbasi
  → Webhook /cerbasi-revisar (score >= 70 obrigatório)
```

---

## Critério de conclusão

- [ ] Chunks criados com chunking strategy correta
- [ ] Index HNSW criado no pgvector (lists=100 ou ef_construction=64)
- [ ] Busca semântica retornando resultados relevantes
- [ ] Latência de retrieval < 500ms (p95)
- [ ] Pipeline de ingestão documentado para re-execução
