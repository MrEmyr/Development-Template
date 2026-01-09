Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

function Resolve-RepoRoot {
  # scripts/docs/_common.ps1 -> repo root is two levels up
  return (Resolve-Path (Join-Path $PSScriptRoot '..\\..')).Path
}

function Ensure-OutputDir([string] $OutputDir) {
  if (-not (Test-Path -LiteralPath $OutputDir)) {
    New-Item -ItemType Directory -Force -Path $OutputDir | Out-Null
  }
}

function Assert-ToolOnPath([string] $ToolName) {
  if (-not (Get-Command $ToolName -ErrorAction SilentlyContinue)) {
    throw "Required tool not found on PATH: $ToolName"
  }
}

function Normalize-InputFiles([string[]] $InputFiles, [string] $RepoRoot) {
  if (-not $InputFiles -or $InputFiles.Count -eq 0) {
    throw "No input files provided. Pass one or more Markdown files via -InputFiles."
  }

  $resolved = @()
  foreach ($f in $InputFiles) {
    if ([string]::IsNullOrWhiteSpace($f)) { continue }
    $path = $f
    if (-not [System.IO.Path]::IsPathRooted($path)) {
      $path = Join-Path $RepoRoot $path
    }
    $path = (Resolve-Path -LiteralPath $path).Path
    if (-not (Test-Path -LiteralPath $path)) {
      throw "Input file not found: $f"
    }
    if ([System.IO.Path]::GetExtension($path).ToLowerInvariant() -ne '.md') {
      throw "Input must be a .md file: $path"
    }
    $resolved += $path
  }

  if ($resolved.Count -eq 0) {
    throw "No valid input files provided."
  }
  return $resolved
}

function Get-OutputPath([string] $OutputDir, [string] $InputFilePath, [string] $ExtensionWithDot) {
  $base = [System.IO.Path]::GetFileNameWithoutExtension($InputFilePath)
  return (Join-Path $OutputDir ($base + $ExtensionWithDot))
}

function Invoke-Pandoc([string[]] $PandocArgs, [switch] $DryRun) {
  if ($DryRun) {
    Write-Host "pandoc $($PandocArgs -join ' ')"
    return
  }
  & pandoc @PandocArgs
  if ($LASTEXITCODE -ne 0) {
    throw "pandoc failed with exit code $LASTEXITCODE"
  }
}

