# Checklist de Qualidade de Código

**Squad:** jc-tecnologia-squad
**Quando usar:** Em code reviews e ao concluir implementação de feature

---

## 📐 Estrutura e Organização
- [ ] Funções com responsabilidade única (idealmente < 50 linhas)
- [ ] Arquivo com foco definido (< 400 linhas como guia)
- [ ] Nenhum aninhamento profundo (máx. 4 níveis de if/for)
- [ ] Service layer separado da camada de rota (FastAPI)
- [ ] Repository pattern para acesso ao banco
- [ ] Nenhuma dependência circular entre módulos

## 📝 Nomenclatura
- [ ] Nome de variável/função descreve o que é/faz (em inglês)
- [ ] Sem abreviações obscuras (`usr_id` → `user_id`, `calc_fn` → `calculate_discount`)
- [ ] Constantes em UPPER_SNAKE_CASE
- [ ] Classes em PascalCase, funções/variáveis em snake_case (Python) ou camelCase (JS/TS)

## ⚠️ Tratamento de Erros
- [ ] Erros tratados explicitamente (sem `except: pass` vazio)
- [ ] Mensagens de erro para o usuário em português e humanizadas
- [ ] Erros de servidor logados com contexto (mas sem dados pessoais)
- [ ] Nenhum `console.log` de debug esquecido no código

## 🧪 Testes
- [ ] Happy path coberto
- [ ] Principal caso de erro coberto
- [ ] Cobertura ≥ 80% no código novo
- [ ] Sem mock de banco em testes de integração (usar banco real de teste)
- [ ] Dados de teste não usam dados pessoais reais

## 🔄 Imutabilidade e Efeitos Colaterais
- [ ] Funções puras onde possível (mesma entrada → mesma saída)
- [ ] Estado mutado explicitamente (não por efeito colateral oculto)
- [ ] Nenhuma variável global modificada dentro de função

## 📚 Legibilidade
- [ ] Comentário onde a lógica não é óbvia
- [ ] Sem código comentado (deletar ou criar ticket)
- [ ] Magic numbers substituídos por constantes nomeadas
- [ ] TODO/FIXME comentados têm ticket vinculado

---

## Nota sobre revisão
Um PR que passa neste checklist tem alta probabilidade de:
- Passar em produção sem bugs silenciosos
- Ser mantido com facilidade em 6 meses
- Não criar dívida técnica desnecessária
