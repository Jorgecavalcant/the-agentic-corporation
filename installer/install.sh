# THE AGENTIC CORPORATION — Instalador (Unix / macOS)
# =============================================================================
# Uso:
#   chmod +x install.sh
#   ./install.sh                      # Instala localmente em ~/.claude/agents/
#   ./install.sh --antigravity        # Instala em ~/.gemini/antigravity/agents/
#   ./install.sh --vps                # Instala na VPS via SSH (@)
#   ./install.sh --vps --host user@ip # Instala em VPS customizada
#
# O que faz:
#   Copia todos os agentes dos departamentos para o destino escolhido,
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

# ── Strip de BOM e Injeção de Identidade ──────────────────────────────────
strip_bom_and_inject() {
  local file="$1"
  # Strip BOM
  if [ "$(head -c 3 "$file" | od -An -tx1 | tr -d ' \n')" = "efbbbf" ]; then
    tail -c +4 "$file" > "${file}.tmp" && mv "${file}.tmp" "$file"
  fi

  # Injeção de Identidade (Substituir ${VAR} ou ${VAR:-Default})
  # Usamos sed para trocar os placeholders pelos valores do .env carregado
  local company="${COMPANY_NAME:-Empresa IA}"
  local ceo="${CEO_NAME:-CEO}"
  local vps="${VPS_HOST:-user@ip}"
  local trigger="${ORCHESTRATOR_TRIGGER:-agent-manager}"

  # Escapar barras para o sed
  company=$(echo "$company" | sed 's/\//\\\//g')
  ceo=$(echo "$ceo" | sed 's/\//\\\//g')
  vps=$(echo "$vps" | sed 's/\//\\\//g')
  trigger=$(echo "$trigger" | sed 's/\//\\\//g')

  # Substituição global em cada arquivo
  sed -i "s/\${COMPANY_NAME\(:-[^}]*\)\?}/$company/g" "$file"
  sed -i "s/\${CEO_NAME\(:-[^}]*\)\?}/$ceo/g" "$file"
  sed -i "s/\${VPS_HOST\(:-[^}]*\)\?}/$vps/g" "$file"
  sed -i "s/\${ORCHESTRATOR_TRIGGER\(:-[^}]*\)\?}/$trigger/g" "$file"
}

# ── Carregar Configurações (.env) ──────────────────────────────────────────
# Prioridade: .env na raiz do projeto ou .env na pasta do instalador
ENV_FILE=""
if [ -f "$PLUGIN_DIR/.env" ]; then
  ENV_FILE="$PLUGIN_DIR/.env"
elif [ -f "$SCRIPT_DIR/../.env" ]; then
  ENV_FILE="$SCRIPT_DIR/../.env"
fi

if [ -n "$ENV_FILE" ]; then
  set -a
  source "$ENV_FILE"
  set +a
fi

# ── Argumentos ─────────────────────────────────────────────────────────────
TARGET_MODE="local"
# VPS_HOST agora vem do .env ou via parâmetro --host
VPS_HOST="${VPS_HOST:-user@vps_nao_configurada}"

while [[ $# -gt 0 ]]; do
  case "$1" in
    --vps)
      TARGET_MODE="vps"
      shift
      ;;
    --antigravity)
      TARGET_MODE="antigravity"
      shift
      ;;
    --host)
      VPS_HOST="$2"
      shift 2
      ;;
    -h|--help)
      echo "Uso: $0 [--vps | --antigravity] [--host user@ip]"
      echo ""
      echo "  (sem flag)      Instala em ~/.claude/agents/"
      echo "  --antigravity   Instala em ~/.gemini/antigravity/agents/"
      echo "  --vps           Instala na VPS via SSH ($VPS_HOST)"
      echo "  --host X        Customiza host SSH (use com --vps)"
      exit 0
      ;;
    *)
      echo -e "${RED}Flag desconhecida: $1${RESET}"
      echo "Use --help para ver opções."
      exit 1
      ;;
  esac
done

# ── Caminhos ───────────────────────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PLUGIN_DIR="$(dirname "$SCRIPT_DIR")"
DEPARTAMENTOS_DIR="$PLUGIN_DIR/departamentos"

case "$TARGET_MODE" in
  local)
    TARGET_DIR="$HOME/.claude/agents"
    DESTINO_LABEL="$TARGET_DIR (local)"
    ;;
  antigravity)
    TARGET_DIR="$HOME/.gemini/antigravity/agents"
    DESTINO_LABEL="$TARGET_DIR (Antigravity)"
    ;;
  vps)
    TARGET_DIR="~/.claude/agents"
    DESTINO_LABEL="$VPS_HOST:$TARGET_DIR (VPS via SSH)"
    ;;
esac

# ── Cabeçalho ──────────────────────────────────────────────────────────────
echo ""
echo -e "${CYAN}${BOLD}============================================================${RESET}"
echo -e "${CYAN}${BOLD}      THE AGENTIC CORPORATION - INSTALADOR v1.0.0.0         ${RESET}"
echo -e "${CYAN}${BOLD}      github.com/empresa-ia/the-agentic-corporation         ${RESET}"
echo -e "${CYAN}${BOLD}============================================================${RESET}"
echo ""
echo -e "  Plugin:  ${BOLD}$PLUGIN_DIR${RESET}"
echo -e "  Destino: ${BOLD}$DESTINO_LABEL${RESET}"
echo -e "  Modo:    ${BOLD}$TARGET_MODE${RESET}"
echo ""

