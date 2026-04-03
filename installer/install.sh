#!/usr/bin/env bash
# =============================================================================
# JC Super Plugin — Instalador (Unix / macOS / Git Bash no Windows)
# =============================================================================
# Uso:
#   chmod +x install.sh
#   ./install.sh
#
# O que faz:
#   Copia todos os agentes dos squads para ~/.claude/agents/
#   usando o campo "name:" do frontmatter como nome do arquivo destino.
# =============================================================================

set -euo pipefail

# ── Cores ──────────────────────────────────────────────────────────────────
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
BOLD='\033[1m'
RESET='\033[0m'

# ── Caminhos ───────────────────────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLUGIN_DIR="$(dirname "$SCRIPT_DIR")"
SQUADS_DIR="$PLUGIN_DIR/squads"
TARGET_DIR="$HOME/.claude/agents"

# ── Cabeçalho ──────────────────────────────────────────────────────────────
echo ""
echo -e "${CYAN}${BOLD}╔══════════════════════════════════════════════════════════╗${RESET}"
echo -e "${CYAN}${BOLD}║        JC SUPER PLUGIN — INSTALADOR v1.0.0.1               ║${RESET}"
echo -e "${CYAN}${BOLD}║        github.com/jc-tecnologia/jc-super-plugin         ║${RESET}"
echo -e "${CYAN}${BOLD}╚══════════════════════════════════════════════════════════╝${RESET}"
echo ""
echo -e "  Plugin:  ${BOLD}$PLUGIN_DIR${RESET}"
echo -e "  Destino: ${BOLD}$TARGET_DIR${RESET}"
echo ""

# ── Verificações ───────────────────────────────────────────────────────────
if [ ! -d "$SQUADS_DIR" ]; then
  echo -e "${RED}ERRO: Pasta de squads não encontrada em $SQUADS_DIR${RESET}"
  exit 1
fi

# Criar pasta de agentes se não existir
if [ ! -d "$TARGET_DIR" ]; then
  echo -e "${YELLOW}Criando pasta $TARGET_DIR ...${RESET}"
  mkdir -p "$TARGET_DIR"
fi

# ── Instalação ─────────────────────────────────────────────────────────────
echo -e "${BOLD}Instalando agentes...${RESET}"
echo ""

TOTAL=0
INSTALADOS=0
ATUALIZADOS=0
IGNORADOS=0
declare -A NOMES_INSTALADOS

for AGENT_FILE in "$SQUADS_DIR"/*/agents/*.md; do
  [ -f "$AGENT_FILE" ] || continue
  TOTAL=$((TOTAL + 1))

  # Extrair name: do frontmatter (primeira ocorrência)
  AGENT_NAME=$(grep -m1 '^name:' "$AGENT_FILE" | sed 's/^name:[[:space:]]*//' | tr -d '"' | xargs)

  if [ -z "$AGENT_NAME" ]; then
    echo -e "  ${YELLOW}⚠  $(basename "$AGENT_FILE") — sem campo 'name:' no frontmatter, ignorado${RESET}"
    IGNORADOS=$((IGNORADOS + 1))
    continue
  fi

  DEST="$TARGET_DIR/$AGENT_NAME.md"

  # Detectar duplicata (mesmo nome, arquivo diferente)
  if [ -n "${NOMES_INSTALADOS[$AGENT_NAME]+x}" ]; then
    echo -e "  ${YELLOW}⚠  $AGENT_NAME — duplicata detectada (${NOMES_INSTALADOS[$AGENT_NAME]} vs $(basename "$AGENT_FILE")), usando o mais recente${RESET}"
  fi

  NOMES_INSTALADOS[$AGENT_NAME]="$(basename "$AGENT_FILE")"

  # Verificar se já existe (atualização vs instalação nova)
  if [ -f "$DEST" ]; then
    cp "$AGENT_FILE" "$DEST"
    echo -e "  ${CYAN}↻  $AGENT_NAME${RESET}"
    ATUALIZADOS=$((ATUALIZADOS + 1))
  else
    cp "$AGENT_FILE" "$DEST"
    echo -e "  ${GREEN}✓  $AGENT_NAME${RESET}"
    INSTALADOS=$((INSTALADOS + 1))
  fi
done

# ── Resumo ─────────────────────────────────────────────────────────────────
echo ""
echo -e "${BOLD}═══════════════════════════════════════════${RESET}"
echo -e "${BOLD}Resultado da instalação:${RESET}"
echo -e "  Arquivos processados : $TOTAL"
echo -e "  ${GREEN}Novos instalados     : $INSTALADOS${RESET}"
echo -e "  ${CYAN}Atualizados          : $ATUALIZADOS${RESET}"
[ "$IGNORADOS" -gt 0 ] && echo -e "  ${YELLOW}Ignorados            : $IGNORADOS${RESET}"
echo ""

TOTAL_INSTALADOS=$((INSTALADOS + ATUALIZADOS))
if [ "$TOTAL_INSTALADOS" -gt 0 ]; then
  echo -e "${GREEN}${BOLD}✅ Instalação concluída! $TOTAL_INSTALADOS agente(s) disponível(is) em ~/.claude/agents/${RESET}"
  echo ""
  echo -e "  Para usar, inicie uma nova sessão do Claude Code e chame:"
  echo -e "  ${CYAN}\"acionar jc-agent-manager\"${RESET}  ou  ${CYAN}\"/jc\"${RESET}"
else
  echo -e "${RED}Nenhum agente foi instalado. Verifique a estrutura do plugin.${RESET}"
  exit 1
fi

echo ""
