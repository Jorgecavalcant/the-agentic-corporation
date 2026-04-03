@echo off
:: =============================================================================
:: JC Super Plugin — Desinstalador (Windows)
:: =============================================================================
:: Uso: Duplo clique em uninstall.bat  OU  execute pelo terminal
::
:: O que faz:
::   Remove todos os agentes do plugin de %USERPROFILE%\.claude\agents\
::   lendo os nomes via campo "name:" do frontmatter de cada agente.
:: =============================================================================

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
"$ErrorActionPreference = 'Stop';" ^
"$installerDir = Split-Path -Parent '%~f0';" ^
"$pluginDir = Split-Path -Parent $installerDir;" ^
"$squadsDir = Join-Path $pluginDir 'squads';" ^
"$targetDir = Join-Path $env:USERPROFILE '.claude\agents';" ^
"" ^
"Write-Host '';" ^
"Write-Host '╔══════════════════════════════════════════════════════════╗' -ForegroundColor Red;" ^
"Write-Host '║        JC SUPER PLUGIN — DESINSTALADOR v1.0.0            ║' -ForegroundColor Red;" ^
"Write-Host '╚══════════════════════════════════════════════════════════╝' -ForegroundColor Red;" ^
"Write-Host '';" ^
"Write-Host \"  Plugin:  $pluginDir\";" ^
"Write-Host \"  Destino: $targetDir\";" ^
"Write-Host '';" ^
"" ^
"if (-not (Test-Path $squadsDir)) {" ^
"  Write-Host \"ERRO: Pasta de squads nao encontrada em $squadsDir\" -ForegroundColor Red;" ^
"  exit 1;" ^
"}" ^
"" ^
"if (-not (Test-Path $targetDir)) {" ^
"  Write-Host 'Pasta de agentes nao existe. Nada a remover.' -ForegroundColor Yellow;" ^
"  exit 0;" ^
"}" ^
"" ^
"Write-Host 'ATENCAO: Esta operacao remover todos os agentes JC de ~/.claude/agents/' -ForegroundColor Yellow;" ^
"Write-Host '';" ^
"$confirm = Read-Host 'Deseja continuar? [s/N]';" ^
"if ($confirm -notmatch '^[sS]$') {" ^
"  Write-Host 'Operacao cancelada.';" ^
"  exit 0;" ^
"}" ^
"Write-Host '';" ^
"" ^
"Write-Host 'Removendo agentes...' -ForegroundColor White;" ^
"Write-Host '';" ^
"" ^
"$total = 0; $removidos = 0; $naoEncontrados = 0;" ^
"$agentFiles = Get-ChildItem -Path $squadsDir -Recurse -Filter '*.md' | Where-Object { $_.DirectoryName -like '*\agents' };" ^
"" ^
"foreach ($file in $agentFiles) {" ^
"  $total++;" ^
"  $content = Get-Content $file.FullName -Encoding UTF8;" ^
"  $nameLine = $content | Where-Object { $_ -match '^name:' } | Select-Object -First 1;" ^
"  if (-not $nameLine) { continue };" ^
"  $agentName = ($nameLine -replace '^name:\s*', '').Trim().Trim('\"');" ^
"  $dest = Join-Path $targetDir \"$agentName.md\";" ^
"  if (Test-Path $dest) {" ^
"    Remove-Item $dest -Force;" ^
"    Write-Host \"  ✗  $agentName removido\" -ForegroundColor Red;" ^
"    $removidos++;" ^
"  } else {" ^
"    Write-Host \"  —  $agentName nao encontrado\" -ForegroundColor Yellow;" ^
"    $naoEncontrados++;" ^
"  }" ^
"}" ^
"" ^
"Write-Host '';" ^
"Write-Host '═══════════════════════════════════════════';" ^
"Write-Host 'Resultado:';" ^
"Write-Host \"  Removidos       : $removidos\" -ForegroundColor Red;" ^
"if ($naoEncontrados -gt 0) { Write-Host \"  Nao encontrados : $naoEncontrados\" -ForegroundColor Yellow };" ^
"Write-Host '';" ^
"if ($removidos -gt 0) {" ^
"  Write-Host \"✅ Desinstalacao concluida! $removidos agente(s) removido(s).\" -ForegroundColor Green;" ^
"} else {" ^
"  Write-Host 'Nenhum agente JC encontrado para remover.' -ForegroundColor Yellow;" ^
"}" ^
"Write-Host '';"

pause
