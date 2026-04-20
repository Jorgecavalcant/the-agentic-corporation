param(
    [string]$TargetMode = "local",
    [string]$HostVps = "user@vps_nao_configurada"
)

$ErrorActionPreference = "Stop"
$installerDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$pluginDir = Split-Path -Parent $installerDir
$departamentosDir = Join-Path $pluginDir "departamentos"

if ($TargetMode -eq "vps") {
    Write-Host "Para instalar na VPS via SSH, use o Git Bash ou WSL:" -ForegroundColor Yellow
    Write-Host "  ./installer/install.sh --vps"
    exit 0
}

if ($TargetMode -eq "antigravity") {
    $targetDir = Join-Path $env:USERPROFILE ".gemini\antigravity\agents"
    $targetLabel = "Antigravity"
} else {
    $targetDir = Join-Path $env:USERPROFILE ".claude\agents"
    $targetLabel = "Claude Code (local)"
}

$envFile = Join-Path $pluginDir ".env"
if (Test-Path $envFile) {
    Get-Content $envFile | Where-Object { $_ -match "=" -and $_ -notmatch "^#" } | ForEach-Object {
        $name, $value = $_ -split "=", 2
        [Environment]::SetEnvironmentVariable($name.Trim(), $value.Trim(), "Process")
    }
}

Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "      THE AGENTIC CORPORATION - INSTALADOR v1.0.0.0         " -ForegroundColor Cyan
Write-Host "============================================================" -ForegroundColor Cyan
Write-Host "  Plugin:  $pluginDir"
Write-Host "  Destino: $targetDir ($targetLabel)"

if (-not (Test-Path $departamentosDir)) {
    Write-Host "ERRO: Pasta de departamentos nao encontrada em $departamentosDir" -ForegroundColor Red
    exit 1
}

if (-not (Test-Path $targetDir)) {
    Write-Host "Criando pasta de destino..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
}

Write-Host "Instalando agentes corporativos..." -ForegroundColor White

$total = 0
$instalados = 0
$atualizados = 0
$ignorados = 0
$nomesInstalados = @{}

$agentFiles = Get-ChildItem -Path $departamentosDir -Recurse -Filter "*.md" | Where-Object { $_.DirectoryName -like "*\agents" }

foreach ($file in $agentFiles) {
    $total++
    $contentArray = Get-Content $file.FullName -Encoding UTF8
    
    $nameLine = $null
    foreach ($line in $contentArray) {
        if ($line -match "^name:") {
            $nameLine = $line
            break
        }
    }
    
    if (-not $nameLine) {
        Write-Host "  [!] ignorado (sem name)" -ForegroundColor Yellow
        $ignorados++
        continue
    }
    
    $agentName = $nameLine.Replace("name:", "")
    $agentName = $agentName.Trim()
    $agentName = $agentName -replace '"', ""
    $agentName = $agentName -replace "'", ""
    
    if ($nomesInstalados.ContainsKey($agentName)) {
        Write-Host "  [!]  duplicata detectada: $agentName" -ForegroundColor Yellow
    }
    $nomesInstalados[$agentName] = $file.Name
    
    $dest = Join-Path $targetDir "$agentName.md"
    
    if (Test-Path $dest) {
        $atualizados++
        $symbol = "[R]"
        $color = "Cyan"
    } else {
        $instalados++
        $symbol = "[V]"
        $color = "Green"
    }
    
    $fileContent = Get-Content $file.FullName -Raw -Encoding UTF8
    
    # Injeção de Identidade: Substituir ${VAR} ou ${VAR:-Default} pelos valores do .env
    $envVars = [System.Collections.IDictionary]([Environment]::GetEnvironmentVariables("Process"))
    foreach ($key in $envVars.Keys) {
        if ($key -match "^(COMPANY_NAME|CEO_NAME|VPS_HOST|ORCHESTRATOR_TRIGGER)$") {
            $val = $envVars[$key]
            # Replace pattern ${VAR} and ${VAR:-Default}
            $pattern = '\$\{' + $key + '(?::-[^}]*)?\}'
            $fileContent = [regex]::Replace($fileContent, $pattern, $val)
        }
    }

    # Salva o conteúdo processado (com os dados reais) no destino
    [IO.File]::WriteAllText($dest, $fileContent, (New-Object System.Text.UTF8Encoding($false)))

    # Remove BOM se presente (via bytes para garantir limpeza total)
    $raw = [IO.File]::ReadAllBytes($dest)
    if ($raw.Count -ge 3 -and $raw[0] -eq 239 -and $raw[1] -eq 187 -and $raw[2] -eq 191) {
        $newLen = $raw.Count - 3
        $newArr = New-Object byte[] $newLen
        [Array]::Copy($raw, 3, $newArr, 0, $newLen)
        [IO.File]::WriteAllBytes($dest, $newArr)
    }
    
    Write-Host "  $symbol  $agentName" -ForegroundColor $color
}

Write-Host "?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????"
Write-Host "Resultado da instalacao:"
Write-Host "  Arquivos processados : $total"
Write-Host "  Novos instalados     : $instalados" -ForegroundColor Green
Write-Host "  Atualizados          : $atualizados" -ForegroundColor Cyan
if ($ignorados -gt 0) { 
    Write-Host "  Ignorados            : $ignorados" -ForegroundColor Yellow 
}

$totalInstalados = $instalados + $atualizados
if ($totalInstalados -gt 0) {
    Write-Host "Instalacao concluida! $totalInstalados agente(s) em $targetLabel" -ForegroundColor Green
    Write-Host "  Para usar, inicie uma nova sessao do ambiente via terminal e chame:"
    Write-Host "  acionar agent-manager  ou  /jc" -ForegroundColor Cyan
} else {
    Write-Host "Nenhum agente corporativo foi instalado. Verifique a estrutura do plugin." -ForegroundColor Red
    exit 1
}
