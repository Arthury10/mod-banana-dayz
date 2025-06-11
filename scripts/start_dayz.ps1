# start_dayz.ps1
$ErrorActionPreference = 'Stop'

$GamePath = $env:DAYZ_GAME.Trim('"') 

if (-not (Test-Path -LiteralPath $GamePath)) {
    Write-Error "❌ Caminho inválido ou não encontrado:`n$GamePath"
    exit 1
}

# 2) monta o path do .bat
$bat = Join-Path -Path $GamePath -ChildPath 'DayZCommunityOfflineMode.bat'

if (-not (Test-Path -LiteralPath $bat)) {
    Write-Error "❌ .bat não encontrado em:`n$bat"
    exit 1
}

Start-Process -FilePath $bat -WorkingDirectory $GamePath
