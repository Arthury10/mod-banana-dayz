param(
    [string]$ToolsPath = $env:DAYZ_TOOLS,
    [string]$OutDir    = $env:DAYZ_MOD_OUTPUT
)

if (-not $ToolsPath -or -not (Test-Path $ToolsPath)) {
    Write-Error "DayZ Tools not found. Set DAYZ_TOOLS environment variable or edit the script."
    exit 1
}

if (-not $OutDir) {
    Write-Error "Output directory not specified. Set DAYZ_MOD_OUTPUT environment variable or edit the script."
    exit 1
}

$builder = Join-Path $ToolsPath 'Bin\AddonBuilder\AddonBuilder.exe'
if (-not (Test-Path $builder)) {
    Write-Error "AddonBuilder.exe not found in $ToolsPath"
    exit 1
}

if (-not (Test-Path $OutDir)) {
    New-Item -ItemType Directory -Path $OutDir | Out-Null
}

$root = Join-Path $PSScriptRoot '..\Addons'
$modDirs = Get-ChildItem $root -Recurse -Directory | Where-Object { Test-Path (Join-Path $_.FullName 'config.cpp') }

foreach ($dir in $modDirs) {
    $name = Split-Path $dir -Leaf
    Write-Host "Building $name"
    & $builder $dir.FullName $OutDir -clear
}
