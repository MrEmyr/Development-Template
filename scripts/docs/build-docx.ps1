<#
.SYNOPSIS
Build DOCX from Markdown using Pandoc and a Word reference template.

.EXAMPLE
pwsh scripts/docs/build-docx.ps1 -InputFiles "Development Rules&References/Code Development Rules/Code Based Solution - Development-Rules.md"

.EXAMPLE
pwsh scripts/docs/build-docx.ps1 -InputFiles .\\doc.md -DryRun
#>

param(
  [Parameter(Mandatory = $true)]
  [string[]] $InputFiles,

  [string] $OutputDir = "Documentation/build",

  [string] $ReferenceDoc = "Development Rules&References/LaTeX/Word/Autodesk Word Reference Template/autodesk-reference.docx",

  [switch] $DryRun
)

. "$PSScriptRoot/_common.ps1"

$repoRoot = Resolve-RepoRoot
Assert-ToolOnPath 'pandoc'

$resolvedInputs = Normalize-InputFiles -InputFiles $InputFiles -RepoRoot $repoRoot
$outDirAbs = if ([System.IO.Path]::IsPathRooted($OutputDir)) { $OutputDir } else { Join-Path $repoRoot $OutputDir }
Ensure-OutputDir $outDirAbs

$refAbs = if ([System.IO.Path]::IsPathRooted($ReferenceDoc)) { $ReferenceDoc } else { Join-Path $repoRoot $ReferenceDoc }
if (-not (Test-Path -LiteralPath $refAbs)) {
  throw "Word reference doc not found: $refAbs"
}

foreach ($inFile in $resolvedInputs) {
  $outFile = Get-OutputPath -OutputDir $outDirAbs -InputFilePath $inFile -ExtensionWithDot '.docx'

  $pandocArgs = @(
    '--from=gfm',
    '--to=docx',
    "--reference-doc=$refAbs",
    "--output=$outFile",
    $inFile
  )

  Invoke-Pandoc -PandocArgs $pandocArgs -DryRun:$DryRun
}

Write-Host "DOCX build complete. Output: $outDirAbs"

