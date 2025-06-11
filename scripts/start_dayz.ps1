param(
    [string]$GamePath = $env:DAYZ_GAME
)

if (-not $GamePath -or -not (Test-Path $GamePath)) {
    Write-Error "DayZ game directory not found. Set DAYZ_GAME environment variable or edit the script."
    exit 1
}

$exe = Join-Path $GamePath 'DayZ_x64.exe'
if (-not (Test-Path $exe)) {
    Write-Error "DayZ_x64.exe not found in $GamePath"
    exit 1
}

Start-Process $exe

