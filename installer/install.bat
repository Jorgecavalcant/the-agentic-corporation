@echo off
:: =============================================================================
:: JC Super Plugin — Instalador (Windows)
:: =============================================================================
:: Uso:
::   install.bat                 Instala em %USERPROFILE%\.claude\agents\
::   install.bat --antigravity   Instala em %USERPROFILE%\.gemini\antigravity\agents\
::   install.bat --vps           Instala na VPS via SSH (use Git Bash / WSL)
::
:: Observação: para --vps, recomenda-se usar install.sh no Git Bash ou WSL,
:: já que o SSH é mais estável lá. O .bat encaminha para install.sh quando possível.
:: =============================================================================

setlocal

set "TARGET_MODE=local"
if /I "%~1"=="--antigravity" set "TARGET_MODE=antigravity"
if /I "%~1"=="--vps" set "TARGET_MODE=vps"

if "%TARGET_MODE%"=="vps" (
  echo.
  echo Para instalar na VPS via SSH, use o Git Bash ou WSL:
  echo   ./installer/install.sh --vps
  echo.
  exit /b 0
)

if "%TARGET_MODE%"=="antigravity" (
  set "TARGET_PATH=%USERPROFILE%\.gemini\antigravity\agents"
  set "TARGET_LABEL=Antigravity"
) else (
  set "TARGET_PATH=%USERPROFILE%\.claude\agents"
  set "TARGET_LABEL=Claude Code (local)"
)

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"$ErrorActionPreference = 'Stop';" ^
"$installerDir = Split-Path -Parent '%~f0';" ^
"$pluginDir = Split-Path -Parent $installerDir;" ^
"$squadsDir = Join-Path $pluginDir 'squads';" ^
"$targetDir = '%TARGET_PATH%';" ^
"$targetLabel = '%TARGET_LABEL%';" ^
"" ^
"Write-Host '';" ^
"Write-Host '╔══════════════════════════════════════════════════════════╗' -ForegroundColor Cyan;" ^
"Write-Host '║        JC SUPER PLUGIN — INSTALADOR v1.0.0.3             ║' -ForegroundColor Cyan;" ^
"Write-Host '║        github.com/jc-tecnologia/jc-super-plugin         ║' -ForegroundColor Cyan;" ^
"Write-Host '╚══════════════════════════════════════════════════════════╝' -ForegroundColor Cyan;" ^
"Write-Host '';" ^
"Write-Host \"  Plugin:  $pluginDir\";" ^
"Write-Host \"  Destino: $targetDir ($targetLabel)\";" ^
"Write-Host '';" ^
"" ^
"if (-not (Test-Path $squadsDir)) {" ^
"  Write-Host \"ERRO: Pasta de squads nao encontrada em $squadsDir\" -ForegroundColor Red;" ^
"  exit 1;" ^
"}" ^
"" ^
"if (-not (Test-Path $targetDir)) {" ^
"  Write-Host 'Criando pasta de destino...' -ForegroundColor Yellow;" ^
"  New-Item -ItemType Directory -Path $targetDir -Force | Out-Null;" ^
"}" ^
"" ^
"Write-Host 'Instalando agentes...' -ForegroundColor White;" ^
"Write-Host '';" ^
"" ^
"$total = 0; $instalados = 0; $atualizados = 0; $ignorados = 0;" ^
"$nomesInstalados = @{};" ^
"" ^
"$agentFiles = Get-ChildItem -Path $squadsDir -Recurse -Filter '*.md' | Where-Object { $_.DirectoryName -like '*\agents' };" ^
"" ^
"foreach ($file in $agentFiles) {" ^
"  $total++;" ^
"  $content = Get-Content $file.FullName -Encoding UTF8;" ^
"  $nameLine = $content | Where-Object { $_ -match '^name:' } | Select-Object -First 1;" ^
"  if (-not $nameLine) {" ^
"    Write-Host \"  ⚠  $($file.Name) — sem campo 'name:' no frontmatter, ignorado\" -ForegroundColor Yellow;" ^
"    $ignorados++;" ^
"    continue;" ^
"  }" ^
"  $agentName = ($nameLine -replace '^name:\s*', '').Trim().Trim('\"');" ^
"  if ($nomesInstalados.ContainsKey($agentName)) {" ^
"    Write-Host \"  ⚠  $agentName — duplicata detectada, usando o mais recente\" -ForegroundColor Yellow;" ^
"  }" ^
"  $nomesInstalados[$agentName] = $file.Name;" ^
"  $dest = Join-Path $targetDir \"$agentName.md\";" ^
"  if (Test-Path $dest) {" ^
"    Copy-Item $file.FullName $dest -Force;" ^
"    Write-Host \"  ↻  $agentName\" -ForegroundColor Cyan;" ^
"    $atualizados++;" ^
"  } else {" ^
"    Copy-Item $file.FullName $dest -Force;" ^
"    Write-Host \"  ✓  $agentName\" -ForegroundColor Green;" ^
"    $instalados++;" ^
"  }" ^
"}" ^
"" ^
"Write-Host '';" ^
"Write-Host '═══════════════════════════════════════════';" ^
"Write-Host 'Resultado da instalacao:';" ^
"Write-Host \"  Arquivos processados : $total\";" ^
"Write-Host \"  Novos instalados     : $instalados\" -ForegroundColor Green;" ^
"Write-Host \"  Atualizados          : $atualizados\" -ForegroundColor Cyan;" ^
"if ($ignorados -gt 0) { Write-Host \"  Ignorados            : $ignorados\" -ForegroundColor Yellow };" ^
"Write-Host '';" ^
"$totalInstalados = $instalados + $atualizados;" ^
"if ($totalInstalados -gt 0) {" ^
"  Write-Host \"✅ Instalacao concluida! $totalInstalados agente(s) em $targetLabel\" -ForegroundColor Green;" ^
"  Write-Host '';" ^
"  Write-Host '  Para usar, inicie uma nova sessao do Claude Code e chame:';" ^
"  Write-Host '  acionar jc-agent-manager  ou  /jc' -ForegroundColor Cyan;" ^
"} else {" ^
"  Write-Host 'Nenhum agente foi instalado. Verifique a estrutura do plugin.' -ForegroundColor Red;" ^
"  exit 1;" ^
"}" ^
"Write-Host '';"

pause
endlocal
