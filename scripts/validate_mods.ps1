param(
    [string]$ToolsPath = $env:DAYZ_TOOLS
)

if (-not $ToolsPath -or -not (Test-Path $ToolsPath)) {
    Write-Error "DayZ Tools not found. Set DAYZ_TOOLS environment variable or edit the script."
    exit 1
}

$cfgConvert = Join-Path $ToolsPath 'Bin\CfgConvert\CfgConvertFile.exe'
if (-not (Test-Path $cfgConvert)) {
    Write-Error "CfgConvertFile.exe not found in $ToolsPath"
    exit 1
}

$root = Join-Path $PSScriptRoot '..\Addons'
$configs = Get-ChildItem $root -Recurse -Filter 'config.cpp'

foreach ($cfg in $configs) {
    Write-Host "Validating $($cfg.FullName)"
    & $cfgConvert $cfg.FullName | Out-Null
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Validation failed for $($cfg.FullName)"
        exit $LASTEXITCODE
    }
}

Write-Host 'All configs validated successfully.'

