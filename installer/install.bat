@echo off
REM =============================================================================
REM THE AGENTIC CORPORATION - Instalador (Windows)
REM =============================================================================

set "TARGET_MODE=local"
if /I "%~1"=="--antigravity" set "TARGET_MODE=antigravity"
if /I "%~1"=="--vps" set "TARGET_MODE=vps"
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0install.ps1" -TargetMode "%TARGET_MODE""