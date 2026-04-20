# Instalador — The Agentic Corporation

Este instalador gerencia os agentes do ecossistema inteligente, copiando-os de forma automática para `~/.claude/agents/` ou `~/.gemini/antigravity/agents/`.

---

## Como instalar

### Pré-requisitos
Certifique-se de ter configurado o seu arquivo `.env` na raiz do projeto ou na pasta do instalador, seguindo o modelo providenciado em `.env.example`.

### Windows (recomendado)

Dê duplo clique em **`install.bat`**

Ou pelo terminal:
```
install.bat
```

*(Se quiser testar a flag para antigravity ou vps, rode via terminal: `install.bat --antigravity`)*

### macOS / Linux / Git Bash

```bash
chmod +x install.sh
./install.sh
```

---

## Como desinstalar

### Windows

Dê duplo clique em **`uninstall.bat`**

### macOS / Linux / Git Bash

```bash
chmod +x uninstall.sh
./uninstall.sh
```

---

## O que é instalado

A arquitetura atual (v2.0.0) reflete uma empresa corporativa completa contendo 96+ agentes organizados em 9 departamentos funcionais (Estratégia, Tecnologia, Marketing, Vendas/Negociação, Produto, Finanças, Pessoas, Operações, Jurídico).

O **Manifesto Oficial** detalhado com cada agente pode ser encontrado no arquivo `manifest.json`.

**Destacamos a porta de entrada:**
- `agent-manager`: O Orquestrador Master capaz de triar, escalar e processar demandas usando a estratégia de Roteamento Dinâmico pelos Departamentos.

---

## Após a instalação

Abra uma nova sessão do **Claude Code** (ou **Antigravity**) e diga:

```
acionar agent-manager
```

Ou use o alias configurado no seu ambiente (ex: `/jc`).
O orquestrador central identificará sua demanda e acionará o departamento e o agente corporativo correto de forma autônoma.

---

## Atualização

Para atualizar as instruções de todos os agentes após editar a base de conhecimento ou os prompts no modo White-Label, basta rodar o instalador novamente. Os arquivos existentes serão sobrescritos com segurança (e o BOM format será removido).

---

## Arquivos deste instalador

| Arquivo | Descrição |
|---------|-----------|
| `install.sh` | Instalador para macOS, Linux e Git Bash |
| `install.bat` | Instalador para Windows |
| `uninstall.sh` | Desinstalador para macOS, Linux e Git Bash |
| `uninstall.bat` | Desinstalador para Windows |
| `manifest.json` | Manifesto completo do plugin |
| `README.md` | Este arquivo de instruções |