# ── Verificações ───────────────────────────────────────────────────────────
if [ ! -d "$DEPARTAMENTOS_DIR" ]; then
  echo -e "${RED}ERRO: Pasta de departamentos não encontrada em $DEPARTAMENTOS_DIR${RESET}"
  exit 1
fi

# ── Preparar destino ───────────────────────────────────────────────────────
if [ "$TARGET_MODE" = "vps" ]; then
  # Testar conexão SSH
  echo -e "${YELLOW}Testando conexão SSH com $VPS_HOST ...${RESET}"
  if ! ssh -o ConnectTimeout=10 -o BatchMode=no "$VPS_HOST" "echo ok" >/dev/null 2>&1; then
    echo -e "${RED}ERRO: Não foi possível conectar em $VPS_HOST via SSH.${RESET}"
    echo -e "${YELLOW}Verifique sua chave SSH, rede e se o host está correto.${RESET}"
    exit 1
  fi
  # Criar pasta remota
  ssh "$VPS_HOST" "mkdir -p ~/.claude/agents"
  echo -e "${GREEN}Conexão OK, pasta remota pronta.${RESET}"
  echo ""
else
  # Criar pasta local se não existir
  if [ ! -d "$TARGET_DIR" ]; then
    echo -e "${YELLOW}Criando pasta $TARGET_DIR ...${RESET}"
    mkdir -p "$TARGET_DIR"
  fi
fi

# ── Instalação ─────────────────────────────────────────────────────────────
echo -e "${BOLD}Instalando agentes...${RESET}"
echo ""

TOTAL=0
INSTALADOS=0
ATUALIZADOS=0
IGNORADOS=0
declare -A NOMES_INSTALADOS

# Pasta temporária para preparar arquivos antes do upload (modo vps)
TMP_STAGE=""
if [ "$TARGET_MODE" = "vps" ]; then
  TMP_STAGE="$(mktemp -d)"
  trap 'rm -rf "$TMP_STAGE"' EXIT
fi

for AGENT_FILE in "$DEPARTAMENTOS_DIR"/*/agents/*.md; do
  [ -f "$AGENT_FILE" ] || continue
  TOTAL=$((TOTAL + 1))

  # Extrair name: do frontmatter (primeira ocorrência)
  AGENT_NAME=$(grep -m1 '^name:' "$AGENT_FILE" | sed 's/^name:[[:space:]]*//' | tr -d '"' | xargs)

  if [ -z "$AGENT_NAME" ]; then
    echo -e "  ${YELLOW}⚠  $(basename "$AGENT_FILE") — sem campo 'name:' no frontmatter, ignorado${RESET}"
    IGNORADOS=$((IGNORADOS + 1))
    continue
  fi

  # Detectar duplicata
  if [ -n "${NOMES_INSTALADOS[$AGENT_NAME]+x}" ]; then
    echo -e "  ${YELLOW}⚠  $AGENT_NAME — duplicata detectada (${NOMES_INSTALADOS[$AGENT_NAME]} vs $(basename "$AGENT_FILE")), usando o mais recente${RESET}"
  fi
  NOMES_INSTALADOS[$AGENT_NAME]="$(basename "$AGENT_FILE")"

  if [ "$TARGET_MODE" = "vps" ]; then
    # Copia com nome correto para a staging area e remove BOM
    cp "$AGENT_FILE" "$TMP_STAGE/$AGENT_NAME.md"
    strip_bom_and_inject "$TMP_STAGE/$AGENT_NAME.md"
    echo -e "  ${GREEN}✓  $AGENT_NAME (preparado)${RESET}"
    INSTALADOS=$((INSTALADOS + 1))
  else
    # Instalação local
    DEST="$TARGET_DIR/$AGENT_NAME.md"
    if [ -f "$DEST" ]; then
      cp "$AGENT_FILE" "$DEST"
      strip_bom_and_inject "$DEST"
      echo -e "  ${CYAN}↻  $AGENT_NAME${RESET}"
      ATUALIZADOS=$((ATUALIZADOS + 1))
    else
      cp "$AGENT_FILE" "$DEST"
      strip_bom_and_inject "$DEST"
      echo -e "  ${GREEN}✓  $AGENT_NAME${RESET}"
      INSTALADOS=$((INSTALADOS + 1))
    fi
  fi
done

# ── Upload para VPS (se modo vps) ──────────────────────────────────────────
if [ "$TARGET_MODE" = "vps" ] && [ -n "$TMP_STAGE" ]; then
  echo ""
  echo -e "${YELLOW}Enviando arquivos para $VPS_HOST via SCP ...${RESET}"
  if scp -q "$TMP_STAGE"/*.md "$VPS_HOST:~/.claude/agents/"; then
    echo -e "${GREEN}✅ Upload concluído.${RESET}"
  else
    echo -e "${RED}ERRO: Falha no upload via SCP.${RESET}"
    exit 1
  fi
fi

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
  echo -e "${GREEN}${BOLD}✅ Instalação concluída! $TOTAL_INSTALADOS agente(s) disponível(is) em:${RESET}"
  echo -e "   ${BOLD}$DESTINO_LABEL${RESET}"
  echo ""
  echo -e "  Para usar, inicie uma nova sessão do Claude Code e chame:"
  echo -e "  ${CYAN}\"acionar agent-manager\"${RESET}  ou  ${CYAN}\"/jc\"${RESET}"
else
  echo -e "${RED}Nenhum agente foi instalado. Verifique a estrutura do plugin.${RESET}"
  exit 1
fi

echo ""
