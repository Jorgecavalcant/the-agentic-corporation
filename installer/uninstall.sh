#!/usr/bin/env bash
# =============================================================================
# JC Super Plugin — Desinstalador (Unix / macOS / Git Bash no Windows)
# =============================================================================
# Uso:
#   chmod +x uninstall.sh
#   ./uninstall.sh
#
# O que faz:
#   Remove todos os agentes do plugin de ~/.claude/agents/
#   lendo os nomes via campo "name:" do frontmatter de cada agente.
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
echo -e "${RED}${BOLD}╔══════════════════════════════════════════════════════════╗${RESET}"
echo -e "${RED}${BOLD}║        JC SUPER PLUGIN — DESINSTALADOR v1.0.0            ║${RESET}"
echo -e "${RED}${BOLD}╚══════════════════════════════════════════════════════════╝${RESET}"
echo ""
echo -e "  Plugin:  ${BOLD}$PLUGIN_DIR${RESET}"
echo -e "  Destino: ${BOLD}$TARGET_DIR${RESET}"
echo ""

# ── Verificações ───────────────────────────────────────────────────────────
if [ ! -d "$SQUADS_DIR" ]; then
  echo -e "${RED}ERRO: Pasta de squads não encontrada em $SQUADS_DIR${RESET}"
  exit 1
fi

if [ ! -d "$TARGET_DIR" ]; then
  echo -e "${YELLOW}Pasta $TARGET_DIR não existe. Nada a remover.${RESET}"
  exit 0
fi

# ── Confirmação ────────────────────────────────────────────────────────────
echo -e "${YELLOW}${BOLD}ATENÇÃO: Esta operação removerá todos os agentes JC de ~/.claude/agents/${RESET}"
echo ""
read -r -p "Deseja continuar? [s/N] " CONFIRM
if [[ ! "$CONFIRM" =~ ^[sS]$ ]]; then
  echo ""
  echo "Operação cancelada."
  exit 0
fi
echo ""

# ── Remoção ────────────────────────────────────────────────────────────────
echo -e "${BOLD}Removendo agentes...${RESET}"
echo ""

TOTAL=0
REMOVIDOS=0
NAO_ENCONTRADOS=0

for AGENT_FILE in "$SQUADS_DIR"/*/agents/*.md; do
  [ -f "$AGENT_FILE" ] || continue
  TOTAL=$((TOTAL + 1))

  AGENT_NAME=$(grep -m1 '^name:' "$AGENT_FILE" | sed 's/^name:[[:space:]]*//' | tr -d '"' | xargs)

  if [ -z "$AGENT_NAME" ]; then
    continue
  fi

  DEST="$TARGET_DIR/$AGENT_NAME.md"

  if [ -f "$DEST" ]; then
    rm "$DEST"
    echo -e "  ${RED}✗  $AGENT_NAME removido${RESET}"
    REMOVIDOS=$((REMOVIDOS + 1))
  else
    echo -e "  ${YELLOW}—  $AGENT_NAME não encontrado em ~/.claude/agents/${RESET}"
    NAO_ENCONTRADOS=$((NAO_ENCONTRADOS + 1))
  fi
done

# ── Resumo ─────────────────────────────────────────────────────────────────
echo ""
echo -e "${BOLD}═══════════════════════════════════════════${RESET}"
echo -e "${BOLD}Resultado:${RESET}"
echo -e "  ${RED}Removidos        : $REMOVIDOS${RESET}"
[ "$NAO_ENCONTRADOS" -gt 0 ] && echo -e "  ${YELLOW}Não encontrados  : $NAO_ENCONTRADOS${RESET}"
echo ""

if [ "$REMOVIDOS" -gt 0 ]; then
  echo -e "${GREEN}${BOLD}✅ Desinstalação concluída! $REMOVIDOS agente(s) removido(s).${RESET}"
else
  echo -e "${YELLOW}Nenhum agente JC encontrado para remover.${RESET}"
fi

echo ""
