# 🧊 Protocolo de Otimização Semântica (TOKEN-OPTIMIZER)

Este protocolo define como o **Gemini 3 Flash** deve processar documentos para gerar versões `.min.md` otimizadas para consumo por outras IAs.

## 🎯 Objetivo
Reduzir o consumo de tokens em pelo menos 30% (mantendo ~70% do original), sem perder nenhum dado técnico, funcional ou estrutural.

## 🛠️ Regras de Compressão (Diretrizes para a IA)

1. **Preservação de Identificadores:**
   - IDs de Requisitos (RF01, RNF02, etc.) devem ser mantidos intactos.
   - Caminhos de arquivos e URLs devem ser preservados.

2. **Destilação Semântica:**
   - Remova palavras de ligação irrelevantes ("encher linguiça").
   - Substitua frases longas por termos técnicos densos.
   - Exemplo: "O sistema deve obrigatoriamente ler as configurações de um arquivo..." -> "RF: Leitura obrigatória de configuração via arquivo..."

3. **Limpeza de Markdown:**
   - Remova decorações excessivas (negritos e itálicos desnecessários).
   - Converta tabelas complexas para listas chave-valor se economizar tokens.
   - Colapse múltiplas linhas em branco.

4. **Sugestão de Ponto Ideal (Rate):**
   - A IA deve analisar o texto e sugerir se o target de 70% é o ideal ou se uma compressão maior (ex: 50%) é possível sem perda de contexto técnico.

## 📋 Fluxo de Execução
1. Finalização da edição do arquivo original.
2. Acionamento do **Agente Revisor**.
3. Verificação: "Deseja realizar mais alterações ou proceder para a otimização?".
4. IA sugere o "Ponto Ideal".
5. Geração do `.min.md` após aprovação do 👑 CEO .

## ⚠️ VPS
- Arquivos na VPS devem ser **prioritariamente** as versões `.min.md` para maximizar a economia em ambientes produtivos de alto tráfego.
